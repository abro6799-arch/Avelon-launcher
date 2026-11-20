package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class kc extends xw {
    float a;

    public kc(fd fdVar, double d, double d2, double d3, double d4, double d5, double d6) {
        this(fdVar, d, d2, d3, d4, d5, d6, 2.0f);
    }

    public kc(fd fdVar, double d, double d2, double d3, double d4, double d5, double d6, float f) {
        super(fdVar, d, d2, d3, 0.0d, 0.0d, 0.0d);
        this.aP *= 0.009999999776482582d;
        this.aQ *= 0.009999999776482582d;
        this.aR *= 0.009999999776482582d;
        this.aQ += 0.1d;
        this.g *= 0.75f;
        this.g *= f;
        this.a = this.g;
        this.f = 16;
        this.bq = false;
        this.b = 80;
    }

    @Override // defpackage.xw
    public void a(nw nwVar, float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = ((this.e + f) / this.f) * 32.0f;
        if (f7 < 0.0f) {
            f7 = 0.0f;
        }
        if (f7 > 1.0f) {
            f7 = 1.0f;
        }
        this.g = this.a * f7;
        super.a(nwVar, f, f2, f3, f4, f5, f6);
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
        if (this.aN == this.aK) {
            this.aP *= 1.1d;
            this.aR *= 1.1d;
        }
        this.aP *= 0.8600000143051147d;
        this.aQ *= 0.8600000143051147d;
        this.aR *= 0.8600000143051147d;
        if (this.aX) {
            this.aP *= 0.699999988079071d;
            this.aR *= 0.699999988079071d;
        }
    }
}
