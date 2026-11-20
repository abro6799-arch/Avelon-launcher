package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class o extends ko {
    public ps a;
    public ps b;
    public ps c;
    public ps d;
    public ps e;
    public ps f;
    ps g;
    ps h;
    ps i;
    ps j;
    ps k;

    public o() {
        ps psVar = new ps(0, 0);
        this.a = psVar;
        psVar.a(-3.0f, -3.0f, -2.0f, 6, 6, 4, 0.0f);
        this.a.a(-1.0f, 13.5f, -7.0f);
        ps psVar2 = new ps(18, 14);
        this.b = psVar2;
        psVar2.a(-4.0f, -2.0f, -3.0f, 6, 9, 6, 0.0f);
        this.b.a(0.0f, 14.0f, 2.0f);
        ps psVar3 = new ps(21, 0);
        this.k = psVar3;
        psVar3.a(-4.0f, -3.0f, -3.0f, 8, 6, 7, 0.0f);
        this.k.a(-1.0f, 14.0f, 2.0f);
        ps psVar4 = new ps(0, 18);
        this.c = psVar4;
        psVar4.a(-1.0f, 0.0f, -1.0f, 2, 8, 2, 0.0f);
        this.c.a(-2.5f, 16.0f, 7.0f);
        ps psVar5 = new ps(0, 18);
        this.d = psVar5;
        psVar5.a(-1.0f, 0.0f, -1.0f, 2, 8, 2, 0.0f);
        this.d.a(0.5f, 16.0f, 7.0f);
        ps psVar6 = new ps(0, 18);
        this.e = psVar6;
        psVar6.a(-1.0f, 0.0f, -1.0f, 2, 8, 2, 0.0f);
        this.e.a(-2.5f, 16.0f, -4.0f);
        ps psVar7 = new ps(0, 18);
        this.f = psVar7;
        psVar7.a(-1.0f, 0.0f, -1.0f, 2, 8, 2, 0.0f);
        this.f.a(0.5f, 16.0f, -4.0f);
        ps psVar8 = new ps(9, 18);
        this.j = psVar8;
        psVar8.a(-1.0f, 0.0f, -1.0f, 2, 8, 2, 0.0f);
        this.j.a(-1.0f, 12.0f, 8.0f);
        ps psVar9 = new ps(16, 14);
        this.g = psVar9;
        psVar9.a(-3.0f, -5.0f, 0.0f, 2, 2, 1, 0.0f);
        this.g.a(-1.0f, 13.5f, -7.0f);
        ps psVar10 = new ps(16, 14);
        this.h = psVar10;
        psVar10.a(1.0f, -5.0f, 0.0f, 2, 2, 1, 0.0f);
        this.h.a(-1.0f, 13.5f, -7.0f);
        ps psVar11 = new ps(0, 10);
        this.i = psVar11;
        psVar11.a(-2.0f, 0.0f, -5.0f, 3, 3, 4, 0.0f);
        this.i.a(-0.5f, 13.5f, -7.0f);
    }

    @Override // defpackage.ko
    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        super.a(f, f2, f3, f4, f5, f6);
        b(f, f2, f3, f4, f5, f6);
        this.a.b(f6);
        this.b.a(f6);
        this.c.a(f6);
        this.d.a(f6);
        this.e.a(f6);
        this.f.a(f6);
        this.g.b(f6);
        this.h.b(f6);
        this.i.b(f6);
        this.j.b(f6);
        this.k.a(f6);
    }

    @Override // defpackage.ko
    public void a(ls lsVar, float f, float f2, float f3) {
        gi giVar = (gi) lsVar;
        if (giVar.C()) {
            this.j.e = 0.0f;
        } else {
            this.j.e = in.b(f * 0.6662f) * 1.4f * f2;
        }
        if (giVar.B()) {
            this.k.a(-1.0f, 16.0f, -3.0f);
            this.k.d = 1.2566371f;
            this.k.e = 0.0f;
            this.b.a(0.0f, 18.0f, 0.0f);
            this.b.d = 0.7853982f;
            this.j.a(-1.0f, 21.0f, 6.0f);
            this.c.a(-2.5f, 22.0f, 2.0f);
            this.c.d = 4.712389f;
            this.d.a(0.5f, 22.0f, 2.0f);
            this.d.d = 4.712389f;
            this.e.d = 5.811947f;
            this.e.a(-2.49f, 17.0f, -4.0f);
            this.f.d = 5.811947f;
            this.f.a(0.51f, 17.0f, -4.0f);
        } else {
            this.b.a(0.0f, 14.0f, 2.0f);
            this.b.d = 1.5707964f;
            this.k.a(-1.0f, 14.0f, -3.0f);
            this.k.d = this.b.d;
            this.j.a(-1.0f, 12.0f, 8.0f);
            this.c.a(-2.5f, 16.0f, 7.0f);
            this.d.a(0.5f, 16.0f, 7.0f);
            this.e.a(-2.5f, 16.0f, -4.0f);
            this.f.a(0.5f, 16.0f, -4.0f);
            float f4 = 0.6662f * f;
            this.c.d = in.b(f4) * 1.4f * f2;
            float f5 = 3.1415927f + f4;
            this.d.d = in.b(f5) * 1.4f * f2;
            this.e.d = in.b(f5) * 1.4f * f2;
            this.f.d = in.b(f4) * 1.4f * f2;
        }
        float fC = giVar.c(f3) + giVar.a(f3, 0.0f);
        this.a.f = fC;
        this.g.f = fC;
        this.h.f = fC;
        this.i.f = fC;
        this.k.f = giVar.a(f3, -0.08f);
        this.b.f = giVar.a(f3, -0.16f);
        this.j.f = giVar.a(f3, -0.2f);
        if (giVar.v()) {
            float fA = giVar.a(f3) * giVar.b_(f3);
            GL11.glColor3f(fA, fA, fA);
        }
    }

    @Override // defpackage.ko
    public void b(float f, float f2, float f3, float f4, float f5, float f6) {
        super.b(f, f2, f3, f4, f5, f6);
        this.a.d = f5 / 57.295776f;
        this.a.e = f4 / 57.295776f;
        this.g.e = this.a.e;
        this.g.d = this.a.d;
        this.h.e = this.a.e;
        this.h.d = this.a.d;
        this.i.e = this.a.e;
        this.i.d = this.a.d;
        this.j.d = f3;
    }
}
