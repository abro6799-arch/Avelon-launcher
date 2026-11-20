package paulscode.sound.codecs;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import mcshim.sound.sampled.AudioFormat;
import mcshim.sound.sampled.AudioInputStream;
import mcshim.sound.sampled.AudioSystem;
import mcshim.sound.sampled.UnsupportedAudioFileException;
import paulscode.sound.ICodec;
import paulscode.sound.SoundBuffer;
import paulscode.sound.SoundSystemConfig;
import paulscode.sound.SoundSystemLogger;

/* JADX INFO: loaded from: classes.dex */
public class CodecWav implements ICodec {
    private static final boolean GET = false;
    private static final boolean SET = true;
    private static final boolean XXX = false;
    private boolean endOfStream = GET;
    private boolean initialized = GET;
    private AudioInputStream myAudioInputStream = null;
    private SoundSystemLogger logger = SoundSystemConfig.getLogger();

    @Override // paulscode.sound.ICodec
    public void reverseByteOrder(boolean z) {
    }

    @Override // paulscode.sound.ICodec
    public boolean initialize(URL url) {
        initialized(SET, GET);
        cleanup();
        if (url == null) {
            errorMessage("url null in method 'initialize'");
            cleanup();
            return GET;
        }
        try {
            this.myAudioInputStream = AudioSystem.getAudioInputStream(new BufferedInputStream(url.openStream()));
            endOfStream(SET, GET);
            initialized(SET, SET);
            return SET;
        } catch (IOException e) {
            errorMessage("Error setting up audio input stream in method 'initialize'");
            printStackTrace(e);
            return GET;
        } catch (UnsupportedAudioFileException e2) {
            errorMessage("Unsupported audio format in method 'initialize'");
            printStackTrace(e2);
            return GET;
        }
    }

    @Override // paulscode.sound.ICodec
    public boolean initialized() {
        return initialized(GET, GET);
    }

    @Override // paulscode.sound.ICodec
    public SoundBuffer read() {
        AudioInputStream audioInputStream = this.myAudioInputStream;
        if (audioInputStream == null) {
            return null;
        }
        AudioFormat format = audioInputStream.getFormat();
        if (format == null) {
            errorMessage("Audio Format null in method 'read'");
            return null;
        }
        int streamingBufferSize = SoundSystemConfig.getStreamingBufferSize();
        byte[] bArrTrimArray = new byte[streamingBufferSize];
        boolean z = GET;
        int i = 0;
        while (!endOfStream(GET, GET) && i < streamingBufferSize) {
            try {
                int i2 = this.myAudioInputStream.read(bArrTrimArray, i, streamingBufferSize - i);
                if (i2 <= 0) {
                    endOfStream(SET, SET);
                    break;
                }
                i += i2;
            } catch (IOException unused) {
                endOfStream(SET, SET);
                return null;
            }
        }
        if (i <= 0) {
            return null;
        }
        if (i < streamingBufferSize) {
            bArrTrimArray = trimArray(bArrTrimArray, i);
        }
        if (format.getSampleSizeInBits() == 16) {
            z = true;
        }
        return new SoundBuffer(convertAudioBytes(bArrTrimArray, z), format);
    }

