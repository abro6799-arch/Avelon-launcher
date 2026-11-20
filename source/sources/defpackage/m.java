package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class m extends gv {
    private ko a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public boolean b(gb gbVar, int i, float f) {
        return false;
    }

    public m() {
        super(new il(), 0.5f);
        this.a = new il(2.0f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public void a(gb gbVar, float f) {
        float fA_ = gbVar.a_(f);
        float fA = (in.a(100.0f * fA_) * fA_ * 0.01f) + 1.0f;
        if (fA_ < 0.0f) {
            fA_ = 0.0f;
        }
        if (fA_ > 1.0f) {
            fA_ = 1.0f;
        }
        float f2 = fA_ * fA_;
        float f3 = f2 * f2;
        float f4 = ((0.4f * f3) + 1.0f) * fA;
        GL11.glScalef(f4, ((f3 * 0.1f) + 1.0f) / fA, f4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public int a(gb gbVar, float f, float f2) {
        float fA_ = gbVar.a_(f2);
        if (((int) (10.0f * fA_)) % 2 == 0) {
            return 0;
        }
        int i = (int) (fA_ * 0.2f * 255.0f);
        int i2 = i >= 0 ? i : 0;
        if (i2 > 255) {
            i2 = 255;
        }
        return 255 | (i2 << 24) | 16711680 | 65280;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public boolean a(gb gbVar, int i, float f) {
        if (!gbVar.s()) {
            return false;
        }
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            GL11.glMatrixMode(5890);
            GL11.glLoadIdentity();
            GL11.glMatrixMode(5888);
            GL11.glEnable(2896);
            GL11.glDisable(3042);
            return false;
        }
        float f2 = gbVar.bt + f;
        a("/armor/power.png");
        GL11.glMatrixMode(5890);
        GL11.glLoadIdentity();
        float f3 = f2 * 0.01f;
        GL11.glTranslatef(f3, f3, 0.0f);
        a(this.a);
        GL11.glMatrixMode(5888);
        GL11.glEnable(3042);
        GL11.glColor4f(0.5f, 0.5f, 0.5f, 1.0f);
        GL11.glDisable(2896);
        GL11.glBlendFunc(1, 1);
        return true;
    }
}
