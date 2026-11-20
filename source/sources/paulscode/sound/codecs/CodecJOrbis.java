package paulscode.sound.codecs;

import com.jcraft.jogg.Packet;
import com.jcraft.jogg.Page;
import com.jcraft.jogg.StreamState;
import com.jcraft.jogg.SyncState;
import com.jcraft.jorbis.Block;
import com.jcraft.jorbis.Comment;
import com.jcraft.jorbis.DspState;
import com.jcraft.jorbis.Info;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownServiceException;
import java.nio.ByteOrder;
import mcshim.sound.sampled.AudioFormat;
import paulscode.sound.ICodec;
import paulscode.sound.SoundBuffer;
import paulscode.sound.SoundSystemConfig;
import paulscode.sound.SoundSystemLogger;

/* JADX INFO: loaded from: classes.dex */
public class CodecJOrbis implements ICodec {
    private static final boolean GET = false;
    private static final boolean LITTLE_ENDIAN;
    private static final boolean SET = true;
    private static final boolean XXX = false;
    private AudioFormat audioFormat;
    private int bufferSize;
    private int convertedBufferSize;
    private InputStream inputStream;
    private Block jorbisBlock;
    private Comment jorbisComment;
    private DspState jorbisDspState;
    private Info jorbisInfo;
    private SoundSystemLogger logger;
    private int[] pcmIndex;
    private float[][][] pcmInfo;
    protected URL url;
    protected URLConnection urlConnection = null;
    private boolean endOfStream = GET;
    private boolean initialized = GET;
    private byte[] buffer = null;
    private int count = 0;
    private int index = 0;
    private Packet joggPacket = new Packet();
    private Page joggPage = new Page();
    private StreamState joggStreamState = new StreamState();
    private SyncState joggSyncState = new SyncState();

    @Override // paulscode.sound.ICodec
    public void reverseByteOrder(boolean z) {
    }

    static {
        LITTLE_ENDIAN = ByteOrder.nativeOrder() == ByteOrder.LITTLE_ENDIAN ? SET : GET;
    }

    public CodecJOrbis() {
        DspState dspState = new DspState();
        this.jorbisDspState = dspState;
        this.jorbisBlock = new Block(dspState);
        this.jorbisComment = new Comment();
        this.jorbisInfo = new Info();
        this.logger = SoundSystemConfig.getLogger();
    }

    @Override // paulscode.sound.ICodec
    public boolean initialize(URL url) {
        initialized(SET, GET);
        StreamState streamState = this.joggStreamState;
        if (streamState != null) {
            streamState.clear();
        }
        Block block = this.jorbisBlock;
        if (block != null) {
            block.clear();
        }
        DspState dspState = this.jorbisDspState;
        if (dspState != null) {
            dspState.clear();
        }
        Info info = this.jorbisInfo;
        if (info != null) {
            info.clear();
        }
        SyncState syncState = this.joggSyncState;
        if (syncState != null) {
            syncState.clear();
        }
        InputStream inputStream = this.inputStream;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        this.url = url;
        this.bufferSize = SoundSystemConfig.getStreamingBufferSize() / 2;
        this.buffer = null;
        this.count = 0;
        this.index = 0;
        this.joggStreamState = new StreamState();
        this.jorbisBlock = new Block(this.jorbisDspState);
        this.jorbisDspState = new DspState();
        this.jorbisInfo = new Info();
        this.joggSyncState = new SyncState();
        try {
            URLConnection uRLConnectionOpenConnection = url.openConnection();
            this.urlConnection = uRLConnectionOpenConnection;
            if (uRLConnectionOpenConnection != null) {
                try {
                    this.inputStream = openInputStream();
                } catch (IOException e) {
                    errorMessage("Unable to acquire inputstream in method 'initialize'.");
                    printStackTrace(e);
                    cleanup();
                    return GET;
                }
            }
            endOfStream(SET, GET);
            this.joggSyncState.init();
            this.joggSyncState.buffer(this.bufferSize);
            this.buffer = this.joggSyncState.data;
            try {
                if (!readHeader()) {
                    errorMessage("Error reading the header");
                    return GET;
                }
                this.convertedBufferSize = this.bufferSize * 2;
                this.jorbisDspState.synthesis_init(this.jorbisInfo);
                this.jorbisBlock.init(this.jorbisDspState);
                this.audioFormat = new AudioFormat(this.jorbisInfo.rate, 16, this.jorbisInfo.channels, SET, GET);
                this.pcmInfo = new float[1][][];
                this.pcmIndex = new int[this.jorbisInfo.channels];
                initialized(SET, SET);
                return SET;
            } catch (IOException unused2) {
                errorMessage("Error reading the header");
                return GET;
            }
        } catch (UnknownServiceException e2) {
            errorMessage("Unable to create a UrlConnection in method 'initialize'.");
            printStackTrace(e2);
            cleanup();
            return GET;
        } catch (IOException e3) {
            errorMessage("Unable to create a UrlConnection in method 'initialize'.");
            printStackTrace(e3);
            cleanup();
            return GET;
        }
    }

