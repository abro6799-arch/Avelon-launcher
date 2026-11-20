package defpackage;

import java.util.Random;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class bb extends bw {
    private cv e = new cv();
    private Random f = new Random();
    public boolean a = true;

    public bb() {
        this.c = 0.15f;
        this.d = 0.75f;
    }

    @Override // defpackage.bw
    public void a(hl hlVar, double d, double d2, double d3, float f, float f2) {
        int i;
        this.f.setSeed(187L);
        iz izVar = hlVar.a;
        GL11.glPushMatrix();
        float fA = (in.a(((hlVar.b + f2) / 10.0f) + hlVar.d) * 0.1f) + 0.1f;
        float f3 = (((hlVar.b + f2) / 20.0f) + hlVar.d) * 57.295776f;
        int i2 = hlVar.a.a > 1 ? 2 : 1;
        if (hlVar.a.a > 5) {
            i2 = 3;
        }
        if (hlVar.a.a > 20) {
            i2 = 4;
        }
        GL11.glTranslatef((float) d, ((float) d2) + fA, (float) d3);
        GL11.glEnable(32826);
        float f4 = 2.0f;
        float f5 = 0.0f;
        float f6 = 1.0f;
        if (izVar.c < 256 && cv.a(uu.m[izVar.c].b())) {
            GL11.glRotatef(f3, 0.0f, 1.0f, 0.0f);
            a("/terrain.png");
            float f7 = (uu.m[izVar.c].d() || izVar.c == uu.al.bn || uu.m[izVar.c].b() == 16) ? 0.25f : 0.5f;
            GL11.glScalef(f7, f7, f7);
            for (int i3 = 0; i3 < i2; i3++) {
                GL11.glPushMatrix();
                if (i3 > 0) {
                    GL11.glTranslatef((((this.f.nextFloat() * 2.0f) - 1.0f) * 0.2f) / f7, (((this.f.nextFloat() * 2.0f) - 1.0f) * 0.2f) / f7, (((this.f.nextFloat() * 2.0f) - 1.0f) * 0.2f) / f7);
                }
                this.e.a(uu.m[izVar.c], izVar.i(), hlVar.a(f2));
                GL11.glPopMatrix();
            }
            i = 32826;
        } else {
            GL11.glScalef(0.5f, 0.5f, 0.5f);
            int iB = izVar.b();
            if (izVar.c < 256) {
                a("/terrain.png");
            } else {
                a("/gui/items.png");
            }
            nw nwVar = nw.a;
            int i4 = (iB % 16) * 16;
            float f8 = (i4 + 0) / 256.0f;
            float f9 = (i4 + 16) / 256.0f;
            int i5 = (iB / 16) * 16;
            float f10 = (i5 + 0) / 256.0f;
            float f11 = (i5 + 16) / 256.0f;
            if (this.a) {
                int iF = gm.c[izVar.c].f(izVar.i());
                float fA2 = hlVar.a(f2);
                GL11.glColor4f((((iF >> 16) & 255) / 255.0f) * fA2, (((iF >> 8) & 255) / 255.0f) * fA2, ((iF & 255) / 255.0f) * fA2, 1.0f);
            }
            int i6 = 0;
            while (i6 < i2) {
                GL11.glPushMatrix();
                if (i6 > 0) {
                    GL11.glTranslatef(((this.f.nextFloat() * f4) - f6) * 0.3f, ((this.f.nextFloat() * f4) - f6) * 0.3f, ((this.f.nextFloat() * f4) - f6) * 0.3f);
                }
                GL11.glRotatef(180.0f - this.b.i, f5, f6, f5);
                nwVar.b();
                nwVar.b(f5, f6, f5);
                double d4 = -0.5f;
                double d5 = -0.25f;
                double d6 = f8;
                float f12 = f8;
                double d7 = f11;
                nwVar.a(d4, d5, 0.0d, d6, d7);
                double d8 = 0.5f;
                double d9 = f9;
                nwVar.a(d8, d5, 0.0d, d9, d7);
                double d10 = 0.75f;
                int i7 = i2;
                double d11 = f10;
                nwVar.a(d8, d10, 0.0d, d9, d11);
                nwVar.a(d4, d10, 0.0d, d6, d11);
                nwVar.a();
                GL11.glPopMatrix();
                i6++;
                f8 = f12;
                i2 = i7;
                f9 = f9;
                f4 = 2.0f;
                f5 = 0.0f;
                f6 = 1.0f;
            }
            i = 32826;
        }
        GL11.glDisable(i);
        GL11.glPopMatrix();
    }

    public void a(sj sjVar, ji jiVar, int i, int i2, int i3, int i4, int i5) {
        if (i < 256 && cv.a(uu.m[i].b())) {
            jiVar.b(jiVar.b("/terrain.png"));
            uu uuVar = uu.m[i];
            GL11.glPushMatrix();
            GL11.glTranslatef(i4 - 2, i5 + 3, -3.0f);
            GL11.glScalef(10.0f, 10.0f, 10.0f);
            GL11.glTranslatef(1.0f, 0.5f, 1.0f);
            GL11.glScalef(1.0f, 1.0f, -1.0f);
            GL11.glRotatef(210.0f, 1.0f, 0.0f, 0.0f);
            GL11.glRotatef(45.0f, 0.0f, 1.0f, 0.0f);
            int iF = gm.c[i].f(i2);
            float f = ((iF >> 16) & 255) / 255.0f;
            float f2 = ((iF >> 8) & 255) / 255.0f;
            float f3 = (iF & 255) / 255.0f;
            if (this.a) {
                GL11.glColor4f(f, f2, f3, 1.0f);
            }
            GL11.glRotatef(-90.0f, 0.0f, 1.0f, 0.0f);
            this.e.b = this.a;
            this.e.a(uuVar, i2, 1.0f);
            this.e.b = true;
            GL11.glPopMatrix();
        } else if (i3 >= 0) {
            GL11.glDisable(2896);
            if (i < 256) {
                jiVar.b(jiVar.b("/terrain.png"));
            } else {
                jiVar.b(jiVar.b("/gui/items.png"));
            }
            int iF2 = gm.c[i].f(i2);
            float f4 = ((iF2 >> 16) & 255) / 255.0f;
            float f5 = ((iF2 >> 8) & 255) / 255.0f;
            float f6 = (iF2 & 255) / 255.0f;
            if (this.a) {
                GL11.glColor4f(f4, f5, f6, 1.0f);
            }
            a(i4, i5, (i3 % 16) * 16, (i3 / 16) * 16, 16, 16);
            GL11.glEnable(2896);
        }
        GL11.glEnable(2884);
    }

    public void a(sj sjVar, ji jiVar, iz izVar, int i, int i2) {
        if (izVar == null) {
            return;
        }
        a(sjVar, jiVar, izVar.c, izVar.i(), izVar.b(), i, i2);
    }

    public void b(sj sjVar, ji jiVar, iz izVar, int i, int i2) {
        if (izVar == null) {
            return;
        }
        if (izVar.a > 1) {
            String str = "" + izVar.a;
            GL11.glDisable(2896);
            GL11.glDisable(2929);
            sjVar.a(str, ((i + 19) - 2) - sjVar.a(str), i2 + 6 + 3, 16777215);
            GL11.glEnable(2896);
            GL11.glEnable(2929);
        }
        if (izVar.g()) {
            int iRound = (int) Math.round(13.0d - ((((double) izVar.h()) * 13.0d) / ((double) izVar.j())));
            int iRound2 = (int) Math.round(255.0d - ((((double) izVar.h()) * 255.0d) / ((double) izVar.j())));
            GL11.glDisable(2896);
            GL11.glDisable(2929);
            GL11.glDisable(3553);
            nw nwVar = nw.a;
            int i3 = 255 - iRound2;
            int i4 = i + 2;
            int i5 = i2 + 13;
            a(nwVar, i4, i5, 13, 2, 0);
            a(nwVar, i4, i5, 12, 1, ((i3 / 4) << 16) | 16128);
            a(nwVar, i4, i5, iRound, 1, (iRound2 << 8) | (i3 << 16));
            GL11.glEnable(3553);
            GL11.glEnable(2896);
            GL11.glEnable(2929);
            GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        }
    }

    private void a(nw nwVar, int i, int i2, int i3, int i4, int i5) {
        nwVar.b();
        nwVar.b(i5);
        double d = i + 0;
        double d2 = i2 + 0;
        nwVar.a(d, d2, 0.0d);
        double d3 = i2 + i4;
        nwVar.a(d, d3, 0.0d);
        double d4 = i + i3;
        nwVar.a(d4, d3, 0.0d);
        nwVar.a(d4, d2, 0.0d);
        nwVar.a();
    }

    public void a(int i, int i2, int i3, int i4, int i5, int i6) {
        nw nwVar = nw.a;
        nwVar.b();
        double d = i + 0;
        double d2 = i2 + i6;
        double d3 = 0.0f;
        double d4 = (i3 + 0) * 0.00390625f;
        double d5 = (i4 + i6) * 0.00390625f;
        nwVar.a(d, d2, d3, d4, d5);
        double d6 = i + i5;
        double d7 = (i3 + i5) * 0.00390625f;
        nwVar.a(d6, d2, d3, d7, d5);
        double d8 = i2 + 0;
        double d9 = (i4 + 0) * 0.00390625f;
        nwVar.a(d6, d8, d3, d7, d9);
        nwVar.a(d, d8, d3, d4, d9);
        nwVar.a();
    }
}
