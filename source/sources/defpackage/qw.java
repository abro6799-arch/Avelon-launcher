package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class qw extends sn {
    public int a;

    @Override // defpackage.sn
    protected void b() {
    }

    @Override // defpackage.sn
    protected boolean n() {
        return false;
    }

    @Override // defpackage.sn
    public float x_() {
        return 0.0f;
    }

    public qw(fd fdVar) {
        super(fdVar);
        this.a = 0;
        this.aF = true;
        b(0.98f, 0.98f);
        this.bf = this.bh / 2.0f;
    }

    public qw(fd fdVar, double d, double d2, double d3) {
        this(fdVar);
        e(d, d2, d3);
        float fRandom = (((float) ((Math.random() * 3.1415927410125732d) * 2.0d)) * 3.1415927f) / 180.0f;
        this.aP = (-in.a(fRandom)) * 0.02f;
        this.aQ = 0.20000000298023224d;
        this.aR = (-in.b(fRandom)) * 0.02f;
        this.a = 80;
        this.aJ = d;
        this.aK = d2;
        this.aL = d3;
    }

    @Override // defpackage.sn
    public boolean h_() {
        return !this.be;
    }

    @Override // defpackage.sn
    public void w_() {
        this.aJ = this.aM;
        this.aK = this.aN;
        this.aL = this.aO;
        this.aQ -= 0.03999999910593033d;
        b(this.aP, this.aQ, this.aR);
        this.aP *= 0.9800000190734863d;
        this.aQ *= 0.9800000190734863d;
        this.aR *= 0.9800000190734863d;
        if (this.aX) {
            this.aP *= 0.699999988079071d;
            this.aR *= 0.699999988079071d;
            this.aQ *= -0.5d;
        }
        int i = this.a;
        this.a = i - 1;
        if (i <= 0) {
            if (!this.aI.B) {
                K();
                k();
                return;
            } else {
                K();
                return;
            }
        }
        this.aI.a("smoke", this.aM, this.aN + 0.5d, this.aO, 0.0d, 0.0d, 0.0d);
    }

    private void k() {
        this.aI.a((sn) null, this.aM, this.aN, this.aO, 4.0f);
    }

    @Override // defpackage.sn
    protected void b(nu nuVar) {
        nuVar.a("Fuse", (byte) this.a);
    }

    @Override // defpackage.sn
    protected void a(nu nuVar) {
        this.a = nuVar.c("Fuse");
    }
}
