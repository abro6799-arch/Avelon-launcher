package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class nn extends ko {
    public ps d;
    public ps e;
    public ps f;
    public ps g;
    public ps h;
    public ps i;

    public nn(int i, float f) {
        ps psVar = new ps(0, 0);
        this.d = psVar;
        psVar.a(-4.0f, -4.0f, -8.0f, 8, 8, 8, f);
        this.d.a(0.0f, 18 - i, -6.0f);
        ps psVar2 = new ps(28, 8);
        this.e = psVar2;
        psVar2.a(-5.0f, -10.0f, -7.0f, 10, 16, 8, f);
        this.e.a(0.0f, 17 - i, 2.0f);
        ps psVar3 = new ps(0, 16);
        this.f = psVar3;
        psVar3.a(-2.0f, 0.0f, -2.0f, 4, i, 4, f);
        float f2 = 24 - i;
        this.f.a(-3.0f, f2, 7.0f);
        ps psVar4 = new ps(0, 16);
        this.g = psVar4;
        psVar4.a(-2.0f, 0.0f, -2.0f, 4, i, 4, f);
        this.g.a(3.0f, f2, 7.0f);
        ps psVar5 = new ps(0, 16);
        this.h = psVar5;
        psVar5.a(-2.0f, 0.0f, -2.0f, 4, i, 4, f);
        this.h.a(-3.0f, f2, -5.0f);
        ps psVar6 = new ps(0, 16);
        this.i = psVar6;
        psVar6.a(-2.0f, 0.0f, -2.0f, 4, i, 4, f);
        this.i.a(3.0f, f2, -5.0f);
    }

    @Override // defpackage.ko
    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        b(f, f2, f3, f4, f5, f6);
        this.d.a(f6);
        this.e.a(f6);
        this.f.a(f6);
        this.g.a(f6);
        this.h.a(f6);
        this.i.a(f6);
    }

    @Override // defpackage.ko
    public void b(float f, float f2, float f3, float f4, float f5, float f6) {
        this.d.d = f5 / 57.295776f;
        this.d.e = f4 / 57.295776f;
        this.e.d = 1.5707964f;
        float f7 = f * 0.6662f;
        this.f.d = in.b(f7) * 1.4f * f2;
        float f8 = 3.1415927f + f7;
        this.g.d = in.b(f8) * 1.4f * f2;
        this.h.d = in.b(f8) * 1.4f * f2;
        this.i.d = in.b(f7) * 1.4f * f2;
    }
}
