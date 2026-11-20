package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class dj extends pg {
    private int a;

    public dj(int i) {
        this.a = i;
    }

    /* JADX WARN: Code duplicated, block: B:151:0x0289  */
    /* JADX WARN: Code duplicated, block: B:195:0x02aa A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0136  */
    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        int i4;
        boolean z;
        boolean z2;
        int i5;
        int i6 = i - 8;
        int i7 = i3 - 8;
        int i8 = i2;
        while (i8 > 0 && fdVar.d(i6, i8, i7)) {
            i8--;
        }
        int i9 = i8 - 4;
        boolean[] zArr = new boolean[2048];
        int iNextInt = random.nextInt(4) + 4;
        int i10 = 0;
        while (true) {
            int i11 = 7;
            int i12 = 15;
            if (i10 >= iNextInt) {
                break;
            }
            double dNextDouble = (random.nextDouble() * 6.0d) + 3.0d;
            double dNextDouble2 = (random.nextDouble() * 4.0d) + 2.0d;
            double dNextDouble3 = (random.nextDouble() * 6.0d) + 3.0d;
            double dNextDouble4 = (random.nextDouble() * ((16.0d - dNextDouble) - 2.0d)) + 1.0d;
            double d = dNextDouble / 2.0d;
            double d2 = dNextDouble4 + d;
            double dNextDouble5 = (random.nextDouble() * ((8.0d - dNextDouble2) - 4.0d)) + 2.0d;
            double d3 = dNextDouble2 / 2.0d;
            double d4 = dNextDouble5 + d3;
            double dNextDouble6 = (random.nextDouble() * ((16.0d - dNextDouble3) - 2.0d)) + 1.0d;
            double d5 = dNextDouble3 / 2.0d;
            double d6 = dNextDouble6 + d5;
            int i13 = 1;
            while (i13 < i12) {
                int i14 = 1;
                while (i14 < i12) {
                    int i15 = 1;
                    while (i15 < i11) {
                        double d7 = (((double) i13) - d2) / d;
                        double d8 = (((double) i15) - d4) / d3;
                        int i16 = i15;
                        double d9 = (((double) i14) - d6) / d5;
                        if ((d7 * d7) + (d8 * d8) + (d9 * d9) < 1.0d) {
                            zArr[(((i13 * 16) + i14) * 8) + i16] = true;
                        }
                        i15 = i16 + 1;
                        i11 = 7;
                    }
                    i14++;
                    i11 = 7;
                    i12 = 15;
                }
                i13++;
                i11 = 7;
                i12 = 15;
            }
            i10++;
        }
        int i17 = 0;
        while (true) {
            int i18 = 16;
            if (i17 >= 16) {
                int i19 = 0;
                for (int i20 = 0; i20 < 16; i20++) {
                    for (int i21 = 0; i21 < 16; i21++) {
                        int i22 = 0;
                        while (i22 < 8) {
                            if (zArr[(((i20 * 16) + i21) * 8) + i22]) {
                                fdVar.c(i6 + i20, i9 + i22, i7 + i21, i22 >= 4 ? 0 : this.a);
                            }
                            i22++;
                        }
                    }
                }
                int i23 = 0;
                while (i23 < i18) {
                    int i24 = i19;
                    while (i24 < i18) {
                        int i25 = 4;
                        for (int i26 = 8; i25 < i26; i26 = 8) {
                            if (zArr[(((i23 * 16) + i24) * i26) + i25]) {
                                int i27 = i6 + i23;
                                int i28 = i9 + i25;
                                int i29 = i28 - 1;
                                int i30 = i7 + i24;
                                if (fdVar.a(i27, i29, i30) == uu.w.bn && fdVar.a(eb.Sky, i27, i28, i30) > 0) {
                                    fdVar.c(i27, i29, i30, uu.v.bn);
                                }
                            }
                            i25++;
                        }
                        i24++;
                        i18 = 16;
                    }
                    i23++;
                    i18 = 16;
                    i19 = 0;
                }
                if (uu.m[this.a].bA != ln.h) {
                    return true;
                }
                int i31 = 16;
                for (int i32 = 0; i32 < i31; i32++) {
                    int i33 = 0;
                    while (i33 < i31) {
                        int i34 = 0;
                        for (int i35 = 8; i34 < i35; i35 = i4) {
                            int i36 = i32 * 16;
                            int i37 = (i36 + i33) * i35;
                            if (zArr[i37 + i34]) {
                                i4 = i35;
                            } else {
                                if (i32 >= 15 || !zArr[((((i32 + 1) * 16) + i33) * i35) + i34]) {
                                    if (i32 > 0) {
                                        i4 = 8;
                                        if (!zArr[((((i32 - 1) * 16) + i33) * 8) + i34]) {
                                        }
                                    } else {
                                        i4 = 8;
                                    }
                                    if ((i33 >= 15 || !zArr[((i33 + 1 + i36) * i4) + i34]) && (i33 <= 0 || !zArr[((i36 + (i33 - 1)) * i4) + i34])) {
                                        if ((i34 >= 7 || !zArr[i34 + 1 + i37]) && (i34 <= 0 || !zArr[i37 + (i34 - 1)])) {
                                        }
                                        if (!z && (i34 < 4 || random.nextInt(2) != 0)) {
                                            int i38 = i6 + i32;
                                            int i39 = i9 + i34;
                                            int i40 = i7 + i33;
                                            if (fdVar.f(i38, i39, i40).a()) {
                                                fdVar.c(i38, i39, i40, uu.u.bn);
                                            }
                                        }
                                        i34++;
                                    }
                                } else {
                                    i4 = 8;
                                }
                                z = true;
                                if (!z) {
                                }
                                i34++;
                            }
                            z = false;
                            if (!z) {
                            }
                            i34++;
                        }
                        i33++;
                        i31 = 16;
                    }
                }
                return true;
            }
            int i41 = 0;
            while (i41 < 16) {
                int i42 = 0;
                while (i42 < 8) {
                    int i43 = i17 * 16;
                    int i44 = (i43 + i41) * 8;
                    if (!zArr[i44 + i42]) {
                        if (i17 >= 15 || !zArr[((((i17 + 1) * 16) + i41) * 8) + i42]) {
                            if (i17 > 0) {
                                i5 = 8;
                                if (!zArr[((((i17 - 1) * 16) + i41) * 8) + i42]) {
                                }
                            } else {
                                i5 = 8;
                            }
                            z2 = (i41 < 15 && zArr[(((i41 + 1) + i43) * i5) + i42]) || (i41 > 0 && zArr[((i43 + (i41 + (-1))) * i5) + i42]) || ((i42 < 7 && zArr[(i42 + 1) + i44]) || (i42 > 0 && zArr[i44 + (i42 + (-1))]));
                        }
                    }
                    if (z2) {
                        int i45 = i6 + i17;
                        int i46 = i9 + i42;
                        int i47 = i7 + i41;
                        ln lnVarF = fdVar.f(i45, i46, i47);
                        if (i42 >= 4 && lnVarF.d()) {
                            return false;
                        }
                        if (i42 < 4 && !lnVarF.a()) {
                            if (fdVar.a(i45, i46, i47) != this.a) {
                                return false;
                            }
                        }
                    }
                    i42++;
                }
                i41++;
            }
            i17++;
        }
    }
}
