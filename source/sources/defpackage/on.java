package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class on extends bw {
    private cv a = new cv();

    public on() {
        this.c = 0.5f;
    }

    @Override // defpackage.bw
    public void a(qw qwVar, double d, double d2, double d3, float f, float f2) {
        GL11.glPushMatrix();
        GL11.glTranslatef((float) d, (float) d2, (float) d3);
        if ((qwVar.a - f2) + 1.0f < 10.0f) {
            float f3 = 1.0f - (((qwVar.a - f2) + 1.0f) / 10.0f);
            if (f3 < 0.0f) {
                f3 = 0.0f;
            }
            if (f3 > 1.0f) {
                f3 = 1.0f;
            }
            float f4 = f3 * f3;
            float f5 = (f4 * f4 * 0.3f) + 1.0f;
            GL11.glScalef(f5, f5, f5);
        }
        float f6 = (1.0f - (((qwVar.a - f2) + 1.0f) / 100.0f)) * 0.8f;
        a("/terrain.png");
        this.a.a(uu.an, 0, qwVar.a(f2));
        if ((qwVar.a / 5) % 2 == 0) {
            GL11.glDisable(3553);
            GL11.glDisable(2896);
            GL11.glEnable(3042);
            GL11.glBlendFunc(770, 772);
            GL11.glColor4f(1.0f, 1.0f, 1.0f, f6);
            this.a.a(uu.an, 0, 1.0f);
            GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
            GL11.glDisable(3042);
            GL11.glEnable(2896);
            GL11.glEnable(3553);
        }
        GL11.glPopMatrix();
    }
}
