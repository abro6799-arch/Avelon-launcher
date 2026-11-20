package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class cr extends xw {
    public cr(fd fdVar, double d, double d2, double d3, double d4, double d5, double d6) {
        super(fdVar, d, d2, d3, d4, d5, d6);
        this.i = 1.0f;
        this.j = 1.0f;
        this.k = 1.0f;
        this.b = 32;
        b(0.02f, 0.02f);
        this.g *= (this.bs.nextFloat() * 0.6f) + 0.2f;
        this.aP = (d4 * 0.20000000298023224d) + ((double) (((float) ((Math.random() * 2.0d) - 1.0d)) * 0.02f));
        this.aQ = (d5 * 0.20000000298023224d) + ((double) (((float) ((Math.random() * 2.0d) - 1.0d)) * 0.02f));
        this.aR = (d6 * 0.20000000298023224d) + ((double) (((float) ((Math.random() * 2.0d) - 1.0d)) * 0.02f));
        this.f = (int) (8.0d / ((Math.random() * 0.8d) + 0.2d));
    }

    @Override // defpackage.xw, defpackage.sn
    public void w_() {
        this.aJ = this.aM;
        this.aK = this.aN;
        this.aL = this.aO;
        this.aQ += 0.002d;
        b(this.aP, this.aQ, this.aR);
        this.aP *= 0.8500000238418579d;
        this.aQ *= 0.8500000238418579d;
        this.aR *= 0.8500000238418579d;
        if (this.aI.f(in.b(this.aM), in.b(this.aN), in.b(this.aO)) != ln.g) {
            K();
        }
        int i = this.f;
        this.f = i - 1;
        if (i <= 0) {
            K();
        }
    }
}
