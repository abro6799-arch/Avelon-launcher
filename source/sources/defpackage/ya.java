package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ya extends uz {
    private static final iz f = new iz(gm.E, 1);
    private int a;
    private int b;

    @Override // defpackage.uz, defpackage.ls
    protected String g() {
        return "mob.zombiepig.zpig";
    }

    @Override // defpackage.uz, defpackage.ls
    protected String i() {
        return "mob.zombiepig.zpigdeath";
    }

    @Override // defpackage.uz, defpackage.ls
    protected String j_() {
        return "mob.zombiepig.zpighurt";
    }

    public ya(fd fdVar) {
        super(fdVar);
        this.a = 0;
        this.b = 0;
        this.O = "/mob/pigzombie.png";
        this.aB = 0.5f;
        this.c = 5;
        this.bC = true;
    }

    @Override // defpackage.gz, defpackage.ls, defpackage.sn
    public void w_() {
        this.aB = this.d != null ? 0.95f : 0.5f;
        int i = this.b;
        if (i > 0) {
            int i2 = i - 1;
            this.b = i2;
            if (i2 == 0) {
                this.aI.a(this, "mob.zombiepig.zpigangry", k() * 2.0f, (((this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f) + 1.0f) * 1.8f);
            }
        }
        super.w_();
    }

    @Override // defpackage.gz, defpackage.ii, defpackage.ls
    public boolean d() {
        return this.aI.q > 0 && this.aI.a(this.aW) && this.aI.a(this, this.aW).size() == 0 && !this.aI.b(this.aW);
    }

    @Override // defpackage.gz, defpackage.ls, defpackage.sn
    public void b(nu nuVar) {
        super.b(nuVar);
        nuVar.a("Anger", (short) this.a);
    }

    @Override // defpackage.gz, defpackage.ls, defpackage.sn
    public void a(nu nuVar) {
        super.a(nuVar);
        this.a = nuVar.d("Anger");
    }

    @Override // defpackage.gz, defpackage.ii
    protected sn g_() {
        if (this.a == 0) {
            return null;
        }
        return super.g_();
    }

    @Override // defpackage.uz, defpackage.gz, defpackage.ls
    public void o() {
        super.o();
    }

    @Override // defpackage.gz, defpackage.ls, defpackage.sn
    public boolean a(sn snVar, int i) {
        if (snVar instanceof gs) {
            List listB = this.aI.b(this, this.aW.b(32.0d, 32.0d, 32.0d));
            for (int i2 = 0; i2 < listB.size(); i2++) {
                sn snVar2 = (sn) listB.get(i2);
                if (snVar2 instanceof ya) {
                    ((ya) snVar2).d(snVar);
                }
            }
            d(snVar);
        }
        return super.a(snVar, i);
    }

    private void d(sn snVar) {
        this.d = snVar;
        this.a = this.bs.nextInt(400) + 400;
        this.b = this.bs.nextInt(40);
    }

    @Override // defpackage.uz, defpackage.ls
    protected int j() {
        return gm.ap.bf;
    }

    @Override // defpackage.ls
    public iz r_() {
        return f;
    }
}
