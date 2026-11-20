package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class qt extends da {
    private da a;
    private String i;
    private String j;
    private String l;
    private String m;
    private int n;

    public qt(da daVar, String str, String str2, String str3, String str4, int i) {
        this.a = daVar;
        this.i = str;
        this.j = str2;
        this.l = str3;
        this.m = str4;
        this.n = i;
    }

    @Override // defpackage.da
    public void b() {
        this.e.add(new ab(0, ((this.c / 2) - 155) + 0, (this.d / 6) + 96, this.l));
        this.e.add(new ab(1, ((this.c / 2) - 155) + 160, (this.d / 6) + 96, this.m));
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        this.a.a(keVar.f == 0, this.n);
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        i();
        a(this.g, this.i, this.c / 2, 70, 16777215);
        a(this.g, this.j, this.c / 2, 90, 16777215);
        super.a(i, i2, f);
    }
}
