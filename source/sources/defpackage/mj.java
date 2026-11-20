package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class mj extends gv {
    private ko a;

    public mj(ko koVar, ko koVar2, float f) {
        super(koVar, f);
        this.a = koVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public boolean a(uw uwVar, int i, float f) {
        if (i == 0) {
            a(this.a);
            GL11.glEnable(2977);
            GL11.glEnable(3042);
            GL11.glBlendFunc(770, 771);
            return true;
        }
        if (i != 1) {
            return false;
        }
        GL11.glDisable(3042);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public void a(uw uwVar, float f) {
        int iV = uwVar.v();
        float f2 = uwVar.b + ((uwVar.a - uwVar.b) * f);
        float f3 = iV;
        float f4 = 1.0f / ((f2 / ((0.5f * f3) + 1.0f)) + 1.0f);
        float f5 = f4 * f3;
        GL11.glScalef(f5, (1.0f / f4) * f3, f5);
    }
}
