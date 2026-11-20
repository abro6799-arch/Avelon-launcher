package defpackage;

/* JADX INFO: loaded from: classes.dex */
class nc implements pu {
    final /* synthetic */ pn a;
    final /* synthetic */ lt b;

    nc(lt ltVar, pn pnVar) {
        this.b = ltVar;
        this.a = pnVar;
    }

    @Override // defpackage.pu
    public void a(lb lbVar) {
        this.a.b(lbVar);
    }

    @Override // defpackage.pu
    public void a(pn pnVar) {
        throw new RuntimeException("Coding failure in Argo:  Attempt to add a field to a field.");
    }
}
