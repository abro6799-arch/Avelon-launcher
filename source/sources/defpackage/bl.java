package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class bl extends gm {
    public bl(int i) {
        super(i);
        d(1);
        e(238);
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, int i, int i2, int i3, int i4, ls lsVar) {
        if (i == uu.L.bn || i == uu.X.bn) {
            izVar.a(1, lsVar);
        }
        return super.a(izVar, i, i2, i3, i4, lsVar);
    }

    @Override // defpackage.gm
    public boolean a(uu uuVar) {
        return uuVar.bn == uu.X.bn;
    }

    @Override // defpackage.gm
    public float a(iz izVar, uu uuVar) {
        if (uuVar.bn == uu.X.bn || uuVar.bn == uu.L.bn) {
            return 15.0f;
        }
        if (uuVar.bn == uu.ac.bn) {
            return 5.0f;
        }
        return super.a(izVar, uuVar);
    }
}
