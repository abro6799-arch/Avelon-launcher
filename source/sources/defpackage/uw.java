package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class uw extends ls implements ff {
    public float a;
    public float b;
    private int c;

    @Override // defpackage.ls
    protected String i() {
        return "mob.slime";
    }

    @Override // defpackage.ls
    protected String j_() {
        return "mob.slime";
    }

    @Override // defpackage.ls
    protected float k() {
        return 0.6f;
    }

    public uw(fd fdVar) {
        super(fdVar);
        this.c = 0;
        this.O = "/mob/slime.png";
        int iNextInt = 1 << this.bs.nextInt(3);
        this.bf = 0.0f;
        this.c = this.bs.nextInt(20) + 10;
        e(iNextInt);
    }

    @Override // defpackage.ls, defpackage.sn
    protected void b() {
        super.b();
        this.bD.a(16, new Byte((byte) 1));
    }

    public void e(int i) {
        this.bD.b(16, new Byte((byte) i));
        float f = i * 0.6f;
        b(f, f);
        this.Y = i * i;
        e(this.aM, this.aN, this.aO);
    }

    public int v() {
        return this.bD.a(16);
    }

    @Override // defpackage.ls, defpackage.sn
    public void b(nu nuVar) {
        super.b(nuVar);
        nuVar.a("Size", v() - 1);
    }

    @Override // defpackage.ls, defpackage.sn
    public void a(nu nuVar) {
        super.a(nuVar);
        e(nuVar.e("Size") + 1);
    }

    @Override // defpackage.ls, defpackage.sn
    public void w_() {
        this.b = this.a;
        boolean z = this.aX;
        super.w_();
        if (this.aX && !z) {
            int iV = v();
            for (int i = 0; i < iV * 8; i++) {
                float fNextFloat = this.bs.nextFloat() * 3.1415927f * 2.0f;
                float fNextFloat2 = (this.bs.nextFloat() * 0.5f) + 0.5f;
                float f = iV;
                this.aI.a("slime", ((double) (in.a(fNextFloat) * f * 0.5f * fNextFloat2)) + this.aM, this.aW.b, ((double) (in.b(fNextFloat) * f * 0.5f * fNextFloat2)) + this.aO, 0.0d, 0.0d, 0.0d);
            }
            if (iV > 2) {
                this.aI.a(this, "mob.slime", k(), (((this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f) + 1.0f) / 0.8f);
            }
            this.a = -0.5f;
        }
        this.a *= 0.6f;
    }

    @Override // defpackage.ls
    protected void f_() {
        X();
        gs gsVarA = this.aI.a((sn) this, 16.0d);
        if (gsVarA != null) {
            a(gsVarA, 10.0f, 20.0f);
        }
        if (this.aX) {
            int i = this.c;
            this.c = i - 1;
            if (i <= 0) {
                int iNextInt = this.bs.nextInt(20) + 10;
                this.c = iNextInt;
                if (gsVarA != null) {
                    this.c = iNextInt / 3;
                }
                this.az = true;
                if (v() > 1) {
                    this.aI.a(this, "mob.slime", k(), (((this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f) + 1.0f) * 0.8f);
                }
                this.a = 1.0f;
                this.aw = 1.0f - (this.bs.nextFloat() * 2.0f);
                this.ax = v() * 1;
                return;
            }
        }
        this.az = false;
        if (this.aX) {
            this.ax = 0.0f;
            this.aw = 0.0f;
        }
    }

    @Override // defpackage.sn
    public void K() {
        int iV = v();
        if (!this.aI.B && iV > 1 && this.Y == 0) {
            for (int i = 0; i < 4; i++) {
                float f = iV;
                uw uwVar = new uw(this.aI);
                uwVar.e(iV / 2);
                uwVar.c(this.aM + ((double) ((((i % 2) - 0.5f) * f) / 4.0f)), 0.5d + this.aN, this.aO + ((double) ((((i / 2) - 0.5f) * f) / 4.0f)), this.bs.nextFloat() * 360.0f, 0.0f);
                this.aI.b(uwVar);
            }
        }
        super.K();
    }

    @Override // defpackage.sn
    public void b(gs gsVar) {
        int iV = v();
        if (iV <= 1 || !e(gsVar) || f(gsVar) >= ((double) iV) * 0.6d || !gsVar.a(this, iV)) {
            return;
        }
        this.aI.a(this, "mob.slimeattack", 1.0f, ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f) + 1.0f);
    }

    @Override // defpackage.ls
    protected int j() {
        if (v() == 1) {
            return gm.aK.bf;
        }
        return 0;
    }

    @Override // defpackage.ls
    public boolean d() {
        return (v() == 1 || this.aI.q > 0) && this.bs.nextInt(10) == 0 && this.aI.b(in.b(this.aM), in.b(this.aO)).a(987234911L).nextInt(10) == 0 && this.aN < 16.0d;
    }
}
