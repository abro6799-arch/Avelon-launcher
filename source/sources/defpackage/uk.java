package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class uk extends ow {
    private static List m = new ArrayList();
    private int a;
    private int b;
    private int c;
    private boolean i;
    private boolean j;
    private float k;
    private float l;

    public uk() {
    }

    public uk(int i, int i2, int i3, boolean z, boolean z2) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.i = z;
        this.j = z2;
    }

    public int a() {
        return this.a;
    }

    @Override // defpackage.ow
    public int e() {
        return this.b;
    }

    public boolean b() {
        return this.i;
    }

    public int d() {
        return this.c;
    }

    public boolean k() {
        return this.j;
    }

    public float a(float f) {
        if (f > 1.0f) {
            f = 1.0f;
        }
        float f2 = this.l;
        return f2 + ((this.k - f2) * f);
    }

    public float b(float f) {
        if (this.i) {
            return (a(f) - 1.0f) * wj.b[this.c];
        }
        return (1.0f - a(f)) * wj.b[this.c];
    }

    public float c(float f) {
        if (this.i) {
            return (a(f) - 1.0f) * wj.c[this.c];
        }
        return (1.0f - a(f)) * wj.c[this.c];
    }

    public float d(float f) {
        if (this.i) {
            return (a(f) - 1.0f) * wj.d[this.c];
        }
        return (1.0f - a(f)) * wj.d[this.c];
    }

    private void a(float f, float f2) {
        eq eqVarA = uu.ad.a(this.d, this.e, this.f, this.g, this.a, !this.i ? f - 1.0f : 1.0f - f, this.c);
        if (eqVarA != null) {
            List listB = this.d.b((sn) null, eqVarA);
            if (listB.isEmpty()) {
                return;
            }
            m.addAll(listB);
            Iterator it = m.iterator();
            while (it.hasNext()) {
                ((sn) it.next()).b(wj.b[this.c] * f2, wj.c[this.c] * f2, wj.d[this.c] * f2);
            }
            m.clear();
        }
    }

    public void l() {
        if (this.l < 1.0f) {
            this.k = 1.0f;
            this.l = 1.0f;
            this.d.p(this.e, this.f, this.g);
            i();
            if (this.d.a(this.e, this.f, this.g) == uu.ad.bn) {
                this.d.b(this.e, this.f, this.g, this.a, this.b);
            }
        }
    }

    @Override // defpackage.ow
    public void n_() {
        float f = this.k;
        this.l = f;
        if (f >= 1.0f) {
            a(1.0f, 0.25f);
            this.d.p(this.e, this.f, this.g);
            i();
            if (this.d.a(this.e, this.f, this.g) == uu.ad.bn) {
                this.d.b(this.e, this.f, this.g, this.a, this.b);
                return;
            }
            return;
        }
        float f2 = 0.5f + f;
        this.k = f2;
        if (f2 >= 1.0f) {
            this.k = 1.0f;
        }
        if (this.i) {
            float f3 = this.k;
            a(f3, (f3 - f) + 0.0625f);
        }
    }

    @Override // defpackage.ow
    public void a(nu nuVar) {
        super.a(nuVar);
        this.a = nuVar.e("blockId");
        this.b = nuVar.e("blockData");
        this.c = nuVar.e("facing");
        float fG = nuVar.g("progress");
        this.k = fG;
        this.l = fG;
        this.i = nuVar.m("extending");
    }

    @Override // defpackage.ow
    public void b(nu nuVar) {
        super.b(nuVar);
        nuVar.a("blockId", this.a);
        nuVar.a("blockData", this.b);
        nuVar.a("facing", this.c);
        nuVar.a("progress", this.l);
        nuVar.a("extending", this.i);
    }
}
