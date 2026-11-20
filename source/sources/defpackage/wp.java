package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class wp extends uu {
    protected wp(int i) {
        super(i, ln.b);
        this.bm = 3;
        b(true);
    }

    @Override // defpackage.uu
    public int a(xp xpVar, int i, int i2, int i3, int i4) {
        if (i4 == 1) {
            return 0;
        }
        if (i4 == 0) {
            return 2;
        }
        ln lnVarF = xpVar.f(i, i2 + 1, i3);
        return (lnVarF == ln.t || lnVarF == ln.u) ? 68 : 3;
    }

    @Override // defpackage.uu
    public int b(xp xpVar, int i, int i2, int i3) {
        xpVar.a().a(i, i3, 1, 1);
        return ia.a(xpVar.a().a[0], xpVar.a().b[0]);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        if (fdVar.B) {
            return;
        }
        int i4 = i2 + 1;
        if (fdVar.n(i, i4, i3) < 4 && uu.q[fdVar.a(i, i4, i3)] > 2) {
            if (random.nextInt(4) != 0) {
                return;
            }
            fdVar.f(i, i2, i3, uu.w.bn);
        } else if (fdVar.n(i, i4, i3) >= 9) {
            int iNextInt = (i + random.nextInt(3)) - 1;
            int iNextInt2 = (i2 + random.nextInt(5)) - 3;
            int iNextInt3 = (i3 + random.nextInt(3)) - 1;
            int i5 = iNextInt2 + 1;
            int iA = fdVar.a(iNextInt, i5, iNextInt3);
            if (fdVar.a(iNextInt, iNextInt2, iNextInt3) != uu.w.bn || fdVar.n(iNextInt, i5, iNextInt3) < 4 || uu.q[iA] > 2) {
                return;
            }
            fdVar.f(iNextInt, iNextInt2, iNextInt3, uu.v.bn);
        }
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return uu.w.a(0, random);
    }
}
