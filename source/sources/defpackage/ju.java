package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ju extends sn {
    public int a;
    public int b;

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

    public ju(fd fdVar) {
        super(fdVar);
        this.b = 0;
    }

    public ju(fd fdVar, double d, double d2, double d3, int i) {
        super(fdVar);
        this.b = 0;
        this.a = i;
        this.aF = true;
        b(0.98f, 0.98f);
        this.bf = this.bh / 2.0f;
        e(d, d2, d3);
        this.aP = 0.0d;
        this.aQ = 0.0d;
        this.aR = 0.0d;
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
        if (this.a == 0) {
            K();
            return;
        }
        this.aJ = this.aM;
        this.aK = this.aN;
        this.aL = this.aO;
        this.b++;
        this.aQ -= 0.03999999910593033d;
        b(this.aP, this.aQ, this.aR);
        this.aP *= 0.9800000190734863d;
        this.aQ *= 0.9800000190734863d;
        this.aR *= 0.9800000190734863d;
        int iB = in.b(this.aM);
        int iB2 = in.b(this.aN);
        int iB3 = in.b(this.aO);
        if (this.aI.a(iB, iB2, iB3) == this.a) {
            this.aI.f(iB, iB2, iB3, 0);
        }
        if (this.aX) {
            this.aP *= 0.699999988079071d;
            this.aR *= 0.699999988079071d;
            this.aQ *= -0.5d;
            K();
            if ((this.aI.a(this.a, iB, iB2, iB3, true, 1) && !gk.c_(this.aI, iB, iB2 - 1, iB3) && this.aI.f(iB, iB2, iB3, this.a)) || this.aI.B) {
                return;
            }
            b(this.a, 1);
            return;
        }
        if (this.b <= 100 || this.aI.B) {
            return;
        }
        b(this.a, 1);
        K();
    }

    @Override // defpackage.sn
    protected void b(nu nuVar) {
        nuVar.a("Tile", (byte) this.a);
    }

    @Override // defpackage.sn
    protected void a(nu nuVar) {
        this.a = nuVar.c("Tile") & 255;
    }

    public fd k() {
        return this.aI;
    }
}
