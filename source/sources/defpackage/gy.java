package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class gy extends xw {
    public gy(fd fdVar, double d, double d2, double d3, double d4, double d5, double d6) {
        super(fdVar, d, d2, d3, d4, d5, d6);
        this.aP = d4 + ((double) (((float) ((Math.random() * 2.0d) - 1.0d)) * 0.05f));
        this.aQ = d5 + ((double) (((float) ((Math.random() * 2.0d) - 1.0d)) * 0.05f));
        this.aR = d6 + ((double) (((float) ((Math.random() * 2.0d) - 1.0d)) * 0.05f));
        float fNextFloat = (this.bs.nextFloat() * 0.3f) + 0.7f;
        this.k = fNextFloat;
        this.j = fNextFloat;
        this.i = fNextFloat;
        this.g = (this.bs.nextFloat() * this.bs.nextFloat() * 6.0f) + 1.0f;
        this.f = ((int) (16.0d / ((((double) this.bs.nextFloat()) * 0.8d) + 0.2d))) + 2;
    }

    @Override // defpackage.xw
    public void a(nw nwVar, float f, float f2, float f3, float f4, float f5, float f6) {
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
        this.aQ += 0.004d;
        b(this.aP, this.aQ, this.aR);
        this.aP *= 0.8999999761581421d;
        this.aQ *= 0.8999999761581421d;
        this.aR *= 0.8999999761581421d;
        if (this.aX) {
            this.aP *= 0.699999988079071d;
            this.aR *= 0.699999988079071d;
        }
    }
}
