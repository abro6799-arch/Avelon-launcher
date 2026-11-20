package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class xt extends ar {
    public float a;
    public float b;
    public float c;
    public float f;
    public float g;
    public float h;
    public float i;
    public float j;
    private float k;
    private float l;
    private float m;
    private float n;
    private float o;
    private float p;

    @Override // defpackage.sn
    public boolean a(gs gsVar) {
        return false;
    }

    @Override // defpackage.ls
    protected String g() {
        return null;
    }

    @Override // defpackage.ls
    protected String i() {
        return null;
    }

    @Override // defpackage.ls
    protected int j() {
        return 0;
    }

    @Override // defpackage.ls
    protected String j_() {
        return null;
    }

    @Override // defpackage.ls
    protected float k() {
        return 0.4f;
    }

    public xt(fd fdVar) {
        super(fdVar);
        this.a = 0.0f;
        this.b = 0.0f;
        this.c = 0.0f;
        this.f = 0.0f;
        this.g = 0.0f;
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = 0.0f;
        this.k = 0.0f;
        this.l = 0.0f;
        this.m = 0.0f;
        this.n = 0.0f;
        this.o = 0.0f;
        this.p = 0.0f;
        this.O = "/mob/squid.png";
        b(0.95f, 0.95f);
        this.l = (1.0f / (this.bs.nextFloat() + 1.0f)) * 0.2f;
    }

    @Override // defpackage.ar, defpackage.ls, defpackage.sn
    public void b(nu nuVar) {
        super.b(nuVar);
    }

    @Override // defpackage.ar, defpackage.ls, defpackage.sn
    public void a(nu nuVar) {
        super.a(nuVar);
    }

    @Override // defpackage.ls
    protected void q() {
        int iNextInt = this.bs.nextInt(3) + 1;
        for (int i = 0; i < iNextInt; i++) {
            a(new iz(gm.aU, 1, 0), 0.0f);
        }
    }

    @Override // defpackage.sn
    public boolean ag() {
        return this.aI.a(this.aW.b(0.0d, -0.6000000238418579d, 0.0d), ln.g, this);
    }

    @Override // defpackage.ls
    public void o() {
        super.o();
        this.b = this.a;
        this.f = this.c;
        float f = this.g;
        this.h = f;
        this.j = this.i;
        float f2 = f + this.l;
        this.g = f2;
        if (f2 > 6.2831855f) {
            this.g = f2 - 6.2831855f;
            if (this.bs.nextInt(10) == 0) {
                this.l = (1.0f / (this.bs.nextFloat() + 1.0f)) * 0.2f;
            }
        }
        if (ag()) {
            float f3 = this.g;
            if (f3 < 3.1415927f) {
                float f4 = f3 / 3.1415927f;
                this.i = in.a(f4 * f4 * 3.1415927f) * 3.1415927f * 0.25f;
                if (f4 > 0.75d) {
                    this.k = 1.0f;
                    this.m = 1.0f;
                } else {
                    this.m *= 0.8f;
                }
            } else {
                this.i = 0.0f;
                this.k *= 0.9f;
                this.m *= 0.99f;
            }
            if (!this.V) {
                this.aP = this.n * this.k;
                this.aQ = this.o * this.k;
                this.aR = this.p * this.k;
            }
            float fA = in.a((this.aP * this.aP) + (this.aR * this.aR));
            this.H += ((((-((float) Math.atan2(this.aP, this.aR))) * 180.0f) / 3.1415927f) - this.H) * 0.1f;
            this.aS = this.H;
            this.c += this.m * 3.1415927f * 1.5f;
            this.a += ((((-((float) Math.atan2(fA, this.aQ))) * 180.0f) / 3.1415927f) - this.a) * 0.1f;
            return;
        }
        this.i = in.e(in.a(this.g)) * 3.1415927f * 0.25f;
        if (!this.V) {
            this.aP = 0.0d;
            this.aQ -= 0.08d;
            this.aQ *= 0.9800000190734863d;
            this.aR = 0.0d;
        }
        float f5 = this.a;
        this.a = (float) (((double) f5) + (((double) ((-90.0f) - f5)) * 0.02d));
    }

    @Override // defpackage.ls
    public void a_(float f, float f2) {
        b(this.aP, this.aQ, this.aR);
    }

    @Override // defpackage.ii, defpackage.ls
    protected void f_() {
        if (this.bs.nextInt(50) == 0 || !this.bx || (this.n == 0.0f && this.o == 0.0f && this.p == 0.0f)) {
            float fNextFloat = this.bs.nextFloat() * 3.1415927f * 2.0f;
            this.n = in.b(fNextFloat) * 0.2f;
            this.o = (this.bs.nextFloat() * 0.2f) - 0.1f;
            this.p = in.a(fNextFloat) * 0.2f;
        }
        X();
    }
}
