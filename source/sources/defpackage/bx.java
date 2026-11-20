package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class bx extends bg {
    @Override // defpackage.ls
    protected String g() {
        return "mob.cow";
    }

    @Override // defpackage.ls
    protected String i() {
        return "mob.cowhurt";
    }

    @Override // defpackage.ls
    protected String j_() {
        return "mob.cowhurt";
    }

    @Override // defpackage.ls
    protected float k() {
        return 0.4f;
    }

    public bx(fd fdVar) {
        super(fdVar);
        this.O = "/mob/cow.png";
        b(0.9f, 1.3f);
    }

    @Override // defpackage.bg, defpackage.ls, defpackage.sn
    public void b(nu nuVar) {
        super.b(nuVar);
    }

    @Override // defpackage.bg, defpackage.ls, defpackage.sn
    public void a(nu nuVar) {
        super.a(nuVar);
    }

    @Override // defpackage.ls
    protected int j() {
        return gm.aD.bf;
    }

    @Override // defpackage.sn
    public boolean a(gs gsVar) {
        iz izVarB = gsVar.c.b();
        if (izVarB == null || izVarB.c != gm.au.bf) {
            return false;
        }
        gsVar.c.a(gsVar.c.c, new iz(gm.aE));
        return true;
    }
}
