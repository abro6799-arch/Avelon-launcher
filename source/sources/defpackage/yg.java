package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class yg extends gv {
    private float a;

    public yg(ko koVar, float f, float f2) {
        super(koVar, f * f2);
        this.a = f2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public void a(nt ntVar, float f) {
        float f2 = this.a;
        GL11.glScalef(f2, f2, f2);
    }
}
