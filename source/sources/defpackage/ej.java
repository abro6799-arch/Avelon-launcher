package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ej extends fh {
    @Override // defpackage.fh, defpackage.ko
    public void b(float f, float f2, float f3, float f4, float f5, float f6) {
        super.b(f, f2, f3, f4, f5, f6);
        float fA = in.a(this.m * 3.1415927f);
        float fA2 = in.a((1.0f - ((1.0f - this.m) * (1.0f - this.m))) * 3.1415927f);
        this.d.f = 0.0f;
        this.e.f = 0.0f;
        float f7 = 0.1f - (0.6f * fA);
        this.d.e = -f7;
        this.e.e = f7;
        this.d.d = -1.5707964f;
        this.e.d = -1.5707964f;
        float f8 = (fA * 1.2f) - (fA2 * 0.4f);
        this.d.d -= f8;
        this.e.d -= f8;
        float f9 = 0.09f * f3;
        this.d.f += (in.b(f9) * 0.05f) + 0.05f;
        this.e.f -= (in.b(f9) * 0.05f) + 0.05f;
        float f10 = f3 * 0.067f;
        this.d.d += in.a(f10) * 0.05f;
        this.e.d -= in.a(f10) * 0.05f;
    }
}
