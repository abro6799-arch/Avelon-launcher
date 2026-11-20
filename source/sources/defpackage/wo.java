package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class wo extends uu {
    public static final double[] a = {-0.0625d, 0.0625d, 0.1875d, 0.3125d};
    private static final int[] b = {1, 2, 3, 4};
    private final boolean c;

    @Override // defpackage.uu
    public int b() {
        return 15;
    }

    @Override // defpackage.uu
    public boolean b(xp xpVar, int i, int i2, int i3, int i4) {
        return (i4 == 0 || i4 == 1) ? false : true;
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
    public boolean f() {
        return false;
    }

    protected wo(int i, boolean z) {
        super(i, 6, ln.o);
        this.c = z;
        a(0.0f, 0.0f, 0.0f, 1.0f, 0.125f, 1.0f);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        if (fdVar.h(i, i2 - 1, i3)) {
            return super.a(fdVar, i, i2, i3);
        }
        return false;
    }

    @Override // defpackage.uu
    public boolean g(fd fdVar, int i, int i2, int i3) {
        if (fdVar.h(i, i2 - 1, i3)) {
            return super.g(fdVar, i, i2, i3);
        }
        return false;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        int iE = fdVar.e(i, i2, i3);
        boolean zF = f(fdVar, i, i2, i3, iE);
        boolean z = this.c;
        if (z && !zF) {
            fdVar.b(i, i2, i3, uu.bi.bn, iE);
            return;
        }
        if (z) {
            return;
        }
        fdVar.b(i, i2, i3, uu.bj.bn, iE);
        if (zF) {
            return;
        }
        fdVar.c(i, i2, i3, uu.bj.bn, b[(iE & 12) >> 2] * 2);
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        if (i == 0) {
            return this.c ? 99 : 115;
        }
        if (i == 1) {
            return this.c ? 147 : 131;
        }
        return 5;
    }

    @Override // defpackage.uu
    public int a(int i) {
        return a(i, 0);
    }

    @Override // defpackage.uu
    public boolean d(fd fdVar, int i, int i2, int i3, int i4) {
        return c((xp) fdVar, i, i2, i3, i4);
    }

    @Override // defpackage.uu
    public boolean c(xp xpVar, int i, int i2, int i3, int i4) {
        if (!this.c) {
            return false;
        }
        int iE = xpVar.e(i, i2, i3) & 3;
        if (iE == 0 && i4 == 3) {
            return true;
        }
        if (iE == 1 && i4 == 4) {
            return true;
        }
        if (iE == 2 && i4 == 2) {
            return true;
        }
        return iE == 3 && i4 == 5;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        if (!g(fdVar, i, i2, i3)) {
            g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
            fdVar.f(i, i2, i3, 0);
            return;
        }
        int iE = fdVar.e(i, i2, i3);
        boolean zF = f(fdVar, i, i2, i3, iE);
        int i5 = (iE & 12) >> 2;
        boolean z = this.c;
        if (z && !zF) {
            fdVar.c(i, i2, i3, this.bn, b[i5] * 2);
        } else {
            if (z || !zF) {
                return;
            }
            fdVar.c(i, i2, i3, this.bn, b[i5] * 2);
        }
    }

    private boolean f(fd fdVar, int i, int i2, int i3, int i4) {
        int i5 = i4 & 3;
        if (i5 == 0) {
            int i6 = i3 + 1;
            return fdVar.k(i, i2, i6, 3) || (fdVar.a(i, i2, i6) == uu.aw.bn && fdVar.e(i, i2, i6) > 0);
        }
        if (i5 == 1) {
            int i7 = i - 1;
            return fdVar.k(i7, i2, i3, 4) || (fdVar.a(i7, i2, i3) == uu.aw.bn && fdVar.e(i7, i2, i3) > 0);
        }
        if (i5 == 2) {
            int i8 = i3 - 1;
            return fdVar.k(i, i2, i8, 2) || (fdVar.a(i, i2, i8) == uu.aw.bn && fdVar.e(i, i2, i8) > 0);
        }
        if (i5 != 3) {
            return false;
        }
        int i9 = i + 1;
        return fdVar.k(i9, i2, i3, 5) || (fdVar.a(i9, i2, i3) == uu.aw.bn && fdVar.e(i9, i2, i3) > 0);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        int iE = fdVar.e(i, i2, i3);
        fdVar.d(i, i2, i3, (iE & 3) | (((((iE & 12) >> 2) + 1) << 2) & 12));
        return true;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, ls lsVar) {
        int iB = ((in.b(((double) ((lsVar.aS * 4.0f) / 360.0f)) + 0.5d) & 3) + 2) % 4;
        fdVar.d(i, i2, i3, iB);
        if (f(fdVar, i, i2, i3, iB)) {
            fdVar.c(i, i2, i3, this.bn, 1);
        }
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        fdVar.i(i + 1, i2, i3, this.bn);
        fdVar.i(i - 1, i2, i3, this.bn);
        fdVar.i(i, i2, i3 + 1, this.bn);
        fdVar.i(i, i2, i3 - 1, this.bn);
        fdVar.i(i, i2 - 1, i3, this.bn);
        fdVar.i(i, i2 + 1, i3, this.bn);
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return gm.aZ.bf;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x006f  */
    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, Random random) {
        double d;
        if (this.c) {
            int iE = fdVar.e(i, i2, i3);
            double dNextFloat = ((double) (i + 0.5f)) + (((double) (random.nextFloat() - 0.5f)) * 0.2d);
            double dNextFloat2 = ((double) (i2 + 0.4f)) + (((double) (random.nextFloat() - 0.5f)) * 0.2d);
            double dNextFloat3 = ((double) (i3 + 0.5f)) + (((double) (random.nextFloat() - 0.5f)) * 0.2d);
            double d2 = 0.0d;
            if (random.nextInt(2) == 0) {
                int i4 = iE & 3;
                d = -0.3125d;
                if (i4 != 0) {
                    if (i4 == 1) {
                        d = 0.0d;
                        d2 = 0.3125d;
                    } else if (i4 == 2) {
                        d = 0.3125d;
                    } else if (i4 != 3) {
                        d = 0.0d;
                    } else {
                        d2 = -0.3125d;
                        d = 0.0d;
                    }
                }
            } else {
                int i5 = (iE & 12) >> 2;
                int i6 = iE & 3;
                if (i6 == 0) {
                    d = a[i5];
                } else if (i6 == 1) {
                    d = 0.0d;
                    d2 = -a[i5];
                } else if (i6 == 2) {
                    d = -a[i5];
                } else if (i6 != 3) {
                    d = 0.0d;
                } else {
                    d = 0.0d;
                    d2 = a[i5];
                }
            }
            fdVar.a("reddust", dNextFloat + d2, dNextFloat2, dNextFloat3 + d, 0.0d, 0.0d, 0.0d);
        }
    }
}
