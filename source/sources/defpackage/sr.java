package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class sr implements yn {
    private dr a = w.a();
    private double b;
    private double c;
    private double d;

    @Override // defpackage.yn
    public void a(double d, double d2, double d3) {
        this.b = d;
        this.c = d2;
        this.d = d3;
    }

    public boolean a(double d, double d2, double d3, double d4, double d5, double d6) {
        dr drVar = this.a;
        double d7 = this.b;
        double d8 = this.c;
        double d9 = this.d;
        return drVar.a(d - d7, d2 - d8, d3 - d9, d4 - d7, d5 - d8, d6 - d9);
    }

    @Override // defpackage.yn
    public boolean a(eq eqVar) {
        return a(eqVar.a, eqVar.b, eqVar.c, eqVar.d, eqVar.e, eqVar.f);
    }
}
