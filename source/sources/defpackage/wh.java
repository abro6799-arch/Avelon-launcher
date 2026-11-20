package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class wh extends bg {
    @Override // defpackage.ls
    protected String g() {
        return "mob.pig";
    }

    @Override // defpackage.ls
    protected String i() {
        return "mob.pigdeath";
    }

    @Override // defpackage.ls
    protected String j_() {
        return "mob.pig";
    }

    public wh(fd fdVar) {
        super(fdVar);
        this.O = "/mob/pig.png";
        b(0.9f, 0.9f);
    }

    @Override // defpackage.ls, defpackage.sn
    protected void b() {
        this.bD.a(16, (Object) (byte) 0);
    }

    @Override // defpackage.bg, defpackage.ls, defpackage.sn
    public void b(nu nuVar) {
        super.b(nuVar);
        nuVar.a("Saddle", v());
    }

    @Override // defpackage.bg, defpackage.ls, defpackage.sn
    public void a(nu nuVar) {
        super.a(nuVar);
        a(nuVar.m("Saddle"));
    }

    @Override // defpackage.sn
    public boolean a(gs gsVar) {
        if (!v() || this.aI.B) {
            return false;
        }
        if (this.aG != null && this.aG != gsVar) {
            return false;
        }
        gsVar.i(this);
        return true;
    }

    @Override // defpackage.ls
    protected int j() {
        return this.bv > 0 ? gm.ap.bf : gm.ao.bf;
    }

    public boolean v() {
        return (this.bD.a(16) & 1) != 0;
    }

    public void a(boolean z) {
        if (z) {
            this.bD.b(16, (byte) 1);
        } else {
            this.bD.b(16, (byte) 0);
        }
    }

    @Override // defpackage.sn
    public void a(c cVar) {
        if (this.aI.B) {
            return;
        }
        ya yaVar = new ya(this.aI);
        yaVar.c(this.aM, this.aN, this.aO, this.aS, this.aT);
        this.aI.b(yaVar);
        K();
    }

    @Override // defpackage.ls, defpackage.sn
    protected void b(float f) {
        super.b(f);
        if (f <= 5.0f || !(this.aG instanceof gs)) {
            return;
        }
        ((gs) this.aG).a(ep.u);
    }
}
