package defpackage;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class mm extends fd {
    private LinkedList C;
    private nb D;
    private uv E;
    private jx F;
    private Set G;
    private Set H;

    @Override // defpackage.fd
    public boolean a(boolean z) {
        return false;
    }

    @Override // defpackage.fd
    public void c(int i, int i2, int i3, int i4, int i5) {
    }

    @Override // defpackage.fd
    protected void n() {
    }

    public mm(nb nbVar, long j, int i) {
        super(new wy(), "MpServer", xa.a(i), j);
        this.C = new LinkedList();
        this.F = new jx();
        this.G = new HashSet();
        this.H = new HashSet();
        this.D = nbVar;
        a(new br(8, 64, 8));
        this.z = nbVar.b;
    }

    @Override // defpackage.fd
    public void l() {
        a(t() + 1);
        int iA = a(1.0f);
        int i = 0;
        if (iA != this.f) {
            this.f = iA;
            for (int i2 = 0; i2 < this.u.size(); i2++) {
                ((pm) this.u.get(i2)).e();
            }
        }
        for (int i3 = 0; i3 < 10 && !this.H.isEmpty(); i3++) {
            sn snVar = (sn) this.H.iterator().next();
            if (!this.b.contains(snVar)) {
                b(snVar);
            }
        }
        this.D.a();
        while (i < this.C.size()) {
            tm tmVar = (tm) this.C.get(i);
            int i4 = tmVar.d - 1;
            tmVar.d = i4;
            if (i4 == 0) {
                super.a(tmVar.a, tmVar.b, tmVar.c, tmVar.e, tmVar.f);
                super.j(tmVar.a, tmVar.b, tmVar.c);
                this.C.remove(i);
                i--;
            }
            i++;
        }
    }

    public void c(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = 0;
        while (i7 < this.C.size()) {
            tm tmVar = (tm) this.C.get(i7);
            if (tmVar.a >= i && tmVar.b >= i2 && tmVar.c >= i3 && tmVar.a <= i4 && tmVar.b <= i5 && tmVar.c <= i6) {
                this.C.remove(i7);
                i7--;
            }
            i7++;
        }
    }

    @Override // defpackage.fd
    protected cl b() {
        uv uvVar = new uv(this);
        this.E = uvVar;
        return uvVar;
    }

    @Override // defpackage.fd
    public void d() {
        a(new br(8, 64, 8));
    }

    public void a(int i, int i2, boolean z) {
        if (z) {
            this.E.c(i, i2);
        } else {
            this.E.d(i, i2);
        }
        if (z) {
            return;
        }
        int i3 = i * 16;
        int i4 = i2 * 16;
        b(i3, 0, i4, i3 + 15, 128, i4 + 15);
    }

    @Override // defpackage.fd
    public boolean b(sn snVar) {
        boolean zB = super.b(snVar);
        this.G.add(snVar);
        if (!zB) {
            this.H.add(snVar);
        }
        return zB;
    }

    @Override // defpackage.fd
    public void e(sn snVar) {
        super.e(snVar);
        this.G.remove(snVar);
    }

    @Override // defpackage.fd
    protected void c(sn snVar) {
        super.c(snVar);
        if (this.H.contains(snVar)) {
            this.H.remove(snVar);
        }
    }

    @Override // defpackage.fd
    protected void d(sn snVar) {
        super.d(snVar);
        if (this.G.contains(snVar)) {
            this.H.add(snVar);
        }
    }

    public void a(int i, sn snVar) {
        sn snVarB = b(i);
        if (snVarB != null) {
            e(snVarB);
        }
        this.G.add(snVar);
        snVar.aD = i;
        if (!b(snVar)) {
            this.H.add(snVar);
        }
        this.F.a(i, snVar);
    }

    public sn b(int i) {
        return (sn) this.F.a(i);
    }

    public sn c(int i) {
        sn snVar = (sn) this.F.b(i);
        if (snVar != null) {
            this.G.remove(snVar);
            e(snVar);
        }
        return snVar;
    }

    @Override // defpackage.fd
    public boolean e(int i, int i2, int i3, int i4) {
        int iA = a(i, i2, i3);
        int iE = e(i, i2, i3);
        if (!super.e(i, i2, i3, i4)) {
            return false;
        }
        this.C.add(new tm(this, i, i2, i3, iA, iE));
        return true;
    }

    @Override // defpackage.fd
    public boolean a(int i, int i2, int i3, int i4, int i5) {
        int iA = a(i, i2, i3);
        int iE = e(i, i2, i3);
        if (!super.a(i, i2, i3, i4, i5)) {
            return false;
        }
        this.C.add(new tm(this, i, i2, i3, iA, iE));
        return true;
    }

    @Override // defpackage.fd
    public boolean c(int i, int i2, int i3, int i4) {
        int iA = a(i, i2, i3);
        int iE = e(i, i2, i3);
        if (!super.c(i, i2, i3, i4)) {
            return false;
        }
        this.C.add(new tm(this, i, i2, i3, iA, iE));
        return true;
    }

    public boolean f(int i, int i2, int i3, int i4, int i5) {
        c(i, i2, i3, i, i2, i3);
        if (!super.a(i, i2, i3, i4, i5)) {
            return false;
        }
        g(i, i2, i3, i4);
        return true;
    }

    @Override // defpackage.fd
    public void q() {
        this.D.a((ki) new yr("Quitting"));
    }

    @Override // defpackage.fd
    protected void m() {
        if (this.t.e) {
            return;
        }
        if (this.m > 0) {
            this.m--;
        }
        this.i = this.j;
        if (this.x.o()) {
            this.j = (float) (((double) this.j) + 0.01d);
        } else {
            this.j = (float) (((double) this.j) - 0.01d);
        }
        if (this.j < 0.0f) {
            this.j = 0.0f;
        }
        if (this.j > 1.0f) {
            this.j = 1.0f;
        }
        this.k = this.l;
        if (this.x.m()) {
            this.l = (float) (((double) this.l) + 0.01d);
        } else {
            this.l = (float) (((double) this.l) - 0.01d);
        }
        if (this.l < 0.0f) {
            this.l = 0.0f;
        }
        if (this.l > 1.0f) {
            this.l = 1.0f;
        }
    }
}
