package paulscode.sound.libraries;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.Iterator;
import mcshim.sound.sampled.AudioFormat;
import org.lwjgl.BufferUtils;
import org.lwjgl.LWJGLException;
import org.lwjgl.openal.AL;
import org.lwjgl.openal.AL10;
import paulscode.sound.Channel;
import paulscode.sound.FilenameURL;
import paulscode.sound.ICodec;
import paulscode.sound.Library;
import paulscode.sound.ListenerData;
import paulscode.sound.SoundBuffer;
import paulscode.sound.SoundSystemConfig;
import paulscode.sound.SoundSystemException;
import paulscode.sound.Source;

/* JADX INFO: loaded from: classes.dex */
public class LibraryLWJGLOpenAL extends Library {
    private static final boolean GET = false;
    private static final boolean SET = true;
    private static final boolean XXX = false;
    private static boolean alPitchSupported = true;
    private HashMap ALBufferMap;
    private FloatBuffer listenerPositionAL = null;
    private FloatBuffer listenerOrientation = null;
    private FloatBuffer listenerVelocity = null;

    public static String getDescription() {
        return "The LWJGL binding of OpenAL.  For more information, see http://www.lwjgl.org";
    }

    public static String getTitle() {
        return "LWJGL OpenAL";
    }

    @Override // paulscode.sound.Library
    public String getClassName() {
        return "LibraryLWJGLOpenAL";
    }

    public LibraryLWJGLOpenAL() {
        this.ALBufferMap = null;
        this.ALBufferMap = new HashMap();
    }

    @Override // paulscode.sound.Library
    public void init() throws SoundSystemException {
        try {
            AL.create();
            boolean zCheckALError = checkALError();
            if (zCheckALError) {
                importantMessage("OpenAL did not initialize properly!");
            } else {
                message("OpenAL initialized.");
            }
            this.listenerPositionAL = BufferUtils.createFloatBuffer(3).put(new float[]{this.listener.position.x, this.listener.position.y, this.listener.position.z});
            this.listenerOrientation = BufferUtils.createFloatBuffer(6).put(new float[]{this.listener.lookAt.x, this.listener.lookAt.y, this.listener.lookAt.z, this.listener.up.x, this.listener.up.y, this.listener.up.z});
            this.listenerVelocity = BufferUtils.createFloatBuffer(3).put(new float[]{0.0f, 0.0f, 0.0f});
            this.listenerPositionAL.flip();
            this.listenerOrientation.flip();
            this.listenerVelocity.flip();
            AL10.alListener(4100, this.listenerPositionAL);
            boolean z = checkALError() || zCheckALError;
            AL10.alListener(4111, this.listenerOrientation);
            boolean z2 = checkALError() || z;
            AL10.alListener(4102, this.listenerVelocity);
            if (checkALError() || z2) {
                importantMessage("OpenAL did not initialize properly!");
                throw new SoundSystemException("Problem encountered while loading OpenAL or creating the listener.  Probably cause:  OpenAL not supported", 6);
            }
            super.init();
            try {
                AL10.alSourcef(((ChannelLWJGLOpenAL) this.normalChannels.get(1)).ALSource.get(0), 4099, 1.0f);
                if (checkALError()) {
                    alPitchSupported(SET, false);
                    throw new SoundSystemException("OpenAL: AL_PITCH not supported.", 13);
                }
                alPitchSupported(SET, SET);
            } catch (Exception unused) {
                alPitchSupported(SET, false);
                throw new SoundSystemException("OpenAL: AL_PITCH not supported.", 13);
            }
        } catch (LWJGLException e) {
            errorMessage("Unable to initialize OpenAL.  Probable cause: OpenAL not supported.");
            printStackTrace(e);
            throw new SoundSystemException(e.getMessage(), 6);
        }
    }

    public static boolean libraryCompatible() {
        if (AL.isCreated()) {
            return SET;
        }
        try {
            AL.create();
            try {
                AL.destroy();
            } catch (Exception unused) {
            }
            return SET;
        } catch (Exception unused2) {
            return false;
        }
    }

