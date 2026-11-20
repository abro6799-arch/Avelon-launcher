package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class k extends pg {
    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        int i4;
        int iA;
        int iNextInt = random.nextInt(3) + 5;
        if (i2 >= 1) {
            int i5 = i2 + iNextInt;
            int i6 = 128;
            if (i5 + 1 <= 128) {
                int i7 = i2;
                boolean z = true;
                while (true) {
                    int i8 = i2 + 1 + iNextInt;
                    if (i7 > i8) {
                        break;
                    }
                    int i9 = i7 < i8 + (-2) ? i7 == i2 ? 0 : 1 : 2;
                    int i10 = i - i9;
                    while (i10 <= i + i9 && z) {
                        int i11 = i3 - i9;
                        while (i11 <= i3 + i9 && z) {
                            if (i7 < 0 || i7 >= i6 || ((iA = fdVar.a(i10, i7, i11)) != 0 && iA != uu.L.bn)) {
                                z = false;
                            }
                            i11++;
                            i6 = 128;
                        }
                        i10++;
                        i6 = 128;
                    }
                    i7++;
                    i6 = 128;
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
                int i13 = (i2 - 3) + iNextInt;
                while (i13 <= i5) {
                    int i14 = i13 - i5;
                    int i15 = 1 - (i14 / 2);
                    int i16 = i - i15;
                    while (i16 <= i + i15) {
                        int i17 = i16 - i;
                        int i18 = i3 - i15;
                        while (i18 <= i3 + i15) {
                            int i19 = i18 - i3;
                            if ((Math.abs(i17) == i15 && Math.abs(i19) == i15 && (random.nextInt(2) == 0 || i14 == 0)) || uu.o[fdVar.a(i16, i13, i18)]) {
                                i4 = i18;
                            } else {
                                i4 = i18;
                                fdVar.a(i16, i13, i4, uu.L.bn, 2);
                            }
                            i18 = i4 + 1;
                            i13 = i13;
                            i16 = i16;
                            i15 = i15;
                        }
                        i16++;
                    }
                    i13++;
                }
                for (int i20 = 0; i20 < iNextInt; i20++) {
                    int i21 = i2 + i20;
                    int iA3 = fdVar.a(i, i21, i3);
                    if (iA3 == 0 || iA3 == uu.L.bn) {
                        fdVar.a(i, i21, i3, uu.K.bn, 2);
                    }
                }
                return true;
            }
        }
        return false;
    }
}
