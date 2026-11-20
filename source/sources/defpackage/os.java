package defpackage;

import net.minecraft.client.Minecraft;

/* JADX INFO: loaded from: classes.dex */
public class os extends ob {
    private int c;
    private int d;
    private int e;
    private float f;
    private float g;
    private float h;
    private int i;

    @Override // defpackage.ob
    public float b() {
        return 4.0f;
    }

    public os(Minecraft minecraft) {
        super(minecraft);
        this.c = -1;
        this.d = -1;
        this.e = -1;
        this.f = 0.0f;
        this.g = 0.0f;
        this.h = 0.0f;
        this.i = 0;
    }

    @Override // defpackage.ob
    public void a(gs gsVar) {
        gsVar.aS = -180.0f;
    }

    @Override // defpackage.ob
    public boolean b(int i, int i2, int i3, int i4) {
        int iA = this.a.f.a(i, i2, i3);
        int iE = this.a.f.e(i, i2, i3);
        boolean zB = super.b(i, i2, i3, i4);
        iz izVarG = this.a.h.G();
        boolean zB2 = this.a.h.b(uu.m[iA]);
        if (izVarG != null) {
            izVarG.a(iA, i, i2, i3, this.a.h);
            if (izVarG.a == 0) {
                izVarG.a((gs) this.a.h);
                this.a.h.H();
            }
        }
        if (zB && zB2) {
            uu.m[iA].a(this.a.f, this.a.h, i, i2, i3, iE);
        }
        return zB;
    }

    @Override // defpackage.ob
    public void a(int i, int i2, int i3, int i4) {
        this.a.f.a((gs) this.a.h, i, i2, i3, i4);
        int iA = this.a.f.a(i, i2, i3);
        if (iA > 0 && this.f == 0.0f) {
            uu.m[iA].b(this.a.f, i, i2, i3, (gs) this.a.h);
        }
        if (iA <= 0 || uu.m[iA].a((gs) this.a.h) < 1.0f) {
            return;
        }
        b(i, i2, i3, i4);
    }

    @Override // defpackage.ob
    public void a() {
        this.f = 0.0f;
        this.i = 0;
    }

    @Override // defpackage.ob
    public void c(int i, int i2, int i3, int i4) {
        int i5 = this.i;
        if (i5 > 0) {
            this.i = i5 - 1;
            return;
        }
        if (i == this.c && i2 == this.d && i3 == this.e) {
            int iA = this.a.f.a(i, i2, i3);
            if (iA == 0) {
                return;
            }
            uu uuVar = uu.m[iA];
            this.f += uuVar.a((gs) this.a.h);
            if (this.h % 4.0f == 0.0f && uuVar != null) {
                this.a.B.b(uuVar.by.d(), i + 0.5f, i2 + 0.5f, i3 + 0.5f, (uuVar.by.b() + 1.0f) / 8.0f, uuVar.by.c() * 0.5f);
            }
            this.h += 1.0f;
            if (this.f >= 1.0f) {
                b(i, i2, i3, i4);
                this.f = 0.0f;
                this.g = 0.0f;
                this.h = 0.0f;
                this.i = 5;
                return;
            }
            return;
        }
        this.f = 0.0f;
        this.g = 0.0f;
        this.h = 0.0f;
        this.c = i;
        this.d = i2;
        this.e = i3;
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
        this.g = this.f;
        this.a.B.c();
    }
}
