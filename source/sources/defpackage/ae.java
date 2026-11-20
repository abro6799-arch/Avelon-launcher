package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ae extends xw {
    float a;

    public ae(fd fdVar, double d, double d2, double d3, double d4, double d5, double d6) {
        this(fdVar, d, d2, d3, d4, d5, d6, 2.0f);
    }

    public ae(fd fdVar, double d, double d2, double d3, double d4, double d5, double d6, float f) {
        super(fdVar, d, d2, d3, 0.0d, 0.0d, 0.0d);
        this.aP *= 0.009999999776482582d;
        this.aQ *= 0.009999999776482582d;
        this.aR *= 0.009999999776482582d;
        this.aQ += 0.2d;
        float f2 = (float) d4;
        this.i = (in.a((0.0f + f2) * 3.1415927f * 2.0f) * 0.65f) + 0.35f;
        this.j = (in.a((0.33333334f + f2) * 3.1415927f * 2.0f) * 0.65f) + 0.35f;
        this.k = (in.a((f2 + 0.6666667f) * 3.1415927f * 2.0f) * 0.65f) + 0.35f;
        this.g *= 0.75f;
        this.g *= f;
        this.a = this.g;
        this.f = 6;
        this.bq = false;
        this.b = 64;
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
        this.aP *= 0.6600000262260437d;
        this.aQ *= 0.6600000262260437d;
        this.aR *= 0.6600000262260437d;
        if (this.aX) {
            this.aP *= 0.699999988079071d;
            this.aR *= 0.699999988079071d;
        }
    }
}
