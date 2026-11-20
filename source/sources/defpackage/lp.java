package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class lp extends gm {
    public lp(int i) {
        super(i);
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, gs gsVar, fd fdVar, int i, int i2, int i3, int i4) {
        if (i4 != 1) {
            return false;
        }
        int i5 = i2 + 1;
        ve veVar = (ve) uu.T;
        int iB = in.b(((double) ((gsVar.aS * 4.0f) / 360.0f)) + 0.5d) & 3;
        int i6 = iB == 0 ? 1 : 0;
        int i7 = iB == 1 ? -1 : 0;
        if (iB == 2) {
            i6 = -1;
        }
        if (iB == 3) {
            i7 = 1;
        }
        if (fdVar.d(i, i5, i3)) {
            int i8 = i7 + i;
            int i9 = i3 + i6;
            if (fdVar.d(i8, i5, i9)) {
                int i10 = i5 - 1;
                if (fdVar.h(i, i10, i3) && fdVar.h(i8, i10, i9)) {
                    fdVar.b(i, i5, i3, veVar.bn, iB);
                    fdVar.b(i8, i5, i9, veVar.bn, iB + 8);
                    izVar.a--;
                    return true;
                }
            }
        }
        return false;
    }
}
