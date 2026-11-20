package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class gi extends bg {
    private boolean a;
    private float b;
    private float c;
    private boolean f;
    private boolean g;
    private float h;
    private float i;

    @Override // defpackage.ls
    protected String i() {
        return "mob.wolf.death";
    }

    @Override // defpackage.ls
    protected int j() {
        return -1;
    }

    @Override // defpackage.ls
    protected String j_() {
        return "mob.wolf.hurt";
    }

    @Override // defpackage.ls
    protected float k() {
        return 0.4f;
    }

    @Override // defpackage.ls
    public int l() {
        return 8;
    }

    @Override // defpackage.sn
    protected boolean n() {
        return false;
    }

    public gi(fd fdVar) {
        super(fdVar);
        this.a = false;
        this.O = "/mob/wolf.png";
        b(0.8f, 0.8f);
        this.aB = 1.1f;
        this.Y = 8;
    }

    @Override // defpackage.ls, defpackage.sn
    protected void b() {
        super.b();
        this.bD.a(16, (Object) (byte) 0);
        this.bD.a(17, "");
        this.bD.a(18, new Integer(this.Y));
    }

    @Override // defpackage.ls, defpackage.sn
    public String q_() {
        if (D()) {
            return "/mob/wolf_tame.png";
        }
        return C() ? "/mob/wolf_angry.png" : super.q_();
    }

    @Override // defpackage.bg, defpackage.ls, defpackage.sn
    public void b(nu nuVar) {
        super.b(nuVar);
        nuVar.a("Angry", C());
        nuVar.a("Sitting", B());
        if (A() == null) {
            nuVar.a("Owner", "");
        } else {
            nuVar.a("Owner", A());
        }
    }

    @Override // defpackage.bg, defpackage.ls, defpackage.sn
    public void a(nu nuVar) {
        super.a(nuVar);
        c(nuVar.m("Angry"));
        b(nuVar.m("Sitting"));
        String strI = nuVar.i("Owner");
        if (strI.length() > 0) {
            a(strI);
            d(true);
        }
    }

    @Override // defpackage.ls
    protected boolean u() {
        return !D();
    }

    @Override // defpackage.ls
    protected String g() {
        if (C()) {
            return "mob.wolf.growl";
        }
        if (this.bs.nextInt(3) == 0) {
            return (!D() || this.bD.b(18) >= 10) ? "mob.wolf.panting" : "mob.wolf.whine";
        }
        return "mob.wolf.bark";
    }

    @Override // defpackage.ii, defpackage.ls
    protected void f_() {
        super.f_();
        if (!this.e && !F() && D() && this.aH == null) {
            gs gsVarA = this.aI.a(A());
            if (gsVarA != null) {
                float f = gsVarA.f(this);
                if (f > 5.0f) {
                    c(gsVarA, f);
                }
            } else if (!ag()) {
                b(true);
            }
        } else if (this.d == null && !F() && !D() && this.aI.r.nextInt(100) == 0) {
            List listA = this.aI.a(dl.class, eq.b(this.aM, this.aN, this.aO, this.aM + 1.0d, this.aN + 1.0d, this.aO + 1.0d).b(16.0d, 4.0d, 16.0d));
            if (!listA.isEmpty()) {
                c((sn) listA.get(this.aI.r.nextInt(listA.size())));
            }
        }
        if (ag()) {
            b(false);
        }
        if (this.aI.B) {
            return;
        }
        this.bD.b(18, Integer.valueOf(this.Y));
    }

    @Override // defpackage.ls
    public void o() {
        iz izVarB;
        super.o();
        this.a = false;
        if (Y() && !F() && !C()) {
            sn snVarZ = Z();
            if ((snVarZ instanceof gs) && (izVarB = ((gs) snVarZ).c.b()) != null) {
                if (!D() && izVarB.c == gm.aV.bf) {
                    this.a = true;
                } else if (D() && (gm.c[izVarB.c] instanceof yw)) {
                    this.a = ((yw) gm.c[izVarB.c]).m();
                }
            }
        }
        if (this.V || !this.f || this.g || F() || !this.aX) {
            return;
        }
        this.g = true;
        this.h = 0.0f;
        this.i = 0.0f;
        this.aI.a((sn) this, (byte) 8);
    }

    @Override // defpackage.ls, defpackage.sn
    public void w_() {
        super.w_();
        float f = this.b;
        this.c = f;
        boolean z = this.a;
        float f2 = 1.0f;
        if (z) {
            this.b = f + ((1.0f - f) * 0.4f);
        } else {
            this.b = f + ((0.0f - f) * 0.4f);
        }
        if (z) {
            this.aC = 10;
        }
        int i = 0;
        if (af()) {
            this.f = true;
            this.g = false;
            this.h = 0.0f;
            this.i = 0.0f;
            return;
        }
        if ((this.f || this.g) && this.g) {
            if (this.h == 0.0f) {
                this.aI.a(this, "mob.wolf.shake", k(), ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f) + 1.0f);
            }
            float f3 = this.h;
            this.i = f3;
            this.h = 0.05f + f3;
            float f4 = 2.0f;
            if (f3 >= 2.0f) {
                this.f = false;
                this.g = false;
                this.i = 0.0f;
                this.h = 0.0f;
            }
            if (this.h > 0.4f) {
                float f5 = (float) this.aW.b;
                int iA = (int) (in.a((this.h - 0.4f) * 3.1415927f) * 7.0f);
                while (i < iA) {
                    this.aI.a("splash", this.aM + ((double) (((this.bs.nextFloat() * f4) - f2) * this.bg * 0.5f)), 0.8f + f5, this.aO + ((double) (((this.bs.nextFloat() * f4) - f2) * this.bg * 0.5f)), this.aP, this.aQ, this.aR);
                    i++;
                    iA = iA;
                    f2 = 1.0f;
                    f4 = 2.0f;
                }
            }
        }
    }

    public boolean v() {
        return this.f;
    }

    public float b_(float f) {
        float f2 = this.i;
        return (((f2 + ((this.h - f2) * f)) / 2.0f) * 0.25f) + 0.75f;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0011 A[PHI: r3
      0x0011: PHI (r3v5 float) = (r3v2 float), (r3v3 float) binds: [B:3:0x000f, B:6:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    public float a(float f, float f2) {
        float f3 = this.i;
        float f4 = ((f3 + ((this.h - f3) * f)) + f2) / 1.8f;
        float f5 = 0.0f;
        if (f4 < 0.0f) {
            f4 = f5;
        } else {
            f5 = 1.0f;
            if (f4 > 1.0f) {
                f4 = f5;
            }
        }
        float f6 = f4 * 3.1415927f;
        return in.a(f6) * in.a(f6 * 11.0f) * 0.15f * 3.1415927f;
    }

    public float c(float f) {
        float f2 = this.c;
        return (f2 + ((this.b - f2) * f)) * 0.15f * 3.1415927f;
    }

    @Override // defpackage.ls, defpackage.sn
    public float w() {
        return this.bh * 0.8f;
    }

    @Override // defpackage.ls
    protected int x() {
        if (B()) {
            return 20;
        }
        return super.x();
    }

    private void c(sn snVar, float f) {
        dh dhVarA = this.aI.a(this, snVar, 16.0f);
        if (dhVarA == null && f > 12.0f) {
            int iB = in.b(snVar.aM) - 2;
            int iB2 = in.b(snVar.aO) - 2;
            int iB3 = in.b(snVar.aW.b);
            for (int i = 0; i <= 4; i++) {
                for (int i2 = 0; i2 <= 4; i2++) {
                    if (i < 1 || i2 < 1 || i > 3 || i2 > 3) {
                        int i3 = iB + i;
                        int i4 = iB2 + i2;
                        if (this.aI.h(i3, iB3 - 1, i4) && !this.aI.h(i3, iB3, i4) && !this.aI.h(i3, iB3 + 1, i4)) {
                            c(i3 + 0.5f, iB3, i4 + 0.5f, this.aS, this.aT);
                            return;
                        }
                    }
                }
            }
            return;
        }
        a(dhVarA);
    }

    @Override // defpackage.ii
    protected boolean e_() {
        return B() || this.g;
    }

    @Override // defpackage.ls, defpackage.sn
    public boolean a(sn snVar, int i) {
        sn snVar2;
        sn snVar3 = snVar;
        b(false);
        if (!super.a(snVar3, (snVar3 == null || (snVar3 instanceof gs) || (snVar3 instanceof sl)) ? i : (i + 1) / 2)) {
            return false;
        }
        if (!D() && !C()) {
            if (snVar3 instanceof gs) {
                c(true);
                this.d = snVar3;
            }
            if (snVar3 instanceof sl) {
                sl slVar = (sl) snVar3;
                if (slVar.c != null) {
                    snVar3 = slVar.c;
                }
            }
            if (snVar3 instanceof ls) {
                sn snVar4 = snVar3;
                Iterator it = this.aI.a(gi.class, eq.b(this.aM, this.aN, this.aO, this.aM + 1.0d, this.aN + 1.0d, this.aO + 1.0d).b(16.0d, 4.0d, 16.0d)).iterator();
                while (it.hasNext()) {
                    gi giVar = (gi) ((sn) it.next());
                    if (giVar.D() || giVar.d != null) {
                        snVar2 = snVar4;
                    } else {
                        snVar2 = snVar4;
                        giVar.d = snVar2;
                        if (snVar2 instanceof gs) {
                            giVar.c(true);
                        }
                    }
                    snVar4 = snVar2;
                }
            }
        } else {
            if (snVar3 == this || snVar3 == null || (D() && (snVar3 instanceof gs) && ((gs) snVar3).l.equalsIgnoreCase(A()))) {
                return true;
            }
            this.d = snVar3;
        }
        return true;
    }

    @Override // defpackage.ii
    protected sn g_() {
        if (C()) {
            return this.aI.a((sn) this, 16.0d);
        }
        return null;
    }

    @Override // defpackage.ii
    protected void a(sn snVar, float f) {
        if (f <= 2.0f || f >= 6.0f || this.bs.nextInt(10) != 0) {
            if (f >= 1.5d || snVar.aW.e <= this.aW.b || snVar.aW.b >= this.aW.e) {
                return;
            }
            this.ae = 20;
            snVar.a(this, D() ? 4 : 2);
            return;
        }
        if (this.aX) {
            double d = snVar.aM - this.aM;
            double d2 = snVar.aO - this.aO;
            double dA = in.a((d * d) + (d2 * d2));
            this.aP = ((d / dA) * 0.5d * 0.800000011920929d) + (this.aP * 0.20000000298023224d);
            this.aR = ((d2 / dA) * 0.5d * 0.800000011920929d) + (this.aR * 0.20000000298023224d);
            this.aQ = 0.4000000059604645d;
        }
    }

    @Override // defpackage.sn
    public boolean a(gs gsVar) {
        iz izVarB = gsVar.c.b();
        if (!D()) {
            if (izVarB != null && izVarB.c == gm.aV.bf && !C()) {
                izVarB.a--;
                if (izVarB.a <= 0) {
                    gsVar.c.a(gsVar.c.c, (iz) null);
                }
                if (!this.aI.B) {
                    if (this.bs.nextInt(3) == 0) {
                        d(true);
                        a((dh) null);
                        b(true);
                        this.Y = 20;
                        a(gsVar.l);
                        a(true);
                        this.aI.a((sn) this, (byte) 7);
                    } else {
                        a(false);
                        this.aI.a((sn) this, (byte) 6);
                    }
                }
                return true;
            }
        } else {
            if (izVarB != null && (gm.c[izVarB.c] instanceof yw) && ((yw) gm.c[izVarB.c]).m() && this.bD.b(18) < 20) {
                izVarB.a--;
                if (izVarB.a <= 0) {
                    gsVar.c.a(gsVar.c.c, (iz) null);
                }
                c(((yw) gm.ao).l());
                return true;
            }
            if (gsVar.l.equalsIgnoreCase(A())) {
                if (!this.aI.B) {
                    b(!B());
                    this.az = false;
                    a((dh) null);
                }
                return true;
            }
        }
        return false;
    }

    void a(boolean z) {
        String str = !z ? "smoke" : "heart";
        for (int i = 0; i < 7; i++) {
            this.aI.a(str, (this.aM + ((double) ((this.bs.nextFloat() * this.bg) * 2.0f))) - ((double) this.bg), this.aN + 0.5d + ((double) (this.bs.nextFloat() * this.bh)), (this.aO + ((double) ((this.bs.nextFloat() * this.bg) * 2.0f))) - ((double) this.bg), this.bs.nextGaussian() * 0.02d, this.bs.nextGaussian() * 0.02d, this.bs.nextGaussian() * 0.02d);
        }
    }

    @Override // defpackage.ls, defpackage.sn
    public void a(byte b) {
        if (b == 7) {
            a(true);
            return;
        }
        if (b == 6) {
            a(false);
        } else {
            if (b == 8) {
                this.g = true;
                this.h = 0.0f;
                this.i = 0.0f;
                return;
            }
            super.a(b);
        }
    }

    public float z() {
        if (C()) {
            return 1.5393804f;
        }
        if (D()) {
            return (0.55f - ((20 - this.bD.b(18)) * 0.02f)) * 3.1415927f;
        }
        return 0.62831855f;
    }

    public String A() {
        return this.bD.c(17);
    }

    public void a(String str) {
        this.bD.b(17, str);
    }

    public boolean B() {
        return (this.bD.a(16) & 1) != 0;
    }

    public void b(boolean z) {
        byte bA = this.bD.a(16);
        if (z) {
            this.bD.b(16, Byte.valueOf((byte) (bA | 1)));
        } else {
            this.bD.b(16, Byte.valueOf((byte) (bA & (-2))));
        }
    }

    public boolean C() {
        return (this.bD.a(16) & 2) != 0;
    }

    public void c(boolean z) {
        byte bA = this.bD.a(16);
        if (z) {
            this.bD.b(16, Byte.valueOf((byte) (bA | 2)));
        } else {
            this.bD.b(16, Byte.valueOf((byte) (bA & (-3))));
        }
    }

    public boolean D() {
        return (this.bD.a(16) & 4) != 0;
    }

    public void d(boolean z) {
        byte bA = this.bD.a(16);
        if (z) {
            this.bD.b(16, Byte.valueOf((byte) (bA | 4)));
        } else {
            this.bD.b(16, Byte.valueOf((byte) (bA & (-5))));
        }
    }
}
