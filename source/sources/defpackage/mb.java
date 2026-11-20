package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class mb extends bw {
    @Override // defpackage.bw
    public void a(sn snVar, double d, double d2, double d3, float f, float f2) {
        GL11.glPushMatrix();
        a(snVar.aW, d - snVar.bl, d2 - snVar.bm, d3 - snVar.bn);
        GL11.glPopMatrix();
    }
}
