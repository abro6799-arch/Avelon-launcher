package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class fz extends sn {
    public int a;
    public int b;
    public int c;
    private int d;
    private double e;
    private double f;
    private double g;
    private double h;
    private double i;
    private double j;
    private double k;
    private double l;

    @Override // defpackage.sn
    protected void a(nu nuVar) {
    }

    @Override // defpackage.sn
    protected void b() {
    }

    @Override // defpackage.sn
    protected void b(nu nuVar) {
    }

    @Override // defpackage.sn
    public boolean i_() {
        return true;
    }

    @Override // defpackage.sn
    protected boolean n() {
        return false;
    }

    @Override // defpackage.sn
    public float x_() {
        return 0.0f;
    }

    public fz(fd fdVar) {
        super(fdVar);
        this.a = 0;
        this.b = 0;
        this.c = 1;
        this.aF = true;
        b(1.5f, 0.6f);
        this.bf = this.bh / 2.0f;
    }

    @Override // defpackage.sn
    public eq a(sn snVar) {
        return snVar.aW;
    }

    @Override // defpackage.sn
    public eq f() {
        return this.aW;
    }

    public fz(fd fdVar, double d, double d2, double d3) {
        this(fdVar);
        e(d, d2 + ((double) this.bf), d3);
        this.aP = 0.0d;
        this.aQ = 0.0d;
        this.aR = 0.0d;
        this.aJ = d;
        this.aK = d2;
        this.aL = d3;
    }

    @Override // defpackage.sn
    public double m() {
        return (((double) this.bh) * 0.0d) - 0.30000001192092896d;
    }

    @Override // defpackage.sn
    public boolean a(sn snVar, int i) {
        if (!this.aI.B && !this.be) {
            this.c = -this.c;
            this.b = 10;
            this.a += i * 10;
            ai();
            if (this.a > 40) {
                if (this.aG != null) {
                    this.aG.i(this);
                }
                for (int i2 = 0; i2 < 3; i2++) {
                    a(uu.y.bn, 1, 0.0f);
                }
                for (int i3 = 0; i3 < 2; i3++) {
                    a(gm.B.bf, 1, 0.0f);
                }
                K();
            }
        }
        return true;
    }

    @Override // defpackage.sn
    public void h() {
        this.c = -this.c;
        this.b = 10;
        int i = this.a;
        this.a = i + (i * 10);
    }

    @Override // defpackage.sn
    public boolean h_() {
        return !this.be;
    }

    @Override // defpackage.sn
    public void a(double d, double d2, double d3, float f, float f2, int i) {
        this.e = d;
        this.f = d2;
        this.g = d3;
        this.h = f;
        this.i = f2;
        this.d = i + 4;
        this.aP = this.j;
        this.aQ = this.k;
        this.aR = this.l;
    }

    @Override // defpackage.sn
    public void a(double d, double d2, double d3) {
        this.aP = d;
        this.j = d;
        this.aQ = d2;
        this.k = d2;
        this.aR = d3;
        this.l = d3;
    }

    @Override // defpackage.sn
    public void w_() {
        double d;
        super.w_();
        int i = this.b;
        if (i > 0) {
            this.b = i - 1;
        }
        int i2 = this.a;
        if (i2 > 0) {
            this.a = i2 - 1;
        }
        this.aJ = this.aM;
        this.aK = this.aN;
        this.aL = this.aO;
        int i3 = 0;
        double d2 = 0.0d;
        while (true) {
            if (i3 >= 5) {
                break;
            }
            double d3 = 5;
            double d4 = (this.aW.b + (((this.aW.e - this.aW.b) * ((double) (i3 + 0))) / d3)) - 0.125d;
            i3++;
            if (this.aI.b(eq.b(this.aW.a, d4, this.aW.c, this.aW.d, (this.aW.b + (((this.aW.e - this.aW.b) * ((double) i3)) / d3)) - 0.125d, this.aW.f), ln.g)) {
                d2 += 1.0d / d3;
            }
        }
        if (this.aI.B) {
            if (this.d > 0) {
                double d5 = this.aM + ((this.e - this.aM) / ((double) this.d));
                double d6 = this.aN + ((this.f - this.aN) / ((double) this.d));
                double d7 = this.aO + ((this.g - this.aO) / ((double) this.d));
                double d8 = this.h - ((double) this.aS);
                while (d8 < -180.0d) {
                    d8 += 360.0d;
                }
                while (d8 >= 180.0d) {
                    d8 -= 360.0d;
                }
                this.aS = (float) (((double) this.aS) + (d8 / ((double) this.d)));
                this.aT = (float) (((double) this.aT) + ((this.i - ((double) this.aT)) / ((double) this.d)));
                this.d--;
                e(d5, d6, d7);
                c(this.aS, this.aT);
                return;
            }
            e(this.aM + this.aP, this.aN + this.aQ, this.aO + this.aR);
            if (this.aX) {
                this.aP *= 0.5d;
                this.aQ *= 0.5d;
                this.aR *= 0.5d;
            }
            this.aP *= 0.9900000095367432d;
            this.aQ *= 0.949999988079071d;
            this.aR *= 0.9900000095367432d;
            return;
        }
        if (d2 < 1.0d) {
            this.aQ += ((d2 * 2.0d) - 1.0d) * 0.03999999910593033d;
        } else {
            if (this.aQ < 0.0d) {
                this.aQ /= 2.0d;
            }
            this.aQ += 0.007000000216066837d;
        }
        if (this.aG != null) {
            this.aP += this.aG.aP * 0.2d;
            this.aR += this.aG.aR * 0.2d;
        }
        if (this.aP < -0.4d) {
            this.aP = -0.4d;
        }
        if (this.aP > 0.4d) {
            this.aP = 0.4d;
        }
        if (this.aR < -0.4d) {
            this.aR = -0.4d;
        }
        if (this.aR > 0.4d) {
            this.aR = 0.4d;
        }
        if (this.aX) {
            this.aP *= 0.5d;
            this.aQ *= 0.5d;
            this.aR *= 0.5d;
        }
        b(this.aP, this.aQ, this.aR);
        double dSqrt = Math.sqrt((this.aP * this.aP) + (this.aR * this.aR));
        double d9 = 0.8d;
        int i4 = 2;
        if (dSqrt > 0.15d) {
            double dCos = Math.cos((((double) this.aS) * 3.141592653589793d) / 180.0d);
            double dSin = Math.sin((((double) this.aS) * 3.141592653589793d) / 180.0d);
            int i5 = 0;
            for (d = 1.0d; i5 < (60.0d * dSqrt) + d; d = 1.0d) {
                double dNextFloat = (this.bs.nextFloat() * 2.0f) - 1.0f;
                double dNextInt = ((double) ((this.bs.nextInt(i4) * i4) - 1)) * 0.7d;
                if (this.bs.nextBoolean()) {
                    this.aI.a("splash", (this.aM - ((dCos * dNextFloat) * d9)) + (dSin * dNextInt), this.aN - 0.125d, (this.aO - ((dNextFloat * dSin) * d9)) - (dNextInt * dCos), this.aP, this.aQ, this.aR);
                } else {
                    this.aI.a("splash", this.aM + dCos + (dSin * dNextFloat * 0.7d), this.aN - 0.125d, (this.aO + dSin) - ((dNextFloat * dCos) * 0.7d), this.aP, this.aQ, this.aR);
                }
                i5++;
                dSqrt = dSqrt;
                d9 = 0.8d;
                i4 = 2;
            }
        }
        if (this.aY && dSqrt > 0.15d) {
            if (!this.aI.B) {
                K();
                for (int i6 = 0; i6 < 3; i6++) {
                    a(uu.y.bn, 1, 0.0f);
                }
                for (int i7 = 0; i7 < 2; i7++) {
                    a(gm.B.bf, 1, 0.0f);
                }
            }
        } else {
            this.aP *= 0.9900000095367432d;
            this.aQ *= 0.949999988079071d;
            this.aR *= 0.9900000095367432d;
        }
        this.aT = 0.0f;
        double dAtan2 = this.aS;
        double d10 = this.aJ - this.aM;
        double d11 = this.aL - this.aO;
        if ((d10 * d10) + (d11 * d11) > 0.001d) {
            dAtan2 = (float) ((Math.atan2(d11, d10) * 180.0d) / 3.141592653589793d);
        }
        double d12 = dAtan2 - ((double) this.aS);
        while (d12 >= 180.0d) {
            d12 -= 360.0d;
        }
        while (d12 < -180.0d) {
            d12 += 360.0d;
        }
        if (d12 > 20.0d) {
            d12 = 20.0d;
        }
        if (d12 < -20.0d) {
            d12 = -20.0d;
        }
        this.aS = (float) (((double) this.aS) + d12);
        c(this.aS, this.aT);
        List listB = this.aI.b(this, this.aW.b(0.20000000298023224d, 0.0d, 0.20000000298023224d));
        if (listB != null && listB.size() > 0) {
            for (int i8 = 0; i8 < listB.size(); i8++) {
                sn snVar = (sn) listB.get(i8);
                if (snVar != this.aG && snVar.i_() && (snVar instanceof fz)) {
                    snVar.h(this);
                }
            }
        }
        for (int i9 = 0; i9 < 4; i9++) {
            int iB = in.b(this.aM + ((((double) (i9 % 2)) - 0.5d) * 0.8d));
            int iB2 = in.b(this.aN);
            int iB3 = in.b(this.aO + ((((double) (i9 / 2)) - 0.5d) * 0.8d));
            if (this.aI.a(iB, iB2, iB3) == uu.aT.bn) {
                this.aI.f(iB, iB2, iB3, 0);
            }
        }
        if (this.aG == null || !this.aG.be) {
            return;
        }
        this.aG = null;
    }

    @Override // defpackage.sn
    public void l_() {
        if (this.aG == null) {
            return;
        }
        double dCos = Math.cos((((double) this.aS) * 3.141592653589793d) / 180.0d) * 0.4d;
        double dSin = Math.sin((((double) this.aS) * 3.141592653589793d) / 180.0d) * 0.4d;
        this.aG.e(this.aM + dCos, this.aG.I() + this.aN + m(), this.aO + dSin);
    }

    @Override // defpackage.sn
    public boolean a(gs gsVar) {
        if ((this.aG == null || !(this.aG instanceof gs) || this.aG == gsVar) && !this.aI.B) {
            gsVar.i(this);
        }
        return true;
    }
}
