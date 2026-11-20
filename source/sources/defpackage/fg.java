package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class fg extends xw {
    private float a;

    @Override // defpackage.sn
    public float a(float f) {
        return 1.0f;
    }

    public fg(fd fdVar, double d, double d2, double d3) {
        super(fdVar, d, d2, d3, 0.0d, 0.0d, 0.0d);
        this.aP *= 0.800000011920929d;
        this.aQ *= 0.800000011920929d;
        this.aR *= 0.800000011920929d;
        this.aQ = (this.bs.nextFloat() * 0.4f) + 0.05f;
        this.k = 1.0f;
        this.j = 1.0f;
        this.i = 1.0f;
        this.g *= (this.bs.nextFloat() * 2.0f) + 0.2f;
        this.a = this.g;
        this.f = (int) (16.0d / ((Math.random() * 0.8d) + 0.2d));
        this.bq = false;
        this.b = 49;
    }

    @Override // defpackage.xw
    public void a(nw nwVar, float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = (this.e + f) / this.f;
        this.g = this.a * (1.0f - (f7 * f7));
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
        if (this.bs.nextFloat() > this.e / this.f) {
            this.aI.a("smoke", this.aM, this.aN, this.aO, this.aP, this.aQ, this.aR);
        }
        this.aQ -= 0.03d;
        b(this.aP, this.aQ, this.aR);
        this.aP *= 0.9990000128746033d;
        this.aQ *= 0.9990000128746033d;
        this.aR *= 0.9990000128746033d;
        if (this.aX) {
            this.aP *= 0.699999988079071d;
            this.aR *= 0.699999988079071d;
        }
    }
}
