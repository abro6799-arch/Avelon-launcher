package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class cn extends gz {
    @Override // defpackage.ls
    protected String g() {
        return "mob.spider";
    }

    @Override // defpackage.ls
    protected String i() {
        return "mob.spiderdeath";
    }

    @Override // defpackage.ls
    protected String j_() {
        return "mob.spider";
    }

    @Override // defpackage.sn
    protected boolean n() {
        return false;
    }

    public cn(fd fdVar) {
        super(fdVar);
        this.O = "/mob/spider.png";
        b(1.4f, 0.9f);
        this.aB = 0.8f;
    }

    @Override // defpackage.sn
    public double m() {
        return (((double) this.bh) * 0.75d) - 0.5d;
    }

    @Override // defpackage.gz, defpackage.ii
    protected sn g_() {
        if (a(1.0f) < 0.5f) {
            return this.aI.a((sn) this, 16.0d);
        }
        return null;
    }

    @Override // defpackage.gz, defpackage.ii
    protected void a(sn snVar, float f) {
        if (a(1.0f) > 0.5f && this.bs.nextInt(100) == 0) {
            this.d = null;
            return;
        }
        if (f > 2.0f && f < 6.0f && this.bs.nextInt(10) == 0) {
            if (this.aX) {
                double d = snVar.aM - this.aM;
                double d2 = snVar.aO - this.aO;
                double dA = in.a((d * d) + (d2 * d2));
                this.aP = ((d / dA) * 0.5d * 0.800000011920929d) + (this.aP * 0.20000000298023224d);
                this.aR = ((d2 / dA) * 0.5d * 0.800000011920929d) + (this.aR * 0.20000000298023224d);
                this.aQ = 0.4000000059604645d;
                return;
            }
            return;
        }
        super.a(snVar, f);
    }

    @Override // defpackage.gz, defpackage.ls, defpackage.sn
    public void b(nu nuVar) {
        super.b(nuVar);
    }

    @Override // defpackage.gz, defpackage.ls, defpackage.sn
    public void a(nu nuVar) {
        super.a(nuVar);
    }

    @Override // defpackage.ls
    protected int j() {
        return gm.I.bf;
    }

    @Override // defpackage.ls
    public boolean p() {
        return this.aY;
    }
}
