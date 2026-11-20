package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class yl extends sn implements lw {
    private static final int[][][] j = {new int[][]{new int[]{0, 0, -1}, new int[]{0, 0, 1}}, new int[][]{new int[]{-1, 0, 0}, new int[]{1, 0, 0}}, new int[][]{new int[]{-1, -1, 0}, new int[]{1, 0, 0}}, new int[][]{new int[]{-1, 0, 0}, new int[]{1, -1, 0}}, new int[][]{new int[]{0, 0, -1}, new int[]{0, -1, 1}}, new int[][]{new int[]{0, -1, -1}, new int[]{0, 0, 1}}, new int[][]{new int[]{0, 0, 1}, new int[]{1, 0, 0}}, new int[][]{new int[]{0, 0, 1}, new int[]{-1, 0, 0}}, new int[][]{new int[]{0, 0, -1}, new int[]{-1, 0, 0}}, new int[][]{new int[]{0, 0, -1}, new int[]{1, 0, 0}}};
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public double f;
    public double g;
    private iz[] h;
    private boolean i;
    private int k;
    private double l;
    private double m;
    private double n;
    private double o;
    private double p;
    private double q;
    private double r;
    private double s;

    @Override // defpackage.lw
    public int a() {
        return 27;
    }

    @Override // defpackage.sn
    protected void b() {
    }

    @Override // defpackage.lw
    public String c() {
        return "Minecart";
    }

    @Override // defpackage.lw
    public int d() {
        return 64;
    }

    @Override // defpackage.sn
    public eq f() {
        return null;
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

    @Override // defpackage.lw
    public void y_() {
    }

    public yl(fd fdVar) {
        super(fdVar);
        this.h = new iz[36];
        this.a = 0;
        this.b = 0;
        this.c = 1;
        this.i = false;
        this.aF = true;
        b(0.98f, 0.7f);
        this.bf = this.bh / 2.0f;
    }

    @Override // defpackage.sn
    public eq a(sn snVar) {
        return snVar.aW;
    }

    public yl(fd fdVar, double d, double d2, double d3, int i) {
        this(fdVar);
        e(d, d2 + ((double) this.bf), d3);
        this.aP = 0.0d;
        this.aQ = 0.0d;
        this.aR = 0.0d;
        this.aJ = d;
        this.aK = d2;
        this.aL = d3;
        this.d = i;
    }

    @Override // defpackage.sn
    public double m() {
        return (((double) this.bh) * 0.0d) - 0.30000001192092896d;
    }

    @Override // defpackage.sn
    public boolean a(sn snVar, int i) {
        if (this.aI.B || this.be) {
            return true;
        }
        this.c = -this.c;
        int i2 = 10;
        this.b = 10;
        ai();
        int i3 = this.a + (i * 10);
        this.a = i3;
        if (i3 <= 40) {
            return true;
        }
        if (this.aG != null) {
            this.aG.i(this);
        }
        K();
        a(gm.ax.bf, 1, 0.0f);
        int i4 = this.d;
        if (i4 != 1) {
            if (i4 != 2) {
                return true;
            }
            a(uu.aC.bn, 1, 0.0f);
            return true;
        }
        int i5 = 0;
        while (i5 < a()) {
            iz izVarF_ = f_(i5);
            if (izVarF_ != null) {
                float fNextFloat = (this.bs.nextFloat() * 0.8f) + 0.1f;
                float fNextFloat2 = (this.bs.nextFloat() * 0.8f) + 0.1f;
                float fNextFloat3 = (this.bs.nextFloat() * 0.8f) + 0.1f;
                while (izVarF_.a > 0) {
                    int iNextInt = this.bs.nextInt(21) + i2;
                    if (iNextInt > izVarF_.a) {
                        iNextInt = izVarF_.a;
                    }
                    izVarF_.a -= iNextInt;
                    iz izVar = izVarF_;
                    hl hlVar = new hl(this.aI, this.aM + ((double) fNextFloat), this.aN + ((double) fNextFloat2), this.aO + ((double) fNextFloat3), new iz(izVar.c, iNextInt, izVar.i()));
                    hlVar.aP = ((float) this.bs.nextGaussian()) * 0.05f;
                    hlVar.aQ = (((float) this.bs.nextGaussian()) * 0.05f) + 0.2f;
                    hlVar.aR = ((float) this.bs.nextGaussian()) * 0.05f;
                    this.aI.b(hlVar);
                    izVarF_ = izVar;
                    i2 = 10;
                }
            }
            i5++;
            i2 = 10;
        }
        a(uu.av.bn, 1, 0.0f);
        return true;
    }

    @Override // defpackage.sn
    public void h() {
        System.out.println("Animating hurt");
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
    public void K() {
        yl ylVar = this;
        int i = 0;
        while (i < a()) {
            iz izVarF_ = ylVar.f_(i);
            if (izVarF_ != null) {
                float fNextFloat = (ylVar.bs.nextFloat() * 0.8f) + 0.1f;
                float fNextFloat2 = (ylVar.bs.nextFloat() * 0.8f) + 0.1f;
                float fNextFloat3 = (ylVar.bs.nextFloat() * 0.8f) + 0.1f;
                while (izVarF_.a > 0) {
                    int iNextInt = ylVar.bs.nextInt(21) + 10;
                    if (iNextInt > izVarF_.a) {
                        iNextInt = izVarF_.a;
                    }
                    izVarF_.a -= iNextInt;
                    hl hlVar = new hl(ylVar.aI, ylVar.aM + ((double) fNextFloat), ylVar.aN + ((double) fNextFloat2), ylVar.aO + ((double) fNextFloat3), new iz(izVarF_.c, iNextInt, izVarF_.i()));
                    ylVar = this;
                    hlVar.aP = ((float) ylVar.bs.nextGaussian()) * 0.05f;
                    hlVar.aQ = (((float) ylVar.bs.nextGaussian()) * 0.05f) + 0.2f;
                    hlVar.aR = ((float) ylVar.bs.nextGaussian()) * 0.05f;
                    ylVar.aI.b(hlVar);
                    i = i;
                }
            }
            i++;
        }
        super.K();
    }

    @Override // defpackage.sn
    public void w_() {
        boolean z;
        boolean z2;
        boolean z3;
        double d;
        boolean z4;
        int i;
        int i2 = this.b;
        if (i2 > 0) {
            this.b = i2 - 1;
        }
        int i3 = this.a;
        if (i3 > 0) {
            this.a = i3 - 1;
        }
        if (this.aI.B && (i = this.k) > 0) {
            if (i > 0) {
                double d2 = this.aM + ((this.l - this.aM) / ((double) this.k));
                double d3 = this.aN + ((this.m - this.aN) / ((double) this.k));
                double d4 = this.aO + ((this.n - this.aO) / ((double) this.k));
                double d5 = this.o - ((double) this.aS);
                while (d5 < -180.0d) {
                    d5 += 360.0d;
                }
                while (d5 >= 180.0d) {
                    d5 -= 360.0d;
                }
                this.aS = (float) (((double) this.aS) + (d5 / ((double) this.k)));
                this.aT = (float) (((double) this.aT) + ((this.p - ((double) this.aT)) / ((double) this.k)));
                this.k--;
                e(d2, d3, d4);
                c(this.aS, this.aT);
                return;
            }
            e(this.aM, this.aN, this.aO);
            c(this.aS, this.aT);
            return;
        }
        this.aJ = this.aM;
        this.aK = this.aN;
        this.aL = this.aO;
        this.aQ -= 0.03999999910593033d;
        int iB = in.b(this.aM);
        int iB2 = in.b(this.aN);
        int iB3 = in.b(this.aO);
        if (pc.h(this.aI, iB, iB2 - 1, iB3)) {
            iB2--;
        }
        int i4 = iB2;
        int iA = this.aI.a(iB, i4, iB3);
        if (pc.d(iA)) {
            bt btVarI = i(this.aM, this.aN, this.aO);
            int iE = this.aI.e(iB, i4, iB3);
            this.aN = i4;
            if (iA == uu.U.bn) {
                boolean z5 = (iE & 8) != 0;
                z2 = !z5;
                z3 = z5;
            } else {
                z2 = false;
                z3 = false;
            }
            if (((pc) uu.m[iA]).i()) {
                iE &= 7;
            }
            int i5 = iE;
            if (i5 >= 2 && i5 <= 5) {
                this.aN = i4 + 1;
            }
            if (i5 == 2) {
                this.aP -= 0.0078125d;
            }
            if (i5 == 3) {
                this.aP += 0.0078125d;
            }
            if (i5 == 4) {
                this.aR += 0.0078125d;
            }
            if (i5 == 5) {
                this.aR -= 0.0078125d;
            }
            int[][] iArr = j[i5];
            int[] iArr2 = iArr[1];
            int i6 = iArr2[0];
            int[] iArr3 = iArr[0];
            double d6 = i6 - iArr3[0];
            double d7 = iArr2[2] - iArr3[2];
            double dSqrt = Math.sqrt((d6 * d6) + (d7 * d7));
            if ((this.aP * d6) + (this.aR * d7) < 0.0d) {
                d6 = -d6;
                d7 = -d7;
            }
            double dSqrt2 = Math.sqrt((this.aP * this.aP) + (this.aR * this.aR));
            this.aP = (d6 * dSqrt2) / dSqrt;
            this.aR = (dSqrt2 * d7) / dSqrt;
            if (z2) {
                if (Math.sqrt((this.aP * this.aP) + (this.aR * this.aR)) < 0.03d) {
                    this.aP *= 0.0d;
                    this.aQ *= 0.0d;
                    this.aR *= 0.0d;
                } else {
                    this.aP *= 0.5d;
                    this.aQ *= 0.0d;
                    this.aR *= 0.5d;
                }
            }
            double d8 = iB;
            double d9 = d8 + 0.5d;
            int[] iArr4 = iArr[0];
            double d10 = (((double) iArr4[0]) * 0.5d) + d9;
            double d11 = iB3;
            double d12 = d11 + 0.5d;
            double d13 = (((double) iArr4[2]) * 0.5d) + d12;
            int[] iArr5 = iArr[1];
            double d14 = ((((double) iArr5[0]) * 0.5d) + d9) - d10;
            double d15 = ((((double) iArr5[2]) * 0.5d) + d12) - d13;
            if (d14 == 0.0d) {
                this.aM = d9;
                d = this.aO - d11;
            } else if (d15 == 0.0d) {
                this.aO = d12;
                d = this.aM - d8;
            } else {
                d = (((this.aM - d10) * d14) + ((this.aO - d13) * d15)) * 2.0d;
            }
            this.aM = d10 + (d14 * d);
            this.aO = d13 + (d15 * d);
            e(this.aM, this.aN + ((double) this.bf), this.aO);
            double d16 = this.aP;
            double d17 = this.aR;
            if (this.aG != null) {
                d16 *= 0.75d;
                d17 *= 0.75d;
            }
            double d18 = d16;
            double d19 = d17;
            double d20 = d18;
            if (d20 < -0.4d) {
                d20 = -0.4d;
            }
            if (d20 > 0.4d) {
                d20 = 0.4d;
            }
            if (d19 < -0.4d) {
                d19 = -0.4d;
            }
            b(d20, 0.0d, d19 > 0.4d ? 0.4d : d19);
            if (iArr[0][1] != 0 && in.b(this.aM) - iB == iArr[0][0] && in.b(this.aO) - iB3 == iArr[0][2]) {
                e(this.aM, this.aN + ((double) iArr[0][1]), this.aO);
            } else if (iArr[1][1] != 0 && in.b(this.aM) - iB == iArr[1][0] && in.b(this.aO) - iB3 == iArr[1][2]) {
                e(this.aM, this.aN + ((double) iArr[1][1]), this.aO);
            }
            if (this.aG != null) {
                this.aP *= 0.996999979019165d;
                this.aQ *= 0.0d;
                this.aR *= 0.996999979019165d;
                z = false;
            } else {
                if (this.d == 2) {
                    double d21 = this.f;
                    double d22 = this.g;
                    double dA = in.a((d21 * d21) + (d22 * d22));
                    if (dA > 0.01d) {
                        this.f /= dA;
                        this.g /= dA;
                        this.aP *= 0.800000011920929d;
                        this.aQ *= 0.0d;
                        this.aR *= 0.800000011920929d;
                        this.aP += this.f * 0.04d;
                        this.aR += this.g * 0.04d;
                        z4 = true;
                    } else {
                        this.aP *= 0.8999999761581421d;
                        this.aQ *= 0.0d;
                        this.aR *= 0.8999999761581421d;
                        z4 = false;
                    }
                } else {
                    z4 = false;
                }
                this.aP *= 0.9599999785423279d;
                this.aQ *= 0.0d;
                this.aR *= 0.9599999785423279d;
                z = z4;
            }
            bt btVarI2 = i(this.aM, this.aN, this.aO);
            if (btVarI2 != null && btVarI != null) {
                double d23 = (btVarI.b - btVarI2.b) * 0.05d;
                double dSqrt3 = Math.sqrt((this.aP * this.aP) + (this.aR * this.aR));
                if (dSqrt3 > 0.0d) {
                    double d24 = d23 + dSqrt3;
                    this.aP = (this.aP / dSqrt3) * d24;
                    this.aR = (this.aR / dSqrt3) * d24;
                }
                e(this.aM, btVarI2.b, this.aO);
            }
            int iB4 = in.b(this.aM);
            int iB5 = in.b(this.aO);
            if (iB4 != iB || iB5 != iB3) {
                double dSqrt4 = Math.sqrt((this.aP * this.aP) + (this.aR * this.aR));
                this.aP = ((double) (iB4 - iB)) * dSqrt4;
                this.aR = dSqrt4 * ((double) (iB5 - iB3));
            }
            if (this.d == 2) {
                double d25 = this.f;
                double d26 = this.g;
                double dA2 = in.a((d25 * d25) + (d26 * d26));
                if (dA2 > 0.01d && (this.aP * this.aP) + (this.aR * this.aR) > 0.001d) {
                    double d27 = this.f / dA2;
                    this.f = d27;
                    this.g /= dA2;
                    if ((d27 * this.aP) + (this.g * this.aR) < 0.0d) {
                        this.f = 0.0d;
                        this.g = 0.0d;
                    } else {
                        this.f = this.aP;
                        this.g = this.aR;
                    }
                }
            }
            if (z3) {
                double dSqrt5 = Math.sqrt((this.aP * this.aP) + (this.aR * this.aR));
                if (dSqrt5 > 0.01d) {
                    this.aP += (this.aP / dSqrt5) * 0.06d;
                    this.aR += (this.aR / dSqrt5) * 0.06d;
                } else if (i5 == 1) {
                    if (this.aI.h(iB - 1, i4, iB3)) {
                        this.aP = 0.02d;
                    } else if (this.aI.h(iB + 1, i4, iB3)) {
                        this.aP = -0.02d;
                    }
                } else if (i5 == 0) {
                    if (this.aI.h(iB, i4, iB3 - 1)) {
                        this.aR = 0.02d;
                    } else if (this.aI.h(iB, i4, iB3 + 1)) {
                        this.aR = -0.02d;
                    }
                }
            }
        } else {
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
            if (!this.aX) {
                this.aP *= 0.949999988079071d;
                this.aQ *= 0.949999988079071d;
                this.aR *= 0.949999988079071d;
            }
            z = false;
        }
        this.aT = 0.0f;
        double d28 = this.aJ - this.aM;
        double d29 = this.aL - this.aO;
        if ((d28 * d28) + (d29 * d29) > 0.001d) {
            this.aS = (float) ((Math.atan2(d29, d28) * 180.0d) / 3.141592653589793d);
            if (this.i) {
                this.aS += 180.0f;
            }
        }
        double d30 = this.aS - this.aU;
        while (d30 >= 180.0d) {
            d30 -= 360.0d;
        }
        while (d30 < -180.0d) {
            d30 += 360.0d;
        }
        if (d30 < -170.0d || d30 >= 170.0d) {
            this.aS += 180.0f;
            this.i = !this.i;
        }
        c(this.aS, this.aT);
        List listB = this.aI.b(this, this.aW.b(0.20000000298023224d, 0.0d, 0.20000000298023224d));
        if (listB != null && listB.size() > 0) {
            for (int i7 = 0; i7 < listB.size(); i7++) {
                sn snVar = (sn) listB.get(i7);
                if (snVar != this.aG && snVar.i_() && (snVar instanceof yl)) {
                    snVar.h(this);
                }
            }
        }
        if (this.aG != null && this.aG.be) {
            this.aG = null;
        }
        if (z && this.bs.nextInt(4) == 0) {
            int i8 = this.e - 1;
            this.e = i8;
            if (i8 < 0) {
                this.g = 0.0d;
                this.f = 0.0d;
            }
            this.aI.a("largesmoke", this.aM, this.aN + 0.8d, this.aO, 0.0d, 0.0d, 0.0d);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x008e  */
    /* JADX WARN: Code duplicated, block: B:29:0x00aa  */
    public bt a(double d, double d2, double d3, double d4) {
        int iB;
        int[] iArr;
        int i;
        int iB2 = in.b(d);
        int iB3 = in.b(d2);
        int iB4 = in.b(d3);
        if (pc.h(this.aI, iB2, iB3 - 1, iB4)) {
            iB3--;
        }
        int iA = this.aI.a(iB2, iB3, iB4);
        if (!pc.d(iA)) {
            return null;
        }
        int iE = this.aI.e(iB2, iB3, iB4);
        if (((pc) uu.m[iA]).i()) {
            iE &= 7;
        }
        double d5 = iB3;
        if (iE >= 2 && iE <= 5) {
            d5 = iB3 + 1;
        }
        int[][] iArr2 = j[iE];
        int[] iArr3 = iArr2[1];
        int i2 = iArr3[0];
        int[] iArr4 = iArr2[0];
        double d6 = i2 - iArr4[0];
        double d7 = iArr3[2] - iArr4[2];
        double dSqrt = Math.sqrt((d6 * d6) + (d7 * d7));
        double d8 = d + ((d6 / dSqrt) * d4);
        double d9 = d3 + ((d7 / dSqrt) * d4);
        if (iArr2[0][1] != 0 && in.b(d8) - iB2 == iArr2[0][0]) {
            int iB5 = in.b(d9) - iB4;
            int[] iArr5 = iArr2[0];
            if (iB5 == iArr5[2]) {
                i = iArr5[1];
            } else if (iArr2[1][1] != 0) {
                iB = in.b(d9) - iB4;
                iArr = iArr2[1];
                if (iB == iArr[2]) {
                    i = iArr[1];
                }
            }
            d5 += (double) i;
        } else if (iArr2[1][1] != 0 && in.b(d8) - iB2 == iArr2[1][0]) {
            iB = in.b(d9) - iB4;
            iArr = iArr2[1];
            if (iB == iArr[2]) {
                i = iArr[1];
                d5 += (double) i;
            }
        }
        return i(d8, d5, d9);
    }

    public bt i(double d, double d2, double d3) {
        double d4;
        int iB = in.b(d);
        int iB2 = in.b(d2);
        int iB3 = in.b(d3);
        if (pc.h(this.aI, iB, iB2 - 1, iB3)) {
            iB2--;
        }
        int iA = this.aI.a(iB, iB2, iB3);
        if (!pc.d(iA)) {
            return null;
        }
        int iE = this.aI.e(iB, iB2, iB3);
        double d5 = iB2;
        if (((pc) uu.m[iA]).i()) {
            iE &= 7;
        }
        int[][] iArr = j[iE];
        double d6 = iB;
        double d7 = d6 + 0.5d;
        int[] iArr2 = iArr[0];
        double d8 = (((double) iArr2[0]) * 0.5d) + d7;
        double d9 = d5 + 0.5d;
        double d10 = (((double) iArr2[1]) * 0.5d) + d9;
        double d11 = iB3;
        double d12 = d11 + 0.5d;
        double d13 = d12 + (((double) iArr2[2]) * 0.5d);
        int[] iArr3 = iArr[1];
        double d14 = (d7 + (((double) iArr3[0]) * 0.5d)) - d8;
        double d15 = ((d9 + (((double) iArr3[1]) * 0.5d)) - d10) * 2.0d;
        double d16 = (d12 + (((double) iArr3[2]) * 0.5d)) - d13;
        if (d14 == 0.0d) {
            d4 = d3 - d11;
        } else {
            d4 = d16 == 0.0d ? d - d6 : 2.0d * (((d - d8) * d14) + ((d3 - d13) * d16));
        }
        double d17 = (d14 * d4) + d8;
        double d18 = d10 + (d15 * d4);
        double d19 = d13 + (d16 * d4);
        if (d15 < 0.0d) {
            d18 += 1.0d;
        }
        if (d15 > 0.0d) {
            d18 += 0.5d;
        }
        return bt.b(d17, d18, d19);
    }

    @Override // defpackage.sn
    protected void b(nu nuVar) {
        nuVar.a("Type", this.d);
        int i = this.d;
        if (i == 2) {
            nuVar.a("PushX", this.f);
            nuVar.a("PushZ", this.g);
            nuVar.a("Fuel", (short) this.e);
        } else {
            if (i != 1) {
                return;
            }
            sp spVar = new sp();
            int i2 = 0;
            while (true) {
                iz[] izVarArr = this.h;
                if (i2 < izVarArr.length) {
                    if (izVarArr[i2] != null) {
                        nu nuVar2 = new nu();
                        nuVar2.a("Slot", (byte) i2);
                        this.h[i2].a(nuVar2);
                        spVar.a(nuVar2);
                    }
                    i2++;
                } else {
                    nuVar.a("Items", spVar);
                    return;
                }
            }
        }
    }

    @Override // defpackage.sn
    protected void a(nu nuVar) {
        int iE = nuVar.e("Type");
        this.d = iE;
        if (iE == 2) {
            this.f = nuVar.h("PushX");
            this.g = nuVar.h("PushZ");
            this.e = nuVar.d("Fuel");
        } else if (iE == 1) {
            sp spVarL = nuVar.l("Items");
            this.h = new iz[a()];
            for (int i = 0; i < spVarL.c(); i++) {
                nu nuVar2 = (nu) spVarL.a(i);
                int iC = nuVar2.c("Slot") & 255;
                if (iC >= 0) {
                    iz[] izVarArr = this.h;
                    if (iC < izVarArr.length) {
                        izVarArr[iC] = new iz(nuVar2);
                    }
                }
            }
        }
    }

    @Override // defpackage.sn
    public void h(sn snVar) {
        if (this.aI.B || snVar == this.aG) {
            return;
        }
        if ((snVar instanceof ls) && !(snVar instanceof gs) && this.d == 0 && (this.aP * this.aP) + (this.aR * this.aR) > 0.01d && this.aG == null && snVar.aH == null) {
            snVar.i(this);
        }
        double d = snVar.aM - this.aM;
        double d2 = snVar.aO - this.aO;
        double d3 = (d * d) + (d2 * d2);
        if (d3 >= 9.999999747378752E-5d) {
            double dA = in.a(d3);
            double d4 = d / dA;
            double d5 = d2 / dA;
            double d6 = 1.0d / dA;
            double d7 = d6 <= 1.0d ? d6 : 1.0d;
            double d8 = d5 * d7 * 0.10000000149011612d;
            double d9 = d4 * d7 * 0.10000000149011612d * ((double) (1.0f - this.br)) * 0.5d;
            double d10 = d8 * ((double) (1.0f - this.br)) * 0.5d;
            if (snVar instanceof yl) {
                double d11 = ((snVar.aM - this.aM) * snVar.aR) + ((snVar.aO - this.aO) * snVar.aJ);
                if (d11 * d11 > 5.0d) {
                    return;
                }
                double d12 = snVar.aP + this.aP;
                double d13 = snVar.aR + this.aR;
                int i = ((yl) snVar).d;
                if (i == 2 && this.d != 2) {
                    this.aP *= 0.20000000298023224d;
                    this.aR *= 0.20000000298023224d;
                    d(snVar.aP - d9, 0.0d, snVar.aR - d10);
                    snVar.aP *= 0.699999988079071d;
                    snVar.aR *= 0.699999988079071d;
                    return;
                }
                if (i != 2 && this.d == 2) {
                    snVar.aP *= 0.20000000298023224d;
                    snVar.aR *= 0.20000000298023224d;
                    snVar.d(this.aP + d9, 0.0d, this.aR + d10);
                    this.aP *= 0.699999988079071d;
                    this.aR *= 0.699999988079071d;
                    return;
                }
                double d14 = d12 / 2.0d;
                double d15 = d13 / 2.0d;
                this.aP *= 0.20000000298023224d;
                this.aR *= 0.20000000298023224d;
                d(d14 - d9, 0.0d, d15 - d10);
                snVar.aP *= 0.20000000298023224d;
                snVar.aR *= 0.20000000298023224d;
                snVar.d(d14 + d9, 0.0d, d15 + d10);
                return;
            }
            d(-d9, 0.0d, -d10);
            snVar.d(d9 / 4.0d, 0.0d, d10 / 4.0d);
        }
    }

    @Override // defpackage.lw
    public iz f_(int i) {
        return this.h[i];
    }

    @Override // defpackage.lw
    public iz a(int i, int i2) {
        iz izVar = this.h[i];
        if (izVar == null) {
            return null;
        }
        if (izVar.a <= i2) {
            iz[] izVarArr = this.h;
            iz izVar2 = izVarArr[i];
            izVarArr[i] = null;
            return izVar2;
        }
        iz izVarA = this.h[i].a(i2);
        if (this.h[i].a == 0) {
            this.h[i] = null;
        }
        return izVarA;
    }

    @Override // defpackage.lw
    public void a(int i, iz izVar) {
        this.h[i] = izVar;
        if (izVar == null || izVar.a <= d()) {
            return;
        }
        izVar.a = d();
    }

    @Override // defpackage.sn
    public boolean a(gs gsVar) {
        int i = this.d;
        if (i == 0) {
            if ((this.aG == null || !(this.aG instanceof gs) || this.aG == gsVar) && !this.aI.B) {
                gsVar.i(this);
            }
        } else if (i == 1) {
            if (!this.aI.B) {
                gsVar.a((lw) this);
            }
        } else if (i == 2) {
            iz izVarB = gsVar.c.b();
            if (izVarB != null && izVarB.c == gm.k.bf) {
                int i2 = izVarB.a - 1;
                izVarB.a = i2;
                if (i2 == 0) {
                    gsVar.c.a(gsVar.c.c, (iz) null);
                }
                this.e += 1200;
            }
            this.f = this.aM - gsVar.aM;
            this.g = this.aO - gsVar.aO;
        }
        return true;
    }

    @Override // defpackage.sn
    public void a(double d, double d2, double d3, float f, float f2, int i) {
        this.l = d;
        this.m = d2;
        this.n = d3;
        this.o = f;
        this.p = f2;
        this.k = i + 2;
        this.aP = this.q;
        this.aQ = this.r;
        this.aR = this.s;
    }

    @Override // defpackage.sn
    public void a(double d, double d2, double d3) {
        this.aP = d;
        this.q = d;
        this.aQ = d2;
        this.r = d2;
        this.aR = d3;
        this.s = d3;
    }

    @Override // defpackage.lw
    public boolean a_(gs gsVar) {
        return !this.be && gsVar.g(this) <= 64.0d;
    }
}
