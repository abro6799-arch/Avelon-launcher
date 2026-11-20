package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class dg extends bw {
    private int a;

    public dg(int i) {
        this.a = i;
    }

    @Override // defpackage.bw
    public void a(sn snVar, double d, double d2, double d3, float f, float f2) {
        GL11.glPushMatrix();
        GL11.glTranslatef((float) d, (float) d2, (float) d3);
        GL11.glEnable(32826);
        GL11.glScalef(0.5f, 0.5f, 0.5f);
        a("/gui/items.png");
        nw nwVar = nw.a;
        int i = this.a;
        GL11.glRotatef(180.0f - this.b.i, 0.0f, 1.0f, 0.0f);
        GL11.glRotatef(-this.b.j, 1.0f, 0.0f, 0.0f);
        nwVar.b();
        nwVar.b(0.0f, 1.0f, 0.0f);
        double d4 = -0.5f;
        double d5 = -0.25f;
        double d6 = (((i % 16) * 16) + 0) / 256.0f;
        double d7 = (((i / 16) * 16) + 16) / 256.0f;
        nwVar.a(d4, d5, 0.0d, d6, d7);
        double d8 = 0.5f;
        double d9 = (((i % 16) * 16) + 16) / 256.0f;
        nwVar.a(d8, d5, 0.0d, d9, d7);
        double d10 = 0.75f;
        double d11 = (((i / 16) * 16) + 0) / 256.0f;
        nwVar.a(d8, d10, 0.0d, d9, d11);
        nwVar.a(d4, d10, 0.0d, d6, d11);
        nwVar.a();
        GL11.glDisable(32826);
        GL11.glPopMatrix();
    }
}
