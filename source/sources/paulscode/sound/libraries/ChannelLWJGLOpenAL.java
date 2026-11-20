package paulscode.sound.libraries;

import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.util.LinkedList;
import mcshim.sound.sampled.AudioFormat;
import org.lwjgl.BufferUtils;
import org.lwjgl.openal.AL10;
import paulscode.sound.Channel;

/* JADX INFO: loaded from: classes.dex */
public class ChannelLWJGLOpenAL extends Channel {
    public IntBuffer ALSource;
    public int ALformat;
    ByteBuffer bufferBuffer;
    public int sampleRate;

    public ChannelLWJGLOpenAL(int i, IntBuffer intBuffer) {
        super(i);
        this.bufferBuffer = BufferUtils.createByteBuffer(5242880);
        this.libraryType = LibraryLWJGLOpenAL.class;
        this.ALSource = intBuffer;
    }

    @Override // paulscode.sound.Channel
    public void cleanup() {
        IntBuffer intBuffer = this.ALSource;
        if (intBuffer != null) {
            try {
                AL10.alSourceStop(intBuffer);
                AL10.alGetError();
            } catch (Exception unused) {
            }
            try {
                AL10.alDeleteSources(this.ALSource);
                AL10.alGetError();
            } catch (Exception unused2) {
            }
            this.ALSource.clear();
        }
        this.ALSource = null;
        super.cleanup();
    }

    public boolean attachBuffer(IntBuffer intBuffer) {
        if (errorCheck(this.channelType != 0, "Sound buffers may only be attached to normal sources.")) {
            return false;
        }
        AL10.alSourcei(this.ALSource.get(0), 4105, intBuffer.get(0));
        return checkALError();
    }

    @Override // paulscode.sound.Channel
    public void setAudioFormat(AudioFormat audioFormat) {
        int i;
        if (audioFormat.getChannels() == 1) {
            if (audioFormat.getSampleSizeInBits() == 8) {
                i = 4352;
            } else {
                if (audioFormat.getSampleSizeInBits() != 16) {
                    errorMessage("Illegal sample size in method 'setAudioFormat'");
                    return;
                }
                i = 4353;
            }
        } else if (audioFormat.getChannels() == 2) {
            if (audioFormat.getSampleSizeInBits() == 8) {
                i = 4354;
            } else {
                if (audioFormat.getSampleSizeInBits() != 16) {
                    errorMessage("Illegal sample size in method 'setAudioFormat'");
                    return;
                }
                i = 4355;
            }
        } else {
            errorMessage("Audio data neither mono nor stereo in method 'setAudioFormat'");
            return;
        }
        this.ALformat = i;
        this.sampleRate = (int) audioFormat.getSampleRate();
    }

    public void setFormat(int i, int i2) {
        this.ALformat = i;
        this.sampleRate = i2;
    }

    @Override // paulscode.sound.Channel
    public boolean preLoadBuffers(LinkedList linkedList) {
        if (errorCheck(this.channelType != 1, "Buffers may only be queued for streaming sources.")) {
            return false;
        }
        if (errorCheck(linkedList == null, "Buffer List null in method 'preLoadBuffers'")) {
            return false;
        }
        boolean zPlaying = playing();
        if (zPlaying) {
            AL10.alSourceStop(this.ALSource.get(0));
            checkALError();
        }
        int iAlGetSourcei = AL10.alGetSourcei(this.ALSource.get(0), 4118);
        if (iAlGetSourcei > 0) {
            IntBuffer intBufferCreateIntBuffer = BufferUtils.createIntBuffer(iAlGetSourcei);
            AL10.alGenBuffers(intBufferCreateIntBuffer);
            if (errorCheck(checkALError(), "Error clearing stream buffers in method 'preLoadBuffers'")) {
                return false;
            }
            AL10.alSourceUnqueueBuffers(this.ALSource.get(0), intBufferCreateIntBuffer);
            if (errorCheck(checkALError(), "Error unqueuing stream buffers in method 'preLoadBuffers'")) {
                return false;
            }
        }
        if (zPlaying) {
            AL10.alSourcePlay(this.ALSource.get(0));
            checkALError();
        }
        IntBuffer intBufferCreateIntBuffer2 = BufferUtils.createIntBuffer(linkedList.size());
        AL10.alGenBuffers(intBufferCreateIntBuffer2);
        if (errorCheck(checkALError(), "Error generating stream buffers in method 'preLoadBuffers'")) {
            return false;
        }
        for (int i = 0; i < linkedList.size(); i++) {
            this.bufferBuffer.clear();
            this.bufferBuffer.put((byte[]) linkedList.get(i), 0, ((byte[]) linkedList.get(i)).length);
            this.bufferBuffer.flip();
            try {
                AL10.alBufferData(intBufferCreateIntBuffer2.get(i), this.ALformat, this.bufferBuffer, this.sampleRate);
                if (errorCheck(checkALError(), "Error creating buffers in method 'preLoadBuffers'")) {
                    return false;
                }
            } catch (Exception e) {
                errorMessage("Error creating buffers in method 'preLoadBuffers'");
                printStackTrace(e);
                return false;
            }
        }
        try {
            AL10.alSourceQueueBuffers(this.ALSource.get(0), intBufferCreateIntBuffer2);
            if (errorCheck(checkALError(), "Error queuing buffers in method 'preLoadBuffers'")) {
                return false;
            }
            AL10.alSourcePlay(this.ALSource.get(0));
            return !errorCheck(checkALError(), "Error playing source in method 'preLoadBuffers'");
        } catch (Exception e2) {
            errorMessage("Error queuing buffers in method 'preLoadBuffers'");
            printStackTrace(e2);
            return false;
        }
    }

