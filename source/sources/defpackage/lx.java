package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class lx extends sn {
    public int a;
    public gs b;
    public sn c;
    private int d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private int i;
    private int j;
    private int k;
    private int l;
    private double m;
    private double n;
    private double o;
    private double p;
    private double q;
    private double r;
    private double s;
    private double t;

    @Override // defpackage.sn
    protected void b() {
    }

    @Override // defpackage.sn
    public float x_() {
        return 0.0f;
    }

    public lx(fd fdVar) {
        super(fdVar);
        this.d = -1;
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = false;
        this.a = 0;
        this.j = 0;
        this.k = 0;
        this.c = null;
        b(0.25f, 0.25f);
        this.bM = true;
    }

    public lx(fd fdVar, double d, double d2, double d3) {
        this(fdVar);
        e(d, d2, d3);
        this.bM = true;
    }

    public lx(fd fdVar, gs gsVar) {
        super(fdVar);
        this.d = -1;
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = false;
        this.a = 0;
        this.j = 0;
        this.k = 0;
        this.c = null;
        this.bM = true;
        this.b = gsVar;
        gsVar.D = this;
        b(0.25f, 0.25f);
        c(gsVar.aM, (gsVar.aN + 1.62d) - ((double) gsVar.bf), gsVar.aO, gsVar.aS, gsVar.aT);
        this.aM -= (double) (in.b((this.aS / 180.0f) * 3.1415927f) * 0.16f);
        this.aN -= 0.10000000149011612d;
        this.aO -= (double) (in.a((this.aS / 180.0f) * 3.1415927f) * 0.16f);
        e(this.aM, this.aN, this.aO);
        this.bf = 0.0f;
        this.aP = (-in.a((this.aS / 180.0f) * 3.1415927f)) * in.b((this.aT / 180.0f) * 3.1415927f) * 0.4f;
        this.aR = in.b((this.aS / 180.0f) * 3.1415927f) * in.b((this.aT / 180.0f) * 3.1415927f) * 0.4f;
        this.aQ = (-in.a((this.aT / 180.0f) * 3.1415927f)) * 0.4f;
        a(this.aP, this.aQ, this.aR, 1.5f, 1.0f);
    }

    @Override // defpackage.sn
    public boolean a(double d) {
        double dC = this.aW.c() * 4.0d * 64.0d;
        return d < dC * dC;
    }

    public void a(double d, double d2, double d3, float f, float f2) {
        double dA = in.a((d * d) + (d2 * d2) + (d3 * d3));
        double d4 = f2;
        double d5 = f;
        double dNextGaussian = ((d / dA) + (this.bs.nextGaussian() * 0.007499999832361937d * d4)) * d5;
        double dNextGaussian2 = ((d2 / dA) + (this.bs.nextGaussian() * 0.007499999832361937d * d4)) * d5;
        double dNextGaussian3 = ((d3 / dA) + (this.bs.nextGaussian() * 0.007499999832361937d * d4)) * d5;
        this.aP = dNextGaussian;
        this.aQ = dNextGaussian2;
        this.aR = dNextGaussian3;
        float fA = in.a((dNextGaussian * dNextGaussian) + (dNextGaussian3 * dNextGaussian3));
        float fAtan2 = (float) ((Math.atan2(dNextGaussian, dNextGaussian3) * 180.0d) / 3.1415927410125732d);
        this.aS = fAtan2;
        this.aU = fAtan2;
        float fAtan3 = (float) ((Math.atan2(dNextGaussian2, fA) * 180.0d) / 3.1415927410125732d);
        this.aT = fAtan3;
        this.aV = fAtan3;
        this.i = 0;
    }

    @Override // defpackage.sn
    public void a(double d, double d2, double d3, float f, float f2, int i) {
        this.m = d;
        this.n = d2;
        this.o = d3;
        this.p = f;
        this.q = f2;
        this.l = i;
        this.aP = this.r;
        this.aQ = this.s;
        this.aR = this.t;
    }

    @Override // defpackage.sn
    public void a(double d, double d2, double d3) {
        this.aP = d;
        this.r = d;
        this.aQ = d2;
        this.s = d2;
        this.aR = d3;
        this.t = d3;
    }

    @Override // defpackage.sn
    public void w_() {
        int i;
        int i2;
        float f;
        double d;
        int i3;
        float f2;
        float f3;
        float f4;
        super.w_();
        if (this.l > 0) {
            double d2 = this.aM + ((this.m - this.aM) / ((double) this.l));
            double d3 = this.aN + ((this.n - this.aN) / ((double) this.l));
            double d4 = this.aO + ((this.o - this.aO) / ((double) this.l));
            double d5 = this.p - ((double) this.aS);
            while (d5 < -180.0d) {
                d5 += 360.0d;
            }
            while (d5 >= 180.0d) {
                d5 -= 360.0d;
            }
            this.aS = (float) (((double) this.aS) + (d5 / ((double) this.l)));
            this.aT = (float) (((double) this.aT) + ((this.q - ((double) this.aT)) / ((double) this.l)));
            this.l--;
            e(d2, d3, d4);
            c(this.aS, this.aT);
            return;
        }
        sn snVar = null;
        if (!this.aI.B) {
            iz izVarG = this.b.G();
            if (this.b.be || !this.b.W() || izVarG == null || izVarG.a() != gm.aP || g(this.b) > 1024.0d) {
                K();
                this.b.D = null;
                return;
            }
            sn snVar2 = this.c;
            if (snVar2 != null) {
                if (!snVar2.be) {
                    this.aM = this.c.aM;
                    this.aN = this.c.aW.b + (((double) this.c.bh) * 0.8d);
                    this.aO = this.c.aO;
                    return;
                }
                this.c = null;
            }
        }
        int i4 = this.a;
        if (i4 > 0) {
            this.a = i4 - 1;
        }
        if (this.h) {
            if (this.aI.a(this.d, this.e, this.f) != this.g) {
                this.h = false;
                this.aP *= (double) (this.bs.nextFloat() * 0.2f);
                this.aQ *= (double) (this.bs.nextFloat() * 0.2f);
                this.aR *= (double) (this.bs.nextFloat() * 0.2f);
                this.i = 0;
                this.j = 0;
            } else {
                int i5 = this.i + 1;
                this.i = i5;
                if (i5 == 1200) {
                    K();
                    return;
                }
                return;
            }
        } else {
            this.j++;
        }
        vf vfVarA = this.aI.a(bt.b(this.aM, this.aN, this.aO), bt.b(this.aM + this.aP, this.aN + this.aQ, this.aO + this.aR));
        bt btVarB = bt.b(this.aM, this.aN, this.aO);
        bt btVarB2 = bt.b(this.aM + this.aP, this.aN + this.aQ, this.aO + this.aR);
        if (vfVarA != null) {
            btVarB2 = bt.b(vfVarA.f.a, vfVarA.f.b, vfVarA.f.c);
        }
        List listB = this.aI.b(this, this.aW.a(this.aP, this.aQ, this.aR).b(1.0d, 1.0d, 1.0d));
        int i6 = 0;
        double d6 = 0.0d;
        while (true) {
            if (i6 >= listB.size()) {
                break;
            }
            sn snVar3 = (sn) listB.get(i6);
            if (snVar3.h_() && (snVar3 != this.b || this.j >= 5)) {
                double d7 = 0.3f;
                vf vfVarA2 = snVar3.aW.b(d7, d7, d7).a(btVarB, btVarB2);
                if (vfVarA2 != null) {
                    double dC = btVarB.c(vfVarA2.f);
                    if (dC < d6 || d6 == 0.0d) {
                        snVar = snVar3;
                        d6 = dC;
                    }
                }
            }
            i6++;
        }
        if (snVar != null) {
            vfVarA = new vf(snVar);
        }
        if (vfVarA == null) {
            i2 = 0;
        } else if (vfVarA.g != null) {
            i2 = 0;
            if (vfVarA.g.a(this.b, 0)) {
                this.c = vfVarA.g;
            }
        } else {
            i2 = 0;
            this.h = true;
        }
        if (this.h) {
            return;
        }
        b(this.aP, this.aQ, this.aR);
        float fA = in.a((this.aP * this.aP) + (this.aR * this.aR));
        this.aS = (float) ((Math.atan2(this.aP, this.aR) * 180.0d) / 3.1415927410125732d);
        this.aT = (float) ((Math.atan2(this.aQ, fA) * 180.0d) / 3.1415927410125732d);
        while (this.aT - this.aV < -180.0f) {
            this.aV -= 360.0f;
        }
        while (this.aT - this.aV >= 180.0f) {
            this.aV += 360.0f;
        }
        while (this.aS - this.aU < -180.0f) {
            this.aU -= 360.0f;
        }
        while (this.aS - this.aU >= 180.0f) {
            this.aU += 360.0f;
        }
        this.aT = this.aV + ((this.aT - this.aV) * 0.2f);
        this.aS = this.aU + ((this.aS - this.aU) * 0.2f);
        float f5 = (this.aX || this.aY) ? 0.5f : 0.92f;
        int i7 = i2;
        double d8 = 0.0d;
        for (i = 5; i7 < i; i = 5) {
            double d9 = i;
            double d10 = ((this.aW.b + (((this.aW.e - this.aW.b) * ((double) (i7 + 0))) / d9)) - 0.125d) + 0.125d;
            i7++;
            if (this.aI.b(eq.b(this.aW.a, d10, this.aW.c, this.aW.d, ((this.aW.b + (((this.aW.e - this.aW.b) * ((double) i7)) / d9)) - 0.125d) + 0.125d, this.aW.f), ln.g)) {
                d8 += 1.0d / d9;
            }
        }
        int i8 = (d8 > 0.0d ? 1 : (d8 == 0.0d ? 0 : -1));
        if (i8 <= 0) {
            f = f5;
            d = d8;
            i3 = i8;
        } else {
            int i9 = this.k;
            if (i9 > 0) {
                this.k = i9 - 1;
            } else if (this.bs.nextInt(this.aI.t(in.b(this.aM), in.b(this.aN) + 1, in.b(this.aO)) ? 300 : 500) == 0) {
                this.k = this.bs.nextInt(30) + 10;
                this.aQ -= 0.20000000298023224d;
                this.aI.a(this, "random.splash", 0.25f, ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.4f) + 1.0f);
                float fB = in.b(this.aW.b);
                int i10 = 0;
                while (true) {
                    f4 = 2.0f;
                    if (i10 >= (this.bg * 20.0f) + 1.0f) {
                        break;
                    }
                    this.aI.a("bubble", this.aM + ((double) (((this.bs.nextFloat() * 2.0f) - 1.0f) * this.bg)), fB + 1.0f, this.aO + ((double) (((this.bs.nextFloat() * 2.0f) - 1.0f) * this.bg)), this.aP, this.aQ - ((double) (this.bs.nextFloat() * 0.2f)), this.aR);
                    i10++;
                    f5 = f5;
                    d8 = d8;
                    i8 = i8;
                }
                f = f5;
                d = d8;
                i3 = i8;
                int i11 = 0;
                for (f3 = 20.0f; i11 < (this.bg * f3) + 1.0f; f3 = 20.0f) {
                    this.aI.a("splash", this.aM + ((double) (((this.bs.nextFloat() * f4) - 1.0f) * this.bg)), fB + 1.0f, this.aO + ((double) (((this.bs.nextFloat() * f4) - 1.0f) * this.bg)), this.aP, this.aQ, this.aR);
                    i11++;
                    fB = fB;
                    f4 = 2.0f;
                }
            }
            f = f5;
            d = d8;
            i3 = i8;
        }
        if (this.k > 0) {
            this.aQ -= ((double) ((this.bs.nextFloat() * this.bs.nextFloat()) * this.bs.nextFloat())) * 0.2d;
        }
        this.aQ += ((d * 2.0d) - 1.0d) * 0.03999999910593033d;
        if (i3 > 0) {
            f2 = (float) (((double) f) * 0.9d);
            this.aQ *= 0.8d;
        } else {
            f2 = f;
        }
        double d11 = f2;
        this.aP *= d11;
        this.aQ *= d11;
        this.aR *= d11;
        e(this.aM, this.aN, this.aO);
    }

    @Override // defpackage.sn
    public void b(nu nuVar) {
        nuVar.a("xTile", (short) this.d);
        nuVar.a("yTile", (short) this.e);
        nuVar.a("zTile", (short) this.f);
        nuVar.a("inTile", (byte) this.g);
        nuVar.a("shake", (byte) this.a);
        nuVar.a("inGround", this.h ? (byte) 1 : (byte) 0);
    }

    @Override // defpackage.sn
    public void a(nu nuVar) {
        this.d = nuVar.d("xTile");
        this.e = nuVar.d("yTile");
        this.f = nuVar.d("zTile");
        this.g = nuVar.c("inTile") & 255;
        this.a = nuVar.c("shake") & 255;
        this.h = nuVar.c("inGround") == 1;
    }

    public int k() {
        int i;
        if (this.c != null) {
            double d = this.b.aM - this.aM;
            double d2 = this.b.aN - this.aN;
            double d3 = this.b.aO - this.aO;
            double dA = in.a((d * d) + (d2 * d2) + (d3 * d3));
            this.c.aP += d * 0.1d;
            this.c.aQ += (d2 * 0.1d) + (((double) in.a(dA)) * 0.08d);
            this.c.aR += d3 * 0.1d;
            i = 3;
        } else if (this.k > 0) {
            hl hlVar = new hl(this.aI, this.aM, this.aN, this.aO, new iz(gm.aS));
            double d4 = this.b.aM - this.aM;
            double d5 = this.b.aN - this.aN;
            double d6 = this.b.aO - this.aO;
            double dA2 = in.a((d4 * d4) + (d5 * d5) + (d6 * d6));
            hlVar.aP = d4 * 0.1d;
            hlVar.aQ = (d5 * 0.1d) + (((double) in.a(dA2)) * 0.08d);
            hlVar.aR = d6 * 0.1d;
            this.aI.b(hlVar);
            this.b.a(jl.B, 1);
            i = 1;
        } else {
            i = 0;
        }
        if (this.h) {
            i = 2;
        }
        K();
        this.b.D = null;
        return i;
    }
}
