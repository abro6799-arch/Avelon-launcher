package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class wl implements lw {
    private iz[] a = new iz[1];

    @Override // defpackage.lw
    public int a() {
        return 1;
    }

    @Override // defpackage.lw
    public boolean a_(gs gsVar) {
        return true;
    }

    @Override // defpackage.lw
    public String c() {
        return "Result";
    }

    @Override // defpackage.lw
    public int d() {
        return 64;
    }

    @Override // defpackage.lw
    public void y_() {
    }

    @Override // defpackage.lw
    public iz f_(int i) {
        return this.a[i];
    }

    @Override // defpackage.lw
    public iz a(int i, int i2) {
        iz[] izVarArr = this.a;
        iz izVar = izVarArr[i];
        if (izVar == null) {
            return null;
        }
        izVarArr[i] = null;
        return izVar;
    }

    @Override // defpackage.lw
    public void a(int i, iz izVar) {
        this.a[i] = izVar;
    }
}
