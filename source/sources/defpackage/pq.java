package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class pq extends gv {
    public pq() {
        super(new lo(), 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public void a(bp bpVar, float f) {
        float f2 = (bpVar.e + ((bpVar.f - bpVar.e) * f)) / 20.0f;
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        float f3 = 1.0f / ((((((f2 * f2) * f2) * f2) * f2) * 2.0f) + 1.0f);
        float f4 = (f3 + 8.0f) / 2.0f;
        float f5 = ((1.0f / f3) + 8.0f) / 2.0f;
        GL11.glScalef(f5, f4, f5);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
    }
}
