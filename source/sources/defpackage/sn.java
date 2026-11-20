package defpackage;

import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public abstract class sn {
    private static int a;
    public int aD;
    public double aE;
    public boolean aF;
    public sn aG;
    public sn aH;
    public fd aI;
    public double aJ;
    public double aK;
    public double aL;
    public double aM;
    public double aN;
    public double aO;
    public double aP;
    public double aQ;
    public double aR;
    public float aS;
    public float aT;
    public float aU;
    public float aV;
    public final eq aW;
    public boolean aX;
    public boolean aY;
    public boolean aZ;
    private int b;
    public String bA;
    public String bB;
    protected boolean bC;
    protected ud bD;
    public float bE;
    public boolean bF;
    public int bG;
    public int bH;
    public int bI;
    public int bJ;
    public int bK;
    public int bL;
    public boolean bM;
    public boolean ba;
    public boolean bb;
    public boolean bc;
    public boolean bd;
    public boolean be;
    public float bf;
    public float bg;
    public float bh;
    public float bi;
    public float bj;
    protected float bk;
    public double bl;
    public double bm;
    public double bn;
    public float bo;
    public float bp;
    public boolean bq;
    public float br;
    protected Random bs;
    public int bt;
    public int bu;
    public int bv;
    protected int bw;
    protected boolean bx;
    public int by;
    public int bz;
    private boolean c;
    private double d;
    private double e;

    public void S() {
    }

    public eq a(sn snVar) {
        return null;
    }

    public void a(byte b) {
    }

    public void a(ls lsVar) {
    }

    protected abstract void a(nu nuVar);

    public boolean a(gs gsVar) {
        return false;
    }

    public bt ac() {
        return null;
    }

    protected abstract void b();

    public void b(gs gsVar) {
    }

    protected abstract void b(nu nuVar);

    public void c(int i, int i2, int i3) {
    }

    public void c(sn snVar, int i) {
    }

    public eq f() {
        return null;
    }

    public void h() {
    }

    public boolean h_() {
        return false;
    }

    public boolean i_() {
        return false;
    }

    public float m_() {
        return 0.1f;
    }

    protected boolean n() {
        return true;
    }

    public String q_() {
        return null;
    }

    public void u_() {
    }

    public float w() {
        return 0.0f;
    }

    public sn(fd fdVar) {
        int i = a;
        a = i + 1;
        this.aD = i;
        this.aE = 1.0d;
        this.aF = false;
        this.aW = eq.a(0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d);
        this.aX = false;
        this.ba = false;
        this.bb = false;
        this.bd = true;
        this.be = false;
        this.bf = 0.0f;
        this.bg = 0.6f;
        this.bh = 1.8f;
        this.bi = 0.0f;
        this.bj = 0.0f;
        this.bk = 0.0f;
        this.b = 1;
        this.bo = 0.0f;
        this.bp = 0.0f;
        this.bq = false;
        this.br = 0.0f;
        this.bs = new Random();
        this.bt = 0;
        this.bu = 1;
        this.bv = 0;
        this.bw = 300;
        this.bx = false;
        this.by = 0;
        this.bz = 300;
        this.c = true;
        this.bC = false;
        this.bD = new ud();
        this.bE = 0.0f;
        this.bF = false;
        this.aI = fdVar;
        e(0.0d, 0.0d, 0.0d);
        this.bD.a(0, (Object) (byte) 0);
        b();
    }

    public ud ad() {
        return this.bD;
    }

    public boolean equals(Object obj) {
        return (obj instanceof sn) && ((sn) obj).aD == this.aD;
    }

    public int hashCode() {
        return this.aD;
    }

    protected void t_() {
        if (this.aI == null) {
            return;
        }
        while (true) {
            double d = this.aN;
            if (d <= 0.0d) {
                break;
            }
            e(this.aM, d, this.aO);
            if (this.aI.a(this, this.aW).size() == 0) {
                break;
            } else {
                this.aN += 1.0d;
            }
        }
        this.aR = 0.0d;
        this.aQ = 0.0d;
        this.aP = 0.0d;
        this.aT = 0.0f;
    }

    public void K() {
        this.be = true;
    }

    protected void b(float f, float f2) {
        this.bg = f;
        this.bh = f2;
    }

    protected void c(float f, float f2) {
        this.aS = f % 360.0f;
        this.aT = f2 % 360.0f;
    }

    public void e(double d, double d2, double d3) {
        this.aM = d;
        this.aN = d2;
        this.aO = d3;
        float f = this.bg / 2.0f;
        float f2 = this.bh;
        double d4 = f;
        float f3 = this.bf;
        float f4 = this.bo;
        this.aW.c(d - d4, (d2 - ((double) f3)) + ((double) f4), d3 - d4, d + d4, (d2 - ((double) f3)) + ((double) f4) + ((double) f2), d3 + d4);
    }

    public void d(float f, float f2) {
        float f3 = this.aT;
        float f4 = this.aS;
        float f5 = (float) (((double) f4) + (((double) f) * 0.15d));
        this.aS = f5;
        float f6 = (float) (((double) f3) - (((double) f2) * 0.15d));
        this.aT = f6;
        if (f6 < -90.0f) {
            this.aT = -90.0f;
        }
        if (this.aT > 90.0f) {
            this.aT = 90.0f;
        }
        this.aV += this.aT - f3;
        this.aU += f5 - f4;
    }

    public void w_() {
        U();
    }

    /* JADX WARN: Code duplicated, block: B:43:0x015a  */
    /* JADX WARN: Code duplicated, block: B:46:0x0165  */
    /* JADX WARN: Code duplicated, block: B:49:0x016e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0172  */
    /* JADX WARN: Code duplicated, block: B:52:0x0174  */
    /* JADX WARN: Code duplicated, block: B:56:0x017e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0184  */
    public void U() {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        float f;
        float f2;
        sn snVar = this.aH;
        if (snVar != null && snVar.be) {
            this.aH = null;
        }
        this.bt++;
        this.bi = this.bj;
        this.aJ = this.aM;
        this.aK = this.aN;
        this.aL = this.aO;
        this.aV = this.aT;
        this.aU = this.aS;
        if (k_()) {
            if (!this.bx && !this.c) {
                double d = this.aP;
                double d2 = this.aQ;
                double d3 = (d * d * 0.20000000298023224d) + (d2 * d2);
                double d4 = this.aR;
                float fA = in.a(d3 + (d4 * d4 * 0.20000000298023224d));
                float f3 = 0.2f;
                float f4 = fA * 0.2f;
                float f5 = 1.0f;
                if (f4 > 1.0f) {
                    f4 = 1.0f;
                }
                this.aI.a(this, "random.splash", f4, ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.4f) + 1.0f);
                float fB = in.b(this.aW.b);
                int i2 = 0;
                while (true) {
                    f2 = 2.0f;
                    if (i2 >= (this.bg * 20.0f) + f5) {
                        break;
                    }
                    this.aI.a("bubble", this.aM + ((double) (((this.bs.nextFloat() * 2.0f) - f5) * this.bg)), fB + f5, this.aO + ((double) (((this.bs.nextFloat() * 2.0f) - f5) * this.bg)), this.aP, this.aQ - ((double) (this.bs.nextFloat() * f3)), this.aR);
                    i2++;
                    f3 = 0.2f;
                    f5 = 1.0f;
                }
                int i3 = 0;
                for (f = 20.0f; i3 < (this.bg * f) + 1.0f; f = 20.0f) {
                    this.aI.a("splash", (((this.bs.nextFloat() * f2) - 1.0f) * this.bg) + this.aM, fB + 1.0f, this.aO + ((double) (((this.bs.nextFloat() * f2) - 1.0f) * this.bg)), this.aP, this.aQ, this.aR);
                    i3++;
                    f2 = 2.0f;
                }
            }
            this.bk = 0.0f;
            this.bx = true;
            i = 0;
            this.bv = 0;
        } else {
            i = 0;
            this.bx = false;
        }
        if (this.aI.B) {
            this.bv = i;
        } else {
            int i4 = this.bv;
            if (i4 > 0) {
                if (this.bC) {
                    int i5 = i4 - 4;
                    this.bv = i5;
                    if (i5 < 0) {
                        this.bv = i;
                    }
                } else {
                    z = true;
                    if (i4 % 20 == 0) {
                        a((sn) null, 1);
                    }
                    this.bv--;
                }
            }
            if (ah()) {
                ae();
            }
            if (this.aN < -64.0d) {
                ab();
            }
            if (this.aI.B) {
                z2 = false;
            } else {
                if (this.bv > 0) {
                    z3 = z;
                } else {
                    z3 = false;
                }
                z2 = false;
                b(0, z3);
                if (this.aH == null) {
                    z = false;
                }
                b(2, z);
            }
            this.c = z2;
        }
        z = true;
        if (ah()) {
            ae();
        }
        if (this.aN < -64.0d) {
            ab();
        }
        if (this.aI.B) {
            if (this.bv > 0) {
                z3 = z;
            } else {
                z3 = false;
            }
            z2 = false;
            b(0, z3);
            if (this.aH == null) {
                z = false;
            }
            b(2, z);
        } else {
            z2 = false;
        }
        this.c = z2;
    }

    protected void ae() {
        if (this.bC) {
            return;
        }
        a((sn) null, 4);
        this.bv = 600;
    }

    protected void ab() {
        K();
    }

    public boolean f(double d, double d2, double d3) {
        eq eqVarC = this.aW.c(d, d2, d3);
        return this.aI.a(this, eqVarC).size() <= 0 && !this.aI.b(eqVarC);
    }

    /* JADX WARN: Code duplicated, block: B:145:0x0364  */
    /* JADX WARN: Code duplicated, block: B:148:0x036b  */
    /* JADX WARN: Code duplicated, block: B:149:0x036d  */
    /* JADX WARN: Code duplicated, block: B:155:0x037a  */
    /* JADX WARN: Code duplicated, block: B:161:0x0384  */
    /* JADX WARN: Code duplicated, block: B:164:0x038c  */
    /* JADX WARN: Code duplicated, block: B:165:0x0391  */
    /* JADX WARN: Code duplicated, block: B:167:0x0395  */
    /* JADX WARN: Code duplicated, block: B:170:0x039b  */
    /* JADX WARN: Code duplicated, block: B:178:0x03f6  */
    /* JADX WARN: Code duplicated, block: B:184:0x0422  */
    /* JADX WARN: Code duplicated, block: B:185:0x0439  */
    /* JADX WARN: Code duplicated, block: B:187:0x0445  */
    /* JADX WARN: Code duplicated, block: B:191:0x04b5 A[ADDED_TO_REGION, LOOP:8: B:191:0x04b5->B:201:0x04e0, LOOP_START, PHI: r1
      0x04b5: PHI (r1v27 int) = (r1v21 int), (r1v28 int) binds: [B:190:0x04b3, B:201:0x04e0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:192:0x04b7  */
    /* JADX WARN: Code duplicated, block: B:194:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:196:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:198:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:204:0x0504  */
    /* JADX WARN: Code duplicated, block: B:206:0x050a  */
    /* JADX WARN: Code duplicated, block: B:208:0x0511  */
    /* JADX WARN: Code duplicated, block: B:209:0x0516  */
    /* JADX WARN: Code duplicated, block: B:211:0x051a  */
    /* JADX WARN: Code duplicated, block: B:244:0x04da A[SYNTHETIC] */
    public void b(double d, double d2, double d3) {
        double d4;
        double d5;
        double d6;
        double dA;
        double d7;
        double d8;
        double d9;
        double d10;
        double d11;
        boolean z;
        double d12;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        double d13;
        double d14;
        double d15;
        int iB;
        int iB2;
        int iB3;
        int iB4;
        int iB5;
        int iB6;
        boolean zAf;
        int i;
        int i2;
        int i3;
        int iA;
        int iB7;
        int iB8;
        int iB9;
        int iA2;
        int i4;
        float f;
        int i5;
        ct ctVar;
        double dA2;
        double d16;
        double d17;
        double d18;
        double dC;
        double d19;
        double d20;
        double d21;
        double d22;
        double d23;
        if (this.bq) {
            this.aW.d(d, d2, d3);
            this.aM = (this.aW.a + this.aW.d) / 2.0d;
            this.aN = (this.aW.b + ((double) this.bf)) - ((double) this.bo);
            this.aO = (this.aW.c + this.aW.f) / 2.0d;
            return;
        }
        this.bo *= 0.4f;
        double d24 = this.aM;
        double d25 = this.aO;
        if (this.bc) {
            this.bc = false;
            d4 = d * 0.25d;
            this.aP = 0.0d;
            this.aQ = 0.0d;
            this.aR = 0.0d;
            d5 = 0.05000000074505806d * d2;
            d6 = 0.25d * d3;
        } else {
            d4 = d;
            d5 = d2;
            d6 = d3;
        }
        eq eqVarD = this.aW.d();
        boolean z6 = this.aX && t();
        if (z6) {
            while (d4 != 0.0d && this.aI.a(this, this.aW.c(d4, -1.0d, 0.0d)).size() == 0) {
                d4 = (d4 >= 0.05d || d4 < -0.05d) ? d4 > 0.0d ? d4 - 0.05d : d4 + 0.05d : 0.0d;
            }
            while (d6 != 0.0d && this.aI.a(this, this.aW.c(0.0d, -1.0d, d6)).size() == 0) {
                d6 = (d6 >= 0.05d || d6 < -0.05d) ? d6 > 0.0d ? d6 - 0.05d : d6 + 0.05d : 0.0d;
            }
        }
        double d26 = d4;
        double d27 = d6;
        List listA = this.aI.a(this, this.aW.a(d4, d5, d27));
        double dB = d5;
        double d28 = d4;
        int i6 = 0;
        while (i6 < listA.size()) {
            dB = ((eq) listA.get(i6)).b(this.aW, dB);
            i6++;
            d25 = d25;
        }
        double d29 = d25;
        this.aW.d(0.0d, dB, 0.0d);
        if (this.bd || d5 == dB) {
            dA = d28;
        } else {
            dB = 0.0d;
            dA = 0.0d;
            d27 = 0.0d;
        }
        boolean z7 = this.aX || (d5 != dB && d5 < 0.0d);
        double d30 = dB;
        for (int i7 = 0; i7 < listA.size(); i7++) {
            dA = ((eq) listA.get(i7)).a(this.aW, dA);
        }
        this.aW.d(dA, 0.0d, 0.0d);
        if (this.bd || d26 == dA) {
            d7 = d30;
        } else {
            d7 = 0.0d;
            dA = 0.0d;
            d27 = 0.0d;
        }
        double d31 = d7;
        double d32 = dA;
        double dC2 = d27;
        for (int i8 = 0; i8 < listA.size(); i8++) {
            dC2 = ((eq) listA.get(i8)).c(this.aW, dC2);
        }
        this.aW.d(0.0d, 0.0d, dC2);
        if (this.bd || d27 == dC2) {
            d8 = d31;
            d9 = dC2;
            d10 = d32;
        } else {
            d10 = 0.0d;
            d9 = 0.0d;
            d8 = 0.0d;
        }
        float f2 = this.bp;
        if (f2 > 0.0f && z7 && ((z6 || this.bo < 0.05f) && (d26 != d10 || d27 != d9))) {
            double dB2 = f2;
            eq eqVarD2 = this.aW.d();
            z = z6;
            this.aW.b(eqVarD);
            List listA2 = this.aI.a(this, this.aW.a(d26, dB2, d27));
            d11 = d24;
            for (int i9 = 0; i9 < listA2.size(); i9++) {
                dB2 = ((eq) listA2.get(i9)).b(this.aW, dB2);
            }
            this.aW.d(0.0d, dB2, 0.0d);
            if (this.bd || d5 == dB2) {
                dA2 = d26;
                d16 = dB2;
                d17 = d27;
            } else {
                dA2 = 0.0d;
                d17 = 0.0d;
                d16 = 0.0d;
            }
            double d33 = d17;
            for (int i10 = 0; i10 < listA2.size(); i10++) {
                dA2 = ((eq) listA2.get(i10)).a(this.aW, dA2);
            }
            this.aW.d(dA2, 0.0d, 0.0d);
            if (this.bd || d26 == dA2) {
                d18 = dA2;
                dC = d33;
            } else {
                dC = 0.0d;
                d18 = 0.0d;
                d16 = 0.0d;
            }
            double d34 = d18;
            for (int i11 = 0; i11 < listA2.size(); i11++) {
                dC = ((eq) listA2.get(i11)).c(this.aW, dC);
            }
            this.aW.d(0.0d, 0.0d, dC);
            boolean z8 = this.bd;
            if (z8 || d27 == dC) {
                d19 = dC;
                d20 = d34;
            } else {
                d20 = 0.0d;
                d19 = 0.0d;
                d16 = 0.0d;
            }
            if (z8 || d5 == d16) {
                double d35 = d20;
                double dB3 = -this.bp;
                double d36 = d19;
                for (int i12 = 0; i12 < listA2.size(); i12++) {
                    dB3 = ((eq) listA2.get(i12)).b(this.aW, dB3);
                }
                this.aW.d(0.0d, dB3, 0.0d);
                d21 = d36;
                d22 = dB3;
                d23 = d35;
            } else {
                d23 = 0.0d;
                d21 = 0.0d;
                d22 = 0.0d;
            }
            if ((d10 * d10) + (d9 * d9) >= (d23 * d23) + (d21 * d21)) {
                this.aW.b(eqVarD2);
            } else {
                double d37 = this.aW.b - ((double) ((int) this.aW.b));
                if (d37 > 0.0d) {
                    this.bo = (float) (((double) this.bo) + d37 + 0.01d);
                }
                d10 = d23;
                d9 = d21;
                d12 = d22;
            }
            this.aM = (this.aW.a + this.aW.d) / 2.0d;
            this.aN = (this.aW.b + ((double) this.bf)) - ((double) this.bo);
            this.aO = (this.aW.c + this.aW.f) / 2.0d;
            if (d26 == d10 || d27 != d9) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.aY = z2;
            if (d5 != d12) {
                z3 = true;
            } else {
                z3 = false;
            }
            this.aZ = z3;
            if (d5 != d12 || d5 >= 0.0d) {
                z4 = false;
            } else {
                z4 = true;
            }
            this.aX = z4;
            if (!z2 || z3) {
                z5 = true;
            } else {
                z5 = false;
            }
            this.ba = z5;
            a(d12, z4);
            if (d26 != d10) {
                d13 = 0.0d;
                this.aP = 0.0d;
            } else {
                d13 = 0.0d;
            }
            if (d5 != d12) {
                this.aQ = d13;
            }
            if (d27 != d9) {
                this.aR = d13;
            }
            d14 = this.aM - d11;
            d15 = this.aO - d29;
            if (n() && !z && this.aH == null) {
                this.bj = (float) (((double) this.bj) + (((double) in.a((d14 * d14) + (d15 * d15))) * 0.6d));
                iB7 = in.b(this.aM);
                iB8 = in.b((this.aN - 0.20000000298023224d) - ((double) this.bf));
                iB9 = in.b(this.aO);
                iA2 = this.aI.a(iB7, iB8, iB9);
                i4 = iB8 - 1;
                if (this.aI.a(iB7, i4, iB9) == uu.ba.bn) {
                    iA2 = this.aI.a(iB7, i4, iB9);
                }
                f = this.bj;
                i5 = this.b;
                if (f > i5 && iA2 > 0) {
                    this.b = i5 + 1;
                    ctVar = uu.m[iA2].by;
                    if (this.aI.a(iB7, iB8 + 1, iB9) == uu.aT.bn) {
                        ct ctVar2 = uu.aT.by;
                        this.aI.a(this, ctVar2.d(), ctVar2.b() * 0.15f, ctVar2.c());
                    } else if (!uu.m[iA2].bA.d()) {
                        this.aI.a(this, ctVar.d(), ctVar.b() * 0.15f, ctVar.c());
                    }
                    uu.m[iA2].b(this.aI, iB7, iB8, iB9, this);
                }
            }
            iB = in.b(this.aW.a + 0.001d);
            iB2 = in.b(this.aW.b + 0.001d);
            iB3 = in.b(this.aW.c + 0.001d);
            iB4 = in.b(this.aW.d - 0.001d);
            iB5 = in.b(this.aW.e - 0.001d);
            iB6 = in.b(this.aW.f - 0.001d);
            if (this.aI.a(iB, iB2, iB3, iB4, iB5, iB6)) {
                while (iB <= iB4) {
                    for (i2 = iB2; i2 <= iB5; i2++) {
                        for (i3 = iB3; i3 <= iB6; i3++) {
                            iA = this.aI.a(iB, i2, i3);
                            if (iA > 0) {
                                uu.m[iA].a(this.aI, iB, i2, i3, this);
                            }
                        }
                    }
                    iB++;
                }
            }
            zAf = af();
            if (this.aI.c(this.aW.e(0.001d, 0.001d, 0.001d))) {
                a(1);
                if (!zAf) {
                    i = this.bv + 1;
                    this.bv = i;
                    if (i == 0) {
                        this.bv = 300;
                    }
                }
            } else if (this.bv <= 0) {
                this.bv = -this.bu;
            }
            if (zAf || this.bv <= 0) {
            }
            this.aI.a(this, "random.fizz", 0.7f, ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.4f) + 1.6f);
            this.bv = -this.bu;
            return;
        }
        d11 = d24;
        z = z6;
        d12 = d8;
        this.aM = (this.aW.a + this.aW.d) / 2.0d;
        this.aN = (this.aW.b + ((double) this.bf)) - ((double) this.bo);
        this.aO = (this.aW.c + this.aW.f) / 2.0d;
        if (d26 == d10) {
            z2 = true;
        } else {
            z2 = true;
        }
        this.aY = z2;
        if (d5 != d12) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.aZ = z3;
        if (d5 != d12) {
            z4 = false;
        } else {
            z4 = false;
        }
        this.aX = z4;
        if (z2) {
            z5 = true;
        } else {
            z5 = true;
        }
        this.ba = z5;
        a(d12, z4);
        if (d26 != d10) {
            d13 = 0.0d;
            this.aP = 0.0d;
        } else {
            d13 = 0.0d;
        }
        if (d5 != d12) {
            this.aQ = d13;
        }
        if (d27 != d9) {
            this.aR = d13;
        }
        d14 = this.aM - d11;
        d15 = this.aO - d29;
        if (n()) {
            this.bj = (float) (((double) this.bj) + (((double) in.a((d14 * d14) + (d15 * d15))) * 0.6d));
            iB7 = in.b(this.aM);
            iB8 = in.b((this.aN - 0.20000000298023224d) - ((double) this.bf));
            iB9 = in.b(this.aO);
            iA2 = this.aI.a(iB7, iB8, iB9);
            i4 = iB8 - 1;
            if (this.aI.a(iB7, i4, iB9) == uu.ba.bn) {
                iA2 = this.aI.a(iB7, i4, iB9);
            }
            f = this.bj;
            i5 = this.b;
            if (f > i5) {
                this.b = i5 + 1;
                ctVar = uu.m[iA2].by;
                if (this.aI.a(iB7, iB8 + 1, iB9) == uu.aT.bn) {
                    ct ctVar3 = uu.aT.by;
                    this.aI.a(this, ctVar3.d(), ctVar3.b() * 0.15f, ctVar3.c());
                } else if (!uu.m[iA2].bA.d()) {
                    this.aI.a(this, ctVar.d(), ctVar.b() * 0.15f, ctVar.c());
                }
                uu.m[iA2].b(this.aI, iB7, iB8, iB9, this);
            }
        }
        iB = in.b(this.aW.a + 0.001d);
        iB2 = in.b(this.aW.b + 0.001d);
        iB3 = in.b(this.aW.c + 0.001d);
        iB4 = in.b(this.aW.d - 0.001d);
        iB5 = in.b(this.aW.e - 0.001d);
        iB6 = in.b(this.aW.f - 0.001d);
        if (this.aI.a(iB, iB2, iB3, iB4, iB5, iB6)) {
            while (iB <= iB4) {
                while (i2 <= iB5) {
                    while (i3 <= iB6) {
                        iA = this.aI.a(iB, i2, i3);
                        if (iA > 0) {
                            uu.m[iA].a(this.aI, iB, i2, i3, this);
                        }
                    }
                }
                iB++;
            }
        }
        zAf = af();
        if (this.aI.c(this.aW.e(0.001d, 0.001d, 0.001d))) {
            a(1);
            if (!zAf) {
                i = this.bv + 1;
                this.bv = i;
                if (i == 0) {
                    this.bv = 300;
                }
            }
        } else if (this.bv <= 0) {
            this.bv = -this.bu;
        }
        if (zAf) {
        }
    }

    protected void a(double d, boolean z) {
        if (!z) {
            if (d < 0.0d) {
                this.bk = (float) (((double) this.bk) - d);
            }
        } else {
            float f = this.bk;
            if (f > 0.0f) {
                b(f);
                this.bk = 0.0f;
            }
        }
    }

    protected void a(int i) {
        if (this.bC) {
            return;
        }
        a((sn) null, i);
    }

    protected void b(float f) {
        sn snVar = this.aG;
        if (snVar != null) {
            snVar.b(f);
        }
    }

    public boolean af() {
        return this.bx || this.aI.t(in.b(this.aM), in.b(this.aN), in.b(this.aO));
    }

    public boolean ag() {
        return this.bx;
    }

    public boolean k_() {
        return this.aI.a(this.aW.b(0.0d, -0.4000000059604645d, 0.0d).e(0.001d, 0.001d, 0.001d), ln.g, this);
    }

    public boolean a(ln lnVar) {
        double dW = this.aN + ((double) w());
        int iB = in.b(this.aM);
        int iD = in.d(in.b(dW));
        int iB2 = in.b(this.aO);
        int iA = this.aI.a(iB, iD, iB2);
        if (iA == 0 || uu.m[iA].bA != lnVar) {
            return false;
        }
        return dW < ((double) (((float) (iD + 1)) - (rp.d(this.aI.e(iB, iD, iB2)) - 0.11111111f)));
    }

    public boolean ah() {
        return this.aI.a(this.aW.b(-0.10000000149011612d, -0.4000000059604645d, -0.10000000149011612d), ln.h);
    }

    public void a(float f, float f2, float f3) {
        float fC = in.c((f * f) + (f2 * f2));
        if (fC < 0.01f) {
            return;
        }
        if (fC < 1.0f) {
            fC = 1.0f;
        }
        float f4 = f3 / fC;
        float f5 = f * f4;
        float f6 = f2 * f4;
        float fA = in.a((this.aS * 3.1415927f) / 180.0f);
        float fB = in.b((this.aS * 3.1415927f) / 180.0f);
        this.aP += (double) ((f5 * fB) - (f6 * fA));
        this.aR += (double) ((f6 * fB) + (f5 * fA));
    }

    public float a(float f) {
        int iB = in.b(this.aM);
        int iB2 = in.b((this.aN - ((double) this.bf)) + ((this.aW.e - this.aW.b) * 0.66d));
        int iB3 = in.b(this.aO);
        if (this.aI.a(in.b(this.aW.a), in.b(this.aW.b), in.b(this.aW.c), in.b(this.aW.d), in.b(this.aW.e), in.b(this.aW.f))) {
            float fC = this.aI.c(iB, iB2, iB3);
            float f2 = this.bE;
            return fC < f2 ? f2 : fC;
        }
        return this.bE;
    }

    public void a(fd fdVar) {
        this.aI = fdVar;
    }

    public void b(double d, double d2, double d3, float f, float f2) {
        this.aM = d;
        this.aJ = d;
        this.aN = d2;
        this.aK = d2;
        this.aO = d3;
        this.aL = d3;
        this.aS = f;
        this.aU = f;
        this.aT = f2;
        this.aV = f2;
        this.bo = 0.0f;
        double d4 = f - f;
        if (d4 < -180.0d) {
            this.aU = f + 360.0f;
        }
        if (d4 >= 180.0d) {
            this.aU -= 360.0f;
        }
        e(d, d2, d3);
        c(f, f2);
    }

    public void c(double d, double d2, double d3, float f, float f2) {
        this.aM = d;
        this.aJ = d;
        this.bl = d;
        double d4 = ((double) this.bf) + d2;
        this.aN = d4;
        this.aK = d4;
        this.bm = d4;
        this.aO = d3;
        this.aL = d3;
        this.bn = d3;
        this.aS = f;
        this.aT = f2;
        e(d, d4, d3);
    }

    public float f(sn snVar) {
        float f = (float) (this.aM - snVar.aM);
        float f2 = (float) (this.aN - snVar.aN);
        float f3 = (float) (this.aO - snVar.aO);
        return in.c((f * f) + (f2 * f2) + (f3 * f3));
    }

    public double g(double d, double d2, double d3) {
        double d4 = this.aM - d;
        double d5 = this.aN - d2;
        double d6 = this.aO - d3;
        return (d4 * d4) + (d5 * d5) + (d6 * d6);
    }

    public double h(double d, double d2, double d3) {
        double d4 = this.aM - d;
        double d5 = this.aN - d2;
        double d6 = this.aO - d3;
        return in.a((d4 * d4) + (d5 * d5) + (d6 * d6));
    }

    public double g(sn snVar) {
        double d = this.aM - snVar.aM;
        double d2 = this.aN - snVar.aN;
        double d3 = this.aO - snVar.aO;
        return (d * d) + (d2 * d2) + (d3 * d3);
    }

    public void h(sn snVar) {
        if (snVar.aG == this || snVar.aH == this) {
            return;
        }
        double d = snVar.aM - this.aM;
        double d2 = snVar.aO - this.aO;
        double dA = in.a(d, d2);
        if (dA >= 0.009999999776482582d) {
            double dA2 = in.a(dA);
            double d3 = d / dA2;
            double d4 = d2 / dA2;
            double d5 = 1.0d / dA2;
            double d6 = d5 <= 1.0d ? d5 : 1.0d;
            double d7 = d4 * d6 * 0.05000000074505806d;
            float f = this.br;
            double d8 = ((double) (1.0f - f)) * d3 * d6 * 0.05000000074505806d;
            double d9 = d7 * ((double) (1.0f - f));
            d(-d8, 0.0d, -d9);
            snVar.d(d8, 0.0d, d9);
        }
    }

    public void d(double d, double d2, double d3) {
        this.aP += d;
        this.aQ += d2;
        this.aR += d3;
    }

    protected void ai() {
        this.bb = true;
    }

    public boolean a(sn snVar, int i) {
        ai();
        return false;
    }

    public boolean a(bt btVar) {
        double d = this.aM - btVar.a;
        double d2 = this.aN - btVar.b;
        double d3 = this.aO - btVar.c;
        return a((d * d) + (d2 * d2) + (d3 * d3));
    }

    public boolean a(double d) {
        double dC = this.aW.c() * this.aE * 64.0d;
        return d < dC * dC;
    }

    public boolean c(nu nuVar) {
        String strAj = aj();
        if (this.be || strAj == null) {
            return false;
        }
        nuVar.a("id", strAj);
        d(nuVar);
        return true;
    }

    public void d(nu nuVar) {
        nuVar.a("Pos", a(this.aM, this.aN + ((double) this.bo), this.aO));
        nuVar.a("Motion", a(this.aP, this.aQ, this.aR));
        nuVar.a("Rotation", a(this.aS, this.aT));
        nuVar.a("FallDistance", this.bk);
        nuVar.a("Fire", (short) this.bv);
        nuVar.a("Air", (short) this.bz);
        nuVar.a("OnGround", this.aX);
        b(nuVar);
    }

    public void e(nu nuVar) {
        sp spVarL = nuVar.l("Pos");
        sp spVarL2 = nuVar.l("Motion");
        sp spVarL3 = nuVar.l("Rotation");
        this.aP = ((sz) spVarL2.a(0)).a;
        this.aQ = ((sz) spVarL2.a(1)).a;
        this.aR = ((sz) spVarL2.a(2)).a;
        if (Math.abs(this.aP) > 10.0d) {
            this.aP = 0.0d;
        }
        if (Math.abs(this.aQ) > 10.0d) {
            this.aQ = 0.0d;
        }
        if (Math.abs(this.aR) > 10.0d) {
            this.aR = 0.0d;
        }
        double d = ((sz) spVarL.a(0)).a;
        this.aM = d;
        this.bl = d;
        this.aJ = d;
        double d2 = ((sz) spVarL.a(1)).a;
        this.aN = d2;
        this.bm = d2;
        this.aK = d2;
        double d3 = ((sz) spVarL.a(2)).a;
        this.aO = d3;
        this.bn = d3;
        this.aL = d3;
        float f = ((p) spVarL3.a(0)).a;
        this.aS = f;
        this.aU = f;
        float f2 = ((p) spVarL3.a(1)).a;
        this.aT = f2;
        this.aV = f2;
        this.bk = nuVar.g("FallDistance");
        this.bv = nuVar.d("Fire");
        this.bz = nuVar.d("Air");
        this.aX = nuVar.m("OnGround");
        e(this.aM, this.aN, this.aO);
        c(this.aS, this.aT);
        a(nuVar);
    }

    protected final String aj() {
        return jc.b(this);
    }

    protected sp a(double... dArr) {
        sp spVar = new sp();
        for (double d : dArr) {
            spVar.a(new sz(d));
        }
        return spVar;
    }

    protected sp a(float... fArr) {
        sp spVar = new sp();
        for (float f : fArr) {
            spVar.a(new p(f));
        }
        return spVar;
    }

    public float x_() {
        return this.bh / 2.0f;
    }

    public hl b(int i, int i2) {
        return a(i, i2, 0.0f);
    }

    public hl a(int i, int i2, float f) {
        return a(new iz(i, i2, 0), f);
    }

    public hl a(iz izVar, float f) {
        hl hlVar = new hl(this.aI, this.aM, this.aN + ((double) f), this.aO, izVar);
        hlVar.c = 10;
        this.aI.b(hlVar);
        return hlVar;
    }

    public boolean W() {
        return !this.be;
    }

    public boolean L() {
        for (int i = 0; i < 8; i++) {
            float f = this.bg;
            if (this.aI.h(in.b(this.aM + ((double) ((((i >> 0) % 2) - 0.5f) * f * 0.9f))), in.b(this.aN + ((double) w()) + ((double) ((((i >> 1) % 2) - 0.5f) * 0.1f))), in.b(this.aO + ((double) ((((i >> 2) % 2) - 0.5f) * f * 0.9f))))) {
                return true;
            }
        }
        return false;
    }

    public void s_() {
        double d;
        if (this.aH.be) {
            this.aH = null;
            return;
        }
        this.aP = 0.0d;
        this.aQ = 0.0d;
        this.aR = 0.0d;
        w_();
        sn snVar = this.aH;
        if (snVar == null) {
            return;
        }
        snVar.l_();
        double d2 = this.e;
        sn snVar2 = this.aH;
        this.e = d2 + ((double) (snVar2.aS - snVar2.aU));
        this.d += (double) (snVar2.aT - snVar2.aV);
        while (true) {
            double d3 = this.e;
            if (d3 < 180.0d) {
                break;
            } else {
                this.e = d3 - 360.0d;
            }
        }
        while (true) {
            double d4 = this.e;
            if (d4 >= -180.0d) {
                break;
            } else {
                this.e = d4 + 360.0d;
            }
        }
        while (true) {
            double d5 = this.d;
            if (d5 < 180.0d) {
                break;
            } else {
                this.d = d5 - 360.0d;
            }
        }
        while (true) {
            d = this.d;
            if (d >= -180.0d) {
                break;
            } else {
                this.d = d + 360.0d;
            }
        }
        double d6 = this.e;
        double d7 = d6 * 0.5d;
        double d8 = 0.5d * d;
        double d9 = 10.0f;
        if (d7 > d9) {
            d7 = d9;
        }
        double d10 = -10.0f;
        if (d7 < d10) {
            d7 = d10;
        }
        if (d8 > d9) {
            d8 = d9;
        }
        if (d8 >= d10) {
            d10 = d8;
        }
        this.e = d6 - d7;
        this.d = d - d10;
        this.aS = (float) (((double) this.aS) + d7);
        this.aT = (float) (((double) this.aT) + d10);
    }

    public void l_() {
        this.aG.e(this.aM, this.aN + m() + this.aG.I(), this.aO);
    }

    public double I() {
        return this.bf;
    }

    public double m() {
        return ((double) this.bh) * 0.75d;
    }

    public void i(sn snVar) {
        this.d = 0.0d;
        this.e = 0.0d;
        if (snVar == null) {
            sn snVar2 = this.aH;
            if (snVar2 != null) {
                double d = snVar2.aM;
                double d2 = snVar2.aW.b;
                sn snVar3 = this.aH;
                c(d, d2 + ((double) snVar3.bh), snVar3.aO, this.aS, this.aT);
                this.aH.aG = null;
            }
            this.aH = null;
            return;
        }
        sn snVar4 = this.aH;
        if (snVar4 == snVar) {
            snVar4.aG = null;
            this.aH = null;
            c(snVar.aM, ((double) snVar.bh) + snVar.aW.b, snVar.aO, this.aS, this.aT);
            return;
        }
        if (snVar4 != null) {
            snVar4.aG = null;
        }
        sn snVar5 = snVar.aG;
        if (snVar5 != null) {
            snVar5.aH = null;
        }
        this.aH = snVar;
        snVar.aG = this;
    }

    public void a(double d, double d2, double d3, float f, float f2, int i) {
        e(d, d2, d3);
        c(f, f2);
        List listA = this.aI.a(this, this.aW.e(0.03125d, 0.0d, 0.03125d));
        if (listA.size() > 0) {
            double d4 = 0.0d;
            for (int i2 = 0; i2 < listA.size(); i2++) {
                eq eqVar = (eq) listA.get(i2);
                if (eqVar.e > d4) {
                    d4 = eqVar.e;
                }
            }
            e(d, d2 + (d4 - this.aW.b), d3);
        }
    }

    public void a(double d, double d2, double d3) {
        this.aP = d;
        this.aQ = d2;
        this.aR = d3;
    }

    public boolean ak() {
        return this.bv > 0 || d(0);
    }

    public boolean al() {
        return this.aH != null || d(2);
    }

    public boolean t() {
        return d(1);
    }

    protected boolean d(int i) {
        return ((1 << i) & this.bD.a(0)) != 0;
    }

    protected void b(int i, boolean z) {
        byte bA = this.bD.a(0);
        if (z) {
            this.bD.b(0, Byte.valueOf((byte) ((1 << i) | bA)));
        } else {
            this.bD.b(0, Byte.valueOf((byte) ((~(1 << i)) & bA)));
        }
    }

    public void a(c cVar) {
        a(5);
        int i = this.bv + 1;
        this.bv = i;
        if (i == 0) {
            this.bv = 300;
        }
    }

    protected boolean c(double d, double d2, double d3) {
        byte b;
        int iB = in.b(d);
        int iB2 = in.b(d2);
        int iB3 = in.b(d3);
        double d4 = d - ((double) iB);
        double d5 = d2 - ((double) iB2);
        double d6 = d3 - ((double) iB3);
        if (!this.aI.h(iB, iB2, iB3)) {
            return false;
        }
        boolean z = !this.aI.h(iB - 1, iB2, iB3);
        boolean z2 = !this.aI.h(iB + 1, iB2, iB3);
        boolean z3 = !this.aI.h(iB, iB2 - 1, iB3);
        boolean z4 = !this.aI.h(iB, iB2 + 1, iB3);
        boolean z5 = !this.aI.h(iB, iB2, iB3 - 1);
        boolean z6 = !this.aI.h(iB, iB2, iB3 + 1);
        double d7 = 9999.0d;
        if (!z || d4 >= 9999.0d) {
            b = -1;
        } else {
            d7 = d4;
            b = 0;
        }
        if (z2) {
            double d8 = 1.0d - d4;
            if (d8 < d7) {
                d7 = d8;
                b = 1;
            }
        }
        if (z3 && d5 < d7) {
            b = 2;
            d7 = d5;
        }
        if (z4) {
            double d9 = 1.0d - d5;
            if (d9 < d7) {
                b = 3;
                d7 = d9;
            }
        }
        if (z5 && d6 < d7) {
            b = 4;
            d7 = d6;
        }
        if (z6 && 1.0d - d6 < d7) {
            b = 5;
        }
        float fNextFloat = (this.bs.nextFloat() * 0.2f) + 0.1f;
        if (b == 0) {
            this.aP = -fNextFloat;
        }
        if (b == 1) {
            this.aP = fNextFloat;
        }
        if (b == 2) {
            this.aQ = -fNextFloat;
        }
        if (b == 3) {
            this.aQ = fNextFloat;
        }
        if (b == 4) {
            this.aR = -fNextFloat;
        }
        if (b != 5) {
            return false;
        }
        this.aR = fNextFloat;
        return false;
    }
}
