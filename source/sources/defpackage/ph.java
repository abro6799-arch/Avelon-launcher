package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ph extends pc {
    @Override // defpackage.uu
    public int e() {
        return 20;
    }

    @Override // defpackage.uu
    public boolean f() {
        return true;
    }

    public ph(int i, int i2) {
        super(i, i2, true);
        b(true);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, sn snVar) {
        if (fdVar.B) {
            return;
        }
        int iE = fdVar.e(i, i2, i3);
        if ((iE & 8) != 0) {
            return;
        }
        f(fdVar, i, i2, i3, iE);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        if (fdVar.B) {
            return;
        }
        int iE = fdVar.e(i, i2, i3);
        if ((iE & 8) == 0) {
            return;
        }
        f(fdVar, i, i2, i3, iE);
    }

    @Override // defpackage.uu
    public boolean c(xp xpVar, int i, int i2, int i3, int i4) {
        return (xpVar.e(i, i2, i3) & 8) != 0;
    }

    @Override // defpackage.uu
    public boolean d(fd fdVar, int i, int i2, int i3, int i4) {
        return (fdVar.e(i, i2, i3) & 8) != 0 && i4 == 1;
    }

    private void f(fd fdVar, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        boolean z = (i4 & 8) != 0;
        double d = i2;
        boolean z2 = fdVar.a(yl.class, eq.b((double) (((float) i) + 0.125f), d, (double) (((float) i3) + 0.125f), (double) (((float) (i + 1)) - 0.125f), d + 0.25d, (double) (((float) (i3 + 1)) - 0.125f))).size() > 0;
        if (!z2 || z) {
            i5 = i;
            i6 = i2;
        } else {
            i5 = i;
            i6 = i2;
            fdVar.d(i5, i6, i3, i4 | 8);
            fdVar.i(i5, i6, i3, this.bn);
            fdVar.i(i5, i6 - 1, i3, this.bn);
            fdVar.b(i, i2, i3, i, i2, i3);
        }
        if (!z2 && z) {
            fdVar.d(i5, i6, i3, i4 & 7);
            fdVar.i(i5, i6, i3, this.bn);
            fdVar.i(i5, i6 - 1, i3, this.bn);
            fdVar.b(i, i2, i3, i, i2, i3);
        }
        if (z2) {
            fdVar.c(i, i2, i3, this.bn, e());
        }
    }
}
