package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ah extends uu {
    @Override // defpackage.uu
    public int a(Random random) {
        return 0;
    }

    public ah(int i, int i2) {
        super(i, i2, ln.q);
    }

    @Override // defpackage.uu
    public int a(int i) {
        if (i == 0) {
            return this.bm + 2;
        }
        if (i == 1) {
            return this.bm + 1;
        }
        return this.bm;
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        super.c(fdVar, i, i2, i3);
        if (fdVar.s(i, i2, i3)) {
            c(fdVar, i, i2, i3, 1);
            fdVar.f(i, i2, i3, 0);
        }
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        if (i4 > 0 && uu.m[i4].f() && fdVar.s(i, i2, i3)) {
            c(fdVar, i, i2, i3, 1);
            fdVar.f(i, i2, i3, 0);
        }
    }

    @Override // defpackage.uu
    public void d(fd fdVar, int i, int i2, int i3) {
        qw qwVar = new qw(fdVar, i + 0.5f, i2 + 0.5f, i3 + 0.5f);
        qwVar.a = fdVar.r.nextInt(qwVar.a / 4) + (qwVar.a / 8);
        fdVar.b(qwVar);
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3, int i4) {
        if (fdVar.B) {
            return;
        }
        if ((i4 & 1) == 0) {
            a(fdVar, i, i2, i3, new iz(uu.an.bn, 1, 0));
            return;
        }
        qw qwVar = new qw(fdVar, i + 0.5f, i2 + 0.5f, i3 + 0.5f);
        fdVar.b(qwVar);
        fdVar.a(qwVar, "random.fuse", 1.0f, 1.0f);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, gs gsVar) {
        if (gsVar.G() != null && gsVar.G().c == gm.g.bf) {
            fdVar.e(i, i2, i3, 1);
        }
        super.b(fdVar, i, i2, i3, gsVar);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        return super.a(fdVar, i, i2, i3, gsVar);
    }
}
