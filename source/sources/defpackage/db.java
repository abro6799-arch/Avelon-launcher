package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class db extends vm {
    private static List b = new ArrayList();
    private boolean a;

    @Override // defpackage.uu
    public int e() {
        return 2;
    }

    @Override // defpackage.uu
    public boolean f() {
        return true;
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        if (i == 1) {
            return uu.aw.a(i, i2);
        }
        return super.a(i, i2);
    }

    private boolean a(fd fdVar, int i, int i2, int i3, boolean z) {
        if (z) {
            b.add(new xu(i, i2, i3, fdVar.t()));
        }
        int i4 = 0;
        for (int i5 = 0; i5 < b.size(); i5++) {
            xu xuVar = (xu) b.get(i5);
            if (xuVar.a == i && xuVar.b == i2 && xuVar.c == i3 && (i4 = i4 + 1) >= 8) {
                return true;
            }
        }
        return false;
    }

    protected db(int i, int i2, boolean z) {
        super(i, i2);
        this.a = z;
        b(true);
    }

    @Override // defpackage.vm, defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        if (fdVar.e(i, i2, i3) == 0) {
            super.c(fdVar, i, i2, i3);
        }
        if (this.a) {
            fdVar.i(i, i2 - 1, i3, this.bn);
            fdVar.i(i, i2 + 1, i3, this.bn);
            fdVar.i(i - 1, i2, i3, this.bn);
            fdVar.i(i + 1, i2, i3, this.bn);
            fdVar.i(i, i2, i3 - 1, this.bn);
            fdVar.i(i, i2, i3 + 1, this.bn);
        }
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        if (this.a) {
            fdVar.i(i, i2 - 1, i3, this.bn);
            fdVar.i(i, i2 + 1, i3, this.bn);
            fdVar.i(i - 1, i2, i3, this.bn);
            fdVar.i(i + 1, i2, i3, this.bn);
            fdVar.i(i, i2, i3 - 1, this.bn);
            fdVar.i(i, i2, i3 + 1, this.bn);
        }
    }

    @Override // defpackage.uu
    public boolean c(xp xpVar, int i, int i2, int i3, int i4) {
        if (!this.a) {
            return false;
        }
        int iE = xpVar.e(i, i2, i3);
        if (iE == 5 && i4 == 1) {
            return false;
        }
        if (iE == 3 && i4 == 3) {
            return false;
        }
        if (iE == 4 && i4 == 2) {
            return false;
        }
        if (iE == 1 && i4 == 5) {
            return false;
        }
        return (iE == 2 && i4 == 4) ? false : true;
    }

    private boolean h(fd fdVar, int i, int i2, int i3) {
        int iE = fdVar.e(i, i2, i3);
        if (iE == 5 && fdVar.k(i, i2 - 1, i3, 0)) {
            return true;
        }
        if (iE == 3 && fdVar.k(i, i2, i3 - 1, 2)) {
            return true;
        }
        if (iE == 4 && fdVar.k(i, i2, i3 + 1, 3)) {
            return true;
        }
        if (iE == 1 && fdVar.k(i - 1, i2, i3, 4)) {
            return true;
        }
        return iE == 2 && fdVar.k(i + 1, i2, i3, 5);
    }

    @Override // defpackage.vm, defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        int i4;
        int i5 = i2;
        int i6 = i3;
        boolean zH = h(fdVar, i, i2, i3);
        while (true) {
            i4 = 0;
            if (b.size() <= 0 || fdVar.t() - ((xu) b.get(0)).d <= 100) {
                break;
            } else {
                b.remove(0);
            }
        }
        if (!this.a) {
            if (zH || a(fdVar, i, i2, i3, false)) {
                return;
            }
            fdVar.b(i, i2, i3, uu.aR.bn, fdVar.e(i, i2, i3));
            return;
        }
        if (zH) {
            fdVar.b(i, i2, i3, uu.aQ.bn, fdVar.e(i, i2, i3));
            if (a(fdVar, i, i2, i3, true)) {
                fdVar.a(i + 0.5f, i5 + 0.5f, i6 + 0.5f, "random.fizz", 0.5f, ((fdVar.r.nextFloat() - fdVar.r.nextFloat()) * 0.8f) + 2.6f);
                while (i4 < 5) {
                    fdVar.a("smoke", ((double) i) + (random.nextDouble() * 0.6d) + 0.2d, ((double) i5) + (random.nextDouble() * 0.6d) + 0.2d, ((double) i6) + (random.nextDouble() * 0.6d) + 0.2d, 0.0d, 0.0d, 0.0d);
                    i4++;
                    i5 = i2;
                    i6 = i3;
                }
            }
        }
    }

    @Override // defpackage.vm, defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        super.b(fdVar, i, i2, i3, i4);
        fdVar.c(i, i2, i3, this.bn, e());
    }

    @Override // defpackage.uu
    public boolean d(fd fdVar, int i, int i2, int i3, int i4) {
        if (i4 == 0) {
            return c((xp) fdVar, i, i2, i3, i4);
        }
        return false;
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return uu.aR.bn;
    }

    @Override // defpackage.vm, defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, Random random) {
        if (this.a) {
            int iE = fdVar.e(i, i2, i3);
            double dNextFloat = ((double) (i + 0.5f)) + (((double) (random.nextFloat() - 0.5f)) * 0.2d);
            double dNextFloat2 = ((double) (i2 + 0.7f)) + (((double) (random.nextFloat() - 0.5f)) * 0.2d);
            double dNextFloat3 = ((double) (i3 + 0.5f)) + (((double) (random.nextFloat() - 0.5f)) * 0.2d);
            if (iE == 1) {
                fdVar.a("reddust", dNextFloat - 0.27000001072883606d, dNextFloat2 + 0.2199999988079071d, dNextFloat3, 0.0d, 0.0d, 0.0d);
                return;
            }
            if (iE == 2) {
                fdVar.a("reddust", dNextFloat + 0.27000001072883606d, dNextFloat2 + 0.2199999988079071d, dNextFloat3, 0.0d, 0.0d, 0.0d);
                return;
            }
            if (iE == 3) {
                fdVar.a("reddust", dNextFloat, dNextFloat2 + 0.2199999988079071d, dNextFloat3 - 0.27000001072883606d, 0.0d, 0.0d, 0.0d);
            } else if (iE == 4) {
                fdVar.a("reddust", dNextFloat, dNextFloat2 + 0.2199999988079071d, dNextFloat3 + 0.27000001072883606d, 0.0d, 0.0d, 0.0d);
            } else {
                fdVar.a("reddust", dNextFloat, dNextFloat2, dNextFloat3, 0.0d, 0.0d, 0.0d);
            }
        }
    }
}
