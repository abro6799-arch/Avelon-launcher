package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class xw extends sn {
    public static double l;
    public static double m;
    public static double n;
    protected int b;
    protected float c;
    protected float d;
    protected int e;
    protected int f;
    protected float g;
    protected float h;
    protected float i;
    protected float j;
    protected float k;

    @Override // defpackage.sn
    public void a(nu nuVar) {
    }

    @Override // defpackage.sn
    protected void b() {
    }

    @Override // defpackage.sn
    public void b(nu nuVar) {
    }

    public int c_() {
        return 0;
    }

    @Override // defpackage.sn
    protected boolean n() {
        return false;
    }

    public xw(fd fdVar, double d, double d2, double d3, double d4, double d5, double d6) {
        super(fdVar);
        this.e = 0;
        this.f = 0;
        b(0.2f, 0.2f);
        this.bf = this.bh / 2.0f;
        e(d, d2, d3);
        this.k = 1.0f;
        this.j = 1.0f;
        this.i = 1.0f;
        this.aP = d4 + ((double) (((float) ((Math.random() * 2.0d) - 1.0d)) * 0.4f));
        this.aQ = d5 + ((double) (((float) ((Math.random() * 2.0d) - 1.0d)) * 0.4f));
        this.aR = d6 + ((double) (((float) ((Math.random() * 2.0d) - 1.0d)) * 0.4f));
        float fRandom = ((float) (Math.random() + Math.random() + 1.0d)) * 0.15f;
        double dA = in.a((this.aP * this.aP) + (this.aQ * this.aQ) + (this.aR * this.aR));
        double d7 = fRandom;
        this.aP = (this.aP / dA) * d7 * 0.4000000059604645d;
        this.aQ = ((this.aQ / dA) * d7 * 0.4000000059604645d) + 0.10000000149011612d;
        this.aR = (this.aR / dA) * d7 * 0.4000000059604645d;
        this.c = this.bs.nextFloat() * 3.0f;
        this.d = this.bs.nextFloat() * 3.0f;
        this.g = ((this.bs.nextFloat() * 0.5f) + 0.5f) * 2.0f;
        this.f = (int) (4.0f / ((this.bs.nextFloat() * 0.9f) + 0.1f));
        this.e = 0;
    }

    public xw c(float f) {
        double d = f;
        this.aP *= d;
        this.aQ = ((this.aQ - 0.10000000149011612d) * d) + 0.10000000149011612d;
        this.aR *= d;
        return this;
    }

    public xw d(float f) {
        float f2 = 0.2f * f;
        b(f2, f2);
        this.g *= f;
        return this;
    }

    @Override // defpackage.sn
    public void w_() {
        this.aJ = this.aM;
        this.aK = this.aN;
        this.aL = this.aO;
        int i = this.e;
        this.e = i + 1;
        if (i >= this.f) {
            K();
        }
        this.aQ -= ((double) this.h) * 0.04d;
        b(this.aP, this.aQ, this.aR);
        this.aP *= 0.9800000190734863d;
        this.aQ *= 0.9800000190734863d;
        this.aR *= 0.9800000190734863d;
        if (this.aX) {
            this.aP *= 0.699999988079071d;
            this.aR *= 0.699999988079071d;
        }
    }

    public void a(nw nwVar, float f, float f2, float f3, float f4, float f5, float f6) {
        int i = this.b;
        float f7 = (i % 16) / 16.0f;
        float f8 = f7 + 0.0624375f;
        float f9 = (i / 16) / 16.0f;
        float f10 = 0.0624375f + f9;
        float f11 = this.g * 0.1f;
        double d = f;
        float f12 = (float) ((this.aJ + ((this.aM - this.aJ) * d)) - l);
        float f13 = (float) ((this.aK + ((this.aN - this.aK) * d)) - m);
        float f14 = (float) ((this.aL + ((this.aO - this.aL) * d)) - n);
        float fA = a(f);
        nwVar.a(this.i * fA, this.j * fA, this.k * fA);
        float f15 = f2 * f11;
        float f16 = f12 - f15;
        float f17 = f5 * f11;
        float f18 = f3 * f11;
        double d2 = f13 - f18;
        float f19 = f4 * f11;
        float f20 = f14 - f19;
        float f21 = f11 * f6;
        double d3 = f8;
        double d4 = f10;
        nwVar.a(f16 - f17, d2, f20 - f21, d3, d4);
        double d5 = f13 + f18;
        double d6 = f9;
        nwVar.a(f16 + f17, d5, f20 + f21, d3, d6);
        float f22 = f12 + f15;
        float f23 = f14 + f19;
        double d7 = f7;
        nwVar.a(f22 + f17, d5, f23 + f21, d7, d6);
        nwVar.a(f22 - f17, d2, f23 - f21, d7, d4);
    }
}
