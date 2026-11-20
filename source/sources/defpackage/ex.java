package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ex extends da {
    private String a;
    private String i;

    @Override // defpackage.da
    public void a() {
    }

    @Override // defpackage.da
    protected void a(char c, int i) {
    }

    public ex(String str, String str2, Object... objArr) {
        nh nhVarA = nh.a();
        this.a = nhVarA.a(str);
        if (objArr != null) {
            this.i = nhVarA.a(str2, objArr);
        } else {
            this.i = nhVarA.a(str2);
        }
    }

    @Override // defpackage.da
    public void b() {
        nh nhVarA = nh.a();
        this.e.clear();
        this.e.add(new ke(0, (this.c / 2) - 100, (this.d / 4) + 120 + 12, nhVarA.a("gui.toMenu")));
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.f == 0) {
            this.b.a(new fu());
        }
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        i();
        a(this.g, this.a, this.c / 2, (this.d / 2) - 50, 16777215);
        a(this.g, this.i, this.c / 2, (this.d / 2) - 10, 16777215);
        super.a(i, i2, f);
    }
}
