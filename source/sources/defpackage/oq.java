package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class oq extends uu {
    public static boolean e(int i) {
        return (i & 4) != 0;
    }

    @Override // defpackage.uu
    public int b() {
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

    protected oq(int i, ln lnVar) {
        super(i, lnVar);
        this.bm = 84;
        if (lnVar == ln.f) {
            this.bm++;
        }
        a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
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
        d(xpVar.e(i, i2, i3));
    }

    @Override // defpackage.uu
    public void g() {
        a(0.0f, 0.40625f, 0.0f, 1.0f, 0.59375f, 1.0f);
    }

    public void d(int i) {
        a(0.0f, 0.0f, 0.0f, 1.0f, 0.1875f, 1.0f);
        if (e(i)) {
            int i2 = i & 3;
            if (i2 == 0) {
                a(0.0f, 0.0f, 0.8125f, 1.0f, 1.0f, 1.0f);
            }
            if (i2 == 1) {
                a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.1875f);
            }
            if (i2 == 2) {
                a(0.8125f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
            }
            if (i2 == 3) {
                a(0.0f, 0.0f, 0.0f, 0.1875f, 1.0f, 1.0f);
            }
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
        fdVar.d(i, i2, i3, fdVar.e(i, i2, i3) ^ 4);
        fdVar.a(gsVar, 1003, i, i2, i3, 0);
        return true;
    }

    public void a(fd fdVar, int i, int i2, int i3, boolean z) {
        int iE = fdVar.e(i, i2, i3);
        if (((iE & 4) > 0) == z) {
            return;
        }
        fdVar.d(i, i2, i3, iE ^ 4);
        fdVar.a((gs) null, 1003, i, i2, i3, 0);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        if (fdVar.B) {
            return;
        }
        int iE = fdVar.e(i, i2, i3);
        int i5 = iE & 3;
        int i6 = i5 == 0 ? i3 + 1 : i3;
        if (i5 == 1) {
            i6--;
        }
        int i7 = i5 == 2 ? i + 1 : i;
        if (i5 == 3) {
            i7--;
        }
        if (!fdVar.h(i7, i2, i6)) {
            fdVar.f(i, i2, i3, 0);
            g(fdVar, i, i2, i3, iE);
        }
        if (i4 <= 0 || !uu.m[i4].f()) {
            return;
        }
        a(fdVar, i, i2, i3, fdVar.s(i, i2, i3));
    }

    @Override // defpackage.uu
    public vf a(fd fdVar, int i, int i2, int i3, bt btVar, bt btVar2) {
        a((xp) fdVar, i, i2, i3);
        return super.a(fdVar, i, i2, i3, btVar, btVar2);
    }

    @Override // defpackage.uu
    public void e(fd fdVar, int i, int i2, int i3, int i4) {
        int i5 = i4 == 3 ? 1 : 0;
        if (i4 == 4) {
            i5 = 2;
        }
        fdVar.d(i, i2, i3, i4 != 5 ? i5 : 3);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, int i4) {
        if (i4 == 0 || i4 == 1) {
            return false;
        }
        if (i4 == 2) {
            i3++;
        }
        if (i4 == 3) {
            i3--;
        }
        if (i4 == 4) {
            i++;
        }
        if (i4 == 5) {
            i--;
        }
        return fdVar.h(i, i2, i3);
    }
}
