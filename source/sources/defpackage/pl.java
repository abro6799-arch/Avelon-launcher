package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class pl extends bw {
    @Override // defpackage.bw
    public void a(lx lxVar, double d, double d2, double d3, float f, float f2) {
        double d4;
        GL11.glPushMatrix();
        GL11.glTranslatef((float) d, (float) d2, (float) d3);
        GL11.glEnable(32826);
        GL11.glScalef(0.5f, 0.5f, 0.5f);
        a("/particles.png");
        nw nwVar = nw.a;
        GL11.glRotatef(180.0f - this.b.i, 0.0f, 1.0f, 0.0f);
        GL11.glRotatef(-this.b.j, 1.0f, 0.0f, 0.0f);
        nwVar.b();
        nwVar.b(0.0f, 1.0f, 0.0f);
        double d5 = -0.5f;
        double d6 = 8 / 128.0f;
        double d7 = 24 / 128.0f;
        nwVar.a(d5, d5, 0.0d, d6, d7);
        double d8 = 0.5f;
        double d9 = 16 / 128.0f;
        nwVar.a(d8, d5, 0.0d, d9, d7);
        double d10 = 16 / 128.0f;
        nwVar.a(d8, d8, 0.0d, d9, d10);
        nwVar.a(d5, d8, 0.0d, d6, d10);
        nwVar.a();
        GL11.glDisable(32826);
        GL11.glPopMatrix();
        if (lxVar.b != null) {
            float f3 = ((lxVar.b.aU + ((lxVar.b.aS - lxVar.b.aU) * f2)) * 3.1415927f) / 180.0f;
            in.a(f3);
            in.b(f3);
            float fA = in.a(in.c(lxVar.b.d(f2)) * 3.1415927f);
            bt btVarB = bt.b(-0.5d, 0.03d, 0.8d);
            btVarB.a(((-(lxVar.b.aV + ((lxVar.b.aT - lxVar.b.aV) * f2))) * 3.1415927f) / 180.0f);
            btVarB.b(((-(lxVar.b.aU + ((lxVar.b.aS - lxVar.b.aU) * f2))) * 3.1415927f) / 180.0f);
            btVarB.b(fA * 0.5f);
            btVarB.a((-fA) * 0.7f);
            double d11 = f2;
            double d12 = lxVar.b.aJ + ((lxVar.b.aM - lxVar.b.aJ) * d11) + btVarB.a;
            double d13 = lxVar.b.aK + ((lxVar.b.aN - lxVar.b.aK) * d11) + btVarB.b;
            double d14 = lxVar.b.aL + ((lxVar.b.aO - lxVar.b.aL) * d11) + btVarB.c;
            if (this.b.k.A) {
                float f4 = ((lxVar.b.I + ((lxVar.b.H - lxVar.b.I) * f2)) * 3.1415927f) / 180.0f;
                double dA = in.a(f4);
                double dB = in.b(f4);
                double d15 = ((lxVar.b.aJ + ((lxVar.b.aM - lxVar.b.aJ) * d11)) - (dB * 0.35d)) - (dA * 0.85d);
                double d16 = (lxVar.b.aK + ((lxVar.b.aN - lxVar.b.aK) * d11)) - 0.45d;
                d14 = ((lxVar.b.aL + ((lxVar.b.aO - lxVar.b.aL) * d11)) - (dA * 0.35d)) + (dB * 0.85d);
                d4 = d15;
                d13 = d16;
            } else {
                d4 = d12;
            }
            double d17 = lxVar.aJ + ((lxVar.aM - lxVar.aJ) * d11);
            double d18 = (float) (d4 - d17);
            double d19 = (float) (d13 - ((lxVar.aK + ((lxVar.aN - lxVar.aK) * d11)) + 0.25d));
            double d20 = (float) (d14 - (lxVar.aL + ((lxVar.aO - lxVar.aL) * d11)));
            GL11.glDisable(3553);
            GL11.glDisable(2896);
            nwVar.a(3);
            nwVar.b(0);
            for (int i = 0; i <= 16; i++) {
                float f5 = i / 16;
                double d21 = f5;
                nwVar.a(d + (d18 * d21), d2 + (((double) ((f5 * f5) + f5)) * d19 * 0.5d) + 0.25d, d3 + (d21 * d20));
            }
            nwVar.a();
            GL11.glEnable(2896);
            GL11.glEnable(3553);
        }
    }
}
