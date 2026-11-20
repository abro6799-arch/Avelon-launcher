package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class xy extends gv {
    public xy(ko koVar, ko koVar2, float f) {
        super(koVar, f);
        a(koVar2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.gv
    public boolean a(dl dlVar, int i, float f) {
        if (i != 0 || dlVar.s()) {
            return false;
        }
        a("/mob/sheep_fur.png");
        float fA = dlVar.a(f);
        int iR = dlVar.r();
        GL11.glColor3f(dl.a[iR][0] * fA, dl.a[iR][1] * fA, fA * dl.a[iR][2]);
        return true;
    }
}
