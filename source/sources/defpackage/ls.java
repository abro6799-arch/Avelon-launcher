package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class ls extends sn {
    public int E;
    public float F;
    public float G;
    public float H;
    public float I;
    protected float J;
    protected float K;
    protected float L;
    protected float M;
    protected boolean N;
    protected String O;
    protected boolean P;
    protected float Q;
    protected String R;
    protected float S;
    protected int T;
    protected float U;
    public boolean V;
    public float W;
    public float X;
    public int Y;
    public int Z;
    private int a;
    protected float aA;
    protected float aB;
    protected int aC;
    public int aa;
    public int ab;
    public float ac;
    public int ad;
    public int ae;
    public float af;
    public float ag;
    protected boolean ah;
    public int ai;
    public float aj;
    public float ak;
    public float al;
    public float am;
    protected int an;
    protected double ao;
    protected double ap;
    protected double aq;
    protected double ar;
    protected double as;
    float at;
    protected int au;
    protected int av;
    protected float aw;
    protected float ax;
    protected float ay;
    protected boolean az;
    private sn b;

    private float b(float f, float f2, float f3) {
        float f4 = f2 - f;
        while (f4 < -180.0f) {
            f4 += 360.0f;
        }
        while (f4 >= 180.0f) {
            f4 -= 360.0f;
        }
        if (f4 > f3) {
            f4 = f3;
        }
        float f5 = -f3;
        if (f4 < f5) {
            f4 = f5;
        }
        return f + f4;
    }

    public boolean N() {
        return false;
    }

    public void aa() {
    }

    @Override // defpackage.sn
    protected void b() {
    }

    public boolean d_() {
        return false;
    }

    public int e() {
        return 80;
    }

    protected String g() {
        return null;
    }

    protected String i() {
        return "random.hurt";
    }

    protected int j() {
        return 0;
    }

    protected String j_() {
        return "random.hurt";
    }

    protected float k() {
        return 1.0f;
    }

    public int l() {
        return 4;
    }

    public iz r_() {
        return null;
    }

    protected boolean u() {
        return true;
    }

    protected int x() {
        return 40;
    }

    public ls(fd fdVar) {
        super(fdVar);
        this.E = 20;
        this.H = 0.0f;
        this.I = 0.0f;
        this.N = true;
        this.O = "/mob/char.png";
        this.P = true;
        this.Q = 0.0f;
        this.R = null;
        this.S = 1.0f;
        this.T = 0;
        this.U = 0.0f;
        this.V = false;
        this.ac = 0.0f;
        this.ad = 0;
        this.ae = 0;
        this.ah = false;
        this.ai = -1;
        this.aj = (float) ((Math.random() * 0.8999999761581421d) + 0.10000000149011612d);
        this.at = 0.0f;
        this.au = 0;
        this.av = 0;
        this.az = false;
        this.aA = 0.0f;
        this.aB = 0.7f;
        this.aC = 0;
        this.Y = 10;
        this.aF = true;
        this.G = ((float) (Math.random() + 1.0d)) * 0.01f;
        e(this.aM, this.aN, this.aO);
        this.F = ((float) Math.random()) * 12398.0f;
        this.aS = (float) (Math.random() * 3.1415927410125732d * 2.0d);
        this.bp = 0.5f;
    }

    public boolean e(sn snVar) {
        return this.aI.a(bt.b(this.aM, this.aN + ((double) w()), this.aO), bt.b(snVar.aM, snVar.aN + ((double) snVar.w()), snVar.aO)) == null;
    }

    @Override // defpackage.sn
    public String q_() {
        return this.O;
    }

    @Override // defpackage.sn
    public boolean h_() {
        return !this.be;
    }

    @Override // defpackage.sn
    public boolean i_() {
        return !this.be;
    }

    @Override // defpackage.sn
    public float w() {
        return this.bh * 0.85f;
    }

    public void T() {
        String strG = g();
        if (strG != null) {
            this.aI.a(this, strG, k(), ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f) + 1.0f);
        }
    }

    @Override // defpackage.sn
    public void U() {
        int i;
        this.W = this.X;
        super.U();
        int iNextInt = this.bs.nextInt(1000);
        int i2 = this.a;
        this.a = i2 + 1;
        if (iNextInt < i2) {
            this.a = -e();
            T();
        }
        if (W() && L()) {
            a((sn) null, 1);
        }
        if (this.bC || this.aI.B) {
            this.bv = 0;
        }
        if (W() && a(ln.g) && !d_()) {
            this.bz--;
            if (this.bz == -20) {
                this.bz = 0;
                for (int i3 = 0; i3 < 8; i3++) {
                    this.aI.a("bubble", this.aM + ((double) (this.bs.nextFloat() - this.bs.nextFloat())), this.aN + ((double) (this.bs.nextFloat() - this.bs.nextFloat())), ((double) (this.bs.nextFloat() - this.bs.nextFloat())) + this.aO, this.aP, this.aQ, this.aR);
                }
                a((sn) null, 2);
                i = 0;
            } else {
                i = 0;
            }
            this.bv = i;
        } else {
            i = 0;
            this.bz = this.bw;
        }
        this.af = this.ag;
        int i4 = this.ae;
        if (i4 > 0) {
            this.ae = i4 - 1;
        }
        int i5 = this.aa;
        if (i5 > 0) {
            this.aa = i5 - 1;
        }
        if (this.by > 0) {
            this.by--;
        }
        if (this.Y <= 0) {
            int i6 = this.ad + 1;
            this.ad = i6;
            if (i6 > 20) {
                aa();
                K();
                for (int i7 = i; i7 < 20; i7++) {
                    this.aI.a("explode", (this.aM + ((double) ((this.bs.nextFloat() * this.bg) * 2.0f))) - ((double) this.bg), ((double) (this.bs.nextFloat() * this.bh)) + this.aN, (this.aO + ((double) ((this.bs.nextFloat() * this.bg) * 2.0f))) - ((double) this.bg), this.bs.nextGaussian() * 0.02d, this.bs.nextGaussian() * 0.02d, this.bs.nextGaussian() * 0.02d);
                }
            }
        }
        this.M = this.L;
        this.I = this.H;
        this.aU = this.aS;
        this.aV = this.aT;
    }

    public void V() {
        for (int i = 0; i < 20; i++) {
            double dNextGaussian = this.bs.nextGaussian() * 0.02d;
            double dNextGaussian2 = this.bs.nextGaussian() * 0.02d;
            double dNextGaussian3 = this.bs.nextGaussian() * 0.02d;
            this.aI.a("explode", ((this.aM + ((double) ((this.bs.nextFloat() * this.bg) * 2.0f))) - ((double) this.bg)) - (dNextGaussian * 10.0d), (this.aN + ((double) (this.bs.nextFloat() * this.bh))) - (dNextGaussian2 * 10.0d), ((this.aO + ((double) ((this.bs.nextFloat() * this.bg) * 2.0f))) - ((double) this.bg)) - (dNextGaussian3 * 10.0d), dNextGaussian, dNextGaussian2, dNextGaussian3);
        }
    }

    @Override // defpackage.sn
    public void s_() {
        super.s_();
        this.J = this.K;
        this.K = 0.0f;
    }

    @Override // defpackage.sn
    public void a(double d, double d2, double d3, float f, float f2, int i) {
        this.bf = 0.0f;
        this.ao = d;
        this.ap = d2;
        this.aq = d3;
        this.ar = f;
        this.as = f2;
        this.an = i;
    }

    @Override // defpackage.sn
    public void w_() {
        float f;
        float f2;
        super.w_();
        o();
        double d = this.aM - this.aJ;
        double d2 = this.aO - this.aL;
        float fA = in.a((d * d) + (d2 * d2));
        float fAtan2 = this.H;
        this.J = this.K;
        if (fA <= 0.05f) {
            f2 = 0.0f;
            f = 0.0f;
        } else {
            f = fA * 3.0f;
            fAtan2 = ((((float) Math.atan2(d2, d)) * 180.0f) / 3.1415927f) - 90.0f;
            f2 = 1.0f;
        }
        if (this.X > 0.0f) {
            fAtan2 = this.aS;
        }
        float f3 = this.aX ? f2 : 0.0f;
        float f4 = this.K;
        this.K = f4 + ((f3 - f4) * 0.3f);
        float f5 = fAtan2 - this.H;
        while (f5 < -180.0f) {
            f5 += 360.0f;
        }
        while (f5 >= 180.0f) {
            f5 -= 360.0f;
        }
        this.H += f5 * 0.3f;
        float f6 = this.aS - this.H;
        while (f6 < -180.0f) {
            f6 += 360.0f;
        }
        while (f6 >= 180.0f) {
            f6 -= 360.0f;
        }
        boolean z = f6 < -90.0f || f6 >= 90.0f;
        if (f6 < -75.0f) {
            f6 = -75.0f;
        }
        if (f6 >= 75.0f) {
            f6 = 75.0f;
        }
        float f7 = this.aS - f6;
        this.H = f7;
        if (f6 * f6 > 2500.0f) {
            this.H = f7 + (f6 * 0.2f);
        }
        if (z) {
            f *= -1.0f;
        }
        while (this.aS - this.aU < -180.0f) {
            this.aU -= 360.0f;
        }
        while (this.aS - this.aU >= 180.0f) {
            this.aU += 360.0f;
        }
        while (true) {
            float f8 = this.H;
            float f9 = this.I;
            if (f8 - f9 >= -180.0f) {
                break;
            } else {
                this.I = f9 - 360.0f;
            }
        }
        while (true) {
            float f10 = this.H;
            float f11 = this.I;
            if (f10 - f11 < 180.0f) {
                break;
            } else {
                this.I = f11 + 360.0f;
            }
        }
        while (this.aT - this.aV < -180.0f) {
            this.aV -= 360.0f;
        }
        while (this.aT - this.aV >= 180.0f) {
            this.aV += 360.0f;
        }
        this.L += f;
    }

    @Override // defpackage.sn
    protected void b(float f, float f2) {
        super.b(f, f2);
    }

    public void c(int i) {
        int i2 = this.Y;
        if (i2 <= 0) {
            return;
        }
        int i3 = i2 + i;
        this.Y = i3;
        if (i3 > 20) {
            this.Y = 20;
        }
        this.by = this.E / 2;
    }

    @Override // defpackage.sn
    public boolean a(sn snVar, int i) {
        boolean z;
        double d;
        if (this.aI.B) {
            return false;
        }
        this.av = 0;
        if (this.Y <= 0) {
            return false;
        }
        this.al = 1.5f;
        float f = this.by;
        int i2 = this.E;
        if (f > i2 / 2.0f) {
            int i3 = this.au;
            if (i <= i3) {
                return false;
            }
            b(i - i3);
            this.au = i;
            z = false;
        } else {
            this.au = i;
            this.Z = this.Y;
            this.by = i2;
            b(i);
            this.ab = 10;
            this.aa = 10;
            z = true;
        }
        this.ac = 0.0f;
        if (z) {
            this.aI.a((sn) this, (byte) 2);
            ai();
            if (snVar != null) {
                double dRandom = snVar.aM - this.aM;
                double dRandom2 = snVar.aO - this.aO;
                while (true) {
                    d = dRandom;
                    if ((d * d) + (dRandom2 * dRandom2) >= 1.0E-4d) {
                        break;
                    }
                    dRandom = (Math.random() - Math.random()) * 0.01d;
                    dRandom2 = (Math.random() - Math.random()) * 0.01d;
                }
                this.ac = ((float) ((Math.atan2(dRandom2, d) * 180.0d) / 3.1415927410125732d)) - this.aS;
                a(snVar, i, d, dRandom2);
            } else {
                this.ac = ((int) (Math.random() * 2.0d)) * 180;
            }
        }
        if (this.Y <= 0) {
            if (z) {
                this.aI.a(this, i(), k(), ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f) + 1.0f);
            }
            b(snVar);
        } else if (z) {
            this.aI.a(this, j_(), k(), ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f) + 1.0f);
        }
        return true;
    }

    @Override // defpackage.sn
    public void h() {
        this.ab = 10;
        this.aa = 10;
        this.ac = 0.0f;
    }

    protected void b(int i) {
        this.Y -= i;
    }

    public void a(sn snVar, int i, double d, double d2) {
        float fA = in.a((d * d) + (d2 * d2));
        this.aP /= 2.0d;
        this.aQ /= 2.0d;
        this.aR /= 2.0d;
        double d3 = fA;
        double d4 = 0.4f;
        this.aP -= (d / d3) * d4;
        this.aQ += 0.4000000059604645d;
        this.aR -= (d2 / d3) * d4;
        if (this.aQ > 0.4000000059604645d) {
            this.aQ = 0.4000000059604645d;
        }
    }

    public void b(sn snVar) {
        int i = this.T;
        if (i >= 0 && snVar != null) {
            snVar.c(this, i);
        }
        if (snVar != null) {
            snVar.a(this);
        }
        this.ah = true;
        if (!this.aI.B) {
            q();
        }
        this.aI.a((sn) this, (byte) 3);
    }

    protected void q() {
        int iJ = j();
        if (iJ > 0) {
            int iNextInt = this.bs.nextInt(3);
            for (int i = 0; i < iNextInt; i++) {
                b(iJ, 1);
            }
        }
    }

    @Override // defpackage.sn
    protected void b(float f) {
        super.b(f);
        int iCeil = (int) Math.ceil(f - 3.0f);
        if (iCeil > 0) {
            a((sn) null, iCeil);
            int iA = this.aI.a(in.b(this.aM), in.b((this.aN - 0.20000000298023224d) - ((double) this.bf)), in.b(this.aO));
            if (iA > 0) {
                ct ctVar = uu.m[iA].by;
                this.aI.a(this, ctVar.d(), ctVar.b() * 0.5f, ctVar.c() * 0.75f);
            }
        }
    }

    public void a_(float f, float f2) {
        float f3;
        float f4;
        if (ag()) {
            double d = this.aN;
            a(f, f2, 0.02f);
            b(this.aP, this.aQ, this.aR);
            this.aP *= 0.800000011920929d;
            this.aQ *= 0.800000011920929d;
            this.aR *= 0.800000011920929d;
            this.aQ -= 0.02d;
            if (this.aY && f(this.aP, ((this.aQ + 0.6000000238418579d) - this.aN) + d, this.aR)) {
                this.aQ = 0.30000001192092896d;
            }
        } else if (ah()) {
            double d2 = this.aN;
            a(f, f2, 0.02f);
            b(this.aP, this.aQ, this.aR);
            this.aP *= 0.5d;
            this.aQ *= 0.5d;
            this.aR *= 0.5d;
            this.aQ -= 0.02d;
            if (this.aY && f(this.aP, ((this.aQ + 0.6000000238418579d) - this.aN) + d2, this.aR)) {
                this.aQ = 0.30000001192092896d;
            }
        } else {
            if (this.aX) {
                int iA = this.aI.a(in.b(this.aM), in.b(this.aW.b) - 1, in.b(this.aO));
                f3 = iA > 0 ? uu.m[iA].bB * 0.91f : 0.54600006f;
            } else {
                f3 = 0.91f;
            }
            a(f, f2, this.aX ? 0.1f * (0.16277136f / ((f3 * f3) * f3)) : 0.02f);
            if (this.aX) {
                int iA2 = this.aI.a(in.b(this.aM), in.b(this.aW.b) - 1, in.b(this.aO));
                f4 = iA2 > 0 ? uu.m[iA2].bB * 0.91f : 0.54600006f;
            } else {
                f4 = 0.91f;
            }
            if (p()) {
                double d3 = -0.15f;
                if (this.aP < d3) {
                    this.aP = d3;
                }
                double d4 = 0.15f;
                if (this.aP > d4) {
                    this.aP = d4;
                }
                if (this.aR < d3) {
                    this.aR = d3;
                }
                if (this.aR > d4) {
                    this.aR = d4;
                }
                this.bk = 0.0f;
                if (this.aQ < -0.15d) {
                    this.aQ = -0.15d;
                }
                if (t() && this.aQ < 0.0d) {
                    this.aQ = 0.0d;
                }
            }
            b(this.aP, this.aQ, this.aR);
            if (this.aY && p()) {
                this.aQ = 0.2d;
            }
            this.aQ -= 0.08d;
            this.aQ *= 0.9800000190734863d;
            double d5 = f4;
            this.aP *= d5;
            this.aR *= d5;
        }
        this.ak = this.al;
        double d6 = this.aM - this.aJ;
        double d7 = this.aO - this.aL;
        float fA = in.a((d6 * d6) + (d7 * d7)) * 4.0f;
        if (fA > 1.0f) {
            fA = 1.0f;
        }
        float f5 = this.al;
        float f6 = f5 + ((fA - f5) * 0.4f);
        this.al = f6;
        this.am += f6;
    }

    public boolean p() {
        return this.aI.a(in.b(this.aM), in.b(this.aW.b), in.b(this.aO)) == uu.aG.bn;
    }

    @Override // defpackage.sn
    public void b(nu nuVar) {
        nuVar.a("Health", (short) this.Y);
        nuVar.a("HurtTime", (short) this.aa);
        nuVar.a("DeathTime", (short) this.ad);
        nuVar.a("AttackTime", (short) this.ae);
    }

    @Override // defpackage.sn
    public void a(nu nuVar) {
        this.Y = nuVar.d("Health");
        if (!nuVar.b("Health")) {
            this.Y = 10;
        }
        this.aa = nuVar.d("HurtTime");
        this.ad = nuVar.d("DeathTime");
        this.ae = nuVar.d("AttackTime");
    }

    @Override // defpackage.sn
    public boolean W() {
        return !this.be && this.Y > 0;
    }

    public void o() {
        if (this.an > 0) {
            double d = this.aM + ((this.ao - this.aM) / ((double) this.an));
            double d2 = this.aN + ((this.ap - this.aN) / ((double) this.an));
            double d3 = this.aO + ((this.aq - this.aO) / ((double) this.an));
            double d4 = this.ar - ((double) this.aS);
            while (d4 < -180.0d) {
                d4 += 360.0d;
            }
            while (d4 >= 180.0d) {
                d4 -= 360.0d;
            }
            this.aS = (float) (((double) this.aS) + (d4 / ((double) this.an)));
            this.aT = (float) (((double) this.aT) + ((this.as - ((double) this.aT)) / ((double) this.an)));
            this.an--;
            e(d, d2, d3);
            c(this.aS, this.aT);
            List listA = this.aI.a(this, this.aW.e(0.03125d, 0.0d, 0.03125d));
            if (listA.size() > 0) {
                double d5 = 0.0d;
                for (int i = 0; i < listA.size(); i++) {
                    eq eqVar = (eq) listA.get(i);
                    if (eqVar.e > d5) {
                        d5 = eqVar.e;
                    }
                }
                e(d, d2 + (d5 - this.aW.b), d3);
            }
        }
        if (y()) {
            this.az = false;
            this.aw = 0.0f;
            this.ax = 0.0f;
            this.ay = 0.0f;
        } else if (!this.V) {
            f_();
        }
        boolean zAg = ag();
        boolean zAh = ah();
        if (this.az) {
            if (zAg || zAh) {
                this.aQ += 0.03999999910593033d;
            } else if (this.aX) {
                R();
            }
        }
        float f = this.aw * 0.98f;
        this.aw = f;
        float f2 = this.ax * 0.98f;
        this.ax = f2;
        this.ay *= 0.9f;
        a_(f, f2);
        List listB = this.aI.b(this, this.aW.b(0.20000000298023224d, 0.0d, 0.20000000298023224d));
        if (listB == null || listB.size() <= 0) {
            return;
        }
        for (int i2 = 0; i2 < listB.size(); i2++) {
            sn snVar = (sn) listB.get(i2);
            if (snVar.i_()) {
                snVar.h(this);
            }
        }
    }

    protected boolean y() {
        return this.Y <= 0;
    }

    protected void R() {
        this.aQ = 0.41999998688697815d;
    }

    protected void X() {
        gs gsVarA = this.aI.a((sn) this, -1.0d);
        if (!u() || gsVarA == null) {
            return;
        }
        double d = gsVarA.aM - this.aM;
        double d2 = gsVarA.aN - this.aN;
        double d3 = gsVarA.aO - this.aO;
        double d4 = (d * d) + (d2 * d2) + (d3 * d3);
        if (d4 > 16384.0d) {
            K();
        }
        if (this.av <= 600 || this.bs.nextInt(800) != 0) {
            return;
        }
        if (d4 < 1024.0d) {
            this.av = 0;
        } else {
            K();
        }
    }

    protected void f_() {
        this.av++;
        this.aI.a((sn) this, -1.0d);
        X();
        this.aw = 0.0f;
        this.ax = 0.0f;
        if (this.bs.nextFloat() < 0.02f) {
            gs gsVarA = this.aI.a(this, 8.0f);
            if (gsVarA != null) {
                this.b = gsVarA;
                this.aC = this.bs.nextInt(20) + 10;
            } else {
                this.ay = (this.bs.nextFloat() - 0.5f) * 20.0f;
            }
        }
        sn snVar = this.b;
        if (snVar != null) {
            a(snVar, 10.0f, x());
            int i = this.aC;
            this.aC = i - 1;
            if (i <= 0 || this.b.be || this.b.g(this) > 64.0f) {
                this.b = null;
            }
        } else {
            if (this.bs.nextFloat() < 0.05f) {
                this.ay = (this.bs.nextFloat() - 0.5f) * 20.0f;
            }
            this.aS += this.ay;
            this.aT = this.aA;
        }
        boolean zAg = ag();
        boolean zAh = ah();
        if (zAg || zAh) {
            this.az = this.bs.nextFloat() < 0.8f;
        }
    }

    public void a(sn snVar, float f, float f2) {
        double dW;
        double d;
        float fW;
        double d2 = snVar.aM - this.aM;
        double d3 = snVar.aO - this.aO;
        if (snVar instanceof ls) {
            ls lsVar = (ls) snVar;
            dW = this.aN + ((double) w());
            d = lsVar.aN;
            fW = lsVar.w();
        } else {
            dW = (snVar.aW.b + snVar.aW.e) / 2.0d;
            d = this.aN;
            fW = w();
        }
        double d4 = dW - (d + ((double) fW));
        double dA = in.a((d2 * d2) + (d3 * d3));
        float fAtan2 = ((float) ((Math.atan2(d3, d2) * 180.0d) / 3.1415927410125732d)) - 90.0f;
        this.aT = -b(this.aT, (float) (-((Math.atan2(d4, dA) * 180.0d) / 3.1415927410125732d)), f2);
        this.aS = b(this.aS, fAtan2, f);
    }

    public boolean Y() {
        return this.b != null;
    }

    public sn Z() {
        return this.b;
    }

    public boolean d() {
        return this.aI.a(this.aW) && this.aI.a(this, this.aW).size() == 0 && !this.aI.b(this.aW);
    }

    @Override // defpackage.sn
    protected void ab() {
        a((sn) null, 4);
    }

    public float d(float f) {
        float f2 = this.X;
        float f3 = this.W;
        float f4 = f2 - f3;
        if (f4 < 0.0f) {
            f4 += 1.0f;
        }
        return f3 + (f4 * f);
    }

    public bt e(float f) {
        if (f == 1.0f) {
            return bt.b(this.aM, this.aN, this.aO);
        }
        double d = f;
        return bt.b(this.aJ + ((this.aM - this.aJ) * d), this.aK + ((this.aN - this.aK) * d), this.aL + ((this.aO - this.aL) * d));
    }

    @Override // defpackage.sn
    public bt ac() {
        return f(1.0f);
    }

    public bt f(float f) {
        if (f == 1.0f) {
            float fB = in.b(((-this.aS) * 0.017453292f) - 3.1415927f);
            float fA = in.a(((-this.aS) * 0.017453292f) - 3.1415927f);
            float f2 = -in.b((-this.aT) * 0.017453292f);
            return bt.b(fA * f2, in.a((-this.aT) * 0.017453292f), fB * f2);
        }
        float f3 = this.aV + ((this.aT - this.aV) * f);
        float f4 = ((-(this.aU + ((this.aS - this.aU) * f))) * 0.017453292f) - 3.1415927f;
        float fB2 = in.b(f4);
        float fA2 = in.a(f4);
        float f5 = (-f3) * 0.017453292f;
        float f6 = -in.b(f5);
        return bt.b(fA2 * f6, in.a(f5), fB2 * f6);
    }

    public vf a(double d, float f) {
        bt btVarE = e(f);
        bt btVarF = f(f);
        return this.aI.a(btVarE, btVarE.c(btVarF.a * d, btVarF.b * d, btVarF.c * d));
    }

    @Override // defpackage.sn
    public void a(byte b) {
        if (b != 2) {
            if (b == 3) {
                this.aI.a(this, i(), k(), ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f) + 1.0f);
                this.Y = 0;
                b((sn) null);
                return;
            }
            super.a(b);
            return;
        }
        this.al = 1.5f;
        this.by = this.E;
        this.ab = 10;
        this.aa = 10;
        this.ac = 0.0f;
        this.aI.a(this, j_(), k(), ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f) + 1.0f);
        a((sn) null, 0);
    }

    public int c(iz izVar) {
        return izVar.b();
    }
}
