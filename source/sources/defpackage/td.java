package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class td extends ko {
    public ps a;
    public ps b;
    public ps c;
    public ps d;
    public ps e;
    public ps f;
    public ps g;
    public ps h;

    public td() {
        ps psVar = new ps(0, 0);
        this.a = psVar;
        psVar.a(-2.0f, -6.0f, -2.0f, 4, 6, 3, 0.0f);
        float f = 15;
        this.a.a(0.0f, f, -4.0f);
        ps psVar2 = new ps(14, 0);
        this.g = psVar2;
        psVar2.a(-2.0f, -4.0f, -4.0f, 4, 2, 2, 0.0f);
        this.g.a(0.0f, f, -4.0f);
        ps psVar3 = new ps(14, 4);
        this.h = psVar3;
        psVar3.a(-1.0f, -2.0f, -3.0f, 2, 2, 2, 0.0f);
        this.h.a(0.0f, f, -4.0f);
        ps psVar4 = new ps(0, 9);
        this.b = psVar4;
        psVar4.a(-3.0f, -4.0f, -3.0f, 6, 8, 6, 0.0f);
        this.b.a(0.0f, 16, 0.0f);
        ps psVar5 = new ps(26, 0);
        this.c = psVar5;
        psVar5.a(-1.0f, 0.0f, -3.0f, 3, 5, 3);
        float f2 = 19;
        this.c.a(-2.0f, f2, 1.0f);
        ps psVar6 = new ps(26, 0);
        this.d = psVar6;
        psVar6.a(-1.0f, 0.0f, -3.0f, 3, 5, 3);
        this.d.a(1.0f, f2, 1.0f);
        ps psVar7 = new ps(24, 13);
        this.e = psVar7;
        psVar7.a(0.0f, 0.0f, -3.0f, 1, 4, 6);
        float f3 = 13;
        this.e.a(-4.0f, f3, 0.0f);
        ps psVar8 = new ps(24, 13);
        this.f = psVar8;
        psVar8.a(-1.0f, 0.0f, -3.0f, 1, 4, 6);
        this.f.a(4.0f, f3, 0.0f);
    }

    @Override // defpackage.ko
    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        b(f, f2, f3, f4, f5, f6);
        this.a.a(f6);
        this.g.a(f6);
        this.h.a(f6);
        this.b.a(f6);
        this.c.a(f6);
        this.d.a(f6);
        this.e.a(f6);
        this.f.a(f6);
    }

    @Override // defpackage.ko
    public void b(float f, float f2, float f3, float f4, float f5, float f6) {
        this.a.d = -(f5 / 57.295776f);
        this.a.e = f4 / 57.295776f;
        this.g.d = this.a.d;
        this.g.e = this.a.e;
        this.h.d = this.a.d;
        this.h.e = this.a.e;
        this.b.d = 1.5707964f;
        float f7 = f * 0.6662f;
        this.c.d = in.b(f7) * 1.4f * f2;
        this.d.d = in.b(f7 + 3.1415927f) * 1.4f * f2;
        this.e.f = f3;
        this.f.f = -f3;
    }
}
