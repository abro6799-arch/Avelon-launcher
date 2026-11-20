package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ww extends bg {
    public boolean a;
    public float b;
    public float c;
    public float f;
    public float g;
    public float h;
    public int i;

    @Override // defpackage.ls, defpackage.sn
    protected void b(float f) {
    }

    @Override // defpackage.ls
    protected String g() {
        return "mob.chicken";
    }

    @Override // defpackage.ls
    protected String i() {
        return "mob.chickenhurt";
    }

    @Override // defpackage.ls
    protected String j_() {
        return "mob.chickenhurt";
    }

    public ww(fd fdVar) {
        super(fdVar);
        this.a = false;
        this.b = 0.0f;
        this.c = 0.0f;
        this.h = 1.0f;
        this.O = "/mob/chicken.png";
        b(0.3f, 0.4f);
        this.Y = 4;
        this.i = this.bs.nextInt(6000) + 6000;
    }

    @Override // defpackage.ls
    public void o() {
        super.o();
        this.g = this.b;
        float f = this.c;
        this.f = f;
        float f2 = (float) (((double) f) + (((double) (this.aX ? -1 : 4)) * 0.3d));
        this.c = f2;
        if (f2 < 0.0f) {
            this.c = 0.0f;
        }
        if (this.c > 1.0f) {
            this.c = 1.0f;
        }
        if (!this.aX && this.h < 1.0f) {
            this.h = 1.0f;
        }
        this.h = (float) (((double) this.h) * 0.9d);
        if (!this.aX && this.aQ < 0.0d) {
            this.aQ *= 0.6d;
        }
        this.b += this.h * 2.0f;
        if (this.aI.B) {
            return;
        }
        int i = this.i - 1;
        this.i = i;
        if (i <= 0) {
            this.aI.a(this, "mob.chickenplop", 1.0f, ((this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f) + 1.0f);
            b(gm.aN.bf, 1);
            this.i = this.bs.nextInt(6000) + 6000;
        }
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
        return gm.J.bf;
    }
}
