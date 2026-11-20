package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class by extends sn {
    public int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private boolean f;
    private ls g;
    private int h;
    private int i;

    @Override // defpackage.sn
    protected void b() {
    }

    @Override // defpackage.sn
    public float x_() {
        return 0.0f;
    }

    public by(fd fdVar) {
        super(fdVar);
        this.b = -1;
        this.c = -1;
        this.d = -1;
        this.e = 0;
        this.f = false;
        this.a = 0;
        this.i = 0;
        b(0.25f, 0.25f);
    }

    @Override // defpackage.sn
    public boolean a(double d) {
        double dC = this.aW.c() * 4.0d * 64.0d;
        return d < dC * dC;
    }

    public by(fd fdVar, ls lsVar) {
        super(fdVar);
        this.b = -1;
        this.c = -1;
        this.d = -1;
        this.e = 0;
        this.f = false;
        this.a = 0;
        this.i = 0;
        this.g = lsVar;
        b(0.25f, 0.25f);
        c(lsVar.aM, lsVar.aN + ((double) lsVar.w()), lsVar.aO, lsVar.aS, lsVar.aT);
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

    public by(fd fdVar, double d, double d2, double d3) {
        super(fdVar);
        this.b = -1;
        this.c = -1;
        this.d = -1;
        this.e = 0;
        this.f = false;
        this.a = 0;
        this.i = 0;
        this.h = 0;
        b(0.25f, 0.25f);
        e(d, d2, d3);
        this.bf = 0.0f;
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
        this.h = 0;
    }

    @Override // defpackage.sn
    public void a(double d, double d2, double d3) {
        this.aP = d;
        this.aQ = d2;
        this.aR = d3;
        if (this.aV == 0.0f && this.aU == 0.0f) {
            float fA = in.a((d * d) + (d3 * d3));
            float fAtan2 = (float) ((Math.atan2(d, d3) * 180.0d) / 3.1415927410125732d);
            this.aS = fAtan2;
            this.aU = fAtan2;
            float fAtan3 = (float) ((Math.atan2(d2, fA) * 180.0d) / 3.1415927410125732d);
            this.aT = fAtan3;
            this.aV = fAtan3;
        }
    }

    @Override // defpackage.sn
    public void w_() {
        int i;
        float f;
        this.bl = this.aM;
        this.bm = this.aN;
        this.bn = this.aO;
        super.w_();
        int i2 = this.a;
        if (i2 > 0) {
            this.a = i2 - 1;
        }
        if (this.f) {
            if (this.aI.a(this.b, this.c, this.d) != this.e) {
                this.f = false;
                this.aP *= (double) (this.bs.nextFloat() * 0.2f);
                this.aQ *= (double) (this.bs.nextFloat() * 0.2f);
                this.aR *= (double) (this.bs.nextFloat() * 0.2f);
                this.h = 0;
                this.i = 0;
            } else {
                int i3 = this.h + 1;
                this.h = i3;
                if (i3 == 1200) {
                    K();
                    return;
                }
                return;
            }
        } else {
            this.i++;
        }
        vf vfVarA = this.aI.a(bt.b(this.aM, this.aN, this.aO), bt.b(this.aM + this.aP, this.aN + this.aQ, this.aO + this.aR));
        bt btVarB = bt.b(this.aM, this.aN, this.aO);
        bt btVarB2 = bt.b(this.aM + this.aP, this.aN + this.aQ, this.aO + this.aR);
        if (vfVarA != null) {
            btVarB2 = bt.b(vfVarA.f.a, vfVarA.f.b, vfVarA.f.c);
        }
        if (!this.aI.B) {
            List listB = this.aI.b(this, this.aW.a(this.aP, this.aQ, this.aR).b(1.0d, 1.0d, 1.0d));
            sn snVar = null;
            double d = 0.0d;
            for (int i4 = 0; i4 < listB.size(); i4++) {
                sn snVar2 = (sn) listB.get(i4);
                if (snVar2.h_() && (snVar2 != this.g || this.i >= 5)) {
                    double d2 = 0.3f;
                    vf vfVarA2 = snVar2.aW.b(d2, d2, d2).a(btVarB, btVarB2);
                    if (vfVarA2 != null) {
                        double dC = btVarB.c(vfVarA2.f);
                        if (dC < d || d == 0.0d) {
                            d = dC;
                            snVar = snVar2;
                        }
                    }
                }
            }
            if (snVar != null) {
                vfVarA = new vf(snVar);
            }
        }
        if (vfVarA != null) {
            if (vfVarA.g != null) {
                i = 0;
                vfVarA.g.a(this.g, 0);
            } else {
                i = 0;
            }
            for (int i5 = i; i5 < 8; i5++) {
                this.aI.a("snowballpoof", this.aM, this.aN, this.aO, 0.0d, 0.0d, 0.0d);
            }
            K();
        } else {
            i = 0;
        }
        this.aM += this.aP;
        this.aN += this.aQ;
        this.aO += this.aR;
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
        if (ag()) {
            while (i < 4) {
                double d3 = 0.25f;
                this.aI.a("bubble", this.aM - (this.aP * d3), this.aN - (this.aQ * d3), this.aO - (this.aR * d3), this.aP, this.aQ, this.aR);
                i++;
            }
            f = 0.8f;
        } else {
            f = 0.99f;
        }
        double d4 = f;
        this.aP *= d4;
        this.aQ *= d4;
        this.aR *= d4;
        this.aQ -= (double) 0.03f;
        e(this.aM, this.aN, this.aO);
    }

    @Override // defpackage.sn
    public void b(nu nuVar) {
        nuVar.a("xTile", (short) this.b);
        nuVar.a("yTile", (short) this.c);
        nuVar.a("zTile", (short) this.d);
        nuVar.a("inTile", (byte) this.e);
        nuVar.a("shake", (byte) this.a);
        nuVar.a("inGround", this.f ? (byte) 1 : (byte) 0);
    }

    @Override // defpackage.sn
    public void a(nu nuVar) {
        this.b = nuVar.d("xTile");
        this.c = nuVar.d("yTile");
        this.d = nuVar.d("zTile");
        this.e = nuVar.c("inTile") & 255;
        this.a = nuVar.c("shake") & 255;
        this.f = nuVar.c("inGround") == 1;
    }

    @Override // defpackage.sn
    public void b(gs gsVar) {
        if (this.f && this.g == gsVar && this.a <= 0 && gsVar.c.a(new iz(gm.j, 1))) {
            this.aI.a(this, "random.pop", 0.2f, (((this.bs.nextFloat() - this.bs.nextFloat()) * 0.7f) + 1.0f) * 2.0f);
            gsVar.b(this, 1);
            K();
        }
    }
}
