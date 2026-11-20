package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class op extends xw {
    private float a;
    private double o;
    private double p;
    private double q;

    public op(fd fdVar, double d, double d2, double d3, double d4, double d5, double d6) {
        super(fdVar, d, d2, d3, d4, d5, d6);
        this.aP = d4;
        this.aQ = d5;
        this.aR = d6;
        this.aM = d;
        this.o = d;
        this.aN = d2;
        this.p = d2;
        this.aO = d3;
        this.q = d3;
        float fNextFloat = (this.bs.nextFloat() * 0.6f) + 0.4f;
        float fNextFloat2 = (this.bs.nextFloat() * 0.2f) + 0.5f;
        this.g = fNextFloat2;
        this.a = fNextFloat2;
        float f = fNextFloat * 1.0f;
        this.k = f;
        this.j = f;
        this.i = f;
        this.j *= 0.3f;
        this.i *= 0.9f;
        this.f = ((int) (Math.random() * 10.0d)) + 40;
        this.bq = true;
        this.b = (int) (Math.random() * 8.0d);
    }

    @Override // defpackage.xw
    public void a(nw nwVar, float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = 1.0f - ((this.e + f) / this.f);
        this.g = this.a * (1.0f - (f7 * f7));
        super.a(nwVar, f, f2, f3, f4, f5, f6);
    }

    @Override // defpackage.sn
    public float a(float f) {
        float fA = super.a(f);
        float f2 = this.e / this.f;
        float f3 = f2 * f2;
        float f4 = f3 * f3;
        return (fA * (1.0f - f4)) + f4;
    }

    @Override // defpackage.xw, defpackage.sn
    public void w_() {
        this.aJ = this.aM;
        this.aK = this.aN;
        this.aL = this.aO;
        float f = this.e / this.f;
        double d = 1.0f - ((-f) + ((f * f) * 2.0f));
        this.aM = this.o + (this.aP * d);
        this.aN = this.p + (this.aQ * d) + ((double) (1.0f - f));
        this.aO = this.q + (this.aR * d);
        int i = this.e;
        this.e = i + 1;
        if (i >= this.f) {
            K();
        }
    }
}
