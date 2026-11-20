package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class qm extends xw {
    private uu a;
    private int o;

    @Override // defpackage.xw
    public int c_() {
        return 1;
    }

    public qm(fd fdVar, double d, double d2, double d3, double d4, double d5, double d6, uu uuVar, int i, int i2) {
        super(fdVar, d, d2, d3, d4, d5, d6);
        this.o = 0;
        this.a = uuVar;
        this.b = uuVar.a(0, i2);
        this.h = uuVar.bz;
        this.k = 0.6f;
        this.j = 0.6f;
        this.i = 0.6f;
        this.g /= 2.0f;
        this.o = i;
    }

    public qm a(int i, int i2, int i3) {
        if (this.a == uu.v) {
            return this;
        }
        int iB = this.a.b((xp) this.aI, i, i2, i3);
        this.i *= ((iB >> 16) & 255) / 255.0f;
        this.j *= ((iB >> 8) & 255) / 255.0f;
        this.k *= (iB & 255) / 255.0f;
        return this;
    }

    @Override // defpackage.xw
    public void a(nw nwVar, float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = ((this.b % 16) + (this.c / 4.0f)) / 16.0f;
        float f8 = f7 + 0.015609375f;
        float f9 = ((this.b / 16) + (this.d / 4.0f)) / 16.0f;
        float f10 = 0.015609375f + f9;
        float f11 = this.g * 0.1f;
        double d = f;
        float f12 = (float) ((this.aJ + ((this.aM - this.aJ) * d)) - l);
        float f13 = (float) ((this.aK + ((this.aN - this.aK) * d)) - m);
        float f14 = (float) ((this.aL + ((this.aO - this.aL) * d)) - n);
        float fA = a(f);
        nwVar.a(this.i * fA, this.j * fA, fA * this.k);
        float f15 = f2 * f11;
        float f16 = f12 - f15;
        float f17 = f5 * f11;
        float f18 = f3 * f11;
        double d2 = f13 - f18;
        float f19 = f4 * f11;
        float f20 = f14 - f19;
        float f21 = f11 * f6;
        double d3 = f7;
        double d4 = f10;
        nwVar.a(f16 - f17, d2, f20 - f21, d3, d4);
        double d5 = f16 + f17;
        double d6 = f13 + f18;
        double d7 = f9;
        nwVar.a(d5, d6, f20 + f21, d3, d7);
        float f22 = f12 + f15;
        float f23 = f14 + f19;
        double d8 = f8;
        nwVar.a(f22 + f17, d6, f23 + f21, d8, d7);
        nwVar.a(f22 - f17, d2, f23 - f21, d8, d4);
    }
}
