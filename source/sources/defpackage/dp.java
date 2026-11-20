package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class dp extends uu {
    @Override // defpackage.uu
    public int a(Random random) {
        return 1;
    }

    @Override // defpackage.uu
    public int b() {
        return 8;
    }

    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    protected dp(int i, int i2) {
        super(i, i2, ln.o);
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        int iE = fdVar.e(i, i2, i3);
        if (iE == 2) {
            a(0.0f, 0.0f, 0.875f, 1.0f, 1.0f, 1.0f);
        }
        if (iE == 3) {
            a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.125f);
        }
        if (iE == 4) {
            a(0.875f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
        }
        if (iE == 5) {
            a(0.0f, 0.0f, 0.0f, 0.125f, 1.0f, 1.0f);
        }
        return super.e(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public eq f(fd fdVar, int i, int i2, int i3) {
        int iE = fdVar.e(i, i2, i3);
        if (iE == 2) {
            a(0.0f, 0.0f, 0.875f, 1.0f, 1.0f, 1.0f);
        }
        if (iE == 3) {
            a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.125f);
        }
        if (iE == 4) {
            a(0.875f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
        }
        if (iE == 5) {
            a(0.0f, 0.0f, 0.0f, 0.125f, 1.0f, 1.0f);
        }
        return super.f(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        return fdVar.h(i + (-1), i2, i3) || fdVar.h(i + 1, i2, i3) || fdVar.h(i, i2, i3 + (-1)) || fdVar.h(i, i2, i3 + 1);
    }

    @Override // defpackage.uu
    public void e(fd fdVar, int i, int i2, int i3, int i4) {
        int iE = fdVar.e(i, i2, i3);
        if ((iE == 0 || i4 == 2) && fdVar.h(i, i2, i3 + 1)) {
            iE = 2;
        }
        if ((iE == 0 || i4 == 3) && fdVar.h(i, i2, i3 - 1)) {
            iE = 3;
        }
        if ((iE == 0 || i4 == 4) && fdVar.h(i + 1, i2, i3)) {
            iE = 4;
        }
        if ((iE == 0 || i4 == 5) && fdVar.h(i - 1, i2, i3)) {
            iE = 5;
        }
        fdVar.d(i, i2, i3, iE);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        int iE = fdVar.e(i, i2, i3);
        boolean z = iE == 2 && fdVar.h(i, i2, i3 + 1);
        if (iE == 3 && fdVar.h(i, i2, i3 - 1)) {
            z = true;
        }
        if (iE == 4 && fdVar.h(i + 1, i2, i3)) {
            z = true;
        }
        if (!((iE == 5 && fdVar.h(i + (-1), i2, i3)) ? true : z)) {
            g(fdVar, i, i2, i3, iE);
            fdVar.f(i, i2, i3, 0);
        }
        super.b(fdVar, i, i2, i3, i4);
    }
}
