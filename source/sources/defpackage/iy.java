package defpackage;

import mcshim.awt.image.BufferedImage;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class iy {
    private int[] a = new int[16384];
    private int b;
    private kv c;
    private sj d;

    public iy(sj sjVar, kv kvVar, ji jiVar) {
        this.c = kvVar;
        this.d = sjVar;
        this.b = jiVar.a(new BufferedImage(128, 128, 2));
        for (int i = 0; i < 16384; i++) {
            this.a[i] = 0;
        }
    }

    public void a(gs gsVar, ji jiVar, iu iuVar) {
        int i = 0;
        for (int i2 = 0; i2 < 16384; i2++) {
            byte b = iuVar.f[i2];
            int i3 = b / 4;
            if (i3 == 0) {
                this.a[i2] = (((((i2 / 128) + i2) & 1) * 8) + 16) << 24;
            } else {
                int i4 = dx.a[i3].p;
                int i5 = b & 3;
                int i6 = i5 == 2 ? 255 : 220;
                if (i5 == 0) {
                    i6 = 180;
                }
                int i7 = (((i4 >> 16) & 255) * i6) / 255;
                int i8 = (((i4 >> 8) & 255) * i6) / 255;
                int i9 = ((i4 & 255) * i6) / 255;
                if (this.c.g) {
                    int i10 = i7 * 30;
                    int i11 = (((i8 * 59) + i10) + (i9 * 11)) / 100;
                    i8 = ((i8 * 70) + i10) / 100;
                    i9 = (i10 + (i9 * 70)) / 100;
                    i7 = i11;
                }
                this.a[i2] = (i7 << 16) | (-16777216) | (i8 << 8) | i9;
            }
        }
        jiVar.a(this.a, 128, 128, this.b);
        nw nwVar = nw.a;
        GL11.glBindTexture(3553, this.b);
        GL11.glEnable(3042);
        GL11.glDisable(3008);
        nwVar.b();
        double d = 0 + 0.0f;
        double d2 = 128 - 0.0f;
        float f = 0.0f;
        nwVar.a(d, d2, -0.009999999776482582d, 0.0d, 1.0d);
        nwVar.a(d2, d2, -0.009999999776482582d, 1.0d, 1.0d);
        nwVar.a(d2, d, -0.009999999776482582d, 1.0d, 0.0d);
        nwVar.a(d, d, -0.009999999776482582d, 0.0d, 0.0d);
        nwVar.a();
        GL11.glEnable(3008);
        GL11.glDisable(3042);
        jiVar.b(jiVar.b("/misc/mapicons.png"));
        for (ax axVar : iuVar.i) {
            GL11.glPushMatrix();
            float f2 = i;
            GL11.glTranslatef((axVar.b / 2.0f) + f2 + 64.0f, f2 + (axVar.c / 2.0f) + 64.0f, -0.02f);
            GL11.glRotatef((axVar.d * 360) / 16.0f, f, f, 1.0f);
            GL11.glScalef(4.0f, 4.0f, 3.0f);
            GL11.glTranslatef(-0.125f, 0.125f, f);
            float f3 = ((axVar.a % 4) + i) / 4.0f;
            float f4 = ((axVar.a / 4) + i) / 4.0f;
            float f5 = ((axVar.a % 4) + 1) / 4.0f;
            float f6 = ((axVar.a / 4) + 1) / 4.0f;
            nwVar.b();
            double d3 = f3;
            double d4 = f4;
            nwVar.a(-1.0d, 1.0d, 0.0d, d3, d4);
            double d5 = f5;
            nwVar.a(1.0d, 1.0d, 0.0d, d5, d4);
            double d6 = f6;
            nwVar.a(1.0d, -1.0d, 0.0d, d5, d6);
            nwVar.a(-1.0d, -1.0d, 0.0d, d3, d6);
            nwVar.a();
            GL11.glPopMatrix();
            i = 0;
            f = 0.0f;
        }
        GL11.glPushMatrix();
        GL11.glTranslatef(0.0f, 0.0f, -0.04f);
        GL11.glScalef(1.0f, 1.0f, 1.0f);
        this.d.b(iuVar.a, 0, 0, -16777216);
        GL11.glPopMatrix();
    }
}
