package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class la extends gm {
    @Override // defpackage.gm
    public boolean b() {
        return true;
    }

    public la(int i, bu buVar) {
        super(i);
        this.bg = 1;
        e(buVar.a());
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, gs gsVar, fd fdVar, int i, int i2, int i3, int i4) {
        int iA = fdVar.a(i, i2, i3);
        int iA2 = fdVar.a(i, i2 + 1, i3);
        if ((i4 == 0 || iA2 != 0 || iA != uu.v.bn) && iA != uu.w.bn) {
            return false;
        }
        uu uuVar = uu.aB;
        fdVar.a(i + 0.5f, i2 + 0.5f, i3 + 0.5f, uuVar.by.d(), (uuVar.by.b() + 1.0f) / 2.0f, uuVar.by.c() * 0.8f);
        if (fdVar.B) {
            return true;
        }
        fdVar.f(i, i2, i3, uuVar.bn);
        izVar.a(1, gsVar);
        return true;
    }
}
