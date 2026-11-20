package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class cf extends sn {
    public int a;
    public ls b;
    public double c;
    public double d;
    public double e;
    private int f;
    private int g;
    private int h;
    private int i;
    private boolean j;
    private int k;
    private int l;

    @Override // defpackage.sn
    protected void b() {
    }

    @Override // defpackage.sn
    public boolean h_() {
        return true;
    }

    @Override // defpackage.sn
    public float m_() {
        return 1.0f;
    }

    @Override // defpackage.sn
    public float x_() {
        return 0.0f;
    }

    public cf(fd fdVar) {
        super(fdVar);
        this.f = -1;
        this.g = -1;
        this.h = -1;
        this.i = 0;
        this.j = false;
        this.a = 0;
        this.l = 0;
        b(1.0f, 1.0f);
    }

    @Override // defpackage.sn
    public boolean a(double d) {
        double dC = this.aW.c() * 4.0d * 64.0d;
        return d < dC * dC;
    }

    public cf(fd fdVar, double d, double d2, double d3, double d4, double d5, double d6) {
        super(fdVar);
        this.f = -1;
        this.g = -1;
        this.h = -1;
        this.i = 0;
        this.j = false;
        this.a = 0;
        this.l = 0;
        b(1.0f, 1.0f);
        c(d, d2, d3, this.aS, this.aT);
        e(d, d2, d3);
        double dA = in.a((d4 * d4) + (d5 * d5) + (d6 * d6));
        this.c = (d4 / dA) * 0.1d;
        this.d = (d5 / dA) * 0.1d;
        this.e = (d6 / dA) * 0.1d;
    }

    public cf(fd fdVar, ls lsVar, double d, double d2, double d3) {
        super(fdVar);
        this.f = -1;
        this.g = -1;
        this.h = -1;
        this.i = 0;
        this.j = false;
        this.a = 0;
        this.l = 0;
        this.b = lsVar;
        b(1.0f, 1.0f);
        c(lsVar.aM, lsVar.aN, lsVar.aO, lsVar.aS, lsVar.aT);
        e(this.aM, this.aN, this.aO);
        this.bf = 0.0f;
        this.aR = 0.0d;
        this.aQ = 0.0d;
        this.aP = 0.0d;
        double dNextGaussian = (this.bs.nextGaussian() * 0.4d) + d;
        double dNextGaussian2 = d2 + (this.bs.nextGaussian() * 0.4d);
        double dNextGaussian3 = d3 + (this.bs.nextGaussian() * 0.4d);
        double dA = in.a((dNextGaussian * dNextGaussian) + (dNextGaussian2 * dNextGaussian2) + (dNextGaussian3 * dNextGaussian3));
        this.c = (dNextGaussian / dA) * 0.1d;
        this.d = (dNextGaussian2 / dA) * 0.1d;
        this.e = (dNextGaussian3 / dA) * 0.1d;
    }

    @Override // defpackage.sn
    public void w_() {
        int i;
        float f;
        super.w_();
        this.bv = 10;
        int i2 = this.a;
        if (i2 > 0) {
            this.a = i2 - 1;
        }
        if (this.j) {
            if (this.aI.a(this.f, this.g, this.h) != this.i) {
                this.j = false;
                this.aP *= (double) (this.bs.nextFloat() * 0.2f);
                this.aQ *= (double) (this.bs.nextFloat() * 0.2f);
                this.aR *= (double) (this.bs.nextFloat() * 0.2f);
                this.k = 0;
                this.l = 0;
            } else {
                int i3 = this.k + 1;
                this.k = i3;
                if (i3 == 1200) {
                    K();
                    return;
                }
                return;
            }
        } else {
            this.l++;
        }
        vf vfVarA = this.aI.a(bt.b(this.aM, this.aN, this.aO), bt.b(this.aM + this.aP, this.aN + this.aQ, this.aO + this.aR));
        bt btVarB = bt.b(this.aM, this.aN, this.aO);
        bt btVarB2 = bt.b(this.aM + this.aP, this.aN + this.aQ, this.aO + this.aR);
        if (vfVarA != null) {
            btVarB2 = bt.b(vfVarA.f.a, vfVarA.f.b, vfVarA.f.c);
        }
        List listB = this.aI.b(this, this.aW.a(this.aP, this.aQ, this.aR).b(1.0d, 1.0d, 1.0d));
        sn snVar = null;
        double d = 0.0d;
        for (int i4 = 0; i4 < listB.size(); i4++) {
            sn snVar2 = (sn) listB.get(i4);
            if (snVar2.h_() && (snVar2 != this.b || this.l >= 25)) {
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
        if (vfVarA != null) {
            if (this.aI.B) {
                i = 0;
            } else {
                if (vfVarA.g != null) {
                    i = 0;
                    vfVarA.g.a(this.b, 0);
                } else {
                    i = 0;
                }
                this.aI.a((sn) null, this.aM, this.aN, this.aO, 1.0f, true);
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
            f = 0.95f;
        }
        this.aP += this.c;
        this.aQ += this.d;
        this.aR += this.e;
        double d4 = f;
        this.aP *= d4;
        this.aQ *= d4;
        this.aR *= d4;
        this.aI.a("smoke", this.aM, this.aN + 0.5d, this.aO, 0.0d, 0.0d, 0.0d);
        e(this.aM, this.aN, this.aO);
    }

    @Override // defpackage.sn
    public void b(nu nuVar) {
        nuVar.a("xTile", (short) this.f);
        nuVar.a("yTile", (short) this.g);
        nuVar.a("zTile", (short) this.h);
        nuVar.a("inTile", (byte) this.i);
        nuVar.a("shake", (byte) this.a);
        nuVar.a("inGround", this.j ? (byte) 1 : (byte) 0);
    }

    @Override // defpackage.sn
    public void a(nu nuVar) {
        this.f = nuVar.d("xTile");
        this.g = nuVar.d("yTile");
        this.h = nuVar.d("zTile");
        this.i = nuVar.c("inTile") & 255;
        this.a = nuVar.c("shake") & 255;
        this.j = nuVar.c("inGround") == 1;
    }

    @Override // defpackage.sn
    public boolean a(sn snVar, int i) {
        ai();
        if (snVar == null) {
            return false;
        }
        bt btVarAc = snVar.ac();
        if (btVarAc == null) {
            return true;
        }
        this.aP = btVarAc.a;
        this.aQ = btVarAc.b;
        this.aR = btVarAc.c;
        this.c = this.aP * 0.1d;
        this.d = this.aQ * 0.1d;
        this.e = this.aR * 0.1d;
        return true;
    }
}
