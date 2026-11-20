package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class aa extends dw {
    public mq a;
    public lw b;
    public boolean c;

    @Override // defpackage.dw
    public boolean b(gs gsVar) {
        return true;
    }

    public aa(ix ixVar) {
        this(ixVar, true);
    }

    public aa(ix ixVar, boolean z) {
        this.a = new mq(this, 2, 2);
        this.b = new wl();
        this.c = z;
        a(new yv(ixVar.d, this.a, this.b, 0, 144, 36));
        for (int i = 0; i < 2; i++) {
            for (int i2 = 0; i2 < 2; i2++) {
                a(new gp(this.a, (i * 2) + i2, (i2 * 18) + 88, (i * 18) + 26));
            }
        }
        for (int i3 = 0; i3 < 4; i3++) {
            a(new pv(this, ixVar, (ixVar.a() - 1) - i3, 8, (i3 * 18) + 8, i3));
        }
        for (int i4 = 0; i4 < 3; i4++) {
            for (int i5 = 0; i5 < 9; i5++) {
                a(new gp(ixVar, ((i4 + 1) * 9) + i5, (i5 * 18) + 8, (i4 * 18) + 84));
            }
        }
        for (int i6 = 0; i6 < 9; i6++) {
            a(new gp(ixVar, i6, (i6 * 18) + 8, 142));
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
        for (int i = 0; i < 4; i++) {
            iz izVarF_ = this.a.f_(i);
            if (izVarF_ != null) {
                gsVar.a(izVarF_);
                this.a.a(i, (iz) null);
            }
        }
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
            a(izVarA, 9, 45, true);
        } else if (i >= 9 && i < 36) {
            a(izVarA, 36, 45, false);
        } else if (i >= 36 && i < 45) {
            a(izVarA, 9, 36, false);
        } else {
            a(izVarA, 9, 45, false);
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
