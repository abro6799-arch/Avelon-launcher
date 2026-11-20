package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class le extends uu {
    public static boolean f(int i) {
        return (i & 4) != 0;
    }

    @Override // defpackage.uu
    public int b() {
        return 7;
    }

    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    public int e(int i) {
        return (i & 4) == 0 ? (i - 1) & 3 : i & 3;
    }

    @Override // defpackage.uu
    public int h() {
        return 1;
    }

    protected le(int i, ln lnVar) {
        super(i, lnVar);
        this.bm = 97;
        if (lnVar == ln.f) {
            this.bm++;
        }
        a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        if (i == 0 || i == 1) {
            return this.bm;
        }
        int iE = e(i2);
        if ((i <= 3) ^ (iE == 0 || iE == 2)) {
            return this.bm;
        }
        int i3 = (iE / 2) + ((i & 1) ^ iE) + ((i2 & 4) / 4);
        int i4 = this.bm - ((i2 & 8) * 2);
        return (i3 & 1) != 0 ? -i4 : i4;
    }

    @Override // defpackage.uu
    public eq f(fd fdVar, int i, int i2, int i3) {
        a((xp) fdVar, i, i2, i3);
        return super.f(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        a((xp) fdVar, i, i2, i3);
        return super.e(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void a(xp xpVar, int i, int i2, int i3) {
        d(e(xpVar.e(i, i2, i3)));
    }

    public void d(int i) {
        a(0.0f, 0.0f, 0.0f, 1.0f, 2.0f, 1.0f);
        if (i == 0) {
            a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.1875f);
        }
        if (i == 1) {
            a(0.8125f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
        }
        if (i == 2) {
            a(0.0f, 0.0f, 0.8125f, 1.0f, 1.0f, 1.0f);
        }
        if (i == 3) {
            a(0.0f, 0.0f, 0.0f, 0.1875f, 1.0f, 1.0f);
        }
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, gs gsVar) {
        a(fdVar, i, i2, i3, gsVar);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        if (this.bA == ln.f) {
            return true;
        }
        int iE = fdVar.e(i, i2, i3);
        if ((iE & 8) != 0) {
            int i4 = i2 - 1;
            if (fdVar.a(i, i4, i3) == this.bn) {
                a(fdVar, i, i4, i3, gsVar);
            }
            return true;
        }
        int i5 = i2 + 1;
        if (fdVar.a(i, i5, i3) == this.bn) {
            fdVar.d(i, i5, i3, (iE ^ 4) + 8);
        }
        fdVar.d(i, i2, i3, iE ^ 4);
        fdVar.b(i, i2 - 1, i3, i, i2, i3);
        fdVar.a(gsVar, 1003, i, i2, i3, 0);
        return true;
    }

    public void a(fd fdVar, int i, int i2, int i3, boolean z) {
        int iE = fdVar.e(i, i2, i3);
        if ((iE & 8) != 0) {
            int i4 = i2 - 1;
            if (fdVar.a(i, i4, i3) == this.bn) {
                a(fdVar, i, i4, i3, z);
                return;
            }
            return;
        }
        if (((fdVar.e(i, i2, i3) & 4) > 0) == z) {
            return;
        }
        int i5 = i2 + 1;
        if (fdVar.a(i, i5, i3) == this.bn) {
            fdVar.d(i, i5, i3, (iE ^ 4) + 8);
        }
        fdVar.d(i, i2, i3, iE ^ 4);
        fdVar.b(i, i2 - 1, i3, i, i2, i3);
        fdVar.a((gs) null, 1003, i, i2, i3, 0);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        boolean z;
        int iE = fdVar.e(i, i2, i3);
        if ((iE & 8) != 0) {
            int i5 = i2 - 1;
            if (fdVar.a(i, i5, i3) != this.bn) {
                fdVar.f(i, i2, i3, 0);
            }
            if (i4 <= 0 || !uu.m[i4].f()) {
                return;
            }
            b(fdVar, i, i5, i3, i4);
            return;
        }
        int i6 = i2 + 1;
        if (fdVar.a(i, i6, i3) != this.bn) {
            fdVar.f(i, i2, i3, 0);
            z = true;
        } else {
            z = false;
        }
        if (!fdVar.h(i, i2 - 1, i3)) {
            fdVar.f(i, i2, i3, 0);
            if (fdVar.a(i, i6, i3) == this.bn) {
                fdVar.f(i, i6, i3, 0);
            }
            z = true;
        }
        if (z) {
            if (fdVar.B) {
                return;
            }
            g(fdVar, i, i2, i3, iE);
        } else {
            if (i4 <= 0 || !uu.m[i4].f()) {
                return;
            }
            a(fdVar, i, i2, i3, fdVar.s(i, i2, i3) || fdVar.s(i, i6, i3));
        }
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        if ((i & 8) != 0) {
            return 0;
        }
        return this.bA == ln.f ? gm.az.bf : gm.at.bf;
    }

    @Override // defpackage.uu
    public vf a(fd fdVar, int i, int i2, int i3, bt btVar, bt btVar2) {
        a((xp) fdVar, i, i2, i3);
        return super.a(fdVar, i, i2, i3, btVar, btVar2);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        return i2 < 127 && fdVar.h(i, i2 + (-1), i3) && super.a(fdVar, i, i2, i3) && super.a(fdVar, i, i2 + 1, i3);
    }
}
