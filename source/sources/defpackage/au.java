package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class au extends dq {
    private static uu[] bk = {uu.x, uu.ak, uu.al, uu.u, uu.R, uu.ap, uu.I, uu.aj, uu.J, uu.ai, uu.H, uu.ax, uu.ay, uu.aU, uu.bc, uu.O, uu.P};

    protected au(int i, bu buVar) {
        super(i, 2, buVar, bk);
    }

    @Override // defpackage.gm
    public boolean a(uu uuVar) {
        if (uuVar == uu.aq) {
            return this.a.d() == 3;
        }
        if (uuVar == uu.ay || uuVar == uu.ax) {
            return this.a.d() >= 2;
        }
        if (uuVar == uu.ai || uuVar == uu.H) {
            return this.a.d() >= 2;
        }
        if (uuVar == uu.aj || uuVar == uu.I) {
            return this.a.d() >= 1;
        }
        if (uuVar == uu.P || uuVar == uu.O) {
            return this.a.d() >= 1;
        }
        if (uuVar == uu.aO || uuVar == uu.aP) {
            return this.a.d() >= 2;
        }
        return uuVar.bA == ln.e || uuVar.bA == ln.f;
    }
}
