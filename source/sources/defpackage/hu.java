package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class hu extends gm {
    private ln a;

    public hu(int i, ln lnVar) {
        super(i);
        this.a = lnVar;
        this.bg = 1;
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, gs gsVar, fd fdVar, int i, int i2, int i3, int i4) {
        if (i4 != 1) {
            return false;
        }
        int i5 = i2 + 1;
        uu uuVar = this.a == ln.d ? uu.aF : uu.aM;
        if (!uuVar.a(fdVar, i, i5, i3)) {
            return false;
        }
        int iB = in.b(((double) (((gsVar.aS + 180.0f) * 4.0f) / 360.0f)) - 0.5d) & 3;
        int i6 = iB == 0 ? 1 : 0;
        int i7 = iB == 1 ? -1 : 0;
        if (iB == 2) {
            i6 = -1;
        }
        if (iB == 3) {
            i7 = 1;
        }
        int i8 = i - i7;
        int i9 = i3 - i6;
        int i10 = i5 + 1;
        int i11 = i7 + i;
        int i12 = i6 + i3;
        if (((fdVar.a(i8, i5, i9) == uuVar.bn || fdVar.a(i8, i10, i9) == uuVar.bn) && !(fdVar.a(i11, i5, i12) == uuVar.bn || fdVar.a(i11, i10, i12) == uuVar.bn)) || (fdVar.h(i11, i5, i12) ? 1 : 0) + (fdVar.h(i11, i10, i12) ? 1 : 0) > (fdVar.h(i8, i5, i9) ? 1 : 0) + (fdVar.h(i8, i10, i9) ? 1 : 0)) {
            iB = ((iB - 1) & 3) + 4;
        }
        int i13 = iB;
        fdVar.o = true;
        fdVar.b(i, i5, i3, uuVar.bn, i13);
        fdVar.b(i, i10, i3, uuVar.bn, i13 + 8);
        fdVar.o = false;
        fdVar.i(i, i5, i3, uuVar.bn);
        fdVar.i(i, i10, i3, uuVar.bn);
        izVar.a--;
        return true;
    }
}
