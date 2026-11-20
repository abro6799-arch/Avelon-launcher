package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class xo extends pg {
    private int a;

    public xo(int i) {
        this.a = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v6, types: [boolean, int] */
    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        if (fdVar.a(i, i2 + 1, i3) != uu.u.bn || fdVar.a(i, i2 - 1, i3) != uu.u.bn) {
            return false;
        }
        if (fdVar.a(i, i2, i3) != 0 && fdVar.a(i, i2, i3) != uu.u.bn) {
            return false;
        }
        int i4 = i - 1;
        int i5 = fdVar.a(i4, i2, i3) == uu.u.bn ? 1 : 0;
        int i6 = i + 1;
        if (fdVar.a(i6, i2, i3) == uu.u.bn) {
            i5++;
        }
        int i7 = i3 - 1;
        if (fdVar.a(i, i2, i7) == uu.u.bn) {
            i5++;
        }
        int i8 = i3 + 1;
        if (fdVar.a(i, i2, i8) == uu.u.bn) {
            i5++;
        }
        ?? D = fdVar.d(i4, i2, i3);
        int i9 = D;
        if (fdVar.d(i6, i2, i3)) {
            i9 = D + 1;
        }
        int i10 = i9;
        if (fdVar.d(i, i2, i7)) {
            i10 = i9 + 1;
        }
        int i11 = i10;
        if (fdVar.d(i, i2, i8)) {
            i11 = i10 + 1;
        }
        if (i5 == 3 && i11 == 1) {
            fdVar.f(i, i2, i3, this.a);
            fdVar.a = true;
            uu.m[this.a].a(fdVar, i, i2, i3, random);
            fdVar.a = false;
        }
        return true;
    }
}