    @Override // paulscode.sound.Library
    protected Channel createChannel(int i) {
        IntBuffer intBufferCreateIntBuffer = BufferUtils.createIntBuffer(1);
        try {
            AL10.alGenSources(intBufferCreateIntBuffer);
            if (AL10.alGetError() != 0) {
                return null;
            }
            return new ChannelLWJGLOpenAL(i, intBufferCreateIntBuffer);
        } catch (Exception unused) {
            AL10.alGetError();
            return null;
        }
    }

    @Override // paulscode.sound.Library
    public void cleanup() {
        super.cleanup();
        Iterator it = this.bufferMap.keySet().iterator();
        while (it.hasNext()) {
            IntBuffer intBuffer = (IntBuffer) this.ALBufferMap.get((String) it.next());
            if (intBuffer != null) {
                AL10.alDeleteBuffers(intBuffer);
                checkALError();
                intBuffer.clear();
            }
        }
        this.bufferMap.clear();
        AL.destroy();
        this.bufferMap = null;
        this.listenerPositionAL = null;
        this.listenerOrientation = null;
        this.listenerVelocity = null;
    }

    @Override // paulscode.sound.Library
    public boolean loadSound(FilenameURL filenameURL) {
        int i;
        if (this.bufferMap == null) {
            this.bufferMap = new HashMap();
            importantMessage("Buffer Map was null in method 'loadSound'");
        }
        if (this.ALBufferMap == null) {
            this.ALBufferMap = new HashMap();
            importantMessage("Open AL Buffer Map was null in method'loadSound'");
        }
        if (errorCheck(filenameURL == null, "Filename/URL not specified in method 'loadSound'")) {
            return false;
        }
        if (this.bufferMap.get(filenameURL.getFilename()) != null) {
            return SET;
        }
        ICodec codec = SoundSystemConfig.getCodec(filenameURL.getFilename());
        if (errorCheck(codec == null, "No codec found for file '" + filenameURL.getFilename() + "' in method 'loadSound'")) {
            return false;
        }
        codec.initialize(filenameURL.getURL());
        SoundBuffer all = codec.readAll();
        codec.cleanup();
        if (errorCheck(all == null, "Sound buffer null in method 'loadSound'")) {
            return false;
        }
        this.bufferMap.put(filenameURL.getFilename(), all);
        AudioFormat audioFormat = all.audioFormat;
        if (audioFormat.getChannels() == 1) {
            if (audioFormat.getSampleSizeInBits() == 8) {
                i = 4352;
            } else {
                if (audioFormat.getSampleSizeInBits() != 16) {
                    errorMessage("Illegal sample size in method 'loadSound'");
                    return false;
                }
                i = 4353;
            }
        } else if (audioFormat.getChannels() == 2) {
            if (audioFormat.getSampleSizeInBits() == 8) {
                i = 4354;
            } else {
                if (audioFormat.getSampleSizeInBits() != 16) {
                    errorMessage("Illegal sample size in method 'loadSound'");
                    return false;
                }
                i = 4355;
            }
        } else {
            errorMessage("File neither mono nor stereo in method 'loadSound'");
            return false;
        }
        IntBuffer intBufferCreateIntBuffer = BufferUtils.createIntBuffer(1);
        AL10.alGenBuffers(intBufferCreateIntBuffer);
        if (errorCheck(AL10.alGetError() != 0, "alGenBuffers error when loading " + filenameURL.getFilename())) {
            return false;
        }
        ByteBuffer byteBufferCreateByteBuffer = BufferUtils.createByteBuffer(all.audioData.length);
        byteBufferCreateByteBuffer.clear();
        byteBufferCreateByteBuffer.put(all.audioData);
        byteBufferCreateByteBuffer.flip();
        AL10.alBufferData(intBufferCreateIntBuffer.get(0), i, byteBufferCreateByteBuffer, (int) audioFormat.getSampleRate());
        if (errorCheck(AL10.alGetError() != 0, "alBufferData error when loading " + filenameURL.getFilename())) {
            if (errorCheck(intBufferCreateIntBuffer == null, "Sound buffer was not created for " + filenameURL.getFilename())) {
                return false;
            }
        }
        this.ALBufferMap.put(filenameURL.getFilename(), intBufferCreateIntBuffer);
        return SET;
    }

