package defpackage;

import net.minecraft.client.Minecraft;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class ra {
    private Minecraft a;
    private iy f;
    private iz b = null;
    private float c = 0.0f;
    private float d = 0.0f;
    private cv e = new cv();
    private int g = -1;

    public ra(Minecraft minecraft) {
        this.a = minecraft;
        this.f = new iy(minecraft.q, minecraft.z, minecraft.p);
    }

    public void a(ls lsVar, iz izVar) {
        GL11.glPushMatrix();
        if (izVar.c < 256 && cv.a(uu.m[izVar.c].b())) {
            GL11.glBindTexture(3553, this.a.p.b("/terrain.png"));
            this.e.a(uu.m[izVar.c], izVar.i(), lsVar.a(1.0f));
        } else {
            if (izVar.c < 256) {
                GL11.glBindTexture(3553, this.a.p.b("/terrain.png"));
            } else {
                GL11.glBindTexture(3553, this.a.p.b("/gui/items.png"));
            }
            nw nwVar = nw.a;
            int iC = lsVar.c(izVar);
            float f = (iC % 16) * 16;
            float f2 = (f + 0.0f) / 256.0f;
            float f3 = (f + 15.99f) / 256.0f;
            float f4 = (iC / 16) * 16;
            float f5 = (f4 + 0.0f) / 256.0f;
            float f6 = (f4 + 15.99f) / 256.0f;
            GL11.glEnable(32826);
            GL11.glTranslatef(-0.0f, -0.3f, 0.0f);
            GL11.glScalef(1.5f, 1.5f, 1.5f);
            GL11.glRotatef(50.0f, 0.0f, 1.0f, 0.0f);
            GL11.glRotatef(335.0f, 0.0f, 0.0f, 1.0f);
            GL11.glTranslatef(-0.9375f, -0.0625f, 0.0f);
            nwVar.b();
            nwVar.b(0.0f, 0.0f, 1.0f);
            double d = f3;
            double d2 = f6;
            nwVar.a(0.0d, 0.0d, 0.0d, d, d2);
            double d3 = 1.0f;
            double d4 = f2;
            nwVar.a(d3, 0.0d, 0.0d, d4, d2);
            double d5 = f5;
            nwVar.a(d3, 1.0d, 0.0d, d4, d5);
            nwVar.a(0.0d, 1.0d, 0.0d, d, d5);
            nwVar.a();
            nwVar.b();
            nwVar.b(0.0f, 0.0f, -1.0f);
            double d6 = -0.0625f;
            nwVar.a(0.0d, 1.0d, d6, d, d5);
            nwVar.a(d3, 1.0d, d6, d4, d5);
            nwVar.a(d3, 0.0d, d6, d4, d2);
            nwVar.a(0.0d, 0.0d, d6, d, d2);
            nwVar.a();
            nwVar.b();
            nwVar.b(-1.0f, 0.0f, 0.0f);
            for (int i = 0; i < 16; i++) {
                float f7 = i / 16.0f;
                double d7 = f7 * 1.0f;
                double d8 = (((f2 - f3) * f7) + f3) - 0.001953125f;
                nwVar.a(d7, 0.0d, d6, d8, d2);
                nwVar.a(d7, 0.0d, 0.0d, d8, d2);
                nwVar.a(d7, 1.0d, 0.0d, d8, d5);
                nwVar.a(d7, 1.0d, d6, d8, d5);
            }
            nwVar.a();
            nwVar.b();
            float f8 = 1.0f;
            nwVar.b(1.0f, 0.0f, 0.0f);
            int i2 = 0;
            while (i2 < 16) {
                float f9 = i2 / 16.0f;
                double d9 = (f9 * f8) + 0.0625f;
                double d10 = (((f2 - f3) * f9) + f3) - 0.001953125f;
                nwVar.a(d9, 1.0d, d6, d10, d5);
                nwVar.a(d9, 1.0d, 0.0d, d10, d5);
                nwVar.a(d9, 0.0d, 0.0d, d10, d2);
                nwVar.a(d9, 0.0d, d6, d10, d2);
                i2++;
                f8 = 1.0f;
            }
            nwVar.a();
            nwVar.b();
            float f10 = 1.0f;
            nwVar.b(0.0f, 1.0f, 0.0f);
            int i3 = 0;
            while (i3 < 16) {
                float f11 = i3 / 16.0f;
                double d11 = (f11 * f10) + 0.0625f;
                double d12 = (f6 + ((f5 - f6) * f11)) - 0.001953125f;
                nwVar.a(0.0d, d11, 0.0d, d, d12);
                nwVar.a(d3, d11, 0.0d, d4, d12);
                nwVar.a(d3, d11, d6, d4, d12);
                nwVar.a(0.0d, d11, d6, d, d12);
                i3++;
                f10 = 1.0f;
            }
            nwVar.a();
            nwVar.b();
            nwVar.b(0.0f, -1.0f, 0.0f);
            for (int i4 = 0; i4 < 16; i4++) {
                float f12 = i4 / 16.0f;
                double d13 = f12 * 1.0f;
                double d14 = (f6 + ((f5 - f6) * f12)) - 0.001953125f;
                nwVar.a(d3, d13, 0.0d, d4, d14);
                nwVar.a(0.0d, d13, 0.0d, d, d14);
                nwVar.a(0.0d, d13, d6, d, d14);
                nwVar.a(d3, d13, d6, d4, d14);
            }
            nwVar.a();
            GL11.glDisable(32826);
        }
        GL11.glPopMatrix();
    }

    public void a(float f) {
        float f2 = this.d;
        float f3 = f2 + ((this.c - f2) * f);
        dc dcVar = this.a.h;
        float f4 = dcVar.aV + ((dcVar.aT - dcVar.aV) * f);
        GL11.glPushMatrix();
        GL11.glRotatef(f4, 1.0f, 0.0f, 0.0f);
        GL11.glRotatef(dcVar.aU + ((dcVar.aS - dcVar.aU) * f), 0.0f, 1.0f, 0.0f);
        u.b();
        GL11.glPopMatrix();
        iz izVar = this.b;
        float fC = this.a.f.c(in.b(dcVar.aM), in.b(dcVar.aN), in.b(dcVar.aO));
        if (izVar != null) {
            int iF = gm.c[izVar.c].f(izVar.i());
            GL11.glColor4f((((iF >> 16) & 255) / 255.0f) * fC, (((iF >> 8) & 255) / 255.0f) * fC, fC * ((iF & 255) / 255.0f), 1.0f);
        } else {
            GL11.glColor4f(fC, fC, fC, 1.0f);
        }
        if (izVar != null && izVar.c == gm.bb.bf) {
            GL11.glPushMatrix();
            float fD = dcVar.d(f);
            GL11.glTranslatef((-in.a(in.c(fD) * 3.1415927f)) * 0.4f, in.a(in.c(fD) * 3.1415927f * 2.0f) * 0.2f, (-in.a(fD * 3.1415927f)) * 0.2f);
            float f5 = (1.0f - (f4 / 45.0f)) + 0.1f;
            if (f5 < 0.0f) {
                f5 = 0.0f;
            }
            if (f5 > 1.0f) {
                f5 = 1.0f;
            }
            float f6 = ((-in.b(f5 * 3.1415927f)) * 0.5f) + 0.5f;
            GL11.glTranslatef(0.0f, ((0.0f - ((1.0f - f3) * 1.2f)) - (0.5f * f6)) + 0.04f, -0.71999997f);
            GL11.glRotatef(90.0f, 0.0f, 1.0f, 0.0f);
            GL11.glRotatef(f6 * (-85.0f), 0.0f, 0.0f, 1.0f);
            GL11.glEnable(32826);
            GL11.glBindTexture(3553, this.a.p.a(this.a.h.bA, this.a.h.q_()));
            for (int i = 0; i < 2; i++) {
                int i2 = (i * 2) - 1;
                GL11.glPushMatrix();
                GL11.glTranslatef(-0.0f, -0.6f, i2 * 1.1f);
                GL11.glRotatef(i2 * (-45), 1.0f, 0.0f, 0.0f);
                GL11.glRotatef(-90.0f, 0.0f, 0.0f, 1.0f);
                GL11.glRotatef(59.0f, 0.0f, 0.0f, 1.0f);
                GL11.glRotatef(i2 * (-65), 0.0f, 1.0f, 0.0f);
                ds dsVar = (ds) th.a.a(this.a.h);
                GL11.glScalef(1.0f, 1.0f, 1.0f);
                dsVar.b();
                GL11.glPopMatrix();
            }
            float fD2 = dcVar.d(f);
            float fA = in.a(fD2 * fD2 * 3.1415927f);
            float fA2 = in.a(in.c(fD2) * 3.1415927f);
            GL11.glRotatef((-fA) * 20.0f, 0.0f, 1.0f, 0.0f);
            float f7 = -fA2;
            GL11.glRotatef(f7 * 20.0f, 0.0f, 0.0f, 1.0f);
            GL11.glRotatef(f7 * 80.0f, 1.0f, 0.0f, 0.0f);
            GL11.glScalef(0.38f, 0.38f, 0.38f);
            GL11.glRotatef(90.0f, 0.0f, 1.0f, 0.0f);
            GL11.glRotatef(180.0f, 0.0f, 0.0f, 1.0f);
            GL11.glTranslatef(-1.0f, -1.0f, 0.0f);
            GL11.glScalef(0.015625f, 0.015625f, 0.015625f);
            this.a.p.b(this.a.p.b("/misc/mapbg.png"));
            nw nwVar = nw.a;
            GL11.glNormal3f(0.0f, 0.0f, -1.0f);
            nwVar.b();
            double d = -7;
            double d2 = 135;
            nwVar.a(d, d2, 0.0d, 0.0d, 1.0d);
            nwVar.a(d2, d2, 0.0d, 1.0d, 1.0d);
            nwVar.a(d2, d, 0.0d, 1.0d, 0.0d);
            nwVar.a(d, d, 0.0d, 0.0d, 0.0d);
            nwVar.a();
            this.f.a(this.a.h, this.a.p, gm.bb.a(izVar, this.a.f));
            GL11.glPopMatrix();
        } else if (izVar != null) {
            GL11.glPushMatrix();
            float fD3 = dcVar.d(f);
            GL11.glTranslatef((-in.a(in.c(fD3) * 3.1415927f)) * 0.4f, in.a(in.c(fD3) * 3.1415927f * 2.0f) * 0.2f, (-in.a(fD3 * 3.1415927f)) * 0.2f);
            GL11.glTranslatef(0.56f, (-0.52f) - ((1.0f - f3) * 0.6f), -0.71999997f);
            GL11.glRotatef(45.0f, 0.0f, 1.0f, 0.0f);
            GL11.glEnable(32826);
            float fD4 = dcVar.d(f);
            float fA3 = in.a(fD4 * fD4 * 3.1415927f);
            float fA4 = in.a(in.c(fD4) * 3.1415927f);
            GL11.glRotatef((-fA3) * 20.0f, 0.0f, 1.0f, 0.0f);
            float f8 = -fA4;
            GL11.glRotatef(f8 * 20.0f, 0.0f, 0.0f, 1.0f);
            GL11.glRotatef(f8 * 80.0f, 1.0f, 0.0f, 0.0f);
            GL11.glScalef(0.4f, 0.4f, 0.4f);
            if (izVar.a().c()) {
                GL11.glRotatef(180.0f, 0.0f, 1.0f, 0.0f);
            }
            a(dcVar, izVar);
            GL11.glPopMatrix();
        } else {
            GL11.glPushMatrix();
            float fD5 = dcVar.d(f);
            GL11.glTranslatef((-in.a(in.c(fD5) * 3.1415927f)) * 0.3f, in.a(in.c(fD5) * 3.1415927f * 2.0f) * 0.4f, (-in.a(fD5 * 3.1415927f)) * 0.4f);
            GL11.glTranslatef(0.64000005f, (-0.6f) - ((1.0f - f3) * 0.6f), -0.71999997f);
            GL11.glRotatef(45.0f, 0.0f, 1.0f, 0.0f);
            GL11.glEnable(32826);
            float fD6 = dcVar.d(f);
            float fA5 = in.a(fD6 * fD6 * 3.1415927f);
            GL11.glRotatef(in.a(in.c(fD6) * 3.1415927f) * 70.0f, 0.0f, 1.0f, 0.0f);
            GL11.glRotatef((-fA5) * 20.0f, 0.0f, 0.0f, 1.0f);
            GL11.glBindTexture(3553, this.a.p.a(this.a.h.bA, this.a.h.q_()));
            GL11.glTranslatef(-1.0f, 3.6f, 3.5f);
            GL11.glRotatef(120.0f, 0.0f, 0.0f, 1.0f);
            GL11.glRotatef(200.0f, 1.0f, 0.0f, 0.0f);
            GL11.glRotatef(-135.0f, 0.0f, 1.0f, 0.0f);
            GL11.glScalef(1.0f, 1.0f, 1.0f);
            GL11.glTranslatef(5.6f, 0.0f, 0.0f);
            ds dsVar2 = (ds) th.a.a(this.a.h);
            GL11.glScalef(1.0f, 1.0f, 1.0f);
            dsVar2.b();
            GL11.glPopMatrix();
        }
        GL11.glDisable(32826);
        u.a();
    }

    public void b(float f) {
        GL11.glDisable(3008);
        if (this.a.h.ak()) {
            GL11.glBindTexture(3553, this.a.p.b("/terrain.png"));
            d(f);
        }
        if (this.a.h.L()) {
            int iB = in.b(this.a.h.aM);
            int iB2 = in.b(this.a.h.aN);
            int iB3 = in.b(this.a.h.aO);
            GL11.glBindTexture(3553, this.a.p.b("/terrain.png"));
            int iA = this.a.f.a(iB, iB2, iB3);
            if (this.a.f.h(iB, iB2, iB3)) {
                a(f, uu.m[iA].a(2));
            } else {
                for (int i = 0; i < 8; i++) {
                    float f2 = (((i >> 0) % 2) - 0.5f) * this.a.h.bg * 0.9f;
                    float f3 = (((i >> 1) % 2) - 0.5f) * this.a.h.bh * 0.2f;
                    float f4 = (((i >> 2) % 2) - 0.5f) * this.a.h.bg * 0.9f;
                    int iD = in.d(iB + f2);
                    int iD2 = in.d(iB2 + f3);
                    int iD3 = in.d(iB3 + f4);
                    if (this.a.f.h(iD, iD2, iD3)) {
                        iA = this.a.f.a(iD, iD2, iD3);
                    }
                }
            }
            if (uu.m[iA] != null) {
                a(f, uu.m[iA].a(2));
            }
        }
        if (this.a.h.a(ln.g)) {
            GL11.glBindTexture(3553, this.a.p.b("/misc/water.png"));
            c(f);
        }
        GL11.glEnable(3008);
    }

    private void a(float f, int i) {
        nw nwVar = nw.a;
        this.a.h.a(f);
        GL11.glColor4f(0.1f, 0.1f, 0.1f, 0.5f);
        GL11.glPushMatrix();
        float f2 = i % 16;
        float f3 = i / 16;
        nwVar.b();
        double d = -1.0f;
        double d2 = -0.5f;
        double d3 = ((f2 + 15.99f) / 256.0f) + 0.0078125f;
        double d4 = ((f3 + 15.99f) / 256.0f) + 0.0078125f;
        nwVar.a(d, d, d2, d3, d4);
        double d5 = 1.0f;
        double d6 = (f2 / 256.0f) - 0.0078125f;
        nwVar.a(d5, d, d2, d6, d4);
        double d7 = (f3 / 256.0f) - 0.0078125f;
        nwVar.a(d5, d5, d2, d6, d7);
        nwVar.a(d, d5, d2, d3, d7);
        nwVar.a();
        GL11.glPopMatrix();
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
    }

    private void c(float f) {
        nw nwVar = nw.a;
        float fA = this.a.h.a(f);
        GL11.glColor4f(fA, fA, fA, 0.5f);
        GL11.glEnable(3042);
        GL11.glBlendFunc(770, 771);
        GL11.glPushMatrix();
        float f2 = (-this.a.h.aS) / 64.0f;
        float f3 = this.a.h.aT / 64.0f;
        nwVar.b();
        double d = -1.0f;
        double d2 = -0.5f;
        double d3 = f2 + 4.0f;
        double d4 = 4.0f + f3;
        nwVar.a(d, d, d2, d3, d4);
        double d5 = 1.0f;
        double d6 = f2 + 0.0f;
        nwVar.a(d5, d, d2, d6, d4);
        double d7 = f3 + 0.0f;
        nwVar.a(d5, d5, d2, d6, d7);
        nwVar.a(d, d5, d2, d3, d7);
        nwVar.a();
        GL11.glPopMatrix();
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        GL11.glDisable(3042);
    }

    private void d(float f) {
        nw nwVar = nw.a;
        float f2 = 1.0f;
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 0.9f);
        GL11.glEnable(3042);
        GL11.glBlendFunc(770, 771);
        int i = 0;
        while (i < 2) {
            GL11.glPushMatrix();
            int i2 = uu.as.bm + (i * 16);
            float f3 = (i2 & 15) << 4;
            float f4 = f3 / 256.0f;
            float f5 = i2 & 240;
            int i3 = (i * 2) - 1;
            GL11.glTranslatef((-i3) * 0.24f, -0.3f, 0.0f);
            GL11.glRotatef(i3 * 10.0f, 0.0f, f2, 0.0f);
            nwVar.b();
            double d = -0.5f;
            double d2 = -0.5f;
            double d3 = -0.5f;
            double d4 = (f3 + 15.99f) / 256.0f;
            double d5 = (f5 + 15.99f) / 256.0f;
            int i4 = i;
            nwVar.a(d, d2, d3, d4, d5);
            double d6 = 0.5f;
            double d7 = f4;
            nwVar.a(d6, d2, d3, d7, d5);
            double d8 = 0.5f;
            double d9 = f5 / 256.0f;
            nwVar.a(d6, d8, d3, d7, d9);
            nwVar.a(d, d8, d3, d4, d9);
            nwVar.a();
            GL11.glPopMatrix();
            i = i4 + 1;
            f2 = 1.0f;
        }
        float f6 = f2;
        GL11.glColor4f(f6, f6, f6, f6);
        GL11.glDisable(3042);
    }

    public void a() {
        this.d = this.c;
        dc dcVar = this.a.h;
        iz izVarB = ((gs) dcVar).c.b();
        boolean z = true;
        boolean z2 = this.g == ((gs) dcVar).c.c && izVarB == this.b;
        iz izVar = this.b;
        if (izVar == null && izVarB == null) {
            z2 = true;
        }
        if (izVarB == null || izVar == null || izVarB == izVar || izVarB.c != this.b.c || izVarB.i() != this.b.i()) {
            z = z2;
        } else {
            this.b = izVarB;
        }
        float f = z ? 1.0f : 0.0f;
        float f2 = this.c;
        float f3 = f - f2;
        if (f3 < -0.4f) {
            f3 = -0.4f;
        }
        if (f3 > 0.4f) {
            f3 = 0.4f;
        }
        float f4 = f2 + f3;
        this.c = f4;
        if (f4 < 0.1f) {
            this.b = izVarB;
            this.g = ((gs) dcVar).c.c;
        }
    }

    public void b() {
        this.c = 0.0f;
    }

    public void c() {
        this.c = 0.0f;
    }
}
