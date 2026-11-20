package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class fe extends bw {
    protected ko a;

    public fe() {
        this.c = 0.5f;
        this.a = new ez();
    }

    @Override // defpackage.bw
    public void a(fz fzVar, double d, double d2, double d3, float f, float f2) {
        GL11.glPushMatrix();
        GL11.glTranslatef((float) d, (float) d2, (float) d3);
        GL11.glRotatef(180.0f - f, 0.0f, 1.0f, 0.0f);
        float f3 = fzVar.b - f2;
        float f4 = fzVar.a - f2;
        if (f4 < 0.0f) {
            f4 = 0.0f;
        }
        if (f3 > 0.0f) {
            GL11.glRotatef((((in.a(f3) * f3) * f4) / 10.0f) * fzVar.c, 1.0f, 0.0f, 0.0f);
        }
        a("/terrain.png");
        GL11.glScalef(0.75f, 0.75f, 0.75f);
        GL11.glScalef(1.3333334f, 1.3333334f, 1.3333334f);
        a("/item/boat.png");
        GL11.glScalef(-1.0f, -1.0f, 1.0f);
        this.a.a(0.0f, 0.0f, -0.1f, 0.0f, 0.0f, 0.0625f);
        GL11.glPopMatrix();
    }
}
