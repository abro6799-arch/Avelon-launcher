package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class fr extends gz {
    private static final iz a = new iz(gm.i, 1);

    @Override // defpackage.ls
    protected String g() {
        return "mob.skeleton";
    }

    @Override // defpackage.ls
    protected String i() {
        return "mob.skeletonhurt";
    }

    @Override // defpackage.ls
    protected String j_() {
        return "mob.skeletonhurt";
    }

    public fr(fd fdVar) {
        super(fdVar);
        this.O = "/mob/skeleton.png";
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

    @Override // defpackage.gz, defpackage.ii
    protected void a(sn snVar, float f) {
        if (f < 10.0f) {
            double d = snVar.aM - this.aM;
            double d2 = snVar.aO - this.aO;
            if (this.ae == 0) {
                sl slVar = new sl(this.aI, this);
                slVar.aN += 1.399999976158142d;
                double dW = ((snVar.aN + ((double) snVar.w())) - 0.20000000298023224d) - slVar.aN;
                float fA = in.a((d * d) + (d2 * d2)) * 0.2f;
                this.aI.a(this, "random.bow", 1.0f, 1.0f / ((this.bs.nextFloat() * 0.4f) + 0.8f));
                this.aI.b(slVar);
                slVar.a(d, dW + ((double) fA), d2, 0.6f, 12.0f);
                this.ae = 30;
            }
            this.aS = ((float) ((Math.atan2(d2, d) * 180.0d) / 3.1415927410125732d)) - 90.0f;
            this.e = true;
        }
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
        return gm.j.bf;
    }

    @Override // defpackage.ls
    protected void q() {
        int iNextInt = this.bs.nextInt(3);
        for (int i = 0; i < iNextInt; i++) {
            b(gm.j.bf, 1);
        }
        int iNextInt2 = this.bs.nextInt(3);
        for (int i2 = 0; i2 < iNextInt2; i2++) {
            b(gm.aV.bf, 1);
        }
    }

    @Override // defpackage.ls
    public iz r_() {
        return a;
    }
}
