package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class xq extends rw {
    private Random a;

    @Override // defpackage.uu
    public int e() {
        return 4;
    }

    protected xq(int i) {
        super(i, ln.e);
        this.a = new Random();
        this.bm = 45;
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return uu.Q.bn;
    }

    @Override // defpackage.rw, defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        super.c(fdVar, i, i2, i3);
        h(fdVar, i, i2, i3);
    }

    private void h(fd fdVar, int i, int i2, int i3) {
        if (fdVar.B) {
            return;
        }
        int iA = fdVar.a(i, i2, i3 - 1);
        int iA2 = fdVar.a(i, i2, i3 + 1);
        int iA3 = fdVar.a(i - 1, i2, i3);
        int iA4 = fdVar.a(i + 1, i2, i3);
        if (uu.o[iA]) {
            boolean z = uu.o[iA2];
        }
        int i4 = (!uu.o[iA2] || uu.o[iA]) ? 3 : 2;
        if (uu.o[iA3] && !uu.o[iA4]) {
            i4 = 5;
        }
        if (uu.o[iA4] && !uu.o[iA3]) {
            i4 = 4;
        }
        fdVar.d(i, i2, i3, i4);
    }

    @Override // defpackage.uu
    public int a(xp xpVar, int i, int i2, int i3, int i4) {
        if (i4 == 1) {
            return this.bm + 17;
        }
        if (i4 == 0) {
            return this.bm + 17;
        }
        if (i4 != xpVar.e(i, i2, i3)) {
            return this.bm;
        }
        return this.bm + 1;
    }

    @Override // defpackage.uu
    public int a(int i) {
        if (i == 1) {
            return this.bm + 17;
        }
        if (i == 0) {
            return this.bm + 17;
        }
        if (i == 3) {
            return this.bm + 1;
        }
        return this.bm;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        if (fdVar.B) {
            return true;
        }
        gsVar.a((az) fdVar.b(i, i2, i3));
        return true;
    }

    private void c(fd fdVar, int i, int i2, int i3, Random random) {
        int i4;
        int i5;
        int iE = fdVar.e(i, i2, i3);
        if (iE == 3) {
            i5 = 0;
            i4 = 1;
        } else if (iE == 2) {
            i5 = 0;
            i4 = -1;
        } else if (iE == 5) {
            i4 = 0;
            i5 = 1;
        } else {
            i4 = 0;
            i5 = -1;
        }
        iz izVarB = ((az) fdVar.b(i, i2, i3)).b();
        double d = i5;
        double d2 = ((double) i) + (d * 0.6d) + 0.5d;
        int i6 = i5;
        double d3 = ((double) i2) + 0.5d;
        double d4 = i4;
        double d5 = ((double) i3) + (0.6d * d4) + 0.5d;
        if (izVarB == null) {
            fdVar.e(1001, i, i2, i3, 0);
            return;
        }
        if (izVarB.c == gm.j.bf) {
            sl slVar = new sl(fdVar, d2, d3, d5);
            slVar.a(d, 0.10000000149011612d, d4, 1.1f, 6.0f);
            slVar.a = true;
            fdVar.b(slVar);
            fdVar.e(1002, i, i2, i3, 0);
        } else if (izVarB.c == gm.aN.bf) {
            vv vvVar = new vv(fdVar, d2, d3, d5);
            vvVar.a(d, 0.10000000149011612d, d4, 1.1f, 6.0f);
            fdVar.b(vvVar);
            fdVar.e(1002, i, i2, i3, 0);
        } else if (izVarB.c == gm.aB.bf) {
            by byVar = new by(fdVar, d2, d3, d5);
            byVar.a(d, 0.10000000149011612d, d4, 1.1f, 6.0f);
            fdVar.b(byVar);
            fdVar.e(1002, i, i2, i3, 0);
        } else {
            hl hlVar = new hl(fdVar, d2, d3 - 0.3d, d5, izVarB);
            double dNextDouble = (random.nextDouble() * 0.1d) + 0.2d;
            hlVar.aP = d * dNextDouble;
            hlVar.aQ = 0.20000000298023224d;
            hlVar.aR = d4 * dNextDouble;
            hlVar.aP += random.nextGaussian() * 0.007499999832361937d * 6.0d;
            hlVar.aQ += random.nextGaussian() * 0.007499999832361937d * 6.0d;
            hlVar.aR += random.nextGaussian() * 0.007499999832361937d * 6.0d;
            fdVar.b(hlVar);
            fdVar.e(1000, i, i2, i3, 0);
        }
        fdVar.e(2000, i, i2, i3, i6 + 1 + ((i4 + 1) * 3));
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        if (i4 <= 0 || !uu.m[i4].f()) {
            return;
        }
        if (fdVar.s(i, i2, i3) || fdVar.s(i, i2 + 1, i3)) {
            fdVar.c(i, i2, i3, this.bn, e());
        }
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        if (fdVar.s(i, i2, i3) || fdVar.s(i, i2 + 1, i3)) {
            c(fdVar, i, i2, i3, random);
        }
    }

    @Override // defpackage.rw
    protected ow a_() {
        return new az();
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, ls lsVar) {
        int iB = in.b(((double) ((lsVar.aS * 4.0f) / 360.0f)) + 0.5d) & 3;
        if (iB == 0) {
            fdVar.d(i, i2, i3, 2);
        }
        if (iB == 1) {
            fdVar.d(i, i2, i3, 5);
        }
        if (iB == 2) {
            fdVar.d(i, i2, i3, 3);
        }
        if (iB == 3) {
            fdVar.d(i, i2, i3, 4);
        }
    }

    @Override // defpackage.rw, defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        az azVar = (az) fdVar.b(i, i2, i3);
        int i4 = 0;
        while (i4 < azVar.a()) {
            iz izVarF_ = azVar.f_(i4);
            if (izVarF_ != null) {
                float fNextFloat = (this.a.nextFloat() * 0.8f) + 0.1f;
                float fNextFloat2 = (this.a.nextFloat() * 0.8f) + 0.1f;
                float fNextFloat3 = (this.a.nextFloat() * 0.8f) + 0.1f;
                while (izVarF_.a > 0) {
                    int iNextInt = this.a.nextInt(21) + 10;
                    if (iNextInt > izVarF_.a) {
                        iNextInt = izVarF_.a;
                    }
                    izVarF_.a -= iNextInt;
                    hl hlVar = new hl(fdVar, i + fNextFloat, i2 + fNextFloat2, i3 + fNextFloat3, new iz(izVarF_.c, iNextInt, izVarF_.i()));
                    hlVar.aP = ((float) this.a.nextGaussian()) * 0.05f;
                    hlVar.aQ = (((float) this.a.nextGaussian()) * 0.05f) + 0.2f;
                    hlVar.aR = ((float) this.a.nextGaussian()) * 0.05f;
                    fdVar.b(hlVar);
                    azVar = azVar;
                    fNextFloat2 = fNextFloat2;
                    fNextFloat3 = fNextFloat3;
                    fNextFloat = fNextFloat;
                }
            }
            i4++;
            azVar = azVar;
        }
        super.b(fdVar, i, i2, i3);
    }
}
