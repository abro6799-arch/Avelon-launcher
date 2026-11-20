package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class hl extends sn {
    public iz a;
    public int b;
    public int c;
    public float d;
    private int e;
    private int f;

    @Override // defpackage.sn
    protected void b() {
    }

    @Override // defpackage.sn
    protected boolean n() {
        return false;
    }

    public hl(fd fdVar, double d, double d2, double d3, iz izVar) {
        super(fdVar);
        this.b = 0;
        this.f = 5;
        this.d = (float) (Math.random() * 3.141592653589793d * 2.0d);
        b(0.25f, 0.25f);
        this.bf = this.bh / 2.0f;
        e(d, d2, d3);
        this.a = izVar;
        this.aS = (float) (Math.random() * 360.0d);
        this.aP = (float) ((Math.random() * 0.20000000298023224d) - 0.10000000149011612d);
        this.aQ = 0.20000000298023224d;
        this.aR = (float) ((Math.random() * 0.20000000298023224d) - 0.10000000149011612d);
    }

    public hl(fd fdVar) {
        super(fdVar);
        this.b = 0;
        this.f = 5;
        this.d = (float) (Math.random() * 3.141592653589793d * 2.0d);
        b(0.25f, 0.25f);
        this.bf = this.bh / 2.0f;
    }

    @Override // defpackage.sn
    public void w_() {
        super.w_();
        int i = this.c;
        if (i > 0) {
            this.c = i - 1;
        }
        this.aJ = this.aM;
        this.aK = this.aN;
        this.aL = this.aO;
        this.aQ -= 0.03999999910593033d;
        if (this.aI.f(in.b(this.aM), in.b(this.aN), in.b(this.aO)) == ln.h) {
            this.aQ = 0.20000000298023224d;
            this.aP = (this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f;
            this.aR = (this.bs.nextFloat() - this.bs.nextFloat()) * 0.2f;
            this.aI.a(this, "random.fizz", 0.4f, (this.bs.nextFloat() * 0.4f) + 2.0f);
        }
        c(this.aM, (this.aW.b + this.aW.e) / 2.0d, this.aO);
        b(this.aP, this.aQ, this.aR);
        float f = 0.98f;
        if (this.aX) {
            int iA = this.aI.a(in.b(this.aM), in.b(this.aW.b) - 1, in.b(this.aO));
            f = iA > 0 ? 0.98f * uu.m[iA].bB : 0.58800006f;
        }
        double d = f;
        this.aP *= d;
        this.aQ *= 0.9800000190734863d;
        this.aR *= d;
        if (this.aX) {
            this.aQ *= -0.5d;
        }
        this.e++;
        int i2 = this.b + 1;
        this.b = i2;
        if (i2 >= 6000) {
            K();
        }
    }

    @Override // defpackage.sn
    public boolean k_() {
        return this.aI.a(this.aW, ln.g, this);
    }

    @Override // defpackage.sn
    protected void a(int i) {
        a((sn) null, i);
    }

    @Override // defpackage.sn
    public boolean a(sn snVar, int i) {
        ai();
        int i2 = this.f - i;
        this.f = i2;
        if (i2 > 0) {
            return false;
        }
        K();
        return false;
    }

    @Override // defpackage.sn
    public void b(nu nuVar) {
        nuVar.a("Health", (byte) this.f);
        nuVar.a("Age", (short) this.b);
        nuVar.a("Item", this.a.a(new nu()));
    }

    @Override // defpackage.sn
    public void a(nu nuVar) {
        this.f = nuVar.d("Health") & 255;
        this.b = nuVar.d("Age");
        this.a = new iz(nuVar.k("Item"));
    }

    @Override // defpackage.sn
    public void b(gs gsVar) {
        if (this.aI.B) {
            return;
        }
        int i = this.a.a;
        if (this.c == 0 && gsVar.c.a(this.a)) {
            if (this.a.c == uu.K.bn) {
                gsVar.a(ep.g);
            }
            if (this.a.c == gm.aD.bf) {
                gsVar.a(ep.t);
            }
            this.aI.a(this, "random.pop", 0.2f, (((this.bs.nextFloat() - this.bs.nextFloat()) * 0.7f) + 1.0f) * 2.0f);
            gsVar.b(this, i);
            if (this.a.a <= 0) {
                K();
            }
        }
    }
}
