package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class xd extends xw {
    public xd(fd fdVar, double d, double d2, double d3) {
        super(fdVar, d, d2, d3, 0.0d, 0.0d, 0.0d);
        this.aP *= 0.30000001192092896d;
        this.aQ = (((float) Math.random()) * 0.2f) + 0.1f;
        this.aR *= 0.30000001192092896d;
        this.i = 1.0f;
        this.j = 1.0f;
        this.k = 1.0f;
        this.b = this.bs.nextInt(4) + 19;
        b(0.01f, 0.01f);
        this.h = 0.06f;
        this.f = (int) (8.0d / ((Math.random() * 0.8d) + 0.2d));
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
        this.aQ -= (double) this.h;
        b(this.aP, this.aQ, this.aR);
        this.aP *= 0.9800000190734863d;
        this.aQ *= 0.9800000190734863d;
        this.aR *= 0.9800000190734863d;
        int i = this.f;
        this.f = i - 1;
        if (i <= 0) {
            K();
        }
        if (this.aX) {
            if (Math.random() < 0.5d) {
                K();
            }
            this.aP *= 0.699999988079071d;
            this.aR *= 0.699999988079071d;
        }
        ln lnVarF = this.aI.f(in.b(this.aM), in.b(this.aN), in.b(this.aO));
        if (lnVarF.d() || lnVarF.a()) {
            if (this.aN < (in.b(this.aN) + 1) - rp.d(this.aI.e(in.b(this.aM), in.b(this.aN), in.b(this.aO)))) {
                K();
            }
        }
    }
}
