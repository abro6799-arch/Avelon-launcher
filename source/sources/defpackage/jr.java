package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class jr extends uu {
    @Override // defpackage.uu
    public int a(Random random) {
        return 0;
    }

    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    protected jr(int i, int i2) {
        super(i, i2, ln.t);
        a(0.0f, 0.0f, 0.0f, 1.0f, 0.125f, 1.0f);
        b(true);
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        if ((fdVar.e(i, i2, i3) & 7) < 3) {
            return null;
        }
        double d = i;
        double d2 = i3;
        return eq.b(d + this.bs, this.bt + ((double) i2), this.bu + d2, this.bv + d, i2 + 0.5f, d2 + this.bx);
    }

    @Override // defpackage.uu
    public void a(xp xpVar, int i, int i2, int i3) {
        a(0.0f, 0.0f, 0.0f, 1.0f, (((xpVar.e(i, i2, i3) & 7) + 1) * 2) / 16.0f, 1.0f);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        int i4 = i2 - 1;
        int iA = fdVar.a(i, i4, i3);
        if (iA == 0 || !uu.m[iA].c()) {
            return false;
        }
        return fdVar.f(i, i4, i3).c();
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        h(fdVar, i, i2, i3);
    }

    private boolean h(fd fdVar, int i, int i2, int i3) {
        if (a(fdVar, i, i2, i3)) {
            return true;
        }
        g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
        fdVar.f(i, i2, i3, 0);
        return false;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, gs gsVar, int i, int i2, int i3, int i4) {
        int i5 = gm.aB.bf;
        double d = ((double) 0.3f) * 0.5d;
        hl hlVar = new hl(fdVar, ((double) (fdVar.r.nextFloat() * 0.7f)) + d + ((double) i), ((double) i2) + ((double) (fdVar.r.nextFloat() * 0.7f)) + d, ((double) i3) + ((double) (fdVar.r.nextFloat() * 0.7f)) + d, new iz(i5, 1, 0));
        hlVar.c = 10;
        fdVar.b(hlVar);
        fdVar.f(i, i2, i3, 0);
        gsVar.a(jl.C[this.bn], 1);
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return gm.aB.bf;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        if (fdVar.a(eb.Block, i, i2, i3) > 11) {
            g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
            fdVar.f(i, i2, i3, 0);
        }
    }

    @Override // defpackage.uu
    public boolean b(xp xpVar, int i, int i2, int i3, int i4) {
        if (i4 == 1) {
            return true;
        }
        return super.b(xpVar, i, i2, i3, i4);
    }
}
