package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class vl extends uu {
    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    protected vl(int i) {
        super(i, ln.c);
        this.bm = 87;
        b(true);
        a(0.0f, 0.0f, 0.0f, 1.0f, 0.9375f, 1.0f);
        g(255);
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        return eq.b(i + 0, i2 + 0, i3 + 0, i + 1, i2 + 1, i3 + 1);
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        if (i == 1 && i2 > 0) {
            return this.bm - 1;
        }
        if (i == 1) {
            return this.bm;
        }
        return 2;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        if (random.nextInt(5) == 0) {
            if (i(fdVar, i, i2, i3) || fdVar.t(i, i2 + 1, i3)) {
                fdVar.d(i, i2, i3, 7);
                return;
            }
            int iE = fdVar.e(i, i2, i3);
            if (iE > 0) {
                fdVar.d(i, i2, i3, iE - 1);
            } else {
                if (h(fdVar, i, i2, i3)) {
                    return;
                }
                fdVar.f(i, i2, i3, uu.w.bn);
            }
        }
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, sn snVar) {
        if (fdVar.r.nextInt(4) == 0) {
            fdVar.f(i, i2, i3, uu.w.bn);
        }
    }

    private boolean h(fd fdVar, int i, int i2, int i3) {
        for (int i4 = i + 0; i4 <= i + 0; i4++) {
            for (int i5 = i3 + 0; i5 <= i3 + 0; i5++) {
                if (fdVar.a(i4, i2 + 1, i5) == uu.aA.bn) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean i(fd fdVar, int i, int i2, int i3) {
        for (int i4 = i - 4; i4 <= i + 4; i4++) {
            for (int i5 = i2; i5 <= i2 + 1; i5++) {
                for (int i6 = i3 - 4; i6 <= i3 + 4; i6++) {
                    if (fdVar.f(i4, i5, i6) == ln.g) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        super.b(fdVar, i, i2, i3, i4);
        if (fdVar.f(i, i2 + 1, i3).a()) {
            fdVar.f(i, i2, i3, uu.w.bn);
        }
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return uu.w.a(0, random);
    }
}