    @Override // paulscode.sound.Channel
    public boolean queueBuffer(byte[] bArr) {
        if (errorCheck(this.channelType != 1, "Buffers may only be queued for streaming sources.")) {
            return false;
        }
        this.bufferBuffer.clear();
        this.bufferBuffer.put(bArr, 0, bArr.length);
        this.bufferBuffer.flip();
        IntBuffer intBufferCreateIntBuffer = BufferUtils.createIntBuffer(1);
        AL10.alSourceUnqueueBuffers(this.ALSource.get(0), intBufferCreateIntBuffer);
        if (checkALError()) {
            return false;
        }
        AL10.alBufferData(intBufferCreateIntBuffer.get(0), this.ALformat, this.bufferBuffer, this.sampleRate);
        if (checkALError()) {
            return false;
        }
        AL10.alSourceQueueBuffers(this.ALSource.get(0), intBufferCreateIntBuffer);
        return !checkALError();
    }

    @Override // paulscode.sound.Channel
    public int feedRawAudioData(byte[] bArr) {
        IntBuffer intBufferCreateIntBuffer;
        if (errorCheck(this.channelType != 1, "Raw audio data can only be fed to streaming sources.")) {
            return -1;
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, 0, bArr.length);
        int iAlGetSourcei = AL10.alGetSourcei(this.ALSource.get(0), 4118);
        if (iAlGetSourcei > 0) {
            intBufferCreateIntBuffer = BufferUtils.createIntBuffer(iAlGetSourcei);
            AL10.alGenBuffers(intBufferCreateIntBuffer);
            if (errorCheck(checkALError(), "Error clearing stream buffers in method 'feedRawAudioData'")) {
                return -1;
            }
            AL10.alSourceUnqueueBuffers(this.ALSource.get(0), intBufferCreateIntBuffer);
            if (errorCheck(checkALError(), "Error unqueuing stream buffers in method 'feedRawAudioData'")) {
                return -1;
            }
        } else {
            intBufferCreateIntBuffer = BufferUtils.createIntBuffer(1);
            AL10.alGenBuffers(intBufferCreateIntBuffer);
            if (errorCheck(checkALError(), "Error generating stream buffers in method 'preLoadBuffers'")) {
                return -1;
            }
        }
        AL10.alBufferData(intBufferCreateIntBuffer.get(0), this.ALformat, byteBufferWrap, this.sampleRate);
        if (checkALError()) {
            return -1;
        }
        AL10.alSourceQueueBuffers(this.ALSource.get(0), intBufferCreateIntBuffer);
        if (checkALError()) {
            return -1;
        }
        if (this.attachedSource != null && this.attachedSource.channel == this && this.attachedSource.active() && !playing()) {
            AL10.alSourcePlay(this.ALSource.get(0));
            checkALError();
        }
        return iAlGetSourcei;
    }

    @Override // paulscode.sound.Channel
    public int buffersProcessed() {
        if (this.channelType != 1) {
            return 0;
        }
        int iAlGetSourcei = AL10.alGetSourcei(this.ALSource.get(0), 4118);
        if (checkALError()) {
            return 0;
        }
        return iAlGetSourcei;
    }

    @Override // paulscode.sound.Channel
    public void flush() {
        if (this.channelType != 1) {
            return;
        }
        if (checkALError()) {
            return;
        }
        IntBuffer intBufferCreateIntBuffer = BufferUtils.createIntBuffer(1);
        for (int iAlGetSourcei = AL10.alGetSourcei(this.ALSource.get(0), 4117); iAlGetSourcei > 0; iAlGetSourcei--) {
            try {
                AL10.alSourceUnqueueBuffers(this.ALSource.get(0), intBufferCreateIntBuffer);
                if (checkALError()) {
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
    }

    @Override // paulscode.sound.Channel
    public void close() {
        try {
            AL10.alSourceStop(this.ALSource.get(0));
            AL10.alGetError();
        } catch (Exception unused) {
        }
        if (this.channelType == 1) {
            flush();
        }
    }

    @Override // paulscode.sound.Channel
    public void play() {
        AL10.alSourcePlay(this.ALSource.get(0));
        checkALError();
    }

    @Override // paulscode.sound.Channel
    public void pause() {
        AL10.alSourcePause(this.ALSource.get(0));
        checkALError();
    }

    @Override // paulscode.sound.Channel
    public void stop() {
        AL10.alSourceStop(this.ALSource.get(0));
        checkALError();
    }

    @Override // paulscode.sound.Channel
    public void rewind() {
        if (this.channelType == 1) {
            return;
        }
        AL10.alSourceRewind(this.ALSource.get(0));
        checkALError();
    }

    @Override // paulscode.sound.Channel
    public boolean playing() {
        return !checkALError() && AL10.alGetSourcei(this.ALSource.get(0), 4112) == 4114;
    }

    private boolean checkALError() {
        int iAlGetError = AL10.alGetError();
        if (iAlGetError == 0) {
            return false;
        }
        switch (iAlGetError) {
            case 40961:
                errorMessage("Invalid name parameter.");
                return true;
            case 40962:
                errorMessage("Invalid parameter.");
                return true;
            case 40963:
                errorMessage("Invalid enumerated parameter value.");
                return true;
            case 40964:
                errorMessage("Illegal call.");
                return true;
            case 40965:
                errorMessage("Unable to allocate memory.");
                return true;
            default:
                errorMessage("An unrecognized error occurred.");
                return true;
        }
    }
}
