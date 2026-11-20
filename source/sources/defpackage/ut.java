package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ut extends rw {
    @Override // defpackage.uu
    public int a(int i, Random random) {
        return 0;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        return false;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, int i4) {
        return false;
    }

    @Override // defpackage.rw
    protected ow a_() {
        return null;
    }

    @Override // defpackage.uu
    public int b() {
        return -1;
    }

    @Override // defpackage.rw, defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
    }

    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    public ut(int i) {
        super(i, ln.B);
        c(-1.0f);
    }

    @Override // defpackage.rw, defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        ow owVarB = fdVar.b(i, i2, i3);
        if (owVarB != null && (owVarB instanceof uk)) {
            ((uk) owVarB).l();
        } else {
            super.b(fdVar, i, i2, i3);
        }
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        if (fdVar.B || fdVar.b(i, i2, i3) != null) {
            return false;
        }
        fdVar.f(i, i2, i3, 0);
        return true;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, int i4, float f) {
        uk ukVarC;
        if (fdVar.B || (ukVarC = c((xp) fdVar, i, i2, i3)) == null) {
            return;
        }
        uu.m[ukVarC.a()].g(fdVar, i, i2, i3, ukVarC.e());
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        if (fdVar.B) {
            return;
        }
        fdVar.b(i, i2, i3);
    }

    public static ow a(int i, int i2, int i3, boolean z, boolean z2) {
        return new uk(i, i2, i3, z, z2);
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        uk ukVarC = c((xp) fdVar, i, i2, i3);
        if (ukVarC == null) {
            return null;
        }
        float fA = ukVarC.a(0.0f);
        if (ukVarC.b()) {
            fA = 1.0f - fA;
        }
        return a(fdVar, i, i2, i3, ukVarC.a(), fA, ukVarC.d());
    }

    @Override // defpackage.uu
    public void a(xp xpVar, int i, int i2, int i3) {
        uu uuVar;
        uk ukVarC = c(xpVar, i, i2, i3);
        if (ukVarC == null || (uuVar = uu.m[ukVarC.a()]) == null || uuVar == this) {
            return;
        }
        uuVar.a(xpVar, i, i2, i3);
        float fA = ukVarC.a(0.0f);
        if (ukVarC.b()) {
            fA = 1.0f - fA;
        }
        int iD = ukVarC.d();
        this.bs = uuVar.bs - ((double) (wj.b[iD] * fA));
        this.bt = uuVar.bt - ((double) (wj.c[iD] * fA));
        this.bu = uuVar.bu - ((double) (wj.d[iD] * fA));
        this.bv = uuVar.bv - ((double) (wj.b[iD] * fA));
        this.bw = uuVar.bw - ((double) (wj.c[iD] * fA));
        this.bx = uuVar.bx - ((double) (wj.d[iD] * fA));
    }

    public eq a(fd fdVar, int i, int i2, int i3, int i4, float f, int i5) {
        eq eqVarE;
        if (i4 == 0 || i4 == this.bn || (eqVarE = uu.m[i4].e(fdVar, i, i2, i3)) == null) {
            return null;
        }
        eqVarE.a -= (double) (wj.b[i5] * f);
        eqVarE.d -= (double) (wj.b[i5] * f);
        eqVarE.b -= (double) (wj.c[i5] * f);
        eqVarE.e -= (double) (wj.c[i5] * f);
        eqVarE.c -= (double) (wj.d[i5] * f);
        eqVarE.f -= (double) (wj.d[i5] * f);
        return eqVarE;
    }

    private uk c(xp xpVar, int i, int i2, int i3) {
        ow owVarB = xpVar.b(i, i2, i3);
        if (owVarB == null || !(owVarB instanceof uk)) {
            return null;
        }
        return (uk) owVarB;
    }
}
