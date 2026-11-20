package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class nk extends jp {
    @Override // defpackage.uu
    public int a(Random random) {
        return 0;
    }

    @Override // defpackage.uu
    public int b_() {
        return 1;
    }

    @Override // defpackage.uu
    public int h() {
        return 0;
    }

    public nk(int i, int i2) {
        super(i, i2, ln.s, false);
        this.bB = 0.98f;
        b(true);
    }

    @Override // defpackage.jp, defpackage.uu
    public boolean b(xp xpVar, int i, int i2, int i3, int i4) {
        return super.b(xpVar, i, i2, i3, 1 - i4);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, gs gsVar, int i, int i2, int i3, int i4) {
        super.a(fdVar, gsVar, i, i2, i3, i4);
        ln lnVarF = fdVar.f(i, i2 - 1, i3);
        if (lnVarF.c() || lnVarF.d()) {
            fdVar.f(i, i2, i3, uu.B.bn);
        }
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        if (fdVar.a(eb.Block, i, i2, i3) > 11 - uu.q[this.bn]) {
            g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
            fdVar.f(i, i2, i3, uu.C.bn);
        }
    }
}
