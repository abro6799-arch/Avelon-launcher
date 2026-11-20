package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ks extends uu {
    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        return true;
    }

    protected ks(int i) {
        super(i, ln.d);
        this.bm = 26;
    }

    @Override // defpackage.uu
    public int a(xp xpVar, int i, int i2, int i3, int i4) {
        if (i4 == 1 || i4 == 0) {
            int i5 = this.bm;
            return i5 - 1;
        }
        int iA = xpVar.a(i, i2, i3 - 1);
        int iA2 = xpVar.a(i, i2, i3 + 1);
        int iA3 = xpVar.a(i - 1, i2, i3);
        int iA4 = xpVar.a(i + 1, i2, i3);
        if (uu.o[iA]) {
            boolean z = uu.o[iA2];
        }
        int i6 = (!uu.o[iA2] || uu.o[iA]) ? 3 : 2;
        if (uu.o[iA3] && !uu.o[iA4]) {
            i6 = 5;
        }
        if (uu.o[iA4] && !uu.o[iA3]) {
            i6 = 4;
        }
        int i7 = this.bm;
        return i4 == i6 ? i7 + 1 : i7;
    }

    @Override // defpackage.uu
    public int a(int i) {
        if (i == 1) {
            return this.bm - 1;
        }
        if (i == 0) {
            return this.bm - 1;
        }
        if (i == 3) {
            return this.bm + 1;
        }
        return this.bm;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        fdVar.f(i, i2, i3, 0);
    }
}
