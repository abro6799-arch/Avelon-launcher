package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class gn extends bw {
    private cv a = new cv();

    public gn() {
        this.c = 0.5f;
    }

    @Override // defpackage.bw
    public void a(ju juVar, double d, double d2, double d3, float f, float f2) {
        GL11.glPushMatrix();
        GL11.glTranslatef((float) d, (float) d2, (float) d3);
        a("/terrain.png");
        uu uuVar = uu.m[juVar.a];
        fd fdVarK = juVar.k();
        GL11.glDisable(2896);
        this.a.a(uuVar, fdVarK, in.b(juVar.aM), in.b(juVar.aN), in.b(juVar.aO));
        GL11.glEnable(2896);
        GL11.glPopMatrix();
    }
}
