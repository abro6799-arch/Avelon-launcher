package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class vq extends gp {
    private gs d;

    @Override // defpackage.gp
    public boolean b(iz izVar) {
        return false;
    }

    public vq(gs gsVar, lw lwVar, int i, int i2, int i3) {
        super(lwVar, i, i2, i3);
        this.d = gsVar;
    }

    @Override // defpackage.gp
    public void a(iz izVar) {
        izVar.b(this.d.aI, this.d);
        if (izVar.c == gm.m.bf) {
            this.d.a(ep.k, 1);
        }
        if (izVar.c == gm.aT.bf) {
            this.d.a(ep.p, 1);
        }
        super.a(izVar);
    }
}
