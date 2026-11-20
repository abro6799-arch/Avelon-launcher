package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class wi {
    public final byte[] a;

    public wi(int i) {
        this.a = new byte[i >> 1];
    }

    public wi(byte[] bArr) {
        this.a = bArr;
    }

    public int a(int i, int i2, int i3) {
        int i4;
        int i5 = (i << 11) | (i3 << 7) | i2;
        int i6 = i5 >> 1;
        if ((i5 & 1) == 0) {
            i4 = this.a[i6];
        } else {
            i4 = this.a[i6] >> 4;
        }
        return i4 & 15;
    }

    public void a(int i, int i2, int i3, int i4) {
        int i5 = (i << 11) | (i3 << 7) | i2;
        int i6 = i5 >> 1;
        if ((i5 & 1) == 0) {
            byte[] bArr = this.a;
            bArr[i6] = (byte) ((bArr[i6] & 240) | (i4 & 15));
        } else {
            byte[] bArr2 = this.a;
            bArr2[i6] = (byte) ((bArr2[i6] & 15) | ((i4 & 15) << 4));
        }
    }

    public boolean a() {
        return this.a != null;
    }
}
