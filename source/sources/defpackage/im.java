package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class im extends xw {
    float a;

    public im(fd fdVar, double d, double d2, double d3, float f, float f2, float f3) {
        this(fdVar, d, d2, d3, 1.0f, f, f2, f3);
    }

    public im(fd fdVar, double d, double d2, double d3, float f, float f2, float f3, float f4) {
        super(fdVar, d, d2, d3, 0.0d, 0.0d, 0.0d);
        this.aP *= 0.10000000149011612d;
        this.aQ *= 0.10000000149011612d;
        this.aR *= 0.10000000149011612d;
        float f5 = f2 == 0.0f ? 1.0f : f2;
        float fRandom = (((float) Math.random()) * 0.4f) + 0.6f;
        this.i = (((float) (Math.random() * 0.20000000298023224d)) + 0.8f) * f5 * fRandom;
        this.j = (((float) (Math.random() * 0.20000000298023224d)) + 0.8f) * f3 * fRandom;
        this.k = (((float) (Math.random() * 0.20000000298023224d)) + 0.8f) * f4 * fRandom;
        this.g *= 0.75f;
        this.g *= f;
        this.a = this.g;
        this.f = (int) (8.0d / ((Math.random() * 0.8d) + 0.2d));
        this.f = (int) (this.f * f);
        this.bq = false;
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
        this.b = 7 - ((this.e * 8) / this.f);
        b(this.aP, this.aQ, this.aR);
        if (this.aN == this.aK) {
            this.aP *= 1.1d;
            this.aR *= 1.1d;
        }
        this.aP *= 0.9599999785423279d;
        this.aQ *= 0.9599999785423279d;
        this.aR *= 0.9599999785423279d;
        if (this.aX) {
            this.aP *= 0.699999988079071d;
            this.aR *= 0.699999988079071d;
        }
    }
}
