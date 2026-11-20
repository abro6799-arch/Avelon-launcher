package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class or extends uu {
    @Override // defpackage.uu
    public int b() {
        return 13;
    }

    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    protected or(int i, int i2) {
        super(i, i2, ln.v);
        b(true);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        int i4 = i2 + 1;
        if (fdVar.d(i, i4, i3)) {
            int i5 = 1;
            while (fdVar.a(i, i2 - i5, i3) == this.bn) {
                i5++;
            }
            if (i5 < 3) {
                int iE = fdVar.e(i, i2, i3);
                if (iE == 15) {
                    fdVar.f(i, i4, i3, this.bn);
                    fdVar.d(i, i2, i3, 0);
                } else {
                    fdVar.d(i, i2, i3, iE + 1);
                }
            }
        }
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        return eq.b(i + 0.0625f, i2, i3 + 0.0625f, (i + 1) - 0.0625f, (i2 + 1) - 0.0625f, (i3 + 1) - 0.0625f);
    }

    @Override // defpackage.uu
    public eq f(fd fdVar, int i, int i2, int i3) {
        return eq.b(i + 0.0625f, i2, i3 + 0.0625f, (i + 1) - 0.0625f, i2 + 1, (i3 + 1) - 0.0625f);
    }

    @Override // defpackage.uu
    public int a(int i) {
        if (i == 1) {
            return this.bm - 1;
        }
        if (i == 0) {
            return this.bm + 1;
        }
        return this.bm;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        if (super.a(fdVar, i, i2, i3)) {
            return g(fdVar, i, i2, i3);
        }
        return false;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        if (g(fdVar, i, i2, i3)) {
            return;
        }
        g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
        fdVar.f(i, i2, i3, 0);
    }

    @Override // defpackage.uu
    public boolean g(fd fdVar, int i, int i2, int i3) {
        if (fdVar.f(i - 1, i2, i3).a() || fdVar.f(i + 1, i2, i3).a() || fdVar.f(i, i2, i3 - 1).a() || fdVar.f(i, i2, i3 + 1).a()) {
            return false;
        }
        int iA = fdVar.a(i, i2 - 1, i3);
        return iA == uu.aW.bn || iA == uu.F.bn;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, sn snVar) {
        snVar.a((sn) null, 1);
    }
}
