package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class yh extends pg {
    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        int iA;
        int iNextInt = random.nextInt(3) + 4;
        if (i2 >= 1) {
            int i4 = i2 + iNextInt;
            int i5 = 128;
            if (i4 + 1 <= 128) {
                int i6 = i2;
                boolean z = true;
                while (true) {
                    int i7 = i2 + 1 + iNextInt;
                    if (i6 > i7) {
                        break;
                    }
                    int i8 = i6 < i7 + (-2) ? i6 == i2 ? 0 : 1 : 2;
                    int i9 = i - i8;
                    while (i9 <= i + i8 && z) {
                        int i10 = i3 - i8;
                        while (i10 <= i3 + i8 && z) {
                            if (i6 < 0 || i6 >= i5 || ((iA = fdVar.a(i9, i6, i10)) != 0 && iA != uu.L.bn)) {
                                z = false;
                            }
                            i10++;
                            i5 = 128;
                        }
                        i9++;
                        i5 = 128;
                    }
                    i6++;
                    i5 = 128;
                }
                if (!z) {
                    return false;
                }
                int i11 = i2 - 1;
                int iA2 = fdVar.a(i, i11, i3);
                if ((iA2 != uu.v.bn && iA2 != uu.w.bn) || i2 >= (128 - iNextInt) - 1) {
                    return false;
                }
                fdVar.c(i, i11, i3, uu.w.bn);
                for (int i12 = (i2 - 3) + iNextInt; i12 <= i4; i12++) {
                    int i13 = i12 - i4;
                    int i14 = 1 - (i13 / 2);
                    for (int i15 = i - i14; i15 <= i + i14; i15++) {
                        int i16 = i15 - i;
                        for (int i17 = i3 - i14; i17 <= i3 + i14; i17++) {
                            int i18 = i17 - i3;
                            if ((Math.abs(i16) != i14 || Math.abs(i18) != i14 || (random.nextInt(2) != 0 && i13 != 0)) && !uu.o[fdVar.a(i15, i12, i17)]) {
                                fdVar.c(i15, i12, i17, uu.L.bn);
                            }
                        }
                    }
                }
                for (int i19 = 0; i19 < iNextInt; i19++) {
                    int i20 = i2 + i19;
                    int iA3 = fdVar.a(i, i20, i3);
                    if (iA3 == 0 || iA3 == uu.L.bn) {
                        fdVar.c(i, i20, i3, uu.K.bn);
                    }
                }
                return true;
            }
        }
        return false;
    }
}
