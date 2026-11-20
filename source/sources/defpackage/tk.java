package defpackage;

import net.minecraft.client.Minecraft;

/* JADX INFO: loaded from: classes.dex */
public class tk extends dc {
    public nb bN;
    private int bO;
    private boolean bP;
    private double bQ;
    private double bR;
    private double bS;
    private double bT;
    private float bU;
    private float bV;
    private boolean bW;
    private boolean bX;
    private int bY;

    private void an() {
    }

    @Override // defpackage.gs
    protected void a(hl hlVar) {
    }

    @Override // defpackage.gs, defpackage.ls, defpackage.sn
    public boolean a(sn snVar, int i) {
        return false;
    }

    @Override // defpackage.ls
    public void c(int i) {
    }

    public tk(Minecraft minecraft, fd fdVar, gr grVar, nb nbVar) {
        super(minecraft, fdVar, grVar, 0);
        this.bO = 0;
        this.bP = false;
        this.bW = false;
        this.bX = false;
        this.bY = 0;
        this.bN = nbVar;
    }

    @Override // defpackage.gs, defpackage.ls, defpackage.sn
    public void w_() {
        if (this.aI.i(in.b(this.aM), 64, in.b(this.aO))) {
            super.w_();
            am();
        }
    }

    public void am() {
        boolean z;
        int i;
        boolean z2;
        int i2 = this.bO;
        this.bO = i2 + 1;
        if (i2 == 20) {
            an();
            this.bO = 0;
        }
        boolean zT = t();
        if (zT != this.bX) {
            if (zT) {
                this.bN.b(new ts(this, 1));
            } else {
                this.bN.b(new ts(this, 2));
            }
            this.bX = zT;
        }
        double d = this.aM - this.bQ;
        double d2 = this.aW.b - this.bR;
        double d3 = this.aN - this.bS;
        double d4 = this.aO - this.bT;
        double d5 = this.aS - this.bU;
        double d6 = this.aT - this.bV;
        boolean z3 = (d2 == 0.0d && d3 == 0.0d && d == 0.0d && d4 == 0.0d) ? false : true;
        boolean z4 = (d5 == 0.0d && d6 == 0.0d) ? false : true;
        if (this.aH != null) {
            if (z4) {
                this.bN.b(new af(this.aP, -999.0d, -999.0d, this.aR, this.aX));
            } else {
                this.bN.b(new ev(this.aP, -999.0d, -999.0d, this.aR, this.aS, this.aT, this.aX));
            }
            z = z4;
            z2 = false;
        } else {
            if (z3 && z4) {
                z = z4;
                this.bN.b(new ev(this.aM, this.aW.b, this.aN, this.aO, this.aS, this.aT, this.aX));
                this.bY = 0;
            } else {
                z = z4;
                if (z3) {
                    this.bN.b(new af(this.aM, this.aW.b, this.aN, this.aO, this.aX));
                    this.bY = 0;
                } else if (z) {
                    this.bN.b(new vh(this.aS, this.aT, this.aX));
                    this.bY = 0;
                } else {
                    this.bN.b(new ig(this.aX));
                    if (this.bW != this.aX || (i = this.bY) > 200) {
                        this.bY = 0;
                    } else {
                        this.bY = i + 1;
                    }
                }
            }
            z2 = z3;
        }
        this.bW = this.aX;
        if (z2) {
            this.bQ = this.aM;
            this.bR = this.aW.b;
            this.bS = this.aN;
            this.bT = this.aO;
        }
        if (z) {
            this.bU = this.aS;
            this.bV = this.aT;
        }
    }

    @Override // defpackage.gs
    public void D() {
        this.bN.b(new jv(4, 0, 0, 0, 0));
    }

    @Override // defpackage.dc
    public void a(String str) {
        this.bN.b(new pe(str));
    }

    @Override // defpackage.gs
    public void J() {
        super.J();
        this.bN.b(new nm(this, 1));
    }

    @Override // defpackage.dc, defpackage.gs
    public void p_() {
        an();
        this.bN.b(new ox((byte) this.m));
    }

    @Override // defpackage.gs, defpackage.ls
    protected void b(int i) {
        this.Y -= i;
    }

    @Override // defpackage.dc, defpackage.gs
    public void r() {
        this.bN.b(new mn(this.e.f));
        this.c.b((iz) null);
        super.r();
    }

    @Override // defpackage.dc
    public void d_(int i) {
        if (this.bP) {
            super.d_(i);
        } else {
            this.Y = i;
            this.bP = true;
        }
    }

    @Override // defpackage.dc, defpackage.gs
    public void a(vr vrVar, int i) {
        if (vrVar != null && vrVar.g) {
            super.a(vrVar, i);
        }
    }

    public void b(vr vrVar, int i) {
        if (vrVar == null || vrVar.g) {
            return;
        }
        super.a(vrVar, i);
    }
}
