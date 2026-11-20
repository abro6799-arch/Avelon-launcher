package paulscode.sound.libraries;

import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.LinkedList;
import mcshim.sound.sampled.AudioFormat;
import org.lwjgl.BufferUtils;
import org.lwjgl.openal.AL10;
import paulscode.sound.Channel;
import paulscode.sound.FilenameURL;
import paulscode.sound.SoundBuffer;
import paulscode.sound.SoundSystemConfig;
import paulscode.sound.Source;

/* JADX INFO: loaded from: classes.dex */
public class SourceLWJGLOpenAL extends Source {
    private ChannelLWJGLOpenAL channelOpenAL;
    private FloatBuffer listenerPosition;
    private IntBuffer myBuffer;
    private FloatBuffer sourcePosition;
    private FloatBuffer sourceVelocity;

    public SourceLWJGLOpenAL(FloatBuffer floatBuffer, IntBuffer intBuffer, boolean z, boolean z2, boolean z3, String str, FilenameURL filenameURL, SoundBuffer soundBuffer, float f, float f2, float f3, int i, float f4, boolean z4) {
        super(z, z2, z3, str, filenameURL, soundBuffer, f, f2, f3, i, f4, z4);
        this.channelOpenAL = (ChannelLWJGLOpenAL) this.channel;
        this.reverseByteOrder = true;
        if (this.codec != null) {
            this.codec.reverseByteOrder(true);
        }
        this.listenerPosition = floatBuffer;
        this.myBuffer = intBuffer;
        this.libraryType = LibraryLWJGLOpenAL.class;
        this.pitch = 1.0f;
        resetALInformation();
    }

    public SourceLWJGLOpenAL(FloatBuffer floatBuffer, IntBuffer intBuffer, Source source, SoundBuffer soundBuffer) {
        super(source, soundBuffer);
        this.channelOpenAL = (ChannelLWJGLOpenAL) this.channel;
        this.reverseByteOrder = true;
        if (this.codec != null) {
            this.codec.reverseByteOrder(true);
        }
        this.listenerPosition = floatBuffer;
        this.myBuffer = intBuffer;
        this.libraryType = LibraryLWJGLOpenAL.class;
        this.pitch = 1.0f;
        resetALInformation();
    }

    public SourceLWJGLOpenAL(FloatBuffer floatBuffer, AudioFormat audioFormat, boolean z, String str, float f, float f2, float f3, int i, float f4) {
        super(audioFormat, z, str, f, f2, f3, i, f4);
        this.channelOpenAL = (ChannelLWJGLOpenAL) this.channel;
        this.reverseByteOrder = true;
        this.listenerPosition = floatBuffer;
        this.libraryType = LibraryLWJGLOpenAL.class;
        this.pitch = 1.0f;
        resetALInformation();
    }

    @Override // paulscode.sound.Source
    public void cleanup() {
        super.cleanup();
    }

    public void changeSource(FloatBuffer floatBuffer, IntBuffer intBuffer, boolean z, boolean z2, boolean z3, String str, FilenameURL filenameURL, SoundBuffer soundBuffer, float f, float f2, float f3, int i, float f4, boolean z4) {
        super.changeSource(z, z2, z3, str, filenameURL, soundBuffer, f, f2, f3, i, f4, z4);
        this.reverseByteOrder = true;
        this.listenerPosition = floatBuffer;
        this.myBuffer = intBuffer;
        this.pitch = 1.0f;
        resetALInformation();
    }

    @Override // paulscode.sound.Source
    public boolean incrementSoundSequence() {
        int i;
        if (!this.toStream) {
            errorMessage("Method 'incrementSoundSequence' may only be used for streaming sources.");
            return false;
        }
        synchronized (this.soundSequenceLock) {
            if (this.soundSequenceQueue == null || this.soundSequenceQueue.size() <= 0) {
                return false;
            }
            this.filenameURL = (FilenameURL) this.soundSequenceQueue.remove(0);
            if (this.codec != null) {
                this.codec.cleanup();
            }
            this.codec = SoundSystemConfig.getCodec(this.filenameURL.getFilename());
            if (this.codec != null) {
                this.codec.reverseByteOrder(true);
                if (this.codec.getAudioFormat() == null) {
                    this.codec.initialize(this.filenameURL.getURL());
                }
                AudioFormat audioFormat = this.codec.getAudioFormat();
                if (audioFormat == null) {
                    errorMessage("Audio Format null in method 'incrementSoundSequence'");
                    return false;
                }
                if (audioFormat.getChannels() == 1) {
                    if (audioFormat.getSampleSizeInBits() == 8) {
                        i = 4352;
                    } else {
                        if (audioFormat.getSampleSizeInBits() != 16) {
                            errorMessage("Illegal sample size in method 'incrementSoundSequence'");
                            return false;
                        }
                        i = 4353;
                    }
                } else if (audioFormat.getChannels() == 2) {
                    if (audioFormat.getSampleSizeInBits() == 8) {
                        i = 4354;
                    } else {
                        if (audioFormat.getSampleSizeInBits() != 16) {
                            errorMessage("Illegal sample size in method 'incrementSoundSequence'");
                            return false;
                        }
                        i = 4355;
                    }
                } else {
                    errorMessage("Audio data neither mono nor stereo in method 'incrementSoundSequence'");
                    return false;
                }
                this.channelOpenAL.setFormat(i, (int) audioFormat.getSampleRate());
                this.preLoad = true;
            }
            return true;
        }
    }

