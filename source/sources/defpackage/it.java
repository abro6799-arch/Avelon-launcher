package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class it extends dw {
    public mq a = new mq(this, 3, 3);
    public lw b = new wl();
    private fd c;
    private int h;
    private int i;
    private int j;

    public it(ix ixVar, fd fdVar, int i, int i2, int i3) {
        this.c = fdVar;
        this.h = i;
        this.i = i2;
        this.j = i3;
        a(new yv(ixVar.d, this.a, this.b, 0, 124, 35));
        for (int i4 = 0; i4 < 3; i4++) {
            for (int i5 = 0; i5 < 3; i5++) {
                a(new gp(this.a, (i4 * 3) + i5, (i5 * 18) + 30, (i4 * 18) + 17));
            }
        }
        for (int i6 = 0; i6 < 3; i6++) {
            for (int i7 = 0; i7 < 9; i7++) {
                a(new gp(ixVar, (i6 * 9) + i7 + 9, (i7 * 18) + 8, (i6 * 18) + 84));
            }
        }
        for (int i8 = 0; i8 < 9; i8++) {
            a(new gp(ixVar, i8, (i8 * 18) + 8, 142));
        }
        a(this.a);
    }

    @Override // defpackage.dw
    public void a(lw lwVar) {
        this.b.a(0, hk.a().a(this.a));
    }

    @Override // defpackage.dw
    public void a(gs gsVar) {
        super.a(gsVar);
        if (this.c.B) {
            return;
        }
        for (int i = 0; i < 9; i++) {
            iz izVarF_ = this.a.f_(i);
            if (izVarF_ != null) {
                gsVar.a(izVarF_);
            }
        }
    }

    @Override // defpackage.dw
    public boolean b(gs gsVar) {
        return this.c.a(this.h, this.i, this.j) == uu.az.bn && gsVar.g(((double) this.h) + 0.5d, ((double) this.i) + 0.5d, ((double) this.j) + 0.5d) <= 64.0d;
    }

    @Override // defpackage.dw
    public iz a(int i) {
        gp gpVar = (gp) this.e.get(i);
        if (gpVar == null || !gpVar.b()) {
            return null;
        }
        iz izVarA = gpVar.a();
        iz izVarK = izVarA.k();
        if (i == 0) {
            a(izVarA, 10, 46, true);
        } else if (i >= 10 && i < 37) {
            a(izVarA, 37, 46, false);
        } else if (i >= 37 && i < 46) {
            a(izVarA, 10, 37, false);
        } else {
            a(izVarA, 10, 46, false);
        }
        if (izVarA.a == 0) {
            gpVar.c(null);
        } else {
            gpVar.c();
        }
        if (izVarA.a == izVarK.a) {
            return null;
        }
        gpVar.a(izVarA);
        return izVarK;
    }
}
