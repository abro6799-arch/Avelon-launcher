package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class vm extends uu {
    @Override // defpackage.uu
    public int b() {
        return 2;
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
    public eq e(fd fdVar, int i, int i2, int i3) {
        return null;
    }

    protected vm(int i, int i2) {
        super(i, i2, ln.o);
        b(true);
    }

    private boolean h(fd fdVar, int i, int i2, int i3) {
        return fdVar.h(i, i2, i3) || fdVar.a(i, i2, i3) == uu.ba.bn;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        return fdVar.h(i + (-1), i2, i3) || fdVar.h(i + 1, i2, i3) || fdVar.h(i, i2, i3 + (-1)) || fdVar.h(i, i2, i3 + 1) || h(fdVar, i, i2 - 1, i3);
    }

    @Override // defpackage.uu
    public void e(fd fdVar, int i, int i2, int i3, int i4) {
        int iE = fdVar.e(i, i2, i3);
        if (i4 == 1 && h(fdVar, i, i2 - 1, i3)) {
            iE = 5;
        }
        if (i4 == 2 && fdVar.h(i, i2, i3 + 1)) {
            iE = 4;
        }
        if (i4 == 3 && fdVar.h(i, i2, i3 - 1)) {
            iE = 3;
        }
        fdVar.d(i, i2, i3, (i4 == 5 && fdVar.h(i + (-1), i2, i3)) ? 1 : (i4 == 4 && fdVar.h(i + 1, i2, i3)) ? 2 : iE);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        super.a(fdVar, i, i2, i3, random);
        if (fdVar.e(i, i2, i3) == 0) {
            c(fdVar, i, i2, i3);
        }
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        if (fdVar.h(i - 1, i2, i3)) {
            fdVar.d(i, i2, i3, 1);
        } else if (fdVar.h(i + 1, i2, i3)) {
            fdVar.d(i, i2, i3, 2);
        } else if (fdVar.h(i, i2, i3 - 1)) {
            fdVar.d(i, i2, i3, 3);
        } else if (fdVar.h(i, i2, i3 + 1)) {
            fdVar.d(i, i2, i3, 4);
        } else if (h(fdVar, i, i2 - 1, i3)) {
            fdVar.d(i, i2, i3, 5);
        }
        i(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        if (i(fdVar, i, i2, i3)) {
            int iE = fdVar.e(i, i2, i3);
            boolean z = !fdVar.h(i + (-1), i2, i3) && iE == 1;
            if (!fdVar.h(i + 1, i2, i3) && iE == 2) {
                z = true;
            }
            if (!fdVar.h(i, i2, i3 - 1) && iE == 3) {
                z = true;
            }
            if (!fdVar.h(i, i2, i3 + 1) && iE == 4) {
                z = true;
            }
            if ((h(fdVar, i, i2 + (-1), i3) || iE != 5) ? z : true) {
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
    public vf a(fd fdVar, int i, int i2, int i3, bt btVar, bt btVar2) {
        int iE = fdVar.e(i, i2, i3) & 7;
        if (iE == 1) {
            a(0.0f, 0.2f, 0.35f, 0.3f, 0.8f, 0.65f);
        } else if (iE == 2) {
            a(0.7f, 0.2f, 0.35f, 1.0f, 0.8f, 0.65f);
        } else if (iE == 3) {
            a(0.35f, 0.2f, 0.0f, 0.65f, 0.8f, 0.3f);
        } else if (iE == 4) {
            a(0.35f, 0.2f, 0.7f, 0.65f, 0.8f, 1.0f);
        } else {
            a(0.4f, 0.0f, 0.4f, 0.6f, 0.6f, 0.6f);
        }
        return super.a(fdVar, i, i2, i3, btVar, btVar2);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, Random random) {
        int iE = fdVar.e(i, i2, i3);
        double d = i + 0.5f;
        double d2 = i2 + 0.7f;
        double d3 = i3 + 0.5f;
        if (iE == 1) {
            double d4 = d - 0.27000001072883606d;
            double d5 = d2 + 0.2199999988079071d;
            fdVar.a("smoke", d4, d5, d3, 0.0d, 0.0d, 0.0d);
            fdVar.a("flame", d4, d5, d3, 0.0d, 0.0d, 0.0d);
            return;
        }
        if (iE == 2) {
            double d6 = 0.27000001072883606d + d;
            double d7 = d2 + 0.2199999988079071d;
            fdVar.a("smoke", d6, d7, d3, 0.0d, 0.0d, 0.0d);
            fdVar.a("flame", d6, d7, d3, 0.0d, 0.0d, 0.0d);
            return;
        }
        if (iE == 3) {
            double d8 = d2 + 0.2199999988079071d;
            double d9 = d3 - 0.27000001072883606d;
            fdVar.a("smoke", d, d8, d9, 0.0d, 0.0d, 0.0d);
            fdVar.a("flame", d, d8, d9, 0.0d, 0.0d, 0.0d);
            return;
        }
        if (iE == 4) {
            double d10 = d2 + 0.2199999988079071d;
            double d11 = d3 + 0.27000001072883606d;
            fdVar.a("smoke", d, d10, d11, 0.0d, 0.0d, 0.0d);
            fdVar.a("flame", d, d10, d11, 0.0d, 0.0d, 0.0d);
            return;
        }
        fdVar.a("smoke", d, d2, d3, 0.0d, 0.0d, 0.0d);
        fdVar.a("flame", d, d2, d3, 0.0d, 0.0d, 0.0d);
    }
}
