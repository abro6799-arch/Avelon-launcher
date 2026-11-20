package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class tl extends wb {
    protected tl(int i, int i2) {
        super(i, i2);
        a(0.3f, 0.0f, 0.3f, 0.7f, 0.4f, 0.7f);
        b(true);
    }

    @Override // defpackage.wb, defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        if (random.nextInt(100) == 0) {
            int iNextInt = (i + random.nextInt(3)) - 1;
            int iNextInt2 = (i2 + random.nextInt(2)) - random.nextInt(2);
            int iNextInt3 = (i3 + random.nextInt(3)) - 1;
            if (fdVar.d(iNextInt, iNextInt2, iNextInt3) && g(fdVar, iNextInt, iNextInt2, iNextInt3)) {
                random.nextInt(3);
                random.nextInt(3);
                if (fdVar.d(iNextInt, iNextInt2, iNextInt3) && g(fdVar, iNextInt, iNextInt2, iNextInt3)) {
                    fdVar.f(iNextInt, iNextInt2, iNextInt3, this.bn);
                }
            }
        }
    }

    @Override // defpackage.wb
    protected boolean d(int i) {
        return uu.o[i];
    }

    @Override // defpackage.wb, defpackage.uu
    public boolean g(fd fdVar, int i, int i2, int i3) {
        return i2 >= 0 && i2 < 128 && fdVar.m(i, i2, i3) < 13 && d(fdVar.a(i, i2 - 1, i3));
    }
}