    @Override // paulscode.sound.Library
    public void unloadSound(String str) {
        this.ALBufferMap.remove(str);
        super.unloadSound(str);
    }

    @Override // paulscode.sound.Library
    public void setMasterVolume(float f) {
        super.setMasterVolume(f);
        AL10.alListenerf(4106, f);
        checkALError();
    }

    @Override // paulscode.sound.Library
    public void newSource(boolean z, boolean z2, boolean z3, String str, FilenameURL filenameURL, float f, float f2, float f3, int i, float f4) {
        IntBuffer intBuffer;
        SoundBuffer soundBuffer;
        if (z2) {
            intBuffer = null;
        } else {
            if (((IntBuffer) this.ALBufferMap.get(filenameURL.getFilename())) == null && !loadSound(filenameURL)) {
                errorMessage("Source '" + str + "' was not created because an error occurred while loading " + filenameURL.getFilename());
                return;
            }
            intBuffer = (IntBuffer) this.ALBufferMap.get(filenameURL.getFilename());
            if (intBuffer == null) {
                errorMessage("Source '" + str + "' was not created because a sound buffer was not found for " + filenameURL.getFilename());
                return;
            }
        }
        if (z2) {
            soundBuffer = null;
        } else {
            if (((SoundBuffer) this.bufferMap.get(filenameURL.getFilename())) == null && !loadSound(filenameURL)) {
                errorMessage("Source '" + str + "' was not created because an error occurred while loading " + filenameURL.getFilename());
                return;
            }
            SoundBuffer soundBuffer2 = (SoundBuffer) this.bufferMap.get(filenameURL.getFilename());
            if (soundBuffer2 == null) {
                errorMessage("Source '" + str + "' was not created because audio data was not found for " + filenameURL.getFilename());
                return;
            }
            soundBuffer = soundBuffer2;
        }
        this.sourceMap.put(str, new SourceLWJGLOpenAL(this.listenerPositionAL, intBuffer, z, z2, z3, str, filenameURL, soundBuffer, f, f2, f3, i, f4, false));
    }

    @Override // paulscode.sound.Library
    public void rawDataStream(AudioFormat audioFormat, boolean z, String str, float f, float f2, float f3, int i, float f4) {
        this.sourceMap.put(str, new SourceLWJGLOpenAL(this.listenerPositionAL, audioFormat, z, str, f, f2, f3, i, f4));
    }

    @Override // paulscode.sound.Library
    public void quickPlay(boolean z, boolean z2, boolean z3, String str, FilenameURL filenameURL, float f, float f2, float f3, int i, float f4, boolean z4) {
        IntBuffer intBuffer;
        SoundBuffer soundBuffer = null;
        if (z2) {
            intBuffer = null;
        } else {
            if (((IntBuffer) this.ALBufferMap.get(filenameURL.getFilename())) == null) {
                loadSound(filenameURL);
            }
            IntBuffer intBuffer2 = (IntBuffer) this.ALBufferMap.get(filenameURL.getFilename());
            if (intBuffer2 == null) {
                errorMessage("Sound buffer was not created for " + filenameURL.getFilename());
                return;
            }
            intBuffer = intBuffer2;
        }
        if (!z2) {
            if (((SoundBuffer) this.bufferMap.get(filenameURL.getFilename())) == null && !loadSound(filenameURL)) {
                errorMessage("Source '" + str + "' was not created because an error occurred while loading " + filenameURL.getFilename());
                return;
            }
            soundBuffer = (SoundBuffer) this.bufferMap.get(filenameURL.getFilename());
            if (soundBuffer == null) {
                errorMessage("Source '" + str + "' was not created because audio data was not found for " + filenameURL.getFilename());
                return;
            }
        }
        SourceLWJGLOpenAL sourceLWJGLOpenAL = new SourceLWJGLOpenAL(this.listenerPositionAL, intBuffer, z, z2, z3, str, filenameURL, soundBuffer, f, f2, f3, i, f4, false);
        this.sourceMap.put(str, sourceLWJGLOpenAL);
        play(sourceLWJGLOpenAL);
        if (z4) {
            sourceLWJGLOpenAL.setTemporary(SET);
        }
    }

