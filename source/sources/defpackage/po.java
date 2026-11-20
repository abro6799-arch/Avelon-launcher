package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class po extends je {
    private rf b = new rf();

    @Override // defpackage.je
    public void a(yk ykVar, double d, double d2, double d3, float f) {
        uu uuVarF = ykVar.f();
        GL11.glPushMatrix();
        if (uuVarF == uu.aE) {
            GL11.glTranslatef(((float) d) + 0.5f, ((float) d2) + 0.5f, ((float) d3) + 0.5f);
            GL11.glRotatef(-((ykVar.e() * 360) / 16.0f), 0.0f, 1.0f, 0.0f);
            this.b.b.h = true;
        } else {
            int iE = ykVar.e();
            float f2 = iE == 2 ? 180.0f : 0.0f;
            if (iE == 4) {
                f2 = 90.0f;
            }
            if (iE == 5) {
                f2 = -90.0f;
            }
            GL11.glTranslatef(((float) d) + 0.5f, ((float) d2) + 0.5f, ((float) d3) + 0.5f);
            GL11.glRotatef(-f2, 0.0f, 1.0f, 0.0f);
            GL11.glTranslatef(0.0f, -0.3125f, -0.4375f);
            this.b.b.h = false;
        }
        a("/item/sign.png");
        GL11.glPushMatrix();
        GL11.glScalef(0.6666667f, -0.6666667f, -0.6666667f);
        this.b.a();
        GL11.glPopMatrix();
        sj sjVarA = a();
        GL11.glTranslatef(0.0f, 0.33333334f, 0.046666667f);
        GL11.glScalef(0.011111112f, -0.011111112f, 0.011111112f);
        GL11.glNormal3f(0.0f, 0.0f, -0.011111112f);
        GL11.glDepthMask(false);
        for (int i = 0; i < ykVar.a.length; i++) {
            String str = ykVar.a[i];
            if (i == ykVar.b) {
                String str2 = "> " + str + " <";
                sjVarA.b(str2, (-sjVarA.a(str2)) / 2, (i * 10) - (ykVar.a.length * 5), 0);
            } else {
                sjVarA.b(str, (-sjVarA.a(str)) / 2, (i * 10) - (ykVar.a.length * 5), 0);
            }
        }
        GL11.glDepthMask(true);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        GL11.glPopMatrix();
    }
}
