package defpackage;

/* JADX INFO: loaded from: classes.dex */
class my implements pu {
    final /* synthetic */ sx a;
    final /* synthetic */ lt b;

    my(lt ltVar, sx sxVar) {
        this.b = ltVar;
        this.a = sxVar;
    }

    @Override // defpackage.pu
    public void a(lb lbVar) {
        throw new RuntimeException("Coding failure in Argo:  Attempt to add a node to an object.");
    }

    @Override // defpackage.pu
    public void a(pn pnVar) {
        this.a.a(pnVar);
    }
}
