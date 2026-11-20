package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ni extends wb {
    @Override // defpackage.uu
    public int a(Random random) {
        return 1;
    }

    @Override // defpackage.wb, defpackage.uu
    public int b() {
        return 6;
    }

    protected ni(int i, int i2) {
        super(i, i2);
        this.bm = i2;
        b(true);
        a(0.0f, 0.0f, 0.0f, 1.0f, 0.25f, 1.0f);
    }

    @Override // defpackage.wb
    protected boolean d(int i) {
        return i == uu.aB.bn;
    }

    @Override // defpackage.wb, defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        int iE;
        super.a(fdVar, i, i2, i3, random);
        if (fdVar.n(i, i2 + 1, i3) < 9 || (iE = fdVar.e(i, i2, i3)) >= 7 || random.nextInt((int) (100.0f / i(fdVar, i, i2, i3))) != 0) {
            return;
        }
        fdVar.d(i, i2, i3, iE + 1);
    }

    public void d_(fd fdVar, int i, int i2, int i3) {
        fdVar.d(i, i2, i3, 7);
    }

    private float i(fd fdVar, int i, int i2, int i3) {
        float f;
        int i4 = i3 - 1;
        int iA = fdVar.a(i, i2, i4);
        int i5 = i3 + 1;
        int iA2 = fdVar.a(i, i2, i5);
        int i6 = i - 1;
        int iA3 = fdVar.a(i6, i2, i3);
        int i7 = i + 1;
        int iA4 = fdVar.a(i7, i2, i3);
        int iA5 = fdVar.a(i6, i2, i4);
        int iA6 = fdVar.a(i7, i2, i4);
        int iA7 = fdVar.a(i7, i2, i5);
        int iA8 = fdVar.a(i6, i2, i5);
        boolean z = iA3 == this.bn || iA4 == this.bn;
        boolean z2 = iA == this.bn || iA2 == this.bn;
        boolean z3 = iA5 == this.bn || iA6 == this.bn || iA7 == this.bn || iA8 == this.bn;
        float f2 = 1.0f;
        for (int i8 = i6; i8 <= i7; i8++) {
            for (int i9 = i4; i9 <= i5; i9++) {
                int i10 = i2 - 1;
                if (fdVar.a(i8, i10, i9) == uu.aB.bn) {
                    f = fdVar.e(i8, i10, i9) > 0 ? 3.0f : 1.0f;
                } else {
                    f = 0.0f;
                }
                if (i8 != i || i9 != i3) {
                    f /= 4.0f;
                }
                f2 += f;
            }
        }
        return (z3 || (z && z2)) ? f2 / 2.0f : f2;
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        if (i2 < 0) {
            i2 = 7;
        }
        return this.bm + i2;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, int i4, float f) {
        super.a(fdVar, i, i2, i3, i4, f);
        if (fdVar.B) {
            return;
        }
        for (int i5 = 0; i5 < 3; i5++) {
            if (fdVar.r.nextInt(15) <= i4) {
                hl hlVar = new hl(fdVar, i + (fdVar.r.nextFloat() * 0.7f) + 0.15f, i2 + (fdVar.r.nextFloat() * 0.7f) + 0.15f, i3 + (fdVar.r.nextFloat() * 0.7f) + 0.15f, new iz(gm.Q));
                hlVar.c = 10;
                fdVar.b(hlVar);
            }
        }
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        if (i == 7) {
            return gm.R.bf;
        }
        return -1;
    }
}
