package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class yx extends gv {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public float a(cn cnVar) {
        return 180.0f;
    }

    public yx() {
        super(new sc(), 1.0f);
        a(new sc());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public boolean a(cn cnVar, int i, float f) {
        if (i != 0 || i != 0) {
            return false;
        }
        a("/mob/spider_eyes.png");
        float fA = (1.0f - cnVar.a(1.0f)) * 0.5f;
        GL11.glEnable(3042);
        GL11.glDisable(3008);
        GL11.glBlendFunc(770, 771);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, fA);
        return true;
    }
}
