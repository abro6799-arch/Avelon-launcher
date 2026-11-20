package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class gk extends uu {
    public static boolean a;

    @Override // defpackage.uu
    public int e() {
        return 3;
    }

    public gk(int i, int i2) {
        super(i, i2, ln.n);
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        fdVar.c(i, i2, i3, this.bn, e());
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        fdVar.c(i, i2, i3, this.bn, e());
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        h(fdVar, i, i2, i3);
    }

    private void h(fd fdVar, int i, int i2, int i3) {
        if (!c_(fdVar, i, i2 - 1, i3) || i2 < 0) {
            return;
        }
        if (a || !fdVar.a(i - 32, i2 - 32, i3 - 32, i + 32, i2 + 32, i3 + 32)) {
            fdVar.f(i, i2, i3, 0);
            while (c_(fdVar, i, i2 - 1, i3) && i2 > 0) {
                i2--;
            }
            if (i2 > 0) {
                fdVar.f(i, i2, i3, this.bn);
                return;
            }
            return;
        }
        fdVar.b(new ju(fdVar, i + 0.5f, i2 + 0.5f, i3 + 0.5f, this.bn));
    }

    public static boolean c_(fd fdVar, int i, int i2, int i3) {
        ln lnVar;
        int iA = fdVar.a(i, i2, i3);
        return iA == 0 || iA == uu.as.bn || (lnVar = uu.m[iA].bA) == ln.g || lnVar == ln.h;
    }
}
