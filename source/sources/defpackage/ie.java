package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ie extends gm {
    public ie(int i) {
        super(i);
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, gs gsVar, fd fdVar, int i, int i2, int i3, int i4) {
        if (fdVar.a(i, i2, i3) != uu.aT.bn) {
            if (i4 == 0) {
                i2--;
            }
            if (i4 == 1) {
                i2++;
            }
            if (i4 == 2) {
                i3--;
            }
            if (i4 == 3) {
                i3++;
            }
            if (i4 == 4) {
                i--;
            }
            if (i4 == 5) {
                i++;
            }
            if (!fdVar.d(i, i2, i3)) {
                return false;
            }
        }
        if (uu.aw.a(fdVar, i, i2, i3)) {
            izVar.a--;
            fdVar.f(i, i2, i3, uu.aw.bn);
        }
        return true;
    }
}
