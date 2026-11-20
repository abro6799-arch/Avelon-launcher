package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class sc extends ko {
    public ps a;
    public ps b;
    public ps c;
    public ps d;
    public ps e;
    public ps f;
    public ps g;
    public ps h;
    public ps i;
    public ps j;
    public ps k;

    public sc() {
        ps psVar = new ps(32, 4);
        this.a = psVar;
        psVar.a(-4.0f, -4.0f, -8.0f, 8, 8, 8, 0.0f);
        float f = 15;
        this.a.a(0.0f, f, -3.0f);
        ps psVar2 = new ps(0, 0);
        this.b = psVar2;
        psVar2.a(-3.0f, -3.0f, -3.0f, 6, 6, 6, 0.0f);
        this.b.a(0.0f, 15, 0.0f);
        ps psVar3 = new ps(0, 12);
        this.c = psVar3;
        psVar3.a(-5.0f, -4.0f, -6.0f, 10, 8, 12, 0.0f);
        this.c.a(0.0f, f, 9.0f);
        ps psVar4 = new ps(18, 0);
        this.d = psVar4;
        psVar4.a(-15.0f, -1.0f, -1.0f, 16, 2, 2, 0.0f);
        this.d.a(-4.0f, f, 2.0f);
        ps psVar5 = new ps(18, 0);
        this.e = psVar5;
        psVar5.a(-1.0f, -1.0f, -1.0f, 16, 2, 2, 0.0f);
        this.e.a(4.0f, f, 2.0f);
        ps psVar6 = new ps(18, 0);
        this.f = psVar6;
        psVar6.a(-15.0f, -1.0f, -1.0f, 16, 2, 2, 0.0f);
        this.f.a(-4.0f, f, 1.0f);
        ps psVar7 = new ps(18, 0);
        this.g = psVar7;
        psVar7.a(-1.0f, -1.0f, -1.0f, 16, 2, 2, 0.0f);
        this.g.a(4.0f, f, 1.0f);
        ps psVar8 = new ps(18, 0);
        this.h = psVar8;
        psVar8.a(-15.0f, -1.0f, -1.0f, 16, 2, 2, 0.0f);
        this.h.a(-4.0f, f, 0.0f);
        ps psVar9 = new ps(18, 0);
        this.i = psVar9;
        psVar9.a(-1.0f, -1.0f, -1.0f, 16, 2, 2, 0.0f);
        this.i.a(4.0f, f, 0.0f);
        ps psVar10 = new ps(18, 0);
        this.j = psVar10;
        psVar10.a(-15.0f, -1.0f, -1.0f, 16, 2, 2, 0.0f);
        this.j.a(-4.0f, f, -1.0f);
        ps psVar11 = new ps(18, 0);
        this.k = psVar11;
        psVar11.a(-1.0f, -1.0f, -1.0f, 16, 2, 2, 0.0f);
        this.k.a(4.0f, f, -1.0f);
    }

    @Override // defpackage.ko
    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        b(f, f2, f3, f4, f5, f6);
        this.a.a(f6);
        this.b.a(f6);
        this.c.a(f6);
        this.d.a(f6);
        this.e.a(f6);
        this.f.a(f6);
        this.g.a(f6);
        this.h.a(f6);
        this.i.a(f6);
        this.j.a(f6);
        this.k.a(f6);
    }

    @Override // defpackage.ko
    public void b(float f, float f2, float f3, float f4, float f5, float f6) {
        this.a.e = f4 / 57.295776f;
        this.a.d = f5 / 57.295776f;
        this.d.f = -0.7853982f;
        this.e.f = 0.7853982f;
        this.f.f = -0.58119464f;
        this.g.f = 0.58119464f;
        this.h.f = -0.58119464f;
        this.i.f = 0.58119464f;
        this.j.f = -0.7853982f;
        this.k.f = 0.7853982f;
        this.d.e = 0.7853982f;
        this.e.e = -0.7853982f;
        this.f.e = 0.3926991f;
        this.g.e = -0.3926991f;
        this.h.e = -0.3926991f;
        this.i.e = 0.3926991f;
        this.j.e = -0.7853982f;
        this.k.e = 0.7853982f;
        float f7 = f * 0.6662f;
        float f8 = 2.0f * f7;
        float f9 = (-(in.b(f8 + 0.0f) * 0.4f)) * f2;
        float f10 = (-(in.b(f8 + 3.1415927f) * 0.4f)) * f2;
        float f11 = (-(in.b(f8 + 1.5707964f) * 0.4f)) * f2;
        float f12 = (-(in.b(f8 + 4.712389f) * 0.4f)) * f2;
        float fAbs = Math.abs(in.a(0.0f + f7) * 0.4f) * f2;
        float fAbs2 = Math.abs(in.a(3.1415927f + f7) * 0.4f) * f2;
        float fAbs3 = Math.abs(in.a(1.5707964f + f7) * 0.4f) * f2;
        float fAbs4 = Math.abs(in.a(f7 + 4.712389f) * 0.4f) * f2;
        this.d.e += f9;
        this.e.e += -f9;
        this.f.e += f10;
        this.g.e += -f10;
        this.h.e += f11;
        this.i.e += -f11;
        this.j.e += f12;
        this.k.e += -f12;
        this.d.f += fAbs;
        this.e.f += -fAbs;
        this.f.f += fAbs2;
        this.g.f += -fAbs2;
        this.h.f += fAbs3;
        this.i.f += -fAbs3;
        this.j.f += fAbs4;
        this.k.f += -fAbs4;
    }
}
