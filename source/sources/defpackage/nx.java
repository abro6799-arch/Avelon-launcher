package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class nx extends rp {
    protected nx(int i, ln lnVar) {
        super(i, lnVar);
        b(false);
        if (lnVar == ln.h) {
            b(true);
        }
    }

    @Override // defpackage.rp, defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        super.b(fdVar, i, i2, i3, i4);
        if (fdVar.a(i, i2, i3) == this.bn) {
            j(fdVar, i, i2, i3);
        }
    }

    private void j(fd fdVar, int i, int i2, int i3) {
        int iE = fdVar.e(i, i2, i3);
        fdVar.o = true;
        fdVar.a(i, i2, i3, this.bn - 1, iE);
        fdVar.b(i, i2, i3, i, i2, i3);
        fdVar.c(i, i2, i3, this.bn - 1, e());
        fdVar.o = false;
    }

    @Override // defpackage.rp, defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        if (this.bA == ln.h) {
            int iNextInt = random.nextInt(3);
            for (int i4 = 0; i4 < iNextInt; i4++) {
                i += random.nextInt(3) - 1;
                i2++;
                i3 += random.nextInt(3) - 1;
                int iA = fdVar.a(i, i2, i3);
                if (iA == 0) {
                    if (k(fdVar, i - 1, i2, i3) || k(fdVar, i + 1, i2, i3) || k(fdVar, i, i2, i3 - 1) || k(fdVar, i, i2, i3 + 1) || k(fdVar, i, i2 - 1, i3) || k(fdVar, i, i2 + 1, i3)) {
                        fdVar.f(i, i2, i3, uu.as.bn);
                        return;
                    }
                } else if (uu.m[iA].bA.c()) {
                    return;
                }
            }
        }
    }

    private boolean k(fd fdVar, int i, int i2, int i3) {
        return fdVar.f(i, i2, i3).e();
    }
}
