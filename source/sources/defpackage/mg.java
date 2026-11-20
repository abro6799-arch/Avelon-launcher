package defpackage;

import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
class mg extends lg {
    final /* synthetic */ rq a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mg(rq rqVar) {
        super(rqVar.b, rqVar.c, rqVar.d, 32, rqVar.d - 64, 36);
        this.a = rqVar;
    }

    @Override // defpackage.lg
    protected int a() {
        return this.a.n.size();
    }

    @Override // defpackage.lg
    protected void a(int i, boolean z) {
        this.a.m = i;
        boolean z2 = this.a.m >= 0 && this.a.m < a();
        this.a.t.g = z2;
        this.a.s.g = z2;
        this.a.u.g = z2;
        if (z && z2) {
            this.a.e(i);
        }
    }

    @Override // defpackage.lg
    protected boolean c_(int i) {
        return i == this.a.m;
    }

    @Override // defpackage.lg
    protected int b() {
        return this.a.n.size() * 36;
    }

    @Override // defpackage.lg
    protected void c() {
        this.a.i();
    }

    @Override // defpackage.lg
    protected void a(int i, int i2, int i3, int i4, nw nwVar) {
        String str;
        vb vbVar = (vb) this.a.n.get(i);
        String strB = vbVar.b();
        if (strB == null || in.a(strB)) {
            strB = this.a.p + " " + (i + 1);
        }
        String str2 = strB;
        String str3 = (vbVar.a() + " (" + this.a.j.format(new Date(vbVar.e()))) + ", " + ((((vbVar.c() / 1024) * 100) / 1024) / 100.0f) + " MB)";
        if (vbVar.d()) {
            str = this.a.q + " ";
        } else {
            str = "";
        }
        rq rqVar = this.a;
        int i5 = i2 + 2;
        rqVar.b(rqVar.g, str2, i5, i3 + 1, 16777215);
        rq rqVar2 = this.a;
        int i6 = i3 + 12;
        rqVar2.b(rqVar2.g, str3, i5, i6, 8421504);
        rq rqVar3 = this.a;
        rqVar3.b(rqVar3.g, str, i5, i6 + 10, 8421504);
    }
}
