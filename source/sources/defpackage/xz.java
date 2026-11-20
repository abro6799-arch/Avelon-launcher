package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class xz extends gs {
    float a;
    private int b;
    private double bN;
    private double bO;
    private double bP;
    private double bQ;
    private double bR;

    @Override // defpackage.gs, defpackage.ls, defpackage.sn
    public boolean a(sn snVar, int i) {
        return true;
    }

    @Override // defpackage.gs
    public void v() {
    }

    @Override // defpackage.sn
    public float x_() {
        return 0.0f;
    }

    public xz(fd fdVar, String str) {
        super(fdVar);
        this.a = 0.0f;
        this.l = str;
        this.bf = 0.0f;
        this.bp = 0.0f;
        if (str != null && str.length() > 0) {
            this.bA = "http://s3.amazonaws.com/MinecraftSkins/" + str + ".png";
        }
        this.bq = true;
        this.x = 0.25f;
        this.aE = 10.0d;
    }

    @Override // defpackage.gs
    protected void E() {
        this.bf = 0.0f;
    }

    @Override // defpackage.ls, defpackage.sn
    public void a(double d, double d2, double d3, float f, float f2, int i) {
        this.bN = d;
        this.bO = d2;
        this.bP = d3;
        this.bQ = f;
        this.bR = f2;
        this.b = i;
    }

    @Override // defpackage.gs, defpackage.ls, defpackage.sn
    public void w_() {
        this.x = 0.0f;
        super.w_();
        this.ak = this.al;
        double d = this.aM - this.aJ;
        double d2 = this.aO - this.aL;
        float fA = in.a((d * d) + (d2 * d2)) * 4.0f;
        if (fA > 1.0f) {
            fA = 1.0f;
        }
        this.al += (fA - this.al) * 0.4f;
        this.am += this.al;
    }

    @Override // defpackage.gs, defpackage.ls
    public void o() {
        super.f_();
        if (this.b > 0) {
            double d = this.aM + ((this.bN - this.aM) / ((double) this.b));
            double d2 = this.aN + ((this.bO - this.aN) / ((double) this.b));
            double d3 = this.aO + ((this.bP - this.aO) / ((double) this.b));
            double d4 = this.bQ - ((double) this.aS);
            while (d4 < -180.0d) {
                d4 += 360.0d;
            }
            while (d4 >= 180.0d) {
                d4 -= 360.0d;
            }
            this.aS = (float) (((double) this.aS) + (d4 / ((double) this.b)));
            this.aT = (float) (((double) this.aT) + ((this.bR - ((double) this.aT)) / ((double) this.b)));
            this.b--;
            e(d, d2, d3);
            c(this.aS, this.aT);
        }
        this.h = this.i;
        float fA = in.a((this.aP * this.aP) + (this.aR * this.aR));
        float fAtan = ((float) Math.atan((-this.aQ) * 0.20000000298023224d)) * 15.0f;
        if (fA > 0.1f) {
            fA = 0.1f;
        }
        if (!this.aX || this.Y <= 0) {
            fA = 0.0f;
        }
        if (this.aX || this.Y <= 0) {
            fAtan = 0.0f;
        }
        this.i += (fA - this.i) * 0.4f;
        this.ag += (fAtan - this.ag) * 0.8f;
    }

    @Override // defpackage.sn
    public void c(int i, int i2, int i3) {
        iz izVar = i2 >= 0 ? new iz(i2, 1, i3) : null;
        if (i == 0) {
            this.c.a[this.c.c] = izVar;
        } else {
            this.c.b[i - 1] = izVar;
        }
    }
}