    @Override // paulscode.sound.Library
    public void copySources(HashMap map) {
        SoundBuffer soundBuffer;
        if (map == null) {
            return;
        }
        if (this.bufferMap == null) {
            this.bufferMap = new HashMap();
            importantMessage("Buffer Map was null in method 'copySources'");
        }
        if (this.ALBufferMap == null) {
            this.ALBufferMap = new HashMap();
            importantMessage("Open AL Buffer Map was null in method'copySources'");
        }
        this.sourceMap.clear();
        for (String str : map.keySet()) {
            Source source = (Source) map.get(str);
            if (source != null) {
                if (source.toStream) {
                    soundBuffer = null;
                } else {
                    loadSound(source.filenameURL);
                    soundBuffer = (SoundBuffer) this.bufferMap.get(source.filenameURL.getFilename());
                }
                if (source.toStream || soundBuffer != null) {
                    this.sourceMap.put(str, new SourceLWJGLOpenAL(this.listenerPositionAL, (IntBuffer) this.ALBufferMap.get(source.filenameURL.getFilename()), source, soundBuffer));
                }
            }
        }
    }

    @Override // paulscode.sound.Library
    public void setListenerPosition(float f, float f2, float f3) {
        super.setListenerPosition(f, f2, f3);
        this.listenerPositionAL.put(0, f);
        this.listenerPositionAL.put(1, f2);
        this.listenerPositionAL.put(2, f3);
        AL10.alListener(4100, this.listenerPositionAL);
        checkALError();
    }

    @Override // paulscode.sound.Library
    public void setListenerAngle(float f) {
        super.setListenerAngle(f);
        this.listenerOrientation.put(0, this.listener.lookAt.x);
        this.listenerOrientation.put(2, this.listener.lookAt.z);
        AL10.alListener(4111, this.listenerOrientation);
        checkALError();
    }

    @Override // paulscode.sound.Library
    public void setListenerOrientation(float f, float f2, float f3, float f4, float f5, float f6) {
        super.setListenerOrientation(f, f2, f3, f4, f5, f6);
        this.listenerOrientation.put(0, f);
        this.listenerOrientation.put(1, f2);
        this.listenerOrientation.put(2, f3);
        this.listenerOrientation.put(3, f4);
        this.listenerOrientation.put(4, f5);
        this.listenerOrientation.put(5, f6);
        AL10.alListener(4111, this.listenerOrientation);
        checkALError();
    }

    @Override // paulscode.sound.Library
    public void setListenerData(ListenerData listenerData) {
        super.setListenerData(listenerData);
        this.listenerPositionAL.put(0, listenerData.position.x);
        this.listenerPositionAL.put(1, listenerData.position.y);
        this.listenerPositionAL.put(2, listenerData.position.z);
        AL10.alListener(4100, this.listenerPositionAL);
        this.listenerOrientation.put(0, listenerData.lookAt.x);
        this.listenerOrientation.put(1, listenerData.lookAt.y);
        this.listenerOrientation.put(2, listenerData.lookAt.z);
        this.listenerOrientation.put(3, listenerData.up.x);
        this.listenerOrientation.put(4, listenerData.up.y);
        this.listenerOrientation.put(5, listenerData.up.z);
        AL10.alListener(4111, this.listenerOrientation);
        checkALError();
    }

    private boolean checkALError() {
        int iAlGetError = AL10.alGetError();
        if (iAlGetError == 0) {
            return false;
        }
        switch (iAlGetError) {
            case 40961:
                errorMessage("Invalid name parameter.");
                return SET;
            case 40962:
                errorMessage("Invalid parameter.");
                return SET;
            case 40963:
                errorMessage("Invalid enumerated parameter value.");
                return SET;
            case 40964:
                errorMessage("Illegal call.");
                return SET;
            case 40965:
                errorMessage("Unable to allocate memory.");
                return SET;
            default:
                errorMessage("An unrecognized error occurred.");
                return SET;
        }
    }

    public static boolean alPitchSupported() {
        return alPitchSupported(false, false);
    }

    private static synchronized boolean alPitchSupported(boolean z, boolean z2) {
        if (z) {
            alPitchSupported = z2;
        }
        return alPitchSupported;
    }
}
