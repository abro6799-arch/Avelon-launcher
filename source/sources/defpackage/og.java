package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class og implements lw {
    private String a;
    private lw b;
    private lw c;

    public og(String str, lw lwVar, lw lwVar2) {
        this.a = str;
        this.b = lwVar;
        this.c = lwVar2;
    }

    @Override // defpackage.lw
    public int a() {
        return this.b.a() + this.c.a();
    }

    @Override // defpackage.lw
    public String c() {
        return this.a;
    }

    @Override // defpackage.lw
    public iz f_(int i) {
        return i >= this.b.a() ? this.c.f_(i - this.b.a()) : this.b.f_(i);
    }

    @Override // defpackage.lw
    public iz a(int i, int i2) {
        return i >= this.b.a() ? this.c.a(i - this.b.a(), i2) : this.b.a(i, i2);
    }

    @Override // defpackage.lw
    public void a(int i, iz izVar) {
        if (i >= this.b.a()) {
            this.c.a(i - this.b.a(), izVar);
        } else {
            this.b.a(i, izVar);
        }
    }

    @Override // defpackage.lw
    public int d() {
        return this.b.d();
    }

    @Override // defpackage.lw
    public void y_() {
        this.b.y_();
        this.c.y_();
    }

    @Override // defpackage.lw
    public boolean a_(gs gsVar) {
        return this.b.a_(gsVar) && this.c.a_(gsVar);
    }
}
