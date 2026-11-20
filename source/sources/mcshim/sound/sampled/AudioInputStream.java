package mcshim.sound.sampled;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class AudioInputStream extends InputStream {
    private final AudioFormat fmt;
    private final long frames;
    private final InputStream in;

    public AudioInputStream(InputStream inputStream, AudioFormat audioFormat, long j) {
        this.in = inputStream;
        this.fmt = audioFormat;
        this.frames = j;
    }

    public AudioFormat getFormat() {
        return this.fmt;
    }

    public long getFrameLength() {
        return this.frames;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.in.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.in.read(bArr, i, i2);
    }
}
