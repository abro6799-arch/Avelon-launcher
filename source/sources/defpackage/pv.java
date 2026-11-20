package defpackage;

/* JADX INFO: loaded from: classes.dex */
class pv extends gp {
    final /* synthetic */ int d;
    final /* synthetic */ aa e;

    @Override // defpackage.gp
    public int d() {
        return 1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    pv(aa aaVar, lw lwVar, int i, int i2, int i3, int i4) {
        super(lwVar, i, i2, i3);
        this.e = aaVar;
        this.d = i4;
    }

    @Override // defpackage.gp
    public boolean b(iz izVar) {
        if (izVar.a() instanceof wa) {
            return ((wa) izVar.a()).bk == this.d;
        }
        return izVar.a().bf == uu.bb.bn && this.d == 0;
    }
}
