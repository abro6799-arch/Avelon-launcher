package defpackage;

/* JADX INFO: loaded from: classes.dex */
public abstract class hm {
    public final String a;
    private boolean b;

    public abstract void a(nu nuVar);

    public abstract void b(nu nuVar);

    public hm(String str) {
        this.a = str;
    }

    public void a() {
        a(true);
    }

    public void a(boolean z) {
        this.b = z;
    }

    public boolean b() {
        return this.b;
    }
}
