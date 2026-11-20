package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class lv extends gm {
    private int a;

    public lv(int i, uu uuVar) {
        super(i);
        this.a = uuVar.bn;
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, gs gsVar, fd fdVar, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8 = i4;
        if (fdVar.a(i, i2, i3) == uu.aT.bn) {
            i7 = i;
            i5 = i2;
            i6 = i3;
            i8 = 0;
        } else {
            i5 = i8 == 0 ? i2 - 1 : i2;
            if (i8 == 1) {
                i5++;
            }
            i6 = i8 == 2 ? i3 - 1 : i3;
            if (i8 == 3) {
                i6++;
            }
            i7 = i8 == 4 ? i - 1 : i;
            if (i8 == 5) {
                i7++;
            }
        }
        if (izVar.a == 0) {
            return false;
        }
        if (fdVar.a(this.a, i7, i5, i6, false, i8)) {
            uu[] uuVarArr = uu.m;
            int i9 = this.a;
            uu uuVar = uuVarArr[i9];
            if (fdVar.f(i7, i5, i6, i9)) {
                int i10 = i7;
                int i11 = i5;
                int i12 = i6;
                uu.m[this.a].e(fdVar, i10, i11, i12, i8);
                uu.m[this.a].a(fdVar, i10, i11, i12, (ls) gsVar);
                fdVar.a(i7 + 0.5f, i5 + 0.5f, i6 + 0.5f, uuVar.by.d(), (uuVar.by.b() + 1.0f) / 2.0f, uuVar.by.c() * 0.8f);
                izVar.a--;
            }
        }
        return true;
    }
}
