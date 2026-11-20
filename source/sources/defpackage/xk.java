package defpackage;

import net.minecraft.client.Minecraft;

/* JADX INFO: loaded from: classes.dex */
public class xk extends ob {
    private int c;
    private int d;
    private int e;
    private float f;
    private float g;
    private float h;
    private int i;
    private boolean j;
    private nb k;
    private int l;

    @Override // defpackage.ob
    public void a(int i, gs gsVar) {
    }

    @Override // defpackage.ob
    public float b() {
        return 4.0f;
    }

    public xk(Minecraft minecraft, nb nbVar) {
        super(minecraft);
        this.c = -1;
        this.d = -1;
        this.e = -1;
        this.f = 0.0f;
        this.g = 0.0f;
        this.h = 0.0f;
        this.i = 0;
        this.j = false;
        this.l = 0;
        this.k = nbVar;
    }

    @Override // defpackage.ob
    public void a(gs gsVar) {
        gsVar.aS = -180.0f;
    }

    @Override // defpackage.ob
    public boolean b(int i, int i2, int i3, int i4) {
        int iA = this.a.f.a(i, i2, i3);
        boolean zB = super.b(i, i2, i3, i4);
        iz izVarG = this.a.h.G();
        if (izVarG != null) {
            izVarG.a(iA, i, i2, i3, this.a.h);
            if (izVarG.a == 0) {
                izVarG.a((gs) this.a.h);
                this.a.h.H();
            }
        }
        return zB;
    }

    @Override // defpackage.ob
    public void a(int i, int i2, int i3, int i4) {
        if (this.j && i == this.c && i2 == this.d && i3 == this.e) {
            return;
        }
        this.k.b(new jv(0, i, i2, i3, i4));
        int iA = this.a.f.a(i, i2, i3);
        if (iA > 0 && this.f == 0.0f) {
            uu.m[iA].b(this.a.f, i, i2, i3, (gs) this.a.h);
        }
        if (iA > 0 && uu.m[iA].a((gs) this.a.h) >= 1.0f) {
            b(i, i2, i3, i4);
            return;
        }
        this.j = true;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = 0.0f;
        this.g = 0.0f;
        this.h = 0.0f;
    }

    @Override // defpackage.ob
    public void a() {
        this.f = 0.0f;
        this.j = false;
    }

    @Override // defpackage.ob
    public void c(int i, int i2, int i3, int i4) {
        if (this.j) {
            e();
            int i5 = this.i;
            if (i5 > 0) {
                this.i = i5 - 1;
                return;
            }
            if (i == this.c && i2 == this.d && i3 == this.e) {
                int iA = this.a.f.a(i, i2, i3);
                if (iA == 0) {
                    this.j = false;
                    return;
                }
                uu uuVar = uu.m[iA];
                this.f += uuVar.a((gs) this.a.h);
                if (this.h % 4.0f == 0.0f && uuVar != null) {
                    this.a.B.b(uuVar.by.d(), i + 0.5f, i2 + 0.5f, i3 + 0.5f, (uuVar.by.b() + 1.0f) / 8.0f, uuVar.by.c() * 0.5f);
                }
                this.h += 1.0f;
                if (this.f >= 1.0f) {
                    this.j = false;
                    this.k.b(new jv(2, i, i2, i3, i4));
                    b(i, i2, i3, i4);
                    this.f = 0.0f;
                    this.g = 0.0f;
                    this.h = 0.0f;
                    this.i = 5;
                    return;
                }
                return;
            }
            a(i, i2, i3, i4);
        }
    }

    @Override // defpackage.ob
    public void a(float f) {
        float f2 = this.f;
        if (f2 <= 0.0f) {
            this.a.v.b = 0.0f;
            this.a.g.i = 0.0f;
        } else {
            float f3 = this.g;
            float f4 = f3 + ((f2 - f3) * f);
            this.a.v.b = f4;
            this.a.g.i = f4;
        }
    }

    @Override // defpackage.ob
    public void a(fd fdVar) {
        super.a(fdVar);
    }

    @Override // defpackage.ob
    public void c() {
        e();
        this.g = this.f;
        this.a.B.c();
    }

    private void e() {
        int i = this.a.h.c.c;
        if (i != this.l) {
            this.l = i;
            this.k.b(new ho(this.l));
        }
    }

    @Override // defpackage.ob
    public boolean a(gs gsVar, fd fdVar, iz izVar, int i, int i2, int i3, int i4) {
        e();
        this.k.b(new gx(i, i2, i3, i4, gsVar.c.b()));
        return super.a(gsVar, fdVar, izVar, i, i2, i3, i4);
    }

    @Override // defpackage.ob
    public boolean a(gs gsVar, fd fdVar, iz izVar) {
        e();
        this.k.b(new gx(-1, -1, -1, 255, gsVar.c.b()));
        return super.a(gsVar, fdVar, izVar);
    }

    @Override // defpackage.ob
    public gs b(fd fdVar) {
        return new tk(this.a, fdVar, this.a.k, this.k);
    }

    @Override // defpackage.ob
    public void b(gs gsVar, sn snVar) {
        e();
        this.k.b(new a(gsVar.aD, snVar.aD, 1));
        gsVar.d(snVar);
    }

    @Override // defpackage.ob
    public void a(gs gsVar, sn snVar) {
        e();
        this.k.b(new a(gsVar.aD, snVar.aD, 0));
        gsVar.c(snVar);
    }

    @Override // defpackage.ob
    public iz a(int i, int i2, int i3, boolean z, gs gsVar) {
        short sA = gsVar.e.a(gsVar.c);
        iz izVarA = super.a(i, i2, i3, z, gsVar);
        this.k.b(new qs(i, i2, i3, z, izVarA, sA));
        return izVarA;
    }
}
