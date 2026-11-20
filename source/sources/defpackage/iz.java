package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class iz {
    public int a;
    public int b;
    public int c;
    private int d;

    public void a(gs gsVar) {
    }

    public iz(uu uuVar) {
        this(uuVar, 1);
    }

    public iz(uu uuVar, int i) {
        this(uuVar.bn, i, 0);
    }

    public iz(uu uuVar, int i, int i2) {
        this(uuVar.bn, i, i2);
    }

    public iz(gm gmVar) {
        this(gmVar.bf, 1, 0);
    }

    public iz(gm gmVar, int i) {
        this(gmVar.bf, i, 0);
    }

    public iz(gm gmVar, int i, int i2) {
        this(gmVar.bf, i, i2);
    }

    public iz(int i, int i2, int i3) {
        this.c = i;
        this.a = i2;
        this.d = i3;
    }

    public iz(nu nuVar) {
        this.a = 0;
        b(nuVar);
    }

    public iz a(int i) {
        this.a -= i;
        return new iz(this.c, i, this.d);
    }

    public gm a() {
        return gm.c[this.c];
    }

    public int b() {
        return a().b(this);
    }

    public boolean a(gs gsVar, fd fdVar, int i, int i2, int i3, int i4) {
        boolean zA = a().a(this, gsVar, fdVar, i, i2, i3, i4);
        if (zA) {
            gsVar.a(jl.E[this.c], 1);
        }
        return zA;
    }

    public float a(uu uuVar) {
        return a().a(this, uuVar);
    }

    public iz a(fd fdVar, gs gsVar) {
        return a().a(this, fdVar, gsVar);
    }

    public nu a(nu nuVar) {
        nuVar.a("id", (short) this.c);
        nuVar.a("Count", (byte) this.a);
        nuVar.a("Damage", (short) this.d);
        return nuVar;
    }

    public void b(nu nuVar) {
        this.c = nuVar.d("id");
        this.a = nuVar.c("Count");
        this.d = nuVar.d("Damage");
    }

    public int c() {
        return a().d();
    }

    public boolean d() {
        return c() > 1 && !(e() && g());
    }

    public boolean e() {
        return gm.c[this.c].f() > 0;
    }

    public boolean f() {
        return gm.c[this.c].e();
    }

    public boolean g() {
        return e() && this.d > 0;
    }

    public int h() {
        return this.d;
    }

    public int i() {
        return this.d;
    }

    public void b(int i) {
        this.d = i;
    }

    public int j() {
        return gm.c[this.c].f();
    }

    public void a(int i, sn snVar) {
        if (e()) {
            int i2 = this.d + i;
            this.d = i2;
            if (i2 > j()) {
                if (snVar instanceof gs) {
                    ((gs) snVar).a(jl.F[this.c], 1);
                }
                int i3 = this.a - 1;
                this.a = i3;
                if (i3 < 0) {
                    this.a = 0;
                }
                this.d = 0;
            }
        }
    }

    public void a(ls lsVar, gs gsVar) {
        if (gm.c[this.c].a(this, lsVar, gsVar)) {
            gsVar.a(jl.E[this.c], 1);
        }
    }

    public void a(int i, int i2, int i3, int i4, gs gsVar) {
        if (gm.c[this.c].a(this, i, i2, i3, i4, gsVar)) {
            gsVar.a(jl.E[this.c], 1);
        }
    }

    public int a(sn snVar) {
        return gm.c[this.c].a(snVar);
    }

    public boolean b(uu uuVar) {
        return gm.c[this.c].a(uuVar);
    }

    public void a(ls lsVar) {
        gm.c[this.c].a(this, lsVar);
    }

    public iz k() {
        return new iz(this.c, this.a, this.d);
    }

    public static boolean a(iz izVar, iz izVar2) {
        if (izVar == null && izVar2 == null) {
            return true;
        }
        if (izVar == null || izVar2 == null) {
            return false;
        }
        return izVar.d(izVar2);
    }

    private boolean d(iz izVar) {
        return this.a == izVar.a && this.c == izVar.c && this.d == izVar.d;
    }

    public boolean a(iz izVar) {
        return this.c == izVar.c && this.d == izVar.d;
    }

    public String l() {
        return gm.c[this.c].a(this);
    }

    public static iz b(iz izVar) {
        if (izVar == null) {
            return null;
        }
        return izVar.k();
    }

    public String toString() {
        return this.a + "x" + gm.c[this.c].a() + "@" + this.d;
    }

    public void a(fd fdVar, sn snVar, int i, boolean z) {
        int i2 = this.b;
        if (i2 > 0) {
            this.b = i2 - 1;
        }
        gm.c[this.c].a(this, fdVar, snVar, i, z);
    }

    public void b(fd fdVar, gs gsVar) {
        gsVar.a(jl.D[this.c], this.a);
        gm.c[this.c].b(this, fdVar, gsVar);
    }

    public boolean c(iz izVar) {
        return this.c == izVar.c && this.a == izVar.a && this.d == izVar.d;
    }
}
