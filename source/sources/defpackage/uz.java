package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class uz extends gz {
    @Override // defpackage.ls
    protected String g() {
        return "mob.zombie";
    }

    @Override // defpackage.ls
    protected String i() {
        return "mob.zombiedeath";
    }

    @Override // defpackage.ls
    protected String j_() {
        return "mob.zombiehurt";
    }

    public uz(fd fdVar) {
        super(fdVar);
        this.O = "/mob/zombie.png";
        this.aB = 0.5f;
        this.c = 5;
    }

    @Override // defpackage.gz, defpackage.ls
    public void o() {
        if (this.aI.f()) {
            float fA = a(1.0f);
            if (fA > 0.5f && this.aI.l(in.b(this.aM), in.b(this.aN), in.b(this.aO)) && this.bs.nextFloat() * 30.0f < (fA - 0.4f) * 2.0f) {
                this.bv = 300;
            }
        }
        super.o();
    }

    @Override // defpackage.ls
    protected int j() {
        return gm.J.bf;
    }
}
