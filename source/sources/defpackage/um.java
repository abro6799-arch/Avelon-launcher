package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class um extends uu {
    @Override // defpackage.uu
    public int a(int i, Random random) {
        return 0;
    }

    @Override // defpackage.uu
    public int a(Random random) {
        return 0;
    }

    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    protected um(int i, int i2) {
        super(i, i2, ln.z);
        b(true);
    }

    @Override // defpackage.uu
    public void a(xp xpVar, int i, int i2, int i3) {
        a(((xpVar.e(i, i2, i3) * 2) + 1) / 16.0f, 0.0f, 0.0625f, 0.9375f, 0.5f, 0.9375f);
    }

    @Override // defpackage.uu
    public void g() {
        a(0.0625f, 0.0f, 0.0625f, 0.9375f, 0.5f, 0.9375f);
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        return eq.b(i + (((fdVar.e(i, i2, i3) * 2) + 1) / 16.0f), i2, i3 + 0.0625f, (i + 1) - 0.0625f, (i2 + 0.5f) - 0.0625f, (i3 + 1) - 0.0625f);
    }

    @Override // defpackage.uu
    public eq f(fd fdVar, int i, int i2, int i3) {
        return eq.b(i + (((fdVar.e(i, i2, i3) * 2) + 1) / 16.0f), i2, i3 + 0.0625f, (i + 1) - 0.0625f, i2 + 0.5f, (i3 + 1) - 0.0625f);
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        if (i == 1) {
            return this.bm;
        }
        if (i == 0) {
            return this.bm + 3;
        }
        if (i2 > 0 && i == 4) {
            return this.bm + 2;
        }
        return this.bm + 1;
    }

    @Override // defpackage.uu
    public int a(int i) {
        if (i == 1) {
            return this.bm;
        }
        if (i == 0) {
            return this.bm + 3;
        }
        return this.bm + 1;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        c(fdVar, i, i2, i3, gsVar);
        return true;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, gs gsVar) {
        c(fdVar, i, i2, i3, gsVar);
    }

    private void c(fd fdVar, int i, int i2, int i3, gs gsVar) {
        if (gsVar.Y < 20) {
            gsVar.c(3);
            int iE = fdVar.e(i, i2, i3) + 1;
            if (iE >= 6) {
                fdVar.f(i, i2, i3, 0);
            } else {
                fdVar.d(i, i2, i3, iE);
                fdVar.k(i, i2, i3);
            }
        }
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
        return fdVar.f(i, i2 - 1, i3).a();
    }
}
