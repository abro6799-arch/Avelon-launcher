package defpackage;

/* JADX INFO: loaded from: classes.dex */
public enum lk {
    monster(ff.class, 70, ln.a, false),
    creature(bg.class, 15, ln.a, true),
    waterCreature(ar.class, 5, ln.g, true);

    private final Class d;
    private final int e;
    private final ln f;
    private final boolean g;

    lk(Class cls, int i, ln lnVar, boolean z) {
        this.d = cls;
        this.e = i;
        this.f = lnVar;
        this.g = z;
    }

    public Class a() {
        return this.d;
    }

    public int b() {
        return this.e;
    }

    public ln c() {
        return this.f;
    }

    public boolean d() {
        return this.g;
    }
}
