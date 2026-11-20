package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class v extends gv {
    protected fh a;

    public v(fh fhVar, float f) {
        super(fhVar, f);
        this.a = fhVar;
    }

    @Override // defpackage.gv
    protected void b(ls lsVar, float f) {
        iz izVarR_ = lsVar.r_();
        if (izVarR_ != null) {
            GL11.glPushMatrix();
            this.a.d.c(0.0625f);
            GL11.glTranslatef(-0.0625f, 0.4375f, 0.0625f);
            if (izVarR_.c < 256 && cv.a(uu.m[izVarR_.c].b())) {
                GL11.glTranslatef(0.0f, 0.1875f, -0.3125f);
                GL11.glRotatef(20.0f, 1.0f, 0.0f, 0.0f);
                GL11.glRotatef(45.0f, 0.0f, 1.0f, 0.0f);
                GL11.glScalef(0.375f, -0.375f, 0.375f);
            } else if (gm.c[izVarR_.c].b()) {
                GL11.glTranslatef(0.0f, 0.1875f, 0.0f);
                GL11.glScalef(0.625f, -0.625f, 0.625f);
                GL11.glRotatef(-100.0f, 1.0f, 0.0f, 0.0f);
                GL11.glRotatef(45.0f, 0.0f, 1.0f, 0.0f);
            } else {
                GL11.glTranslatef(0.25f, 0.1875f, -0.1875f);
                GL11.glScalef(0.375f, 0.375f, 0.375f);
                GL11.glRotatef(60.0f, 0.0f, 0.0f, 1.0f);
                GL11.glRotatef(-90.0f, 1.0f, 0.0f, 0.0f);
                GL11.glRotatef(20.0f, 0.0f, 0.0f, 1.0f);
            }
            this.b.f.a(lsVar, izVarR_);
            GL11.glPopMatrix();
        }
    }
}
