package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class yv extends gp {
    private final lw d;
    private gs e;

    @Override // defpackage.gp
    public boolean b(iz izVar) {
        return false;
    }

    public yv(gs gsVar, lw lwVar, lw lwVar2, int i, int i2, int i3) {
        super(lwVar2, i, i2, i3);
        this.e = gsVar;
        this.d = lwVar;
    }

    @Override // defpackage.gp
    public void a(iz izVar) {
        izVar.b(this.e.aI, this.e);
        if (izVar.c == uu.az.bn) {
            this.e.a(ep.h, 1);
        } else if (izVar.c == gm.r.bf) {
            this.e.a(ep.i, 1);
        } else if (izVar.c == uu.aC.bn) {
            this.e.a(ep.j, 1);
        } else if (izVar.c == gm.L.bf) {
            this.e.a(ep.l, 1);
        } else if (izVar.c == gm.S.bf) {
            this.e.a(ep.m, 1);
        } else if (izVar.c == gm.aX.bf) {
            this.e.a(ep.n, 1);
        } else if (izVar.c == gm.v.bf) {
            this.e.a(ep.o, 1);
        } else if (izVar.c == gm.p.bf) {
            this.e.a(ep.r, 1);
        }
        for (int i = 0; i < this.d.a(); i++) {
            iz izVarF_ = this.d.f_(i);
            if (izVarF_ != null) {
                this.d.a(i, 1);
                if (izVarF_.a().j()) {
                    this.d.a(i, new iz(izVarF_.a().i()));
                }
            }
        }
    }
}