    protected InputStream openInputStream() {
        return this.urlConnection.getInputStream();
    }

    @Override // paulscode.sound.ICodec
    public boolean initialized() {
        return initialized(GET, GET);
    }

    @Override // paulscode.sound.ICodec
    public SoundBuffer read() {
        byte[] bytes = readBytes();
        if (bytes == null) {
            return null;
        }
        return new SoundBuffer(bytes, this.audioFormat);
    }

    @Override // paulscode.sound.ICodec
    public SoundBuffer readAll() {
        byte[] bytes = readBytes();
        while (!endOfStream(GET, GET) && ((bytes = appendByteArrays(bytes, readBytes())) == null || bytes.length < SoundSystemConfig.getMaxFileSize())) {
        }
        return new SoundBuffer(bytes, this.audioFormat);
    }

    @Override // paulscode.sound.ICodec
    public boolean endOfStream() {
        return endOfStream(GET, GET);
    }

    @Override // paulscode.sound.ICodec
    public void cleanup() {
        this.joggStreamState.clear();
        this.jorbisBlock.clear();
        this.jorbisDspState.clear();
        this.jorbisInfo.clear();
        this.joggSyncState.clear();
        InputStream inputStream = this.inputStream;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        this.joggStreamState = null;
        this.jorbisBlock = null;
        this.jorbisDspState = null;
        this.jorbisInfo = null;
        this.joggSyncState = null;
        this.inputStream = null;
    }

    @Override // paulscode.sound.ICodec
    public AudioFormat getAudioFormat() {
        return this.audioFormat;
    }

    private boolean readHeader() throws IOException {
        this.index = this.joggSyncState.buffer(this.bufferSize);
        int i = this.inputStream.read(this.joggSyncState.data, this.index, this.bufferSize);
        if (i < 0) {
            i = 0;
        }
        this.joggSyncState.wrote(i);
        if (this.joggSyncState.pageout(this.joggPage) != 1) {
            if (i < this.bufferSize) {
                return SET;
            }
            errorMessage("Ogg header not recognized in method 'readHeader'.");
            return GET;
        }
        this.joggStreamState.init(this.joggPage.serialno());
        this.jorbisInfo.init();
        this.jorbisComment.init();
        if (this.joggStreamState.pagein(this.joggPage) < 0) {
            errorMessage("Problem with first Ogg header page in method 'readHeader'.");
            return GET;
        }
        if (this.joggStreamState.packetout(this.joggPacket) != 1) {
            errorMessage("Problem with first Ogg header packet in method 'readHeader'.");
            return GET;
        }
        if (this.jorbisInfo.synthesis_headerin(this.jorbisComment, this.joggPacket) < 0) {
            errorMessage("File does not contain Vorbis header in method 'readHeader'.");
            return GET;
        }
        int i2 = 0;
        while (i2 < 2) {
            while (i2 < 2) {
                int iPageout = this.joggSyncState.pageout(this.joggPage);
                if (iPageout == 0) {
                    break;
                }
                if (iPageout == 1) {
                    this.joggStreamState.pagein(this.joggPage);
                    while (i2 < 2) {
                        int iPacketout = this.joggStreamState.packetout(this.joggPacket);
                        if (iPacketout == 0) {
                            break;
                        }
                        if (iPacketout == -1) {
                            errorMessage("Secondary Ogg header corrupt in method 'readHeader'.");
                            return GET;
                        }
                        this.jorbisInfo.synthesis_headerin(this.jorbisComment, this.joggPacket);
                        i2++;
                    }
                }
            }
            this.index = this.joggSyncState.buffer(this.bufferSize);
            int i3 = this.inputStream.read(this.joggSyncState.data, this.index, this.bufferSize);
            if (i3 < 0) {
                i3 = 0;
            }
            if (i3 == 0 && i2 < 2) {
                errorMessage("End of file reached before finished readingOgg header in method 'readHeader'");
                return GET;
            }
            this.joggSyncState.wrote(i3);
        }
        this.index = this.joggSyncState.buffer(this.bufferSize);
        this.buffer = this.joggSyncState.data;
        return SET;
    }

