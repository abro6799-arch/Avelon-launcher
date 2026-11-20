package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class hh extends nn {
    ps a;
    ps b;
    ps c;

    public hh() {
        super(12, 0.0f);
        this.d = new ps(0, 0);
        this.d.a(-4.0f, -4.0f, -6.0f, 8, 8, 6, 0.0f);
        this.d.a(0.0f, 4.0f, -8.0f);
        ps psVar = new ps(22, 0);
        this.b = psVar;
        psVar.a(-4.0f, -5.0f, -4.0f, 1, 3, 1, 0.0f);
        this.b.a(0.0f, 3.0f, -7.0f);
        ps psVar2 = new ps(22, 0);
        this.c = psVar2;
        psVar2.a(3.0f, -5.0f, -4.0f, 1, 3, 1, 0.0f);
        this.c.a(0.0f, 3.0f, -7.0f);
        ps psVar3 = new ps(52, 0);
        this.a = psVar3;
        psVar3.a(-2.0f, -3.0f, 0.0f, 4, 6, 2, 0.0f);
        this.a.a(0.0f, 14.0f, 6.0f);
        this.a.d = 1.5707964f;
        this.e = new ps(18, 4);
        this.e.a(-6.0f, -10.0f, -7.0f, 12, 18, 10, 0.0f);
        this.e.a(0.0f, 5.0f, 2.0f);
        this.f.a -= 1.0f;
        this.g.a += 1.0f;
        this.f.c += 0.0f;
        this.g.c += 0.0f;
        this.h.a -= 1.0f;
        this.i.a += 1.0f;
        this.h.c -= 1.0f;
        this.i.c -= 1.0f;
    }

    @Override // defpackage.nn, defpackage.ko
    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        super.a(f, f2, f3, f4, f5, f6);
        this.b.a(f6);
        this.c.a(f6);
        this.a.a(f6);
    }

    @Override // defpackage.nn, defpackage.ko
    public void b(float f, float f2, float f3, float f4, float f5, float f6) {
        super.b(f, f2, f3, f4, f5, f6);
        this.b.e = this.d.e;
        this.b.d = this.d.d;
        this.c.e = this.d.e;
        this.c.d = this.d.d;
    }
}
