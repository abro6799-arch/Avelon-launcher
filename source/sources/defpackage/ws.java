package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ws extends pg {
    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        int i4;
        int iA;
        int iNextInt = random.nextInt(4) + 6;
        int iNextInt2 = random.nextInt(2) + 1;
        int i5 = iNextInt - iNextInt2;
        int iNextInt3 = random.nextInt(2) + 2;
        if (i2 < 1) {
            return false;
        }
        int i6 = i2 + iNextInt;
        int i7 = 128;
        if (i6 + 1 > 128) {
            return false;
        }
        int i8 = i2;
        boolean z = true;
        while (i8 <= i2 + 1 + iNextInt && z) {
            int i9 = i8 - i2 < iNextInt2 ? 0 : iNextInt3;
            int i10 = i - i9;
            while (i10 <= i + i9 && z) {
                int i11 = i3 - i9;
                while (i11 <= i3 + i9 && z) {
                    if (i8 < 0 || i8 >= i7 || ((iA = fdVar.a(i10, i8, i11)) != 0 && iA != uu.L.bn)) {
                        z = false;
                    }
                    i11++;
                    i7 = 128;
                }
                i10++;
                i7 = 128;
            }
            i8++;
            i7 = 128;
        }
        if (!z) {
            return false;
        }
        int i12 = i2 - 1;
        int iA2 = fdVar.a(i, i12, i3);
        if ((iA2 != uu.v.bn && iA2 != uu.w.bn) || i2 >= (128 - iNextInt) - 1) {
            return false;
        }
        fdVar.c(i, i12, i3, uu.w.bn);
        int iNextInt4 = random.nextInt(2);
        int i13 = 1;
        int i14 = 0;
        int i15 = 0;
        while (i14 <= i5) {
            int i16 = i6 - i14;
            int i17 = i - iNextInt4;
            while (i17 <= i + iNextInt4) {
                int i18 = i17 - i;
                int i19 = i3 - iNextInt4;
                while (i19 <= i3 + iNextInt4) {
                    int i20 = i19 - i3;
                    if ((Math.abs(i18) == iNextInt4 && Math.abs(i20) == iNextInt4 && iNextInt4 > 0) || uu.o[fdVar.a(i17, i16, i19)]) {
                        i4 = i19;
                    } else {
                        i4 = i19;
                        fdVar.a(i17, i16, i4, uu.L.bn, 1);
                    }
                    i19 = i4 + 1;
                    i13 = i13;
                    i5 = i5;
                    i17 = i17;
                    i16 = i16;
                }
                i17++;
                i5 = i5;
            }
            int i21 = i5;
            int i22 = i13;
            if (iNextInt4 >= i22) {
                i13 = i22 + 1;
                if (i13 > iNextInt3) {
                    i13 = iNextInt3;
                }
                iNextInt4 = i15;
                i15 = 1;
            } else {
                iNextInt4++;
                i13 = i22;
            }
            i14++;
            i5 = i21;
        }
        int iNextInt5 = random.nextInt(3);
        for (int i23 = 0; i23 < iNextInt - iNextInt5; i23++) {
            int i24 = i2 + i23;
            int iA3 = fdVar.a(i, i24, i3);
            if (iA3 == 0 || iA3 == uu.L.bn) {
                fdVar.a(i, i24, i3, uu.K.bn, 1);
            }
        }
        return true;
    }
}
