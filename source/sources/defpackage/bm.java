package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class bm extends dw {
    private sk a;
    private int b = 0;
    private int c = 0;
    private int h = 0;

    public bm(ix ixVar, sk skVar) {
        this.a = skVar;
        a(new gp(skVar, 0, 56, 17));
        a(new gp(skVar, 1, 56, 53));
        a(new vq(ixVar.d, skVar, 2, 116, 35));
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 9; i2++) {
                a(new gp(ixVar, (i * 9) + i2 + 9, (i2 * 18) + 8, (i * 18) + 84));
            }
        }
        for (int i3 = 0; i3 < 9; i3++) {
            a(new gp(ixVar, i3, (i3 * 18) + 8, 142));
        }
    }

    @Override // defpackage.dw
    public void a() {
        super.a();
        for (int i = 0; i < this.g.size(); i++) {
            ec ecVar = (ec) this.g.get(i);
            if (this.b != this.a.c) {
                ecVar.a(this, 0, this.a.c);
            }
            if (this.c != this.a.a) {
                ecVar.a(this, 1, this.a.a);
            }
            if (this.h != this.a.b) {
                ecVar.a(this, 2, this.a.b);
            }
        }
        this.b = this.a.c;
        this.c = this.a.a;
        this.h = this.a.b;
    }

    @Override // defpackage.dw
    public void a(int i, int i2) {
        if (i == 0) {
            this.a.c = i2;
        }
        if (i == 1) {
            this.a.a = i2;
        }
        if (i == 2) {
            this.a.b = i2;
        }
    }

    @Override // defpackage.dw
    public boolean b(gs gsVar) {
        return this.a.a_(gsVar);
    }

    @Override // defpackage.dw
    public iz a(int i) {
        gp gpVar = (gp) this.e.get(i);
        if (gpVar == null || !gpVar.b()) {
            return null;
        }
        iz izVarA = gpVar.a();
        iz izVarK = izVarA.k();
        if (i == 2) {
            a(izVarA, 3, 39, true);
        } else if (i >= 3 && i < 30) {
            a(izVarA, 30, 39, false);
        } else if (i >= 30 && i < 39) {
            a(izVarA, 3, 30, false);
        } else {
            a(izVarA, 3, 39, false);
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