    private byte[] readBytes() {
        byte[] bArrAppendByteArrays = null;
        if (!initialized(GET, GET) || endOfStream(GET, GET)) {
            return null;
        }
        int iPageout = this.joggSyncState.pageout(this.joggPage);
        if (iPageout == -1 || iPageout == 0) {
            endOfStream(SET, SET);
        } else if (iPageout == 1) {
            this.joggStreamState.pagein(this.joggPage);
            if (this.joggPage.granulepos() == 0) {
                endOfStream(SET, SET);
            } else {
                while (true) {
                    int iPacketout = this.joggStreamState.packetout(this.joggPacket);
                    if (iPacketout == -1 || iPacketout == 0) {
                        break;
                    }
                    if (iPacketout == 1) {
                        bArrAppendByteArrays = appendByteArrays(bArrAppendByteArrays, decodeCurrentPacket());
                    }
                }
                if (this.joggPage.eos() != 0) {
                    endOfStream(SET, SET);
                }
            }
        }
        if (!endOfStream(GET, GET)) {
            int iBuffer = this.joggSyncState.buffer(this.bufferSize);
            this.index = iBuffer;
            if (iBuffer == -1) {
                endOfStream(SET, SET);
            } else {
                byte[] bArr = this.joggSyncState.data;
                this.buffer = bArr;
                try {
                    int i = this.inputStream.read(bArr, this.index, this.bufferSize);
                    this.count = i;
                    this.joggSyncState.wrote(i);
                    if (this.count == 0) {
                        endOfStream(SET, SET);
                    }
                } catch (Exception e) {
                    printStackTrace(e);
                }
            }
        }
        return bArrAppendByteArrays;
    }

    private byte[] decodeCurrentPacket() {
        int iSynthesis_pcmout;
        byte[] bArr = new byte[this.convertedBufferSize];
        if (this.jorbisBlock.synthesis(this.joggPacket) == 0) {
            this.jorbisDspState.synthesis_blockin(this.jorbisBlock);
        }
        int i = this.convertedBufferSize / (this.jorbisInfo.channels * 2);
        int i2 = 0;
        while (i2 < this.convertedBufferSize && (iSynthesis_pcmout = this.jorbisDspState.synthesis_pcmout(this.pcmInfo, this.pcmIndex)) > 0) {
            if (iSynthesis_pcmout >= i) {
                iSynthesis_pcmout = i;
            }
            for (int i3 = 0; i3 < this.jorbisInfo.channels; i3++) {
                int i4 = i3 * 2;
                for (int i5 = 0; i5 < iSynthesis_pcmout; i5++) {
                    int i6 = (int) (this.pcmInfo[0][i3][this.pcmIndex[i3] + i5] * 32767.0f);
                    if (i6 > 32767) {
                        i6 = 32767;
                    }
                    if (i6 < -32768) {
                        i6 = -32768;
                    }
                    if (i6 < 0) {
                        i6 |= 32768;
                    }
                    if (LITTLE_ENDIAN) {
                        int i7 = i2 + i4;
                        bArr[i7] = (byte) i6;
                        bArr[i7 + 1] = (byte) (i6 >>> 8);
                    } else {
                        int i8 = i2 + i4;
                        bArr[i8 + 1] = (byte) i6;
                        bArr[i8] = (byte) (i6 >>> 8);
                    }
                    i4 += this.jorbisInfo.channels * 2;
                }
            }
            i2 += this.jorbisInfo.channels * iSynthesis_pcmout * 2;
            this.jorbisDspState.synthesis_read(iSynthesis_pcmout);
        }
        return trimArray(bArr, i2);
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

    private static byte[] appendByteArrays(byte[] bArr, byte[] bArr2) {
        if (bArr == null && bArr2 == null) {
            return null;
        }
        if (bArr == null) {
            byte[] bArr3 = new byte[bArr2.length];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            return bArr3;
        }
        if (bArr2 == null) {
            byte[] bArr4 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
            return bArr4;
        }
        byte[] bArr5 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr5, bArr.length, bArr2.length);
        return bArr5;
    }

    private void errorMessage(String str) {
        this.logger.errorMessage("CodecJOrbis", str, 0);
    }

    private void printStackTrace(Exception exc) {
        this.logger.printStackTrace(exc, 1);
    }
}
