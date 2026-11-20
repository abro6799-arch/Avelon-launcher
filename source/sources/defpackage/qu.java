package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class qu extends xw {
    private float a;

    public qu(fd fdVar, double d, double d2, double d3, double d4, double d5, double d6) {
        super(fdVar, d, d2, d3, d4, d5, d6);
        this.aP = (this.aP * 0.009999999776482582d) + d4;
        this.aQ = (this.aQ * 0.009999999776482582d) + d5;
        this.aR = (this.aR * 0.009999999776482582d) + d6;
        this.bs.nextFloat();
        this.bs.nextFloat();
        this.bs.nextFloat();
        this.bs.nextFloat();
        this.bs.nextFloat();
        this.bs.nextFloat();
        this.a = this.g;
        this.k = 1.0f;
        this.j = 1.0f;
        this.i = 1.0f;
        this.f = ((int) (8.0d / ((Math.random() * 0.8d) + 0.2d))) + 4;
        this.bq = true;
        this.b = 48;
    }

    @Override // defpackage.xw
    public void a(nw nwVar, float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = (this.e + f) / this.f;
        this.g = this.a * (1.0f - ((f7 * f7) * 0.5f));
        super.a(nwVar, f, f2, f3, f4, f5, f6);
    }

    @Override // defpackage.sn
    public float a(float f) {
        float f2 = (this.e + f) / this.f;
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        return (super.a(f) * f2) + (1.0f - f2);
    }

    @Override // defpackage.xw, defpackage.sn
    public void w_() {
        this.aJ = this.aM;
        this.aK = this.aN;
        this.aL = this.aO;
        int i = this.e;
        this.e = i + 1;
        if (i >= this.f) {
            K();
        }
        b(this.aP, this.aQ, this.aR);
        this.aP *= 0.9599999785423279d;
        this.aQ *= 0.9599999785423279d;
        this.aR *= 0.9599999785423279d;
        if (this.aX) {
            this.aP *= 0.699999988079071d;
            this.aR *= 0.699999988079071d;
        }
    }
}
