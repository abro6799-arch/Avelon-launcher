package defpackage;

import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class bv extends uu {
    private rt a;

    @Override // defpackage.uu
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

    @Override // defpackage.uu
    public int e() {
        return 20;
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        return null;
    }

    @Override // defpackage.uu
    public boolean f() {
        return true;
    }

    @Override // defpackage.uu
    public int h() {
        return 1;
    }

    protected bv(int i, int i2, rt rtVar, ln lnVar) {
        super(i, i2, lnVar);
        this.a = rtVar;
        b(true);
        a(0.0625f, 0.0f, 0.0625f, 0.9375f, 0.03125f, 0.9375f);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        return fdVar.h(i, i2 - 1, i3);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        if (!fdVar.h(i, i2 - 1, i3)) {
            g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
            fdVar.f(i, i2, i3, 0);
        }
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        if (fdVar.B || fdVar.e(i, i2, i3) == 0) {
            return;
        }
        h(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, sn snVar) {
        if (fdVar.B || fdVar.e(i, i2, i3) == 1) {
            return;
        }
        h(fdVar, i, i2, i3);
    }

    private void h(fd fdVar, int i, int i2, int i3) {
        int i4;
        int i5;
        bv bvVar;
        fd fdVar2 = fdVar;
        boolean z = fdVar.e(i, i2, i3) == 1;
        List listA = null;
        if (this.a == rt.everything) {
            double d = i2;
            listA = fdVar2.b((sn) null, eq.b(i + 0.125f, d, i3 + 0.125f, (i + 1) - 0.125f, d + 0.25d, (i3 + 1) - 0.125f));
        }
        if (this.a == rt.mobs) {
            double d2 = i2;
            fdVar2 = fdVar;
            listA = fdVar2.a(ls.class, eq.b(i + 0.125f, d2, i3 + 0.125f, (i + 1) - 0.125f, d2 + 0.25d, (i3 + 1) - 0.125f));
        }
        if (this.a == rt.players) {
            double d3 = i2;
            listA = fdVar2.a(gs.class, eq.b(i + 0.125f, d3, i3 + 0.125f, (i + 1) - 0.125f, d3 + 0.25d, (i3 + 1) - 0.125f));
        }
        boolean z2 = listA.size() > 0;
        if (!z2 || z) {
            i4 = i;
            i5 = i2;
        } else {
            i4 = i;
            fdVar2.d(i4, i2, i3, 1);
            fdVar2.i(i4, i2, i3, this.bn);
            fdVar2.i(i4, i2 - 1, i3, this.bn);
            fdVar.b(i, i2, i3, i, i2, i3);
            i5 = i2;
            fdVar.a(((double) i4) + 0.5d, ((double) i2) + 0.1d, ((double) i3) + 0.5d, "random.click", 0.3f, 0.6f);
        }
        if (z2 || !z) {
            bvVar = this;
        } else {
            fdVar2.d(i4, i5, i3, 0);
            int i6 = i5;
            bvVar = this;
            fdVar2.i(i4, i6, i3, bvVar.bn);
            fdVar2.i(i4, i6 - 1, i3, bvVar.bn);
            fdVar.b(i, i2, i3, i, i2, i3);
            fdVar.a(((double) i4) + 0.5d, ((double) i6) + 0.1d, ((double) i3) + 0.5d, "random.click", 0.3f, 0.5f);
        }
        if (z2) {
            fdVar.c(i, i2, i3, bvVar.bn, e());
        }
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        if (fdVar.e(i, i2, i3) > 0) {
            fdVar.i(i, i2, i3, this.bn);
            fdVar.i(i, i2 - 1, i3, this.bn);
        }
        super.b(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void a(xp xpVar, int i, int i2, int i3) {
        if (xpVar.e(i, i2, i3) == 1) {
            a(0.0625f, 0.0f, 0.0625f, 0.9375f, 0.03125f, 0.9375f);
        } else {
            a(0.0625f, 0.0f, 0.0625f, 0.9375f, 0.0625f, 0.9375f);
        }
    }

    @Override // defpackage.uu
    public boolean c(xp xpVar, int i, int i2, int i3, int i4) {
        return xpVar.e(i, i2, i3) > 0;
    }

    @Override // defpackage.uu
    public boolean d(fd fdVar, int i, int i2, int i3, int i4) {
        return fdVar.e(i, i2, i3) != 0 && i4 == 1;
    }

    @Override // defpackage.uu
    public void g() {
        a(0.0f, 0.375f, 0.0f, 1.0f, 0.625f, 1.0f);
    }
}
