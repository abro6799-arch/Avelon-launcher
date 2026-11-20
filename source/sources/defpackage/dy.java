package defpackage;

import java.util.Random;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class dy extends bw {
    private Random a = new Random();

    @Override // defpackage.bw
    public void a(qv qvVar, double d, double d2, double d3, float f, float f2) {
        this.a.setSeed(187L);
        GL11.glPushMatrix();
        GL11.glTranslatef((float) d, (float) d2, (float) d3);
        GL11.glRotatef(f, 0.0f, 1.0f, 0.0f);
        GL11.glEnable(32826);
        a("/art/kz.png");
        iq iqVar = qvVar.e;
        GL11.glScalef(0.0625f, 0.0625f, 0.0625f);
        a(qvVar, iqVar.B, iqVar.C, iqVar.D, iqVar.E);
        GL11.glDisable(32826);
        GL11.glPopMatrix();
    }

    private void a(qv qvVar, int i, int i2, int i3, int i4) {
        int i5 = i;
        int i6 = i2;
        float f = 2.0f;
        float f2 = (-i5) / 2.0f;
        float f3 = (-i6) / 2.0f;
        int i7 = 0;
        while (i7 < i5 / 16) {
            int i8 = 0;
            while (i8 < i6 / 16) {
                int i9 = (i7 + 1) * 16;
                float f4 = i9 + f2;
                int i10 = i7 * 16;
                float f5 = i10 + f2;
                int i11 = i8 + 1;
                int i12 = i11 * 16;
                float f6 = i12 + f3;
                int i13 = i8 * 16;
                float f7 = i13 + f3;
                float f8 = f2;
                a(qvVar, (f4 + f5) / f, (f6 + f7) / f);
                int i14 = i3 + i5;
                float f9 = (i14 - i10) / 256.0f;
                float f10 = (i14 - i9) / 256.0f;
                int i15 = i4 + i6;
                float f11 = (i15 - i13) / 256.0f;
                float f12 = (i15 - i12) / 256.0f;
                nw nwVar = nw.a;
                nwVar.b();
                nwVar.b(0.0f, 0.0f, -1.0f);
                double d = f4;
                double d2 = f7;
                double d3 = -0.5f;
                double d4 = f10;
                int i16 = i7;
                double d5 = f11;
                nwVar.a(d, d2, d3, d4, d5);
                double d6 = f5;
                double d7 = f9;
                nwVar.a(d6, d2, d3, d7, d5);
                double d8 = f6;
                double d9 = f12;
                nwVar.a(d6, d8, d3, d7, d9);
                nwVar.a(d, d8, d3, d4, d9);
                nwVar.b(0.0f, 0.0f, 1.0f);
                double d10 = 0.5f;
                double d11 = 0.75f;
                double d12 = 0.0f;
                nwVar.a(d, d8, d10, d11, d12);
                double d13 = 0.8125f;
                nwVar.a(d6, d8, d10, d13, d12);
                double d14 = 0.0625f;
                nwVar.a(d6, d2, d10, d13, d14);
                nwVar.a(d, d2, d10, d11, d14);
                nwVar.b(0.0f, -1.0f, 0.0f);
                double d15 = 0.001953125f;
                nwVar.a(d, d8, d3, d11, d15);
                nwVar.a(d6, d8, d3, d13, d15);
                nwVar.a(d6, d8, d10, d13, d15);
                nwVar.a(d, d8, d10, d11, d15);
                nwVar.b(0.0f, 1.0f, 0.0f);
                nwVar.a(d, d2, d10, d11, d15);
                nwVar.a(d6, d2, d10, d13, d15);
                nwVar.a(d6, d2, d3, d13, d15);
                nwVar.a(d, d2, d3, d11, d15);
                nwVar.b(-1.0f, 0.0f, 0.0f);
                double d16 = 0.7519531f;
                nwVar.a(d, d8, d10, d16, d12);
                nwVar.a(d, d2, d10, d16, d14);
                nwVar.a(d, d2, d3, d16, d14);
                nwVar.a(d, d8, d3, d16, d12);
                nwVar.b(1.0f, 0.0f, 0.0f);
                nwVar.a(d6, d8, d3, d16, d12);
                nwVar.a(d6, d2, d3, d16, d14);
                nwVar.a(d6, d2, d10, d16, d14);
                nwVar.a(d6, d8, d10, d16, d12);
                nwVar.a();
                i5 = i;
                i6 = i2;
                i7 = i16;
                f2 = f8;
                f3 = f3;
                i8 = i11;
                f = 2.0f;
            }
            i7++;
            i5 = i;
            i6 = i2;
            f3 = f3;
            f = 2.0f;
        }
    }

    private void a(qv qvVar, float f, float f2) {
        int iB = in.b(qvVar.aM);
        int iB2 = in.b(qvVar.aN + ((double) (f2 / 16.0f)));
        int iB3 = in.b(qvVar.aO);
        if (qvVar.a == 0) {
            iB = in.b(qvVar.aM + ((double) (f / 16.0f)));
        }
        if (qvVar.a == 1) {
            iB3 = in.b(qvVar.aO - ((double) (f / 16.0f)));
        }
        if (qvVar.a == 2) {
            iB = in.b(qvVar.aM - ((double) (f / 16.0f)));
        }
        if (qvVar.a == 3) {
            iB3 = in.b(qvVar.aO + ((double) (f / 16.0f)));
        }
        float fC = this.b.g.c(iB, iB2, iB3);
        GL11.glColor3f(fC, fC, fC);
    }
}
