package defpackage;

import org.lwjgl.input.Keyboard;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class gl extends xw {
    private int a;
    private int o;
    private ji p;

    @Override // defpackage.xw
    public int c_() {
        return 3;
    }

    public gl(ji jiVar, fd fdVar, double d, double d2, double d3) {
        super(fdVar, d, d2, d3, 0.0d, 0.0d, 0.0d);
        this.a = 0;
        this.o = 0;
        this.p = jiVar;
        this.aR = 0.0d;
        this.aQ = 0.0d;
        this.aP = 0.0d;
        this.o = Keyboard.KEY_UP;
    }

    @Override // defpackage.xw
    public void a(nw nwVar, float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = (this.a + f) / this.o;
        float f8 = 2.0f - ((f7 * f7) * 2.0f);
        if (f8 > 1.0f) {
            f8 = 1.0f;
        }
        GL11.glDisable(2896);
        float f9 = (float) (this.aM - l);
        float f10 = (float) (this.aN - m);
        float f11 = (float) (this.aO - n);
        float fC = this.aI.c(in.b(this.aM), in.b(this.aN), in.b(this.aO));
        ji jiVar = this.p;
        jiVar.b(jiVar.b("/misc/footprint.png"));
        GL11.glEnable(3042);
        GL11.glBlendFunc(770, 771);
        nwVar.b();
        nwVar.a(fC, fC, fC, f8 * 0.2f);
        double d = f9 - 0.125f;
        double d2 = f10;
        double d3 = f11 + 0.125f;
        nwVar.a(d, d2, d3, 0.0d, 1.0d);
        double d4 = f9 + 0.125f;
        nwVar.a(d4, d2, d3, 1.0d, 1.0d);
        double d5 = f11 - 0.125f;
        nwVar.a(d4, d2, d5, 1.0d, 0.0d);
        nwVar.a(d, d2, d5, 0.0d, 0.0d);
        nwVar.a();
        GL11.glDisable(3042);
        GL11.glEnable(2896);
    }

    @Override // defpackage.xw, defpackage.sn
    public void w_() {
        int i = this.a + 1;
        this.a = i;
        if (i == this.o) {
            K();
        }
    }
}
