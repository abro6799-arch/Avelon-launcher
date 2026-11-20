package defpackage;

import net.minecraft.client.Minecraft;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class ds extends gv {
    private static final String[] i = {"cloth", "chain", "iron", "diamond", "gold"};
    private fh a;
    private fh g;
    private fh h;

    public ds() {
        super(new fh(0.0f), 0.5f);
        this.a = (fh) this.e;
        this.g = new fh(1.0f);
        this.h = new fh(0.5f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public boolean a(gs gsVar, int i2, float f) {
        iz izVarD = gsVar.c.d(3 - i2);
        if (izVarD != null) {
            gm gmVarA = izVarD.a();
            if (gmVarA instanceof wa) {
                StringBuilder sb = new StringBuilder("/armor/");
                sb.append(i[((wa) gmVarA).bm]);
                sb.append("_");
                sb.append(i2 == 2 ? 2 : 1);
                sb.append(".png");
                a(sb.toString());
                fh fhVar = i2 == 2 ? this.h : this.g;
                fhVar.a.h = i2 == 0;
                fhVar.b.h = i2 == 0;
                fhVar.c.h = i2 == 1 || i2 == 2;
                fhVar.d.h = i2 == 1;
                fhVar.e.h = i2 == 1;
                fhVar.f.h = i2 == 2 || i2 == 3;
                fhVar.g.h = i2 == 2 || i2 == 3;
                a(fhVar);
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.gv, defpackage.bw
    public void a(gs gsVar, double d, double d2, double d3, float f, float f2) {
        iz izVarB = gsVar.c.b();
        fh fhVar = this.g;
        fh fhVar2 = this.h;
        fh fhVar3 = this.a;
        boolean z = izVarB != null;
        fhVar3.k = z;
        fhVar2.k = z;
        fhVar.k = z;
        fh fhVar4 = this.g;
        fh fhVar5 = this.h;
        fh fhVar6 = this.a;
        boolean zT = gsVar.t();
        fhVar6.l = zT;
        fhVar5.l = zT;
        fhVar4.l = zT;
        double d4 = d2 - ((double) gsVar.bf);
        if (gsVar.t() && !(gsVar instanceof dc)) {
            d4 -= 0.125d;
        }
        super.a((ls) gsVar, d, d4, d3, f, f2);
        fh fhVar7 = this.g;
        fh fhVar8 = this.h;
        this.a.l = false;
        fhVar8.l = false;
        fhVar7.l = false;
        fh fhVar9 = this.g;
        fh fhVar10 = this.h;
        this.a.k = false;
        fhVar10.k = false;
        fhVar9.k = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public void a(gs gsVar, double d, double d2, double d3) {
        if (!Minecraft.t() || gsVar == this.b.h) {
            return;
        }
        if (gsVar.f(this.b.h) < (gsVar.t() ? 32.0f : 64.0f)) {
            String str = gsVar.l;
            if (!gsVar.t()) {
                if (gsVar.N()) {
                    a(gsVar, str, d, d2 - 1.5d, d3, 64);
                    return;
                } else {
                    a(gsVar, str, d, d2, d3, 64);
                    return;
                }
            }
            sj sjVarA = a();
            GL11.glPushMatrix();
            GL11.glTranslatef(((float) d) + 0.0f, ((float) d2) + 2.3f, (float) d3);
            GL11.glNormal3f(0.0f, 1.0f, 0.0f);
            GL11.glRotatef(-this.b.i, 0.0f, 1.0f, 0.0f);
            GL11.glRotatef(this.b.j, 1.0f, 0.0f, 0.0f);
            GL11.glScalef(-0.02666667f, -0.02666667f, 0.02666667f);
            GL11.glDisable(2896);
            GL11.glTranslatef(0.0f, 9.374999f, 0.0f);
            GL11.glDepthMask(false);
            GL11.glEnable(3042);
            GL11.glBlendFunc(770, 771);
            nw nwVar = nw.a;
            GL11.glDisable(3553);
            nwVar.b();
            int iA = sjVarA.a(str) / 2;
            nwVar.a(0.0f, 0.0f, 0.0f, 0.25f);
            double d4 = (-iA) - 1;
            nwVar.a(d4, -1.0d, 0.0d);
            nwVar.a(d4, 8.0d, 0.0d);
            double d5 = iA + 1;
            nwVar.a(d5, 8.0d, 0.0d);
            nwVar.a(d5, -1.0d, 0.0d);
            nwVar.a();
            GL11.glEnable(3553);
            GL11.glDepthMask(true);
            sjVarA.b(str, (-sjVarA.a(str)) / 2, 0, 553648127);
            GL11.glEnable(2896);
            GL11.glDisable(3042);
            GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
            GL11.glPopMatrix();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(gs gsVar, float f) {
        float f2;
        float f3;
        float f4;
        iz izVarD = gsVar.c.d(3);
        if (izVarD != null && izVarD.a().bf < 256) {
            GL11.glPushMatrix();
            this.a.a.c(0.0625f);
            if (cv.a(uu.m[izVarD.c].b())) {
                GL11.glTranslatef(0.0f, -0.25f, 0.0f);
                GL11.glRotatef(180.0f, 0.0f, 1.0f, 0.0f);
                GL11.glScalef(0.625f, -0.625f, 0.625f);
            }
            this.b.f.a(gsVar, izVarD);
            GL11.glPopMatrix();
        }
        if (gsVar.l.equals("deadmau5") && a(gsVar.bA, (String) null)) {
            for (int i2 = 0; i2 < 2; i2++) {
                float f5 = (gsVar.aU + ((gsVar.aS - gsVar.aU) * f)) - (gsVar.I + ((gsVar.H - gsVar.I) * f));
                float f6 = gsVar.aV + ((gsVar.aT - gsVar.aV) * f);
                GL11.glPushMatrix();
                GL11.glRotatef(f5, 0.0f, 1.0f, 0.0f);
                GL11.glRotatef(f6, 1.0f, 0.0f, 0.0f);
                GL11.glTranslatef(((i2 * 2) - 1) * 0.375f, 0.0f, 0.0f);
                GL11.glTranslatef(0.0f, -0.375f, 0.0f);
                GL11.glRotatef(-f6, 1.0f, 0.0f, 0.0f);
                GL11.glRotatef(-f5, 0.0f, 1.0f, 0.0f);
                GL11.glScalef(1.3333334f, 1.3333334f, 1.3333334f);
                this.a.a(0.0625f);
                GL11.glPopMatrix();
            }
        }
        if (a(gsVar.n, (String) null)) {
            GL11.glPushMatrix();
            GL11.glTranslatef(0.0f, 0.0f, 0.125f);
            double d = f;
            double d2 = (gsVar.o + ((gsVar.r - gsVar.o) * d)) - (gsVar.aJ + ((gsVar.aM - gsVar.aJ) * d));
            double d3 = (gsVar.p + ((gsVar.s - gsVar.p) * d)) - (gsVar.aK + ((gsVar.aN - gsVar.aK) * d));
            double d4 = (gsVar.q + ((gsVar.t - gsVar.q) * d)) - (gsVar.aL + ((gsVar.aO - gsVar.aL) * d));
            float f7 = ((gsVar.I + ((gsVar.H - gsVar.I) * f)) * 3.1415927f) / 180.0f;
            double dA = in.a(f7);
            double d5 = -in.b(f7);
            float f8 = ((float) d3) * 10.0f;
            if (f8 < -6.0f) {
                f8 = -6.0f;
            }
            if (f8 > 32.0f) {
                f8 = 32.0f;
            }
            float f9 = ((float) ((d2 * dA) + (d4 * d5))) * 100.0f;
            float f10 = ((float) ((d5 * d2) - (d4 * dA))) * 100.0f;
            if (f9 < 0.0f) {
                f9 = 0.0f;
            }
            float fA = f8 + (in.a((gsVar.bi + ((gsVar.bj - gsVar.bi) * f)) * 6.0f) * 32.0f * (gsVar.h + ((gsVar.i - gsVar.h) * f)));
            if (gsVar.t()) {
                fA += 25.0f;
            }
            GL11.glRotatef((f9 / 2.0f) + 6.0f + fA, 1.0f, 0.0f, 0.0f);
            GL11.glRotatef(f10 / 2.0f, 0.0f, 0.0f, 1.0f);
            GL11.glRotatef((-f10) / 2.0f, 0.0f, 1.0f, 0.0f);
            GL11.glRotatef(180.0f, 0.0f, 1.0f, 0.0f);
            f2 = 0.0625f;
            this.a.b(0.0625f);
            GL11.glPopMatrix();
        } else {
            f2 = 0.0625f;
        }
        iz izVarB = gsVar.c.b();
        if (izVarB != null) {
            GL11.glPushMatrix();
            this.a.d.c(f2);
            GL11.glTranslatef(-0.0625f, 0.4375f, f2);
            if (gsVar.D != null) {
                izVarB = new iz(gm.B);
            }
            if (izVarB.c < 256 && cv.a(uu.m[izVarB.c].b())) {
                GL11.glTranslatef(0.0f, 0.1875f, -0.3125f);
                GL11.glRotatef(20.0f, 1.0f, 0.0f, 0.0f);
                GL11.glRotatef(45.0f, 0.0f, 1.0f, 0.0f);
                GL11.glScalef(0.375f, -0.375f, 0.375f);
            } else if (gm.c[izVarB.c].b()) {
                if (gm.c[izVarB.c].c()) {
                    f3 = 1.0f;
                    f4 = 0.0f;
                    GL11.glRotatef(180.0f, 0.0f, 0.0f, 1.0f);
                    GL11.glTranslatef(0.0f, -0.125f, 0.0f);
                } else {
                    f3 = 1.0f;
                    f4 = 0.0f;
                }
                GL11.glTranslatef(f4, 0.1875f, f4);
                GL11.glScalef(0.625f, -0.625f, 0.625f);
                GL11.glRotatef(-100.0f, f3, f4, f4);
                GL11.glRotatef(45.0f, f4, f3, f4);
            } else {
                GL11.glTranslatef(0.25f, 0.1875f, -0.1875f);
                GL11.glScalef(0.375f, 0.375f, 0.375f);
                GL11.glRotatef(60.0f, 0.0f, 0.0f, 1.0f);
                GL11.glRotatef(-90.0f, 1.0f, 0.0f, 0.0f);
                GL11.glRotatef(20.0f, 0.0f, 0.0f, 1.0f);
            }
            this.b.f.a(gsVar, izVarB);
            GL11.glPopMatrix();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(gs gsVar, float f) {
        GL11.glScalef(0.9375f, 0.9375f, 0.9375f);
    }

    public void b() {
        this.a.m = 0.0f;
        this.a.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0625f);
        this.a.d.a(0.0625f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public void b(gs gsVar, double d, double d2, double d3) {
        if (gsVar.W() && gsVar.N()) {
            super.b((ls) gsVar, ((double) gsVar.w) + d, ((double) gsVar.x) + d2, ((double) gsVar.y) + d3);
        } else {
            super.b((ls) gsVar, d, d2, d3);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public void a(gs gsVar, float f, float f2, float f3) {
        if (gsVar.W() && gsVar.N()) {
            GL11.glRotatef(gsVar.M(), 0.0f, 1.0f, 0.0f);
            GL11.glRotatef(a(gsVar), 0.0f, 0.0f, 1.0f);
            GL11.glRotatef(270.0f, 0.0f, 1.0f, 0.0f);
            return;
        }
        super.a((ls) gsVar, f, f2, f3);
    }
}
