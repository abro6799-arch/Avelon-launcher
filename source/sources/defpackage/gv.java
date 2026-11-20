package defpackage;

import net.minecraft.client.Minecraft;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class gv extends bw {
    protected ko e;
    protected ko f;

    protected float a(ls lsVar) {
        return 90.0f;
    }

    protected int a(ls lsVar, float f, float f2) {
        return 0;
    }

    protected void a(ls lsVar, float f) {
    }

    protected boolean a(ls lsVar, int i, float f) {
        return false;
    }

    protected void b(ls lsVar, float f) {
    }

    public gv(ko koVar, float f) {
        this.e = koVar;
        this.c = f;
    }

    public void a(ko koVar) {
        this.f = koVar;
    }

    @Override // defpackage.bw
    public void a(ls lsVar, double d, double d2, double d3, float f, float f2) {
        int i;
        int i2;
        float f3;
        float f4;
        GL11.glPushMatrix();
        GL11.glDisable(2884);
        this.e.m = d(lsVar, f2);
        ko koVar = this.f;
        if (koVar != null) {
            koVar.m = this.e.m;
        }
        this.e.n = lsVar.al();
        ko koVar2 = this.f;
        if (koVar2 != null) {
            koVar2.n = this.e.n;
        }
        try {
            float f5 = lsVar.I + ((lsVar.H - lsVar.I) * f2);
            float f6 = lsVar.aU + ((lsVar.aS - lsVar.aU) * f2);
            float f7 = lsVar.aV + ((lsVar.aT - lsVar.aV) * f2);
            b(lsVar, d, d2, d3);
            float fC = c(lsVar, f2);
            a(lsVar, fC, f5, f2);
            GL11.glEnable(32826);
            GL11.glScalef(-1.0f, -1.0f, 1.0f);
            a(lsVar, f2);
            GL11.glTranslatef(0.0f, -1.5078125f, 0.0f);
            float f8 = lsVar.ak + ((lsVar.al - lsVar.ak) * f2);
            float f9 = lsVar.am - (lsVar.al * (1.0f - f2));
            float f10 = f8 > 1.0f ? 1.0f : f8;
            a(lsVar.bA, lsVar.q_());
            GL11.glEnable(3008);
            this.e.a(lsVar, f9, f10, f2);
            float f11 = f6 - f5;
            float f12 = f10;
            this.e.a(f9, f10, fC, f11, f7, 0.0625f);
            for (int i3 = 0; i3 < 4; i3++) {
                if (a(lsVar, i3, f2)) {
                    this.f.a(f9, f12, fC, f11, f7, 0.0625f);
                    GL11.glDisable(3042);
                    GL11.glEnable(3008);
                }
            }
            b(lsVar, f2);
            float fA = lsVar.a(f2);
            int iA = a(lsVar, fA, f2);
            int i4 = (iA >> 24) & 255;
            if (i4 > 0 || lsVar.aa > 0 || lsVar.ad > 0) {
                GL11.glDisable(3553);
                GL11.glDisable(3008);
                GL11.glEnable(3042);
                GL11.glBlendFunc(770, 771);
                GL11.glDepthFunc(514);
                if (lsVar.aa > 0 || lsVar.ad > 0) {
                    GL11.glColor4f(fA, 0.0f, 0.0f, 0.4f);
                    i = 4;
                    float f13 = fA;
                    this.e.a(f9, f12, fC, f11, f7, 0.0625f);
                    for (int i5 = 0; i5 < 4; i5++) {
                        if (b(lsVar, i5, f2)) {
                            float f14 = f13;
                            GL11.glColor4f(f14, 0.0f, 0.0f, 0.4f);
                            f13 = f14;
                            this.f.a(f9, f12, fC, f11, f7, 0.0625f);
                        }
                    }
                } else {
                    i = 4;
                }
                if (i4 > 0) {
                    float f15 = ((iA >> 16) & 255) / 255.0f;
                    float f16 = ((iA >> 8) & 255) / 255.0f;
                    float f17 = (iA & 255) / 255.0f;
                    float f18 = i4 / 255.0f;
                    GL11.glColor4f(f15, f16, f17, f18);
                    float f19 = f16;
                    float f20 = f15;
                    this.e.a(f9, f12, fC, f11, f7, 0.0625f);
                    int i6 = 0;
                    while (i6 < i) {
                        if (b(lsVar, i6, f2)) {
                            float f21 = f19;
                            float f22 = f20;
                            GL11.glColor4f(f22, f21, f17, f18);
                            f3 = f21;
                            f4 = f22;
                            this.f.a(f9, f12, fC, f11, f7, 0.0625f);
                        } else {
                            f3 = f19;
                            f4 = f20;
                        }
                        i6++;
                        f19 = f3;
                        f20 = f4;
                    }
                }
                GL11.glDepthFunc(515);
                GL11.glDisable(3042);
                GL11.glEnable(3008);
                GL11.glEnable(3553);
                i2 = 32826;
            } else {
                i2 = 32826;
            }
            GL11.glDisable(i2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        GL11.glEnable(2884);
        GL11.glPopMatrix();
        a(lsVar, d, d2, d3);
    }

    protected void b(ls lsVar, double d, double d2, double d3) {
        GL11.glTranslatef((float) d, (float) d2, (float) d3);
    }

    protected void a(ls lsVar, float f, float f2, float f3) {
        GL11.glRotatef(180.0f - f2, 0.0f, 1.0f, 0.0f);
        if (lsVar.ad > 0) {
            float fC = in.c((((lsVar.ad + f3) - 1.0f) / 20.0f) * 1.6f);
            if (fC > 1.0f) {
                fC = 1.0f;
            }
            GL11.glRotatef(fC * a(lsVar), 0.0f, 0.0f, 1.0f);
        }
    }

    protected float d(ls lsVar, float f) {
        return lsVar.d(f);
    }

    protected float c(ls lsVar, float f) {
        return lsVar.bt + f;
    }

    protected boolean b(ls lsVar, int i, float f) {
        return a(lsVar, i, f);
    }

    protected void a(ls lsVar, double d, double d2, double d3) {
        if (Minecraft.w()) {
            a(lsVar, Integer.toString(lsVar.aD), d, d2, d3, 64);
        }
    }

    protected void a(ls lsVar, String str, double d, double d2, double d3, int i) {
        if (lsVar.f(this.b.h) > i) {
            return;
        }
        sj sjVarA = a();
        GL11.glPushMatrix();
        GL11.glTranslatef(((float) d) + 0.0f, ((float) d2) + 2.3f, (float) d3);
        GL11.glNormal3f(0.0f, 1.0f, 0.0f);
        GL11.glRotatef(-this.b.i, 0.0f, 1.0f, 0.0f);
        GL11.glRotatef(this.b.j, 1.0f, 0.0f, 0.0f);
        GL11.glScalef(-0.02666667f, -0.02666667f, 0.02666667f);
        GL11.glDisable(2896);
        GL11.glDepthMask(false);
        GL11.glDisable(2929);
        GL11.glEnable(3042);
        GL11.glBlendFunc(770, 771);
        nw nwVar = nw.a;
        int i2 = str.equals("deadmau5") ? -10 : 0;
        GL11.glDisable(3553);
        nwVar.b();
        int iA = sjVarA.a(str) / 2;
        nwVar.a(0.0f, 0.0f, 0.0f, 0.25f);
        double d4 = (-iA) - 1;
        double d5 = i2 - 1;
        nwVar.a(d4, d5, 0.0d);
        double d6 = i2 + 8;
        nwVar.a(d4, d6, 0.0d);
        double d7 = iA + 1;
        nwVar.a(d7, d6, 0.0d);
        nwVar.a(d7, d5, 0.0d);
        nwVar.a();
        GL11.glEnable(3553);
        sjVarA.b(str, (-sjVarA.a(str)) / 2, i2, 553648127);
        GL11.glEnable(2929);
        GL11.glDepthMask(true);
        sjVarA.b(str, (-sjVarA.a(str)) / 2, i2, -1);
        GL11.glEnable(2896);
        GL11.glDisable(3042);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        GL11.glPopMatrix();
    }
}
