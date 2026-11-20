package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class bs extends uu {
    private boolean a;

    @Override // defpackage.uu
    public int e() {
        return 30;
    }

    public bs(int i, int i2, boolean z) {
        super(i, i2, ln.e);
        if (z) {
            b(true);
        }
        this.a = z;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, gs gsVar) {
        h(fdVar, i, i2, i3);
        super.b(fdVar, i, i2, i3, gsVar);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, sn snVar) {
        h(fdVar, i, i2, i3);
        super.b(fdVar, i, i2, i3, snVar);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        h(fdVar, i, i2, i3);
        return super.a(fdVar, i, i2, i3, gsVar);
    }

    private void h(fd fdVar, int i, int i2, int i3) {
        i(fdVar, i, i2, i3);
        if (this.bn == uu.aO.bn) {
            fdVar.f(i, i2, i3, uu.aP.bn);
        }
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        if (this.bn == uu.aP.bn) {
            fdVar.f(i, i2, i3, uu.aO.bn);
        }
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return gm.aA.bf;
    }

    @Override // defpackage.uu
    public int a(Random random) {
        return random.nextInt(2) + 4;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, Random random) {
        if (this.a) {
            i(fdVar, i, i2, i3);
        }
    }

    private void i(fd fdVar, int i, int i2, int i3) {
        Random random = fdVar.r;
        int i4 = 0;
        while (i4 < 6) {
            double dNextFloat = i + random.nextFloat();
            double dNextFloat2 = i2 + random.nextFloat();
            double dNextFloat3 = i3 + random.nextFloat();
            if (i4 == 0) {
                int i5 = i2 + 1;
                if (!fdVar.g(i, i5, i3)) {
                    dNextFloat2 = ((double) i5) + 0.0625d;
                }
            }
            if (i4 == 1 && !fdVar.g(i, i2 - 1, i3)) {
                dNextFloat2 = ((double) (i2 + 0)) - 0.0625d;
            }
            double d = dNextFloat2;
            if (i4 == 2) {
                int i6 = i3 + 1;
                if (!fdVar.g(i, i2, i6)) {
                    dNextFloat3 = ((double) i6) + 0.0625d;
                }
            }
            double d2 = (i4 != 3 || fdVar.g(i, i2, i3 + (-1))) ? dNextFloat3 : ((double) (i3 + 0)) - 0.0625d;
            if (i4 == 4) {
                int i7 = i + 1;
                if (!fdVar.g(i7, i2, i3)) {
                    dNextFloat = ((double) i7) + 0.0625d;
                }
            }
            if (i4 == 5 && !fdVar.g(i - 1, i2, i3)) {
                dNextFloat = ((double) (i + 0)) - 0.0625d;
            }
            double d3 = dNextFloat;
            if (d3 < i || d3 > i + 1 || d < 0.0d || d > i2 + 1 || d2 < i3 || d2 > i3 + 1) {
                fdVar.a("reddust", d3, d, d2, 0.0d, 0.0d, 0.0d);
            }
            i4++;
            random = random;
        }
    }
}
