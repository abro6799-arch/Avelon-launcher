package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class em extends xw {
    private sn a;
    private sn o;
    private int p;
    private int q;
    private float r;

    @Override // defpackage.xw
    public int c_() {
        return 3;
    }

    public em(fd fdVar, sn snVar, sn snVar2, float f) {
        super(fdVar, snVar.aM, snVar.aN, snVar.aO, snVar.aP, snVar.aQ, snVar.aR);
        this.p = 0;
        this.a = snVar;
        this.o = snVar2;
        this.q = 3;
        this.r = f;
    }

    @Override // defpackage.xw
    public void a(nw nwVar, float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = (this.p + f) / this.q;
        double d = this.a.aM;
        double d2 = this.a.aN;
        double d3 = this.a.aO;
        double d4 = f;
        double d5 = this.o.bl + ((this.o.aM - this.o.bl) * d4);
        double d6 = f7 * f7;
        double d7 = d + ((d5 - d) * d6);
        double d8 = d2 + ((((this.o.bm + ((this.o.aN - this.o.bm) * d4)) + ((double) this.r)) - d2) * d6);
        double d9 = d3 + (((this.o.bn + ((this.o.aO - this.o.bn) * d4)) - d3) * d6);
        float fC = this.aI.c(in.b(d7), in.b(((double) (this.bf / 2.0f)) + d8), in.b(d9));
        double d10 = d7 - l;
        double d11 = d8 - m;
        double d12 = d9 - n;
        GL11.glColor4f(fC, fC, fC, 1.0f);
        th thVar = th.a;
        sn snVar = this.a;
        thVar.a(snVar, (float) d10, (float) d11, (float) d12, snVar.aS, f);
    }

    @Override // defpackage.xw, defpackage.sn
    public void w_() {
        int i = this.p + 1;
        this.p = i;
        if (i == this.q) {
            K();
        }
    }
}