    @Override // paulscode.sound.Source
    public void listenerMoved() {
        positionChanged();
    }

    @Override // paulscode.sound.Source
    public void setPosition(float f, float f2, float f3) {
        ChannelLWJGLOpenAL channelLWJGLOpenAL;
        super.setPosition(f, f2, f3);
        if (this.sourcePosition == null) {
            resetALInformation();
        } else {
            positionChanged();
        }
        this.sourcePosition.put(0, f);
        this.sourcePosition.put(1, f2);
        this.sourcePosition.put(2, f3);
        if (this.channel == null || this.channel.attachedSource != this || (channelLWJGLOpenAL = this.channelOpenAL) == null || channelLWJGLOpenAL.ALSource == null) {
            return;
        }
        AL10.alSource(this.channelOpenAL.ALSource.get(0), 4100, this.sourcePosition);
        checkALError();
    }

    @Override // paulscode.sound.Source
    public void positionChanged() {
        ChannelLWJGLOpenAL channelLWJGLOpenAL;
        calculateDistance();
        calculateGain();
        if (this.channel != null && this.channel.attachedSource == this && (channelLWJGLOpenAL = this.channelOpenAL) != null && channelLWJGLOpenAL.ALSource != null) {
            AL10.alSourcef(this.channelOpenAL.ALSource.get(0), 4106, this.gain * this.sourceVolume * Math.abs(this.fadeOutGain) * this.fadeInGain);
            checkALError();
        }
        checkPitch();
    }

    private void checkPitch() {
        ChannelLWJGLOpenAL channelLWJGLOpenAL;
        if (this.channel == null || this.channel.attachedSource != this || !LibraryLWJGLOpenAL.alPitchSupported() || (channelLWJGLOpenAL = this.channelOpenAL) == null || channelLWJGLOpenAL.ALSource == null) {
            return;
        }
        AL10.alSourcef(this.channelOpenAL.ALSource.get(0), 4099, this.pitch);
        checkALError();
    }

    @Override // paulscode.sound.Source
    public void setLooping(boolean z) {
        ChannelLWJGLOpenAL channelLWJGLOpenAL;
        super.setLooping(z);
        if (this.channel == null || this.channel.attachedSource != this || (channelLWJGLOpenAL = this.channelOpenAL) == null || channelLWJGLOpenAL.ALSource == null) {
            return;
        }
        if (z) {
            AL10.alSourcei(this.channelOpenAL.ALSource.get(0), 4103, 1);
        } else {
            AL10.alSourcei(this.channelOpenAL.ALSource.get(0), 4103, 0);
        }
        checkALError();
    }

    @Override // paulscode.sound.Source
    public void setAttenuation(int i) {
        ChannelLWJGLOpenAL channelLWJGLOpenAL;
        super.setAttenuation(i);
        if (this.channel == null || this.channel.attachedSource != this || (channelLWJGLOpenAL = this.channelOpenAL) == null || channelLWJGLOpenAL.ALSource == null) {
            return;
        }
        if (i == 1) {
            AL10.alSourcef(this.channelOpenAL.ALSource.get(0), 4129, this.distOrRoll);
        } else {
            AL10.alSourcef(this.channelOpenAL.ALSource.get(0), 4129, 0.0f);
        }
        checkALError();
    }

    @Override // paulscode.sound.Source
    public void setDistOrRoll(float f) {
        ChannelLWJGLOpenAL channelLWJGLOpenAL;
        super.setDistOrRoll(f);
        if (this.channel == null || this.channel.attachedSource != this || (channelLWJGLOpenAL = this.channelOpenAL) == null || channelLWJGLOpenAL.ALSource == null) {
            return;
        }
        if (this.attModel == 1) {
            AL10.alSourcef(this.channelOpenAL.ALSource.get(0), 4129, f);
        } else {
            AL10.alSourcef(this.channelOpenAL.ALSource.get(0), 4129, 0.0f);
        }
        checkALError();
    }

    @Override // paulscode.sound.Source
    public void setPitch(float f) {
        super.setPitch(f);
        checkPitch();
    }

