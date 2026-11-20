package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class eg extends ow {
    public int a;

    @Override // defpackage.ow
    public void a(nu nuVar) {
        super.a(nuVar);
        this.a = nuVar.e("Record");
    }

    @Override // defpackage.ow
    public void b(nu nuVar) {
        super.b(nuVar);
        int i = this.a;
        if (i > 0) {
            nuVar.a("Record", i);
        }
    }
}
