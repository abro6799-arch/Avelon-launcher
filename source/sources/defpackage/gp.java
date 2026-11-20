package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class gp {
    public int a;
    public int b;
    public int c;
    private final int d;
    private final lw e;

    public boolean b(iz izVar) {
        return true;
    }

    public int e() {
        return -1;
    }

    public gp(lw lwVar, int i, int i2, int i3) {
        this.e = lwVar;
        this.d = i;
        this.b = i2;
        this.c = i3;
    }

    public void a(iz izVar) {
        c();
    }

    public iz a() {
        return this.e.f_(this.d);
    }

    public boolean b() {
        return a() != null;
    }

    public void c(iz izVar) {
        this.e.a(this.d, izVar);
        c();
    }

    public void c() {
        this.e.y_();
    }

    public int d() {
        return this.e.d();
    }

    public iz a(int i) {
        return this.e.a(this.d, i);
    }
}
