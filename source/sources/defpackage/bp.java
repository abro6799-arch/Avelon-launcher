package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class bp extends wq implements ff {
    public int a;
    public double b;
    public double c;
    public double d;
    public int e;
    public int f;
    private sn g;
    private int h;

    @Override // defpackage.ls
    protected String g() {
        return "mob.ghast.moan";
    }

    @Override // defpackage.ls
    protected String i() {
        return "mob.ghast.death";
    }

    @Override // defpackage.ls
    protected String j_() {
        return "mob.ghast.scream";
    }

    @Override // defpackage.ls
    protected float k() {
        return 10.0f;
    }

    @Override // defpackage.ls
    public int l() {
        return 1;
    }

    public bp(fd fdVar) {
        super(fdVar);
        this.a = 0;
        this.g = null;
        this.h = 0;
        this.e = 0;
        this.f = 0;
        this.O = "/mob/ghast.png";
        b(4.0f, 4.0f);
        this.bC = true;
    }

    @Override // defpackage.ls, defpackage.sn
    protected void b() {
        super.b();
        this.bD.a(16, (Object) (byte) 0);
    }

    @Override // defpackage.ls, defpackage.sn
    public void w_() {
        super.w_();
        this.O = this.bD.a(16) == 1 ? "/mob/ghast_fire.png" : "/mob/ghast.png";
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:29:0x00f0  */
    @Override // defpackage.ls
    protected void f_() {
        gs gsVarA;
        float f;
        if (!this.aI.B && this.aI.q == 0) {
            K();
        }
        X();
        this.e = this.f;
        double d = this.b - this.aM;
        double d2 = this.c - this.aN;
        double d3 = this.d - this.aO;
        double dA = in.a((d * d) + (d2 * d2) + (d3 * d3));
        if (dA < 1.0d || dA > 60.0d) {
            this.b = this.aM + ((double) (((this.bs.nextFloat() * 2.0f) - 1.0f) * 16.0f));
            this.c = this.aN + ((double) (((this.bs.nextFloat() * 2.0f) - 1.0f) * 16.0f));
            this.d = this.aO + ((double) (((this.bs.nextFloat() * 2.0f) - 1.0f) * 16.0f));
        }
        int i = this.a;
        int i2 = i - 1;
        this.a = i2;
        if (i <= 0) {
            this.a = i2 + this.bs.nextInt(5) + 2;
            if (a(this.b, this.c, this.d, dA)) {
                this.aP += (d / dA) * 0.1d;
                this.aQ += (d2 / dA) * 0.1d;
                this.aR += (d3 / dA) * 0.1d;
            } else {
                this.b = this.aM;
                this.c = this.aN;
                this.d = this.aO;
            }
        }
        sn snVar = this.g;
        if (snVar != null && snVar.be) {
            this.g = null;
        }
        if (this.g != null) {
            int i3 = this.h;
            this.h = i3 - 1;
            if (i3 <= 0) {
                gsVarA = this.aI.a((sn) this, 100.0d);
                this.g = gsVarA;
                if (gsVarA != null) {
                    this.h = 20;
                }
            }
        } else {
            gsVarA = this.aI.a((sn) this, 100.0d);
            this.g = gsVarA;
            if (gsVarA != null) {
                this.h = 20;
            }
        }
        sn snVar2 = this.g;
        if (snVar2 != null && snVar2.g(this) < 4096.0d) {
            double d4 = this.g.aM - this.aM;
            double d5 = (this.g.aW.b + ((double) (this.g.bh / 2.0f))) - (this.aN + ((double) (this.bh / 2.0f)));
            double d6 = this.g.aO - this.aO;
            float f2 = ((-((float) Math.atan2(d4, d6))) * 180.0f) / 3.1415927f;
            this.aS = f2;
            this.H = f2;
            if (e(this.g)) {
                if (this.f == 10) {
                    f = 1.0f;
                    this.aI.a(this, "mob.ghast.charge", k(), ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f) + 1.0f);
                } else {
                    f = 1.0f;
                }
                int i4 = this.f + 1;
                this.f = i4;
                if (i4 == 20) {
                    this.aI.a(this, "mob.ghast.fireball", k(), ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f) + f);
                    cf cfVar = new cf(this.aI, this, d4, d5, d6);
                    bt btVarF = f(f);
                    cfVar.aM = this.aM + (btVarF.a * 4.0d);
                    cfVar.aN = this.aN + ((double) (this.bh / 2.0f)) + 0.5d;
                    cfVar.aO = this.aO + (btVarF.c * 4.0d);
                    this.aI.b(cfVar);
                    this.f = -40;
                }
            } else {
                int i5 = this.f;
                if (i5 > 0) {
                    this.f = i5 - 1;
                }
            }
        } else {
            float f3 = ((-((float) Math.atan2(this.aP, this.aR))) * 180.0f) / 3.1415927f;
            this.aS = f3;
            this.H = f3;
            int i6 = this.f;
            if (i6 > 0) {
                this.f = i6 - 1;
            }
        }
        if (this.aI.B) {
            return;
        }
        byte bA = this.bD.a(16);
        byte b = (byte) (this.f <= 10 ? 0 : 1);
        if (bA != b) {
            this.bD.b(16, Byte.valueOf(b));
        }
    }

    private boolean a(double d, double d2, double d3, double d4) {
        double d5 = (this.b - this.aM) / d4;
        double d6 = (this.c - this.aN) / d4;
        double d7 = (this.d - this.aO) / d4;
        eq eqVarD = this.aW.d();
        int i = 1;
        while (i < d4) {
            int i2 = i;
            eqVarD.d(d5, d6, d7);
            if (this.aI.a(this, eqVarD).size() > 0) {
                return false;
            }
            i = i2 + 1;
        }
        return true;
    }

    @Override // defpackage.ls
    protected int j() {
        return gm.K.bf;
    }

    @Override // defpackage.ls
    public boolean d() {
        return this.bs.nextInt(20) == 0 && super.d() && this.aI.q > 0;
    }
}