    @Override // paulscode.sound.Source
    public void play(Channel channel) {
        int i;
        if (!active()) {
            if (this.toLoop) {
                this.toPlay = true;
                return;
            }
            return;
        }
        if (channel == null) {
            errorMessage("Unable to play source, because channel was null");
            return;
        }
        boolean z = this.channel != channel;
        if (this.channel != null && this.channel.attachedSource != this) {
            z = true;
        }
        boolean zPaused = paused();
        super.play(channel);
        this.channelOpenAL = (ChannelLWJGLOpenAL) this.channel;
        if (z) {
            setPosition(this.position.x, this.position.y, this.position.z);
            checkPitch();
            ChannelLWJGLOpenAL channelLWJGLOpenAL = this.channelOpenAL;
            if (channelLWJGLOpenAL != null && channelLWJGLOpenAL.ALSource != null) {
                if (LibraryLWJGLOpenAL.alPitchSupported()) {
                    AL10.alSourcef(this.channelOpenAL.ALSource.get(0), 4099, this.pitch);
                    checkALError();
                }
                AL10.alSource(this.channelOpenAL.ALSource.get(0), 4100, this.sourcePosition);
                checkALError();
                AL10.alSource(this.channelOpenAL.ALSource.get(0), 4102, this.sourceVelocity);
                checkALError();
                if (this.attModel == 1) {
                    AL10.alSourcef(this.channelOpenAL.ALSource.get(0), 4129, this.distOrRoll);
                } else {
                    AL10.alSourcef(this.channelOpenAL.ALSource.get(0), 4129, 0.0f);
                }
                checkALError();
                if (this.toLoop && !this.toStream) {
                    AL10.alSourcei(this.channelOpenAL.ALSource.get(0), 4103, 1);
                } else {
                    AL10.alSourcei(this.channelOpenAL.ALSource.get(0), 4103, 0);
                }
                checkALError();
            }
            if (!this.toStream) {
                IntBuffer intBuffer = this.myBuffer;
                if (intBuffer == null) {
                    errorMessage("No sound buffer to play");
                    return;
                }
                this.channelOpenAL.attachBuffer(intBuffer);
            }
        }
        if (playing()) {
            return;
        }
        if (this.toStream && !zPaused) {
            if (this.codec == null) {
                errorMessage("Decoder null in method 'play'");
                return;
            }
            if (this.codec.getAudioFormat() == null) {
                this.codec.initialize(this.filenameURL.getURL());
            }
            AudioFormat audioFormat = this.codec.getAudioFormat();
            if (audioFormat == null) {
                errorMessage("Audio Format null in method 'play'");
                return;
            }
            if (audioFormat.getChannels() == 1) {
                if (audioFormat.getSampleSizeInBits() == 8) {
                    i = 4352;
                } else {
                    if (audioFormat.getSampleSizeInBits() != 16) {
                        errorMessage("Illegal sample size in method 'play'");
                        return;
                    }
                    i = 4353;
                }
            } else if (audioFormat.getChannels() == 2) {
                if (audioFormat.getSampleSizeInBits() == 8) {
                    i = 4354;
                } else {
                    if (audioFormat.getSampleSizeInBits() != 16) {
                        errorMessage("Illegal sample size in method 'play'");
                        return;
                    }
                    i = 4355;
                }
            } else {
                errorMessage("Audio data neither mono nor stereo in method 'play'");
                return;
            }
            this.channelOpenAL.setFormat(i, (int) audioFormat.getSampleRate());
            this.preLoad = true;
        }
        this.channel.play();
        if (this.pitch != 1.0f) {
            checkPitch();
        }
    }

    @Override // paulscode.sound.Source
    public boolean preLoad() {
        if (this.codec == null) {
            return false;
        }
        this.codec.initialize(this.filenameURL.getURL());
        LinkedList linkedList = new LinkedList();
        for (int i = 0; i < SoundSystemConfig.getNumberStreamingBuffers(); i++) {
            this.soundBuffer = this.codec.read();
            if (this.soundBuffer == null || this.soundBuffer.audioData == null) {
                break;
            }
            linkedList.add(this.soundBuffer.audioData);
        }
        positionChanged();
        this.channel.preLoadBuffers(linkedList);
        this.preLoad = false;
        return true;
    }

    private void resetALInformation() {
        this.sourcePosition = BufferUtils.createFloatBuffer(3).put(new float[]{this.position.x, this.position.y, this.position.z});
        this.sourceVelocity = BufferUtils.createFloatBuffer(3).put(new float[]{0.0f, 0.0f, 0.0f});
        this.sourcePosition.flip();
        this.sourceVelocity.flip();
        positionChanged();
    }

    private void calculateDistance() {
        if (this.listenerPosition != null) {
            double d = this.position.x - this.listenerPosition.get(0);
            double d2 = this.position.y - this.listenerPosition.get(1);
            double d3 = this.position.z - this.listenerPosition.get(2);
            this.distanceFromListener = (float) Math.sqrt((d * d) + (d2 * d2) + (d3 * d3));
        }
    }

    private void calculateGain() {
        if (this.attModel != 2) {
            this.gain = 1.0f;
            return;
        }
        if (this.distanceFromListener <= 0.0f) {
            this.gain = 1.0f;
        } else if (this.distanceFromListener >= this.distOrRoll) {
            this.gain = 0.0f;
        } else {
            this.gain = 1.0f - (this.distanceFromListener / this.distOrRoll);
        }
        if (this.gain > 1.0f) {
            this.gain = 1.0f;
        }
        if (this.gain < 0.0f) {
            this.gain = 0.0f;
        }
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
