package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class fh extends ko {
    public ps a;
    public ps b;
    public ps c;
    public ps d;
    public ps e;
    public ps f;
    public ps g;
    public ps h;
    public ps i;
    public boolean j;
    public boolean k;
    public boolean l;

    public fh() {
        this(0.0f);
    }

    public fh(float f) {
        this(f, 0.0f);
    }

    public fh(float f, float f2) {
        this.j = false;
        this.k = false;
        this.l = false;
        ps psVar = new ps(0, 0);
        this.i = psVar;
        psVar.a(-5.0f, 0.0f, -1.0f, 10, 16, 1, f);
        ps psVar2 = new ps(24, 0);
        this.h = psVar2;
        psVar2.a(-3.0f, -6.0f, -1.0f, 6, 6, 1, f);
        ps psVar3 = new ps(0, 0);
        this.a = psVar3;
        psVar3.a(-4.0f, -8.0f, -4.0f, 8, 8, 8, f);
        float f3 = f2 + 0.0f;
        this.a.a(0.0f, f3, 0.0f);
        ps psVar4 = new ps(32, 0);
        this.b = psVar4;
        psVar4.a(-4.0f, -8.0f, -4.0f, 8, 8, 8, f + 0.5f);
        this.b.a(0.0f, f3, 0.0f);
        ps psVar5 = new ps(16, 16);
        this.c = psVar5;
        psVar5.a(-4.0f, 0.0f, -2.0f, 8, 12, 4, f);
        this.c.a(0.0f, f3, 0.0f);
        ps psVar6 = new ps(40, 16);
        this.d = psVar6;
        psVar6.a(-3.0f, -2.0f, -2.0f, 4, 12, 4, f);
        float f4 = f2 + 2.0f;
        this.d.a(-5.0f, f4, 0.0f);
        ps psVar7 = new ps(40, 16);
        this.e = psVar7;
        psVar7.g = true;
        this.e.a(-1.0f, -2.0f, -2.0f, 4, 12, 4, f);
        this.e.a(5.0f, f4, 0.0f);
        ps psVar8 = new ps(0, 16);
        this.f = psVar8;
        psVar8.a(-2.0f, 0.0f, -2.0f, 4, 12, 4, f);
        float f5 = f2 + 12.0f;
        this.f.a(-2.0f, f5, 0.0f);
        ps psVar9 = new ps(0, 16);
        this.g = psVar9;
        psVar9.g = true;
        this.g.a(-2.0f, 0.0f, -2.0f, 4, 12, 4, f);
        this.g.a(2.0f, f5, 0.0f);
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
        this.b.a(f6);
    }

    @Override // defpackage.ko
    public void b(float f, float f2, float f3, float f4, float f5, float f6) {
        this.a.e = f4 / 57.295776f;
        this.a.d = f5 / 57.295776f;
        this.b.e = this.a.e;
        this.b.d = this.a.d;
        float f7 = f * 0.6662f;
        float f8 = f7 + 3.1415927f;
        this.d.d = in.b(f8) * 2.0f * f2 * 0.5f;
        this.e.d = in.b(f7) * 2.0f * f2 * 0.5f;
        this.d.f = 0.0f;
        this.e.f = 0.0f;
        this.f.d = in.b(f7) * 1.4f * f2;
        this.g.d = in.b(f8) * 1.4f * f2;
        this.f.e = 0.0f;
        this.g.e = 0.0f;
        if (this.n) {
            this.d.d -= 0.62831855f;
            this.e.d -= 0.62831855f;
            this.f.d = -1.2566371f;
            this.g.d = -1.2566371f;
            this.f.e = 0.31415927f;
            this.g.e = -0.31415927f;
        }
        if (this.j) {
            ps psVar = this.e;
            psVar.d = (psVar.d * 0.5f) - 0.31415927f;
        }
        if (this.k) {
            ps psVar2 = this.d;
            psVar2.d = (psVar2.d * 0.5f) - 0.31415927f;
        }
        this.d.e = 0.0f;
        this.e.e = 0.0f;
        if (this.m > -9990.0f) {
            this.c.e = in.a(in.c(this.m) * 3.1415927f * 2.0f) * 0.2f;
            this.d.c = in.a(this.c.e) * 5.0f;
            this.d.a = (-in.b(this.c.e)) * 5.0f;
            this.e.c = (-in.a(this.c.e)) * 5.0f;
            this.e.a = in.b(this.c.e) * 5.0f;
            this.d.e += this.c.e;
            this.e.e += this.c.e;
            this.e.d += this.c.e;
            float f9 = 1.0f - this.m;
            float f10 = f9 * f9;
            float fA = in.a((1.0f - (f10 * f10)) * 3.1415927f);
            float fA2 = in.a(this.m * 3.1415927f) * (-(this.a.d - 0.7f)) * 0.75f;
            ps psVar3 = this.d;
            psVar3.d = (float) (((double) psVar3.d) - ((((double) fA) * 1.2d) + ((double) fA2)));
            this.d.e += this.c.e * 2.0f;
            this.d.f = in.a(this.m * 3.1415927f) * (-0.4f);
        }
        if (this.l) {
            this.c.d = 0.5f;
            this.f.d -= 0.0f;
            this.g.d -= 0.0f;
            this.d.d += 0.4f;
            this.e.d += 0.4f;
            this.f.c = 4.0f;
            this.g.c = 4.0f;
            this.f.b = 9.0f;
            this.g.b = 9.0f;
            this.a.b = 1.0f;
        } else {
            this.c.d = 0.0f;
            this.f.c = 0.0f;
            this.g.c = 0.0f;
            this.f.b = 12.0f;
            this.g.b = 12.0f;
            this.a.b = 0.0f;
        }
        float f11 = 0.09f * f3;
        this.d.f += (in.b(f11) * 0.05f) + 0.05f;
        this.e.f -= (in.b(f11) * 0.05f) + 0.05f;
        float f12 = f3 * 0.067f;
        this.d.d += in.a(f12) * 0.05f;
        this.e.d -= in.a(f12) * 0.05f;
    }

    public void a(float f) {
        this.h.e = this.a.e;
        this.h.d = this.a.d;
        this.h.a = 0.0f;
        this.h.b = 0.0f;
        this.h.a(f);
    }

    public void b(float f) {
        this.i.a(f);
    }
}
