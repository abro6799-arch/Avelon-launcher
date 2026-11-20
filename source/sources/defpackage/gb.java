package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class gb extends gz {
    int a;
    int b;

    @Override // defpackage.ls
    protected String i() {
        return "mob.creeperdeath";
    }

    @Override // defpackage.ls
    protected String j_() {
        return "mob.creeper";
    }

    public gb(fd fdVar) {
        super(fdVar);
        this.O = "/mob/creeper.png";
    }

    @Override // defpackage.ls, defpackage.sn
    protected void b() {
        super.b();
        this.bD.a(16, (Object) (byte) -1);
        this.bD.a(17, (Object) (byte) 0);
    }

    @Override // defpackage.gz, defpackage.ls, defpackage.sn
    public void b(nu nuVar) {
        super.b(nuVar);
        if (this.bD.a(17) == 1) {
            nuVar.a("powered", true);
        }
    }

    @Override // defpackage.gz, defpackage.ls, defpackage.sn
    public void a(nu nuVar) {
        super.a(nuVar);
        this.bD.b(17, Byte.valueOf(nuVar.m("powered") ? (byte) 1 : (byte) 0));
    }

    @Override // defpackage.ii
    protected void b(sn snVar, float f) {
        if (!this.aI.B && this.a > 0) {
            e(-1);
            int i = this.a - 1;
            this.a = i;
            if (i < 0) {
                this.a = 0;
            }
        }
    }

    @Override // defpackage.gz, defpackage.ls, defpackage.sn
    public void w_() {
        this.b = this.a;
        if (this.aI.B) {
            int iV = v();
            if (iV > 0 && this.a == 0) {
                this.aI.a(this, "random.fuse", 1.0f, 0.5f);
            }
            int i = this.a + iV;
            this.a = i;
            if (i < 0) {
                this.a = 0;
            }
            if (this.a >= 30) {
                this.a = 30;
            }
        }
        super.w_();
        if (this.d != null || this.a <= 0) {
            return;
        }
        e(-1);
        int i2 = this.a - 1;
        this.a = i2;
        if (i2 < 0) {
            this.a = 0;
        }
    }

    @Override // defpackage.ls
    public void b(sn snVar) {
        super.b(snVar);
        if (snVar instanceof fr) {
            b(gm.bd.bf + this.bs.nextInt(2), 1);
        }
    }

    @Override // defpackage.gz, defpackage.ii
    protected void a(sn snVar, float f) {
        if (this.aI.B) {
            return;
        }
        int iV = v();
        if ((iV <= 0 && f < 3.0f) || (iV > 0 && f < 7.0f)) {
            if (this.a == 0) {
                this.aI.a(this, "random.fuse", 1.0f, 0.5f);
            }
            e(1);
            int i = this.a + 1;
            this.a = i;
            if (i >= 30) {
                if (s()) {
                    this.aI.a(this, this.aM, this.aN, this.aO, 6.0f);
                } else {
                    this.aI.a(this, this.aM, this.aN, this.aO, 3.0f);
                }
                K();
            }
            this.e = true;
            return;
        }
        e(-1);
        int i2 = this.a - 1;
        this.a = i2;
        if (i2 < 0) {
            this.a = 0;
        }
    }

    public boolean s() {
        return this.bD.a(17) == 1;
    }

    public float a_(float f) {
        int i = this.b;
        return (i + ((this.a - i) * f)) / 28.0f;
    }

    @Override // defpackage.ls
    protected int j() {
        return gm.K.bf;
    }

    private int v() {
        return this.bD.a(16);
    }

    private void e(int i) {
        this.bD.b(16, Byte.valueOf((byte) i));
    }

    @Override // defpackage.sn
    public void a(c cVar) {
        super.a(cVar);
        this.bD.b(17, (byte) 1);
    }
}
