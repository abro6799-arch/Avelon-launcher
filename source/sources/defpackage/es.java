package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class es extends gv {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public void a(xt xtVar, float f) {
    }

    public es(ko koVar, float f) {
        super(koVar, f);
    }

    @Override // defpackage.gv, defpackage.bw
    public void a(xt xtVar, double d, double d2, double d3, float f, float f2) {
        super.a((ls) xtVar, d, d2, d3, f, f2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public void a(xt xtVar, float f, float f2, float f3) {
        float f4 = xtVar.b + ((xtVar.a - xtVar.b) * f3);
        float f5 = xtVar.f + ((xtVar.c - xtVar.f) * f3);
        GL11.glTranslatef(0.0f, 0.5f, 0.0f);
        GL11.glRotatef(180.0f - f2, 0.0f, 1.0f, 0.0f);
        GL11.glRotatef(f4, 1.0f, 0.0f, 0.0f);
        GL11.glRotatef(f5, 0.0f, 1.0f, 0.0f);
        GL11.glTranslatef(0.0f, -1.2f, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public float c(xt xtVar, float f) {
        return xtVar.j + ((xtVar.i - xtVar.j) * f);
    }
}
