package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class oi extends uu {
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

    protected oi(int i, int i2) {
        super(i, i2, ln.o);
        b(true);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, int i4) {
        if (i4 == 2 && fdVar.h(i, i2, i3 + 1)) {
            return true;
        }
        if (i4 == 3 && fdVar.h(i, i2, i3 - 1)) {
            return true;
        }
        if (i4 == 4 && fdVar.h(i + 1, i2, i3)) {
            return true;
        }
        return i4 == 5 && fdVar.h(i - 1, i2, i3);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        return fdVar.h(i + (-1), i2, i3) || fdVar.h(i + 1, i2, i3) || fdVar.h(i, i2, i3 + (-1)) || fdVar.h(i, i2, i3 + 1);
    }

    @Override // defpackage.uu
    public void e(fd fdVar, int i, int i2, int i3, int i4) {
        int iE = fdVar.e(i, i2, i3) & 8;
        int iH = 4;
        if (i4 != 2 || !fdVar.h(i, i2, i3 + 1)) {
            if (i4 == 3 && fdVar.h(i, i2, i3 - 1)) {
                iH = 3;
            } else if (i4 == 4 && fdVar.h(i + 1, i2, i3)) {
                iH = 2;
            } else {
                iH = (i4 == 5 && fdVar.h(i + (-1), i2, i3)) ? 1 : h(fdVar, i, i2, i3);
            }
        }
        fdVar.d(i, i2, i3, iH + iE);
    }

    private int h(fd fdVar, int i, int i2, int i3) {
        if (fdVar.h(i - 1, i2, i3)) {
            return 1;
        }
        if (fdVar.h(i + 1, i2, i3)) {
            return 2;
        }
        if (fdVar.h(i, i2, i3 - 1)) {
            return 3;
        }
        return fdVar.h(i, i2, i3 + 1) ? 4 : 1;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        if (i(fdVar, i, i2, i3)) {
            int iE = fdVar.e(i, i2, i3) & 7;
            boolean z = !fdVar.h(i + (-1), i2, i3) && iE == 1;
            if (!fdVar.h(i + 1, i2, i3) && iE == 2) {
                z = true;
            }
            if (!fdVar.h(i, i2, i3 - 1) && iE == 3) {
                z = true;
            }
            if ((fdVar.h(i, i2, i3 + 1) || iE != 4) ? z : true) {
                g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
                fdVar.f(i, i2, i3, 0);
            }
        }
    }

    private boolean i(fd fdVar, int i, int i2, int i3) {
        if (a(fdVar, i, i2, i3)) {
            return true;
        }
        g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
        fdVar.f(i, i2, i3, 0);
        return false;
    }

    @Override // defpackage.uu
    public void a(xp xpVar, int i, int i2, int i3) {
        int iE = xpVar.e(i, i2, i3);
        int i4 = iE & 7;
        float f = (iE & 8) > 0 ? 0.0625f : 0.125f;
        if (i4 == 1) {
            a(0.0f, 0.375f, 0.3125f, f, 0.625f, 0.6875f);
            return;
        }
        if (i4 == 2) {
            a(1.0f - f, 0.375f, 0.3125f, 1.0f, 0.625f, 0.6875f);
        } else if (i4 == 3) {
            a(0.3125f, 0.375f, 0.0f, 0.6875f, 0.625f, f);
        } else if (i4 == 4) {
            a(0.3125f, 0.375f, 1.0f - f, 0.6875f, 0.625f, 1.0f);
        }
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, gs gsVar) {
        a(fdVar, i, i2, i3, gsVar);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        int iE = fdVar.e(i, i2, i3);
        int i4 = iE & 7;
        int i5 = 8 - (iE & 8);
        if (i5 == 0) {
            return true;
        }
        fdVar.d(i, i2, i3, i5 + i4);
        fdVar.b(i, i2, i3, i, i2, i3);
        fdVar.a(((double) i) + 0.5d, ((double) i2) + 0.5d, ((double) i3) + 0.5d, "random.click", 0.3f, 0.6f);
        fdVar.i(i, i2, i3, this.bn);
        if (i4 == 1) {
            fdVar.i(i - 1, i2, i3, this.bn);
        } else if (i4 == 2) {
            fdVar.i(i + 1, i2, i3, this.bn);
        } else if (i4 == 3) {
            fdVar.i(i, i2, i3 - 1, this.bn);
        } else if (i4 == 4) {
            fdVar.i(i, i2, i3 + 1, this.bn);
        } else {
            fdVar.i(i, i2 - 1, i3, this.bn);
        }
        fdVar.c(i, i2, i3, this.bn, e());
        return true;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        int iE = fdVar.e(i, i2, i3);
        if ((iE & 8) > 0) {
            fdVar.i(i, i2, i3, this.bn);
            int i4 = iE & 7;
            if (i4 == 1) {
                fdVar.i(i - 1, i2, i3, this.bn);
            } else if (i4 == 2) {
                fdVar.i(i + 1, i2, i3, this.bn);
            } else if (i4 == 3) {
                fdVar.i(i, i2, i3 - 1, this.bn);
            } else if (i4 == 4) {
                fdVar.i(i, i2, i3 + 1, this.bn);
            } else {
                fdVar.i(i, i2 - 1, i3, this.bn);
            }
        }
        super.b(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public boolean c(xp xpVar, int i, int i2, int i3, int i4) {
        return (xpVar.e(i, i2, i3) & 8) > 0;
    }

    @Override // defpackage.uu
    public boolean d(fd fdVar, int i, int i2, int i3, int i4) {
        int iE = fdVar.e(i, i2, i3);
        if ((iE & 8) == 0) {
            return false;
        }
        int i5 = iE & 7;
        if (i5 == 5 && i4 == 1) {
            return true;
        }
        if (i5 == 4 && i4 == 2) {
            return true;
        }
        if (i5 == 3 && i4 == 3) {
            return true;
        }
        if (i5 == 2 && i4 == 4) {
            return true;
        }
        return i5 == 1 && i4 == 5;
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
        int i4 = iE & 7;
        fdVar.d(i, i2, i3, i4);
        fdVar.i(i, i2, i3, this.bn);
        if (i4 == 1) {
            fdVar.i(i - 1, i2, i3, this.bn);
        } else if (i4 == 2) {
            fdVar.i(i + 1, i2, i3, this.bn);
        } else if (i4 == 3) {
            fdVar.i(i, i2, i3 - 1, this.bn);
        } else if (i4 == 4) {
            fdVar.i(i, i2, i3 + 1, this.bn);
        } else {
            fdVar.i(i, i2 - 1, i3, this.bn);
        }
        fdVar.a(((double) i) + 0.5d, ((double) i2) + 0.5d, ((double) i3) + 0.5d, "random.click", 0.3f, 0.5f);
        fdVar.b(i, i2, i3, i, i2, i3);
    }

    @Override // defpackage.uu
    public void g() {
        a(0.3125f, 0.375f, 0.375f, 0.6875f, 0.625f, 0.625f);
    }
}
