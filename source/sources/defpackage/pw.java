package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class pw extends pg {
    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        int iA;
        int iNextInt = random.nextInt(5) + 7;
        int iNextInt2 = (iNextInt - random.nextInt(2)) - 3;
        int iNextInt3 = random.nextInt((iNextInt - iNextInt2) + 1) + 1;
        if (i2 >= 1) {
            int i4 = i2 + iNextInt;
            int i5 = 128;
            if (i4 + 1 <= 128) {
                int i6 = i2;
                boolean z = true;
                while (i6 <= i2 + 1 + iNextInt && z) {
                    int i7 = i6 - i2 < iNextInt2 ? 0 : iNextInt3;
                    int i8 = i - i7;
                    while (i8 <= i + i7 && z) {
                        int i9 = i3 - i7;
                        while (i9 <= i3 + i7 && z) {
                            if (i6 < 0 || i6 >= i5 || ((iA = fdVar.a(i8, i6, i9)) != 0 && iA != uu.L.bn)) {
                                z = false;
                            }
                            i9++;
                            i5 = 128;
                        }
                        i8++;
                        i5 = 128;
                    }
                    i6++;
                    i5 = 128;
                }
                if (!z) {
                    return false;
                }
                int i10 = i2 - 1;
                int iA2 = fdVar.a(i, i10, i3);
                if ((iA2 != uu.v.bn && iA2 != uu.w.bn) || i2 >= (128 - iNextInt) - 1) {
                    return false;
                }
                fdVar.c(i, i10, i3, uu.w.bn);
                int i11 = i4;
                int i12 = 0;
                while (true) {
                    int i13 = i2 + iNextInt2;
                    if (i11 < i13) {
                        break;
                    }
                    int i14 = i - i12;
                    while (i14 <= i + i12) {
                        int i15 = i14 - i;
                        int i16 = i3 - i12;
                        while (i16 <= i3 + i12) {
                            int i17 = i16 - i3;
                            if ((Math.abs(i15) != i12 || Math.abs(i17) != i12 || i12 <= 0) && !uu.o[fdVar.a(i14, i11, i16)]) {
                                fdVar.a(i14, i11, i16, uu.L.bn, 1);
                            }
                            i16++;
                            i13 = i13;
                            i14 = i14;
                        }
                        i14++;
                    }
                    int i18 = i13;
                    if (i12 >= 1 && i11 == i18 + 1) {
                        i12--;
                    } else if (i12 < iNextInt3) {
                        i12++;
                    }
                    i11--;
                }
                for (int i19 = 0; i19 < iNextInt - 1; i19++) {
                    int i20 = i2 + i19;
                    int iA3 = fdVar.a(i, i20, i3);
                    if (iA3 == 0 || iA3 == uu.L.bn) {
                        fdVar.a(i, i20, i3, uu.K.bn, 1);
                    }
                }
                return true;
            }
        }
        return false;
    }
}