    @Override // paulscode.sound.ICodec
    public SoundBuffer readAll() {
        byte[] bArr;
        AudioInputStream audioInputStream = this.myAudioInputStream;
        if (audioInputStream == null) {
            errorMessage("Audio input stream null in method 'readAll'");
            return null;
        }
        AudioFormat format = audioInputStream.getFormat();
        if (format == null) {
            errorMessage("Audio Format null in method 'readAll'");
            return null;
        }
        int channels = ((format.getChannels() * ((int) this.myAudioInputStream.getFrameLength())) * format.getSampleSizeInBits()) / 8;
        boolean z = SET;
        if (channels > 0) {
            int channels2 = ((format.getChannels() * ((int) this.myAudioInputStream.getFrameLength())) * format.getSampleSizeInBits()) / 8;
            bArr = new byte[channels2];
            int i = 0;
            while (true) {
                try {
                    int i2 = this.myAudioInputStream.read(bArr, i, channels2 - i);
                    if (i2 == -1 || i >= channels2) {
                        break;
                    }
                    i += i2;
                } catch (IOException e) {
                    errorMessage("Exception thrown while reading from the AudioInputStream (location #1).");
                    printStackTrace(e);
                    return null;
                }
            }
        } else {
            int fileChunkSize = SoundSystemConfig.getFileChunkSize();
            byte[] bArr2 = new byte[fileChunkSize];
            byte[] bArrAppendByteArrays = null;
            int i3 = 0;
            while (!endOfStream(GET, GET) && i3 < SoundSystemConfig.getMaxFileSize()) {
                int i4 = 0;
                while (i4 < fileChunkSize) {
                    try {
                        int i5 = this.myAudioInputStream.read(bArr2, i4, fileChunkSize - i4);
                        if (i5 <= 0) {
                            endOfStream(SET, SET);
                            break;
                        }
                        i4 += i5;
                    } catch (IOException e2) {
                        errorMessage("Exception thrown while reading from the AudioInputStream (location #2).");
                        printStackTrace(e2);
                        return null;
                    }
                }
                i3 += i4;
                bArrAppendByteArrays = appendByteArrays(bArrAppendByteArrays, bArr2, i4);
            }
            bArr = bArrAppendByteArrays;
        }
        if (format.getSampleSizeInBits() != 16) {
            z = false;
        }
        SoundBuffer soundBuffer = new SoundBuffer(convertAudioBytes(bArr, z), format);
        try {
            this.myAudioInputStream.close();
        } catch (IOException unused) {
        }
        return soundBuffer;
    }

    @Override // paulscode.sound.ICodec
    public boolean endOfStream() {
        return endOfStream(GET, GET);
    }

    @Override // paulscode.sound.ICodec
    public void cleanup() {
        AudioInputStream audioInputStream = this.myAudioInputStream;
        if (audioInputStream != null) {
            try {
                audioInputStream.close();
            } catch (Exception unused) {
            }
        }
        this.myAudioInputStream = null;
    }

    @Override // paulscode.sound.ICodec
    public AudioFormat getAudioFormat() {
        AudioInputStream audioInputStream = this.myAudioInputStream;
        if (audioInputStream == null) {
            return null;
        }
        return audioInputStream.getFormat();
    }

    private synchronized boolean initialized(boolean z, boolean z2) {
        if (z) {
            this.initialized = z2;
        }
        return this.initialized;
    }

    private synchronized boolean endOfStream(boolean z, boolean z2) {
        if (z) {
            this.endOfStream = z2;
        }
        return this.endOfStream;
    }

    private static byte[] trimArray(byte[] bArr, int i) {
        if (bArr == null || bArr.length <= i) {
            return null;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    private static byte[] convertAudioBytes(byte[] bArr, boolean z) {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(bArr.length);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        if (z) {
            ShortBuffer shortBufferAsShortBuffer = byteBufferAllocateDirect.asShortBuffer();
            ShortBuffer shortBufferAsShortBuffer2 = byteBufferWrap.asShortBuffer();
            while (shortBufferAsShortBuffer2.hasRemaining()) {
                shortBufferAsShortBuffer.put(shortBufferAsShortBuffer2.get());
            }
        } else {
            while (byteBufferWrap.hasRemaining()) {
                byteBufferAllocateDirect.put(byteBufferWrap.get());
            }
        }
        byteBufferAllocateDirect.rewind();
        if (!byteBufferAllocateDirect.hasArray()) {
            byte[] bArr2 = new byte[byteBufferAllocateDirect.capacity()];
            byteBufferAllocateDirect.get(bArr2);
            byteBufferAllocateDirect.clear();
            return bArr2;
        }
        return byteBufferAllocateDirect.array();
    }

    private static byte[] appendByteArrays(byte[] bArr, byte[] bArr2, int i) {
        if (bArr == null && bArr2 == null) {
            return null;
        }
        if (bArr == null) {
            byte[] bArr3 = new byte[i];
            System.arraycopy(bArr2, 0, bArr3, 0, i);
            return bArr3;
        }
        if (bArr2 == null) {
            byte[] bArr4 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
            return bArr4;
        }
        byte[] bArr5 = new byte[bArr.length + i];
        System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr5, bArr.length, i);
        return bArr5;
    }

    private void errorMessage(String str) {
        this.logger.errorMessage("CodecWav", str, 0);
    }

    private void printStackTrace(Exception exc) {
        this.logger.printStackTrace(exc, 1);
    }
}
