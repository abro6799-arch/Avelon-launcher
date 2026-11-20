package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class fv {
    protected int a = 8;
    protected Random b = new Random();

    protected void a(fd fdVar, int i, int i2, int i3, int i4, byte[] bArr) {
    }

    public void a(cl clVar, fd fdVar, int i, int i2, byte[] bArr) {
        int i3 = this.a;
        this.b.setSeed(fdVar.s());
        long jNextLong = ((this.b.nextLong() / 2) * 2) + 1;
        long jNextLong2 = ((this.b.nextLong() / 2) * 2) + 1;
        for (int i4 = i - i3; i4 <= i + i3; i4++) {
            for (int i5 = i2 - i3; i5 <= i2 + i3; i5++) {
                this.b.setSeed(((((long) i4) * jNextLong) + (((long) i5) * jNextLong2)) ^ fdVar.s());
                a(fdVar, i4, i5, i, i2, bArr);
            }
        }
    }
}
