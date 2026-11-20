package defpackage;

import net.minecraft.client.Minecraft;

/* JADX INFO: loaded from: classes.dex */
public class dc extends gs {
    public uo a;
    protected Minecraft b;
    private cu bN;
    private cu bO;
    private cu bP;

    public void a(String str) {
    }

    @Override // defpackage.gs
    public void v() {
    }

    public dc(Minecraft minecraft, fd fdVar, gr grVar, int i) {
        super(fdVar);
        this.bN = new cu();
        this.bO = new cu();
        this.bP = new cu();
        this.b = minecraft;
        this.m = i;
        if (grVar != null && grVar.b != null && grVar.b.length() > 0) {
            this.bA = "http://s3.amazonaws.com/MinecraftSkins/" + grVar.b + ".png";
        }
        this.l = grVar.b;
    }

    @Override // defpackage.sn
    public void b(double d, double d2, double d3) {
        super.b(d, d2, d3);
    }

    @Override // defpackage.gs, defpackage.ls
    public void f_() {
        super.f_();
        this.aw = this.a.a;
        this.ax = this.a.b;
        this.az = this.a.d;
    }

    @Override // defpackage.gs, defpackage.ls
    public void o() {
        if (!this.b.I.a(ep.f)) {
            this.b.u.b(ep.f);
        }
        this.C = this.B;
        if (this.A) {
            if (!this.aI.B && this.aH != null) {
                i(null);
            }
            if (this.b.r != null) {
                this.b.a((da) null);
            }
            if (this.B == 0.0f) {
                this.b.B.a("portal.trigger", 1.0f, (this.bs.nextFloat() * 0.4f) + 0.8f);
            }
            this.B += 0.0125f;
            if (this.B >= 1.0f) {
                this.B = 1.0f;
                if (!this.aI.B) {
                    this.z = 10;
                    this.b.B.a("portal.travel", 1.0f, (this.bs.nextFloat() * 0.4f) + 0.8f);
                    this.b.m();
                }
            }
            this.A = false;
        } else {
            if (this.B > 0.0f) {
                this.B -= 0.05f;
            }
            if (this.B < 0.0f) {
                this.B = 0.0f;
            }
        }
        if (this.z > 0) {
            this.z--;
        }
        this.a.a(this);
        if (this.a.e && this.bo < 0.2f) {
            this.bo = 0.2f;
        }
        c(this.aM - (((double) this.bg) * 0.35d), this.aW.b + 0.5d, (((double) this.bg) * 0.35d) + this.aO);
        c(this.aM - (((double) this.bg) * 0.35d), this.aW.b + 0.5d, this.aO - (((double) this.bg) * 0.35d));
        c(this.aM + (((double) this.bg) * 0.35d), this.aW.b + 0.5d, this.aO - (((double) this.bg) * 0.35d));
        c(this.aM + (((double) this.bg) * 0.35d), this.aW.b + 0.5d, this.aO + (((double) this.bg) * 0.35d));
        super.o();
    }

    public void o_() {
        this.a.a();
    }

    public void a(int i, boolean z) {
        this.a.a(i, z);
    }

    @Override // defpackage.gs, defpackage.ls, defpackage.sn
    public void b(nu nuVar) {
        super.b(nuVar);
        nuVar.a("Score", this.g);
    }

    @Override // defpackage.gs, defpackage.ls, defpackage.sn
    public void a(nu nuVar) {
        super.a(nuVar);
        this.g = nuVar.e("Score");
    }

    @Override // defpackage.gs
    public void r() {
        super.r();
        this.b.a((da) null);
    }

    @Override // defpackage.gs
    public void a(yk ykVar) {
        this.b.a(new yc(ykVar));
    }

    @Override // defpackage.gs
    public void a(lw lwVar) {
        this.b.a(new hp(this.c, lwVar));
    }

    @Override // defpackage.gs
    public void a(int i, int i2, int i3) {
        this.b.a(new oo(this.c, this.aI, i, i2, i3));
    }

    @Override // defpackage.gs
    public void a(sk skVar) {
        this.b.a(new ov(this.c, skVar));
    }

    @Override // defpackage.gs
    public void a(az azVar) {
        this.b.a(new gq(this.c, azVar));
    }

    @Override // defpackage.gs
    public void b(sn snVar, int i) {
        this.b.j.a(new em(this.b.f, snVar, this, -0.5f));
    }

    public int s() {
        return this.c.f();
    }

    @Override // defpackage.sn
    public boolean t() {
        return this.a.e && !this.u;
    }

    public void d_(int i) {
        int i2 = this.Y - i;
        if (i2 <= 0) {
            this.Y = i;
            if (i2 < 0) {
                this.by = this.E / 2;
                return;
            }
            return;
        }
        this.au = i2;
        this.Z = this.Y;
        this.by = this.E;
        b(i2);
        this.ab = 10;
        this.aa = 10;
    }

    @Override // defpackage.gs
    public void p_() {
        this.b.a(false, 0);
    }

    @Override // defpackage.gs
    public void b(String str) {
        this.b.v.c(str);
    }

    @Override // defpackage.gs
    public void a(vr vrVar, int i) {
        if (vrVar == null) {
            return;
        }
        if (vrVar.d()) {
            ny nyVar = (ny) vrVar;
            if (nyVar.c == null || this.b.I.a(nyVar.c)) {
                if (!this.b.I.a(nyVar)) {
                    this.b.u.a(nyVar);
                }
                this.b.I.a(vrVar, i);
                return;
            }
            return;
        }
        this.b.I.a(vrVar, i);
    }

    private boolean d(int i, int i2, int i3) {
        return this.aI.h(i, i2, i3);
    }

    @Override // defpackage.sn
    protected boolean c(double d, double d2, double d3) {
        byte b;
        int iB = in.b(d);
        int iB2 = in.b(d2);
        int iB3 = in.b(d3);
        double d4 = d - ((double) iB);
        double d5 = d3 - ((double) iB3);
        if (d(iB, iB2, iB3) || d(iB, iB2 + 1, iB3)) {
            int i = iB - 1;
            boolean z = (d(i, iB2, iB3) || d(i, iB2 + 1, iB3)) ? false : true;
            int i2 = iB + 1;
            boolean z2 = (d(i2, iB2, iB3) || d(i2, iB2 + 1, iB3)) ? false : true;
            int i3 = iB3 - 1;
            boolean z3 = (d(iB, iB2, i3) || d(iB, iB2 + 1, i3)) ? false : true;
            int i4 = iB3 + 1;
            boolean z4 = (d(iB, iB2, i4) || d(iB, iB2 + 1, i4)) ? false : true;
            double d6 = 9999.0d;
            if (!z || d4 >= 9999.0d) {
                b = -1;
            } else {
                d6 = d4;
                b = 0;
            }
            if (z2) {
                double d7 = 1.0d - d4;
                if (d7 < d6) {
                    d6 = d7;
                    b = 1;
                }
            }
            if (z3 && d5 < d6) {
                b = 4;
                d6 = d5;
            }
            if (z4 && 1.0d - d5 < d6) {
                b = 5;
            }
            if (b == 0) {
                this.aP = -0.1f;
            }
            if (b == 1) {
                this.aP = 0.1f;
            }
            if (b == 4) {
                this.aR = -0.1f;
            }
            if (b == 5) {
                this.aR = 0.1f;
            }
        }
        return false;
    }
}
