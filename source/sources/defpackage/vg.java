package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class vg extends uu {
    @Override // defpackage.uu
    public int a(int i, int i2) {
        if (i == 1 || i == 0) {
            return 21;
        }
        if (i2 == 1) {
            return 116;
        }
        return i2 == 2 ? 117 : 20;
    }

    @Override // defpackage.uu
    public int a(Random random) {
        return 1;
    }

    @Override // defpackage.uu
    protected int b_(int i) {
        return i;
    }

    protected vg(int i) {
        super(i, ln.d);
        this.bm = 20;
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return uu.K.bn;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, gs gsVar, int i, int i2, int i3, int i4) {
        super.a(fdVar, gsVar, i, i2, i3, i4);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        if (fdVar.a(i - 5, i2 - 5, i3 - 5, i + 5, i2 + 5, i3 + 5)) {
            for (int i4 = -4; i4 <= 4; i4++) {
                for (int i5 = -4; i5 <= 4; i5++) {
                    for (int i6 = -4; i6 <= 4; i6++) {
                        int i7 = i + i4;
                        int i8 = i2 + i5;
                        int i9 = i3 + i6;
                        if (fdVar.a(i7, i8, i9) == uu.L.bn) {
                            int iE = fdVar.e(i7, i8, i9);
                            if ((iE & 8) == 0) {
                                fdVar.e(i7, i8, i9, iE | 8);
                            }
                        }
                    }
                }
            }
        }
    }
}
