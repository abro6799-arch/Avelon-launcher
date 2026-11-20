package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ny extends vr {
    public final int a;
    public final int b;
    public final ny c;
    public final iz d;
    private final String l;
    private gt m;
    private boolean n;

    @Override // defpackage.vr
    public boolean d() {
        return true;
    }

    public ny(int i, String str, int i2, int i3, gm gmVar, ny nyVar) {
        this(i, str, i2, i3, new iz(gmVar), nyVar);
    }

    public ny(int i, String str, int i2, int i3, uu uuVar, ny nyVar) {
        this(i, str, i2, i3, new iz(uuVar), nyVar);
    }

    public ny(int i, String str, int i2, int i3, iz izVar, ny nyVar) {
        super(i + 5242880, Cdo.a("achievement." + str));
        this.d = izVar;
        this.l = Cdo.a("achievement." + str + ".desc");
        this.a = i2;
        this.b = i3;
        if (i2 < ep.a) {
            ep.a = i2;
        }
        if (i3 < ep.b) {
            ep.b = i3;
        }
        if (i2 > ep.c) {
            ep.c = i2;
        }
        if (i3 > ep.d) {
            ep.d = i3;
        }
        this.c = nyVar;
    }

    @Override // defpackage.vr
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ny h() {
        this.g = true;
        return this;
    }

    public ny b() {
        this.n = true;
        return this;
    }

    @Override // defpackage.vr
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public ny g() {
        super.g();
        ep.e.add(this);
        return this;
    }

    public String e() {
        gt gtVar = this.m;
        if (gtVar != null) {
            return gtVar.a(this.l);
        }
        return this.l;
    }

    public ny a(gt gtVar) {
        this.m = gtVar;
        return this;
    }

    public boolean f() {
        return this.n;
    }
}
