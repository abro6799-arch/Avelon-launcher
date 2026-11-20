package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class il extends ko {
    public ps a;
    public ps b;
    public ps c;
    public ps d;
    public ps e;
    public ps f;
    public ps g;

    public il() {
        this(0.0f);
    }

    public il(float f) {
        ps psVar = new ps(0, 0);
        this.a = psVar;
        psVar.a(-4.0f, -8.0f, -4.0f, 8, 8, 8, f);
        float f2 = 4;
        this.a.a(0.0f, f2, 0.0f);
        ps psVar2 = new ps(32, 0);
        this.b = psVar2;
        psVar2.a(-4.0f, -8.0f, -4.0f, 8, 8, 8, f + 0.5f);
        this.b.a(0.0f, f2, 0.0f);
        ps psVar3 = new ps(16, 16);
        this.c = psVar3;
        psVar3.a(-4.0f, 0.0f, -2.0f, 8, 12, 4, f);
        this.c.a(0.0f, f2, 0.0f);
        ps psVar4 = new ps(0, 16);
        this.d = psVar4;
        psVar4.a(-2.0f, 0.0f, -2.0f, 4, 6, 4, f);
        float f3 = 16;
        this.d.a(-2.0f, f3, 4.0f);
        ps psVar5 = new ps(0, 16);
        this.e = psVar5;
        psVar5.a(-2.0f, 0.0f, -2.0f, 4, 6, 4, f);
        this.e.a(2.0f, f3, 4.0f);
        ps psVar6 = new ps(0, 16);
        this.f = psVar6;
        psVar6.a(-2.0f, 0.0f, -2.0f, 4, 6, 4, f);
        this.f.a(-2.0f, f3, -4.0f);
        ps psVar7 = new ps(0, 16);
        this.g = psVar7;
        psVar7.a(-2.0f, 0.0f, -2.0f, 4, 6, 4, f);
        this.g.a(2.0f, f3, -4.0f);
    }

    @Override // defpackage.ko
    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        b(f, f2, f3, f4, f5, f6);
        this.a.a(f6);
        this.c.a(f6);
        this.d.a(f6);
        this.e.a(f6);
        this.f.a(f6);
        this.g.a(f6);
    }

    @Override // defpackage.ko
    public void b(float f, float f2, float f3, float f4, float f5, float f6) {
        this.a.e = f4 / 57.295776f;
        this.a.d = f5 / 57.295776f;
        float f7 = f * 0.6662f;
        this.d.d = in.b(f7) * 1.4f * f2;
        float f8 = 3.1415927f + f7;
        this.e.d = in.b(f8) * 1.4f * f2;
        this.f.d = in.b(f8) * 1.4f * f2;
        this.g.d = in.b(f7) * 1.4f * f2;
    }
}
