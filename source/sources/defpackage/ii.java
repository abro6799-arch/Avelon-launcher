package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ii extends ls {
    private dh a;
    protected sn d;
    protected boolean e;

    protected float a(int i, int i2, int i3) {
        return 0.0f;
    }

    protected void a(sn snVar, float f) {
    }

    protected void b(sn snVar, float f) {
    }

    protected boolean e_() {
        return false;
    }

    protected sn g_() {
        return null;
    }

    public ii(fd fdVar) {
        super(fdVar);
        this.e = false;
    }

    @Override // defpackage.ls
    protected void f_() {
        sn snVar;
        this.e = e_();
        sn snVar2 = this.d;
        if (snVar2 == null) {
            sn snVarG_ = g_();
            this.d = snVarG_;
            if (snVarG_ != null) {
                this.a = this.aI.a(this, this.d, 16.0f);
            }
        } else if (!snVar2.W()) {
            this.d = null;
        } else {
            float f = this.d.f(this);
            if (e(this.d)) {
                a(this.d, f);
            } else {
                b(this.d, f);
            }
        }
        if (!this.e && this.d != null && (this.a == null || this.bs.nextInt(20) == 0)) {
            this.a = this.aI.a(this, this.d, 16.0f);
        } else if (!this.e && ((this.a == null && this.bs.nextInt(80) == 0) || this.bs.nextInt(80) == 0)) {
            E();
        }
        int iB = in.b(this.aW.b + 0.5d);
        boolean zAg = ag();
        boolean zAh = ah();
        this.aT = 0.0f;
        if (this.a == null || this.bs.nextInt(100) == 0) {
            super.f_();
            this.a = null;
            return;
        }
        bt btVarA = this.a.a(this);
        double d = this.bg * 2.0f;
        while (btVarA != null) {
            if (btVarA.d(this.aM, btVarA.b, this.aO) >= d * d) {
                break;
            }
            this.a.a();
            if (this.a.b()) {
                this.a = null;
                btVarA = null;
            } else {
                btVarA = this.a.a(this);
            }
        }
        this.az = false;
        if (btVarA != null) {
            double d2 = btVarA.a - this.aM;
            double d3 = btVarA.c - this.aO;
            double d4 = btVarA.b - ((double) iB);
            float fAtan2 = (((float) ((Math.atan2(d3, d2) * 180.0d) / 3.1415927410125732d)) - 90.0f) - this.aS;
            this.ax = this.aB;
            while (fAtan2 < -180.0f) {
                fAtan2 += 360.0f;
            }
            while (fAtan2 >= 180.0f) {
                fAtan2 -= 360.0f;
            }
            if (fAtan2 > 30.0f) {
                fAtan2 = 30.0f;
            }
            if (fAtan2 < -30.0f) {
                fAtan2 = -30.0f;
            }
            this.aS += fAtan2;
            if (this.e && (snVar = this.d) != null) {
                double d5 = snVar.aM - this.aM;
                double d6 = this.d.aO - this.aO;
                float f2 = this.aS;
                this.aS = ((float) ((Math.atan2(d6, d5) * 180.0d) / 3.1415927410125732d)) - 90.0f;
                float f3 = (((f2 - this.aS) + 90.0f) * 3.1415927f) / 180.0f;
                this.aw = (-in.a(f3)) * this.ax * 1.0f;
                this.ax = in.b(f3) * this.ax * 1.0f;
            }
            if (d4 > 0.0d) {
                this.az = true;
            }
        } else {
            zAg = zAg;
        }
        sn snVar3 = this.d;
        if (snVar3 != null) {
            a(snVar3, 30.0f, 30.0f);
        }
        if (this.aY && !F()) {
            this.az = true;
        }
        if (this.bs.nextFloat() < 0.8f) {
            if (zAg || zAh) {
                this.az = true;
            }
        }
    }

    protected void E() {
        float f = -99999.0f;
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        boolean z = false;
        for (int i4 = 0; i4 < 10; i4++) {
            int iB = in.b((this.aM + ((double) this.bs.nextInt(13))) - 6.0d);
            int iB2 = in.b((this.aN + ((double) this.bs.nextInt(7))) - 3.0d);
            int iB3 = in.b((this.aO + ((double) this.bs.nextInt(13))) - 6.0d);
            float fA = a(iB, iB2, iB3);
            if (fA > f) {
                z = true;
                i = iB;
                i2 = iB2;
                i3 = iB3;
                f = fA;
            }
        }
        if (z) {
            this.a = this.aI.a((sn) this, i, i2, i3, 10.0f);
        }
    }

    @Override // defpackage.ls
    public boolean d() {
        return super.d() && a(in.b(this.aM), in.b(this.aW.b), in.b(this.aO)) >= 0.0f;
    }

    public boolean F() {
        return this.a != null;
    }

    public void a(dh dhVar) {
        this.a = dhVar;
    }

    public sn G() {
        return this.d;
    }

    public void c(sn snVar) {
        this.d = snVar;
    }
}
