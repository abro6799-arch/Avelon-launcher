package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
class np extends InputStream {
    byte[] a = new byte[1];
    final /* synthetic */ io b;
    private int c;
    private InputStream d;

    public np(io ioVar, URL url, InputStream inputStream) {
        this.b = ioVar;
        this.d = inputStream;
        String path = url.getPath();
        this.c = path.substring(path.lastIndexOf("/") + 1).hashCode();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = read(this.a, 0, 1);
        return i < 0 ? i : this.a[0];
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.d.read(bArr, i, i2);
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i + i4;
            byte b = bArr[i5];
            int i6 = this.c;
            byte b2 = (byte) (b ^ (i6 >> 8));
            bArr[i5] = b2;
            this.c = (i6 * 498729871) + (b2 * 85731);
        }
        return i3;
    }
}
