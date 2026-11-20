package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class sl extends sn {
    public boolean a;
    public int b;
    public ls c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private boolean i;
    private int j;
    private int k;

    @Override // defpackage.sn
    protected void b() {
    }

    @Override // defpackage.sn
    public float x_() {
        return 0.0f;
    }

    public sl(fd fdVar) {
        super(fdVar);
        this.d = -1;
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = 0;
        this.i = false;
        this.a = false;
        this.b = 0;
        this.k = 0;
        b(0.5f, 0.5f);
    }

    public sl(fd fdVar, double d, double d2, double d3) {
        super(fdVar);
        this.d = -1;
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = 0;
        this.i = false;
        this.a = false;
        this.b = 0;
        this.k = 0;
        b(0.5f, 0.5f);
        e(d, d2, d3);
        this.bf = 0.0f;
    }

    public sl(fd fdVar, ls lsVar) {
        super(fdVar);
        this.d = -1;
        this.e = -1;
        this.f = -1;
        this.g = 0;
        this.h = 0;
        this.i = false;
        this.a = false;
        this.b = 0;
        this.k = 0;
        this.c = lsVar;
        this.a = lsVar instanceof gs;
        b(0.5f, 0.5f);
        c(lsVar.aM, lsVar.aN + ((double) lsVar.w()), lsVar.aO, lsVar.aS, lsVar.aT);
        this.aM -= (double) (in.b((this.aS / 180.0f) * 3.1415927f) * 0.16f);
        this.aN -= 0.10000000149011612d;
        this.aO -= (double) (in.a((this.aS / 180.0f) * 3.1415927f) * 0.16f);
        e(this.aM, this.aN, this.aO);
        this.bf = 0.0f;
        this.aP = (-in.a((this.aS / 180.0f) * 3.1415927f)) * in.b((this.aT / 180.0f) * 3.1415927f);
        this.aR = in.b((this.aS / 180.0f) * 3.1415927f) * in.b((this.aT / 180.0f) * 3.1415927f);
        this.aQ = -in.a((this.aT / 180.0f) * 3.1415927f);
        a(this.aP, this.aQ, this.aR, 1.5f, 1.0f);
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
        this.j = 0;
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
            this.aV = this.aT;
            this.aU = this.aS;
            c(this.aM, this.aN, this.aO, this.aS, this.aT);
            this.j = 0;
        }
    }

    @Override // defpackage.sn
    public void w_() {
        sl slVar;
        float f;
        sl slVar2 = this;
        super.w_();
        if (slVar2.aV == 0.0f && slVar2.aU == 0.0f) {
            float fA = in.a((slVar2.aP * slVar2.aP) + (slVar2.aR * slVar2.aR));
            float fAtan2 = (float) ((Math.atan2(slVar2.aP, slVar2.aR) * 180.0d) / 3.1415927410125732d);
            slVar2.aS = fAtan2;
            slVar2.aU = fAtan2;
            float fAtan3 = (float) ((Math.atan2(slVar2.aQ, fA) * 180.0d) / 3.1415927410125732d);
            slVar2.aT = fAtan3;
            slVar2.aV = fAtan3;
        }
        int iA = slVar2.aI.a(slVar2.d, slVar2.e, slVar2.f);
        if (iA > 0) {
            uu.m[iA].a((xp) slVar2.aI, slVar2.d, slVar2.e, slVar2.f);
            eq eqVarE = uu.m[iA].e(slVar2.aI, slVar2.d, slVar2.e, slVar2.f);
            if (eqVarE != null && eqVarE.a(bt.b(slVar2.aM, slVar2.aN, slVar2.aO))) {
                slVar2.i = true;
            }
        }
        int i = slVar2.b;
        if (i > 0) {
            slVar2.b = i - 1;
        }
        if (slVar2.i) {
            int iA2 = slVar2.aI.a(slVar2.d, slVar2.e, slVar2.f);
            int iE = slVar2.aI.e(slVar2.d, slVar2.e, slVar2.f);
            if (iA2 != slVar2.g || iE != slVar2.h) {
                slVar2.i = false;
                slVar2.aP *= (double) (slVar2.bs.nextFloat() * 0.2f);
                slVar2.aQ *= (double) (slVar2.bs.nextFloat() * 0.2f);
                slVar2.aR *= (double) (slVar2.bs.nextFloat() * 0.2f);
                slVar2.j = 0;
                slVar2.k = 0;
                return;
            }
            int i2 = slVar2.j + 1;
            slVar2.j = i2;
            if (i2 == 1200) {
                K();
                return;
            }
            return;
        }
        slVar2.k++;
        vf vfVarA = slVar2.aI.a(bt.b(slVar2.aM, slVar2.aN, slVar2.aO), bt.b(slVar2.aM + slVar2.aP, slVar2.aN + slVar2.aQ, slVar2.aO + slVar2.aR), false, true);
        bt btVarB = bt.b(slVar2.aM, slVar2.aN, slVar2.aO);
        bt btVarB2 = bt.b(slVar2.aM + slVar2.aP, slVar2.aN + slVar2.aQ, slVar2.aO + slVar2.aR);
        if (vfVarA != null) {
            btVarB2 = bt.b(vfVarA.f.a, vfVarA.f.b, vfVarA.f.c);
        }
        List listB = slVar2.aI.b(slVar2, slVar2.aW.a(slVar2.aP, slVar2.aQ, slVar2.aR).b(1.0d, 1.0d, 1.0d));
        sn snVar = null;
        double d = 0.0d;
        int i3 = 0;
        while (i3 < listB.size()) {
            sn snVar2 = (sn) listB.get(i3);
            if (snVar2.h_() && (snVar2 != slVar2.c || slVar2.k >= 5)) {
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
            i3++;
            slVar2 = this;
        }
        if (snVar != null) {
            vfVarA = new vf(snVar);
        }
        if (vfVarA == null) {
            slVar = this;
        } else if (vfVarA.g != null) {
            slVar = this;
            if (vfVarA.g.a(slVar.c, 4)) {
                slVar.aI.a(slVar, "random.drr", 1.0f, 1.2f / ((slVar.bs.nextFloat() * 0.2f) + 0.9f));
                K();
            } else {
                slVar.aP *= -0.10000000149011612d;
                slVar.aQ *= -0.10000000149011612d;
                slVar.aR *= -0.10000000149011612d;
                slVar.aS += 180.0f;
                slVar.aU += 180.0f;
                slVar.k = 0;
            }
        } else {
            slVar = this;
            slVar.d = vfVarA.b;
            slVar.e = vfVarA.c;
            slVar.f = vfVarA.d;
            slVar.g = slVar.aI.a(slVar.d, slVar.e, slVar.f);
            slVar.h = slVar.aI.e(slVar.d, slVar.e, slVar.f);
            slVar.aP = (float) (vfVarA.f.a - slVar.aM);
            slVar.aQ = (float) (vfVarA.f.b - slVar.aN);
            slVar.aR = (float) (vfVarA.f.c - slVar.aO);
            double dA = in.a((slVar.aP * slVar.aP) + (slVar.aQ * slVar.aQ) + (slVar.aR * slVar.aR));
            slVar.aM -= (slVar.aP / dA) * 0.05000000074505806d;
            slVar.aN -= (slVar.aQ / dA) * 0.05000000074505806d;
            slVar.aO -= (slVar.aR / dA) * 0.05000000074505806d;
            slVar.aI.a(slVar, "random.drr", 1.0f, 1.2f / ((slVar.bs.nextFloat() * 0.2f) + 0.9f));
            slVar.i = true;
            slVar.b = 7;
        }
        slVar.aM += slVar.aP;
        slVar.aN += slVar.aQ;
        slVar.aO += slVar.aR;
        float fA2 = in.a((slVar.aP * slVar.aP) + (slVar.aR * slVar.aR));
        slVar.aS = (float) ((Math.atan2(slVar.aP, slVar.aR) * 180.0d) / 3.1415927410125732d);
        slVar.aT = (float) ((Math.atan2(slVar.aQ, fA2) * 180.0d) / 3.1415927410125732d);
        while (slVar.aT - slVar.aV < -180.0f) {
            slVar.aV -= 360.0f;
        }
        while (slVar.aT - slVar.aV >= 180.0f) {
            slVar.aV += 360.0f;
        }
        while (slVar.aS - slVar.aU < -180.0f) {
            slVar.aU -= 360.0f;
        }
        while (slVar.aS - slVar.aU >= 180.0f) {
            slVar.aU += 360.0f;
        }
        slVar.aT = slVar.aV + ((slVar.aT - slVar.aV) * 0.2f);
        slVar.aS = slVar.aU + ((slVar.aS - slVar.aU) * 0.2f);
        if (ag()) {
            for (int i4 = 0; i4 < 4; i4++) {
                double d3 = 0.25f;
                slVar.aI.a("bubble", slVar.aM - (slVar.aP * d3), slVar.aN - (slVar.aQ * d3), slVar.aO - (slVar.aR * d3), slVar.aP, slVar.aQ, slVar.aR);
            }
            f = 0.8f;
        } else {
            f = 0.99f;
        }
        double d4 = f;
        slVar.aP *= d4;
        slVar.aQ *= d4;
        slVar.aR *= d4;
        slVar.aQ -= (double) 0.03f;
        e(slVar.aM, slVar.aN, slVar.aO);
    }

    @Override // defpackage.sn
    public void b(nu nuVar) {
        nuVar.a("xTile", (short) this.d);
        nuVar.a("yTile", (short) this.e);
        nuVar.a("zTile", (short) this.f);
        nuVar.a("inTile", (byte) this.g);
        nuVar.a("inData", (byte) this.h);
        nuVar.a("shake", (byte) this.b);
        nuVar.a("inGround", this.i ? (byte) 1 : (byte) 0);
        nuVar.a("player", this.a);
    }

    @Override // defpackage.sn
    public void a(nu nuVar) {
        this.d = nuVar.d("xTile");
        this.e = nuVar.d("yTile");
        this.f = nuVar.d("zTile");
        this.g = nuVar.c("inTile") & 255;
        this.h = nuVar.c("inData") & 255;
        this.b = nuVar.c("shake") & 255;
        this.i = nuVar.c("inGround") == 1;
        this.a = nuVar.m("player");
    }

    @Override // defpackage.sn
    public void b(gs gsVar) {
        if (!this.aI.B && this.i && this.a && this.b <= 0 && gsVar.c.a(new iz(gm.j, 1))) {
            this.aI.a(this, "random.pop", 0.2f, (((this.bs.nextFloat() - this.bs.nextFloat()) * 0.7f) + 1.0f) * 2.0f);
            gsVar.b(this, 1);
            K();
        }
    }
}
