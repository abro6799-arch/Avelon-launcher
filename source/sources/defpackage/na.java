package defpackage;

/* JADX INFO: loaded from: classes.dex */
class na implements pu {
    final /* synthetic */ ed a;
    final /* synthetic */ lt b;

    na(lt ltVar, ed edVar) {
        this.b = ltVar;
        this.a = edVar;
    }

    @Override // defpackage.pu
    public void a(lb lbVar) {
        this.a.a(lbVar);
    }

    @Override // defpackage.pu
    public void a(pn pnVar) {
        throw new RuntimeException("Coding failure in Argo:  Attempt to add a field to an array.");
    }
}
