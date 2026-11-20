package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class kl extends bw {
    @Override // defpackage.bw
    public void a(cf cfVar, double d, double d2, double d3, float f, float f2) {
        GL11.glPushMatrix();
        GL11.glTranslatef((float) d, (float) d2, (float) d3);
        GL11.glEnable(32826);
        GL11.glScalef(2.0f, 2.0f, 2.0f);
        int iA = gm.aB.a(0);
        a("/gui/items.png");
        nw nwVar = nw.a;
        int i = (iA % 16) * 16;
        int i2 = (iA / 16) * 16;
        GL11.glRotatef(180.0f - this.b.i, 0.0f, 1.0f, 0.0f);
        GL11.glRotatef(-this.b.j, 1.0f, 0.0f, 0.0f);
        nwVar.b();
        nwVar.b(0.0f, 1.0f, 0.0f);
        double d4 = -0.5f;
        double d5 = -0.25f;
        double d6 = (i + 0) / 256.0f;
        double d7 = (i2 + 16) / 256.0f;
        nwVar.a(d4, d5, 0.0d, d6, d7);
        double d8 = 0.5f;
        double d9 = (i + 16) / 256.0f;
        nwVar.a(d8, d5, 0.0d, d9, d7);
        double d10 = 0.75f;
        double d11 = (i2 + 0) / 256.0f;
        nwVar.a(d8, d10, 0.0d, d9, d11);
        nwVar.a(d4, d10, 0.0d, d6, d11);
        nwVar.a();
        GL11.glDisable(32826);
        GL11.glPopMatrix();
    }
}
