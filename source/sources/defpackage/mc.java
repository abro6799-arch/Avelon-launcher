package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class mc extends bw {
    @Override // defpackage.bw
    public void a(sl slVar, double d, double d2, double d3, float f, float f2) {
        if (slVar.aU == 0.0f && slVar.aV == 0.0f) {
            return;
        }
        a("/item/arrows.png");
        GL11.glPushMatrix();
        GL11.glTranslatef((float) d, (float) d2, (float) d3);
        GL11.glRotatef((slVar.aU + ((slVar.aS - slVar.aU) * f2)) - 90.0f, 0.0f, 1.0f, 0.0f);
        GL11.glRotatef(slVar.aV + ((slVar.aT - slVar.aV) * f2), 0.0f, 0.0f, 1.0f);
        nw nwVar = nw.a;
        float f3 = 0 / 32.0f;
        float f4 = 5 / 32.0f;
        float f5 = 10 / 32.0f;
        GL11.glEnable(32826);
        float f6 = slVar.b - f2;
        if (f6 > 0.0f) {
            GL11.glRotatef((-in.a(3.0f * f6)) * f6, 0.0f, 0.0f, 1.0f);
        }
        GL11.glRotatef(45.0f, 1.0f, 0.0f, 0.0f);
        GL11.glScalef(0.05625f, 0.05625f, 0.05625f);
        GL11.glTranslatef(-4.0f, 0.0f, 0.0f);
        GL11.glNormal3f(0.05625f, 0.0f, 0.0f);
        nwVar.b();
        double d4 = 0.0f;
        double d5 = f4;
        nwVar.a(-7.0d, -2.0d, -2.0d, d4, d5);
        double d6 = 0.15625f;
        nwVar.a(-7.0d, -2.0d, 2.0d, d6, d5);
        double d7 = f5;
        nwVar.a(-7.0d, 2.0d, 2.0d, d6, d7);
        nwVar.a(-7.0d, 2.0d, -2.0d, d4, d7);
        nwVar.a();
        GL11.glNormal3f(-0.05625f, 0.0f, 0.0f);
        nwVar.b();
        nwVar.a(-7.0d, 2.0d, -2.0d, d4, d5);
        nwVar.a(-7.0d, 2.0d, 2.0d, d6, d5);
        nwVar.a(-7.0d, -2.0d, 2.0d, d6, d7);
        nwVar.a(-7.0d, -2.0d, -2.0d, d4, d7);
        nwVar.a();
        for (int i = 0; i < 4; i++) {
            GL11.glRotatef(90.0f, 1.0f, 0.0f, 0.0f);
            GL11.glNormal3f(0.0f, 0.0f, 0.05625f);
            nwVar.b();
            double d8 = f3;
            nwVar.a(-8.0d, -2.0d, 0.0d, d4, d8);
            double d9 = 0.5f;
            nwVar.a(8.0d, -2.0d, 0.0d, d9, d8);
            nwVar.a(8.0d, 2.0d, 0.0d, d9, d5);
            nwVar.a(-8.0d, 2.0d, 0.0d, d4, d5);
            nwVar.a();
        }
        GL11.glDisable(32826);
        GL11.glPopMatrix();
    }
}
