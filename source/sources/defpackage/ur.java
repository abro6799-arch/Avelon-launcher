package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ur {
    private Random a = new Random();

    public void a(fd fdVar, sn snVar) {
        if (b(fdVar, snVar)) {
            return;
        }
        c(fdVar, snVar);
        b(fdVar, snVar);
    }

    public boolean b(fd fdVar, sn snVar) {
        int i;
        int iB = in.b(snVar.aM);
        int iB2 = in.b(snVar.aO);
        int i2 = iB - 128;
        double d = -1.0d;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            double d2 = 0.5d;
            if (i2 > iB + 128) {
                break;
            }
            int i6 = i3;
            double d3 = (((double) i2) + 0.5d) - snVar.aM;
            int i7 = iB2 - 128;
            while (i7 <= iB2 + 128) {
                int i8 = iB;
                int i9 = iB2;
                double d4 = (((double) i7) + d2) - snVar.aO;
                int i10 = 127;
                while (i10 >= 0) {
                    if (fdVar.a(i2, i10, i7) == uu.bf.bn) {
                        while (fdVar.a(i2, i10 - 1, i7) == uu.bf.bn) {
                            i10--;
                        }
                        i = i8;
                        int i11 = i10;
                        double d5 = (((double) i10) + 0.5d) - snVar.aN;
                        double d6 = (d3 * d3) + (d5 * d5) + (d4 * d4);
                        if (d < 0.0d || d6 < d) {
                            i6 = i2;
                            i5 = i7;
                            d = d6;
                            i4 = i11;
                            i10 = i4;
                        } else {
                            i10 = i11;
                        }
                    } else {
                        i = i8;
                    }
                    i10--;
                    i8 = i;
                }
                i7++;
                iB2 = i9;
                iB = i8;
                d2 = 0.5d;
            }
            i2++;
            i3 = i6;
        }
        int i12 = i3;
        if (d < 0.0d) {
            return false;
        }
        double d7 = ((double) i12) + 0.5d;
        double d8 = ((double) i4) + 0.5d;
        double d9 = ((double) i5) + 0.5d;
        if (fdVar.a(i12 - 1, i4, i5) == uu.bf.bn) {
            d7 -= 0.5d;
        }
        if (fdVar.a(i12 + 1, i4, i5) == uu.bf.bn) {
            d7 += 0.5d;
        }
        if (fdVar.a(i12, i4, i5 - 1) == uu.bf.bn) {
            d9 -= 0.5d;
        }
        if (fdVar.a(i12, i4, i5 + 1) == uu.bf.bn) {
            d9 += 0.5d;
        }
        snVar.c(d7, d8, d9, snVar.aS, 0.0f);
        snVar.aR = 0.0d;
        snVar.aQ = 0.0d;
        snVar.aP = 0.0d;
        return true;
    }

    public boolean c(fd fdVar, sn snVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int iB = in.b(snVar.aM);
        int iB2 = in.b(snVar.aN);
        int iB3 = in.b(snVar.aO);
        int iNextInt = this.a.nextInt(4);
        int i15 = iB - 16;
        double d = -1.0d;
        int i16 = iB;
        int i17 = iB3;
        int i18 = i15;
        int i19 = 0;
        while (true) {
            i = iB + 16;
            if (i18 > i) {
                break;
            }
            int i20 = i15;
            int i21 = iB;
            double d2 = (((double) i18) + 0.5d) - snVar.aM;
            int i22 = iB3 - 16;
            iB2 = iB2;
            while (i22 <= iB3 + 16) {
                double d3 = d;
                double d4 = (((double) i22) + 0.5d) - snVar.aO;
                i16 = i16;
                int i23 = 127;
                i17 = i17;
                while (i23 >= 0) {
                    if (fdVar.d(i18, i23, i22)) {
                        while (true) {
                            if (i23 <= 0) {
                                i11 = iB2;
                                break;
                            }
                            i11 = iB2;
                            if (!fdVar.d(i18, i23 - 1, i22)) {
                                break;
                            }
                            i23--;
                            iB2 = i11;
                        }
                        int i24 = iNextInt;
                        while (true) {
                            if (i24 >= iNextInt + 4) {
                                i8 = iB3;
                                i9 = iNextInt;
                                i10 = i18;
                                i12 = i16;
                                i13 = i17;
                                i14 = i19;
                                break;
                            }
                            int i25 = i24 % 2;
                            i12 = i16;
                            int i26 = 1 - i25;
                            i13 = i17;
                            int i27 = i24 % 4;
                            i14 = i19;
                            if (i27 >= 2) {
                                i25 = -i25;
                                i26 = -i26;
                            }
                            int i28 = 0;
                            for (int i29 = 3; i28 < i29; i29 = 3) {
                                i9 = iNextInt;
                                int i30 = 4;
                                int i31 = 0;
                                while (i31 < i30) {
                                    i8 = iB3;
                                    int i32 = -1;
                                    while (i32 < i30) {
                                        int i33 = i31 - 1;
                                        i10 = i18;
                                        int i34 = i18 + (i33 * i25) + (i28 * i26);
                                        int i35 = i24;
                                        int i36 = i23 + i32;
                                        int i37 = ((i33 * i26) + i22) - (i28 * i25);
                                        if ((i32 < 0 && !fdVar.f(i34, i36, i37).a()) || (i32 >= 0 && !fdVar.d(i34, i36, i37))) {
                                            break;
                                        }
                                        i32++;
                                        i24 = i35;
                                        i18 = i10;
                                        i30 = 4;
                                    }
                                    i31++;
                                    iB3 = i8;
                                    i30 = 4;
                                }
                                i28++;
                                iNextInt = i9;
                            }
                            int i38 = i24;
                            int i39 = iB3;
                            int i40 = iNextInt;
                            int i41 = i18;
                            double d5 = (((double) i23) + 0.5d) - snVar.aN;
                            double d6 = (d2 * d2) + (d5 * d5) + (d4 * d4);
                            if (d3 < 0.0d || d6 < d3) {
                                i17 = i22;
                                d3 = d6;
                                i11 = i23;
                                i19 = i27;
                                i16 = i41;
                            } else {
                                i16 = i12;
                                i17 = i13;
                                i19 = i14;
                            }
                            i24 = i38 + 1;
                            iNextInt = i40;
                            iB3 = i39;
                            i18 = i41;
                        }
                        iB2 = i11;
                        i16 = i12;
                        i17 = i13;
                        i19 = i14;
                    } else {
                        i8 = iB3;
                        i9 = iNextInt;
                        i10 = i18;
                    }
                    i23--;
                    iNextInt = i9;
                    iB3 = i8;
                    i18 = i10;
                }
                i22++;
                d = d3;
            }
            i18++;
            i15 = i20;
            iB = i21;
        }
        int i42 = iB2;
        int i43 = iB3;
        int i44 = iNextInt;
        int i45 = i15;
        if (d < 0.0d) {
            int i46 = i45;
            i2 = i42;
            while (i46 <= i) {
                double d7 = (((double) i46) + 0.5d) - snVar.aM;
                for (int i47 = i43 - 16; i47 <= i43 + 16; i47++) {
                    double d8 = (((double) i47) + 0.5d) - snVar.aO;
                    int i48 = 127;
                    d = d;
                    while (i48 >= 0) {
                        if (fdVar.d(i46, i48, i47)) {
                            while (true) {
                                i4 = i2;
                                if (!fdVar.d(i46, i48 - 1, i47)) {
                                    break;
                                }
                                i48--;
                                i2 = i4;
                            }
                            int i49 = i44;
                            while (true) {
                                if (i49 >= i44 + 2) {
                                    i3 = i46;
                                    i5 = i16;
                                    i6 = i17;
                                    i7 = i19;
                                    break;
                                }
                                int i50 = i49 % 2;
                                int i51 = 1 - i50;
                                i5 = i16;
                                i6 = i17;
                                int i52 = 0;
                                while (true) {
                                    int i53 = 4;
                                    if (i52 < 4) {
                                        i7 = i19;
                                        int i54 = -1;
                                        while (true) {
                                            if (i54 < i53) {
                                                int i55 = i52 - 1;
                                                int i56 = i50;
                                                int i57 = i46 + (i55 * i50);
                                                i3 = i46;
                                                int i58 = i48 + i54;
                                                int i59 = (i55 * i51) + i47;
                                                if ((i54 < 0 && !fdVar.f(i57, i58, i59).a()) || (i54 >= 0 && !fdVar.d(i57, i58, i59))) {
                                                    break;
                                                }
                                                i54++;
                                                i46 = i3;
                                                i50 = i56;
                                                i53 = 4;
                                            } else {
                                                i52++;
                                                i19 = i7;
                                            }
                                        }
                                    } else {
                                        int i60 = i46;
                                        int i61 = i50;
                                        int i62 = i19;
                                        int i63 = i48;
                                        double d9 = (((double) i48) + 0.5d) - snVar.aN;
                                        double d10 = (d7 * d7) + (d9 * d9) + (d8 * d8);
                                        if (d < 0.0d || d10 < d) {
                                            i17 = i47;
                                            i4 = i63;
                                            d = d10;
                                            i16 = i60;
                                            i19 = i61;
                                        } else {
                                            i16 = i5;
                                            i17 = i6;
                                            i19 = i62;
                                        }
                                        i49++;
                                        i48 = i63;
                                        i46 = i60;
                                    }
                                }
                            }
                            i48 = i48;
                            i2 = i4;
                            i16 = i5;
                            i17 = i6;
                            i19 = i7;
                        } else {
                            i3 = i46;
                        }
                        i48--;
                        i = i;
                        i46 = i3;
                    }
                }
                i46++;
            }
        } else {
            i2 = i42;
        }
        int i64 = i19 % 2;
        int i65 = 1 - i64;
        if (i19 % 4 >= 2) {
            i64 = -i64;
            i65 = -i65;
        }
        if (d < 0.0d) {
            if (i2 < 70) {
                i2 = 70;
            }
            if (i2 > 118) {
                i2 = 118;
            }
            for (int i66 = -1; i66 <= 1; i66++) {
                int i67 = 1;
                while (true) {
                    if (i67 < 3) {
                        int i68 = -1;
                        for (int i69 = 3; i68 < i69; i69 = 3) {
                            int i70 = i67 - 1;
                            fdVar.f((i70 * i64) + i16 + (i66 * i65), i2 + i68, ((i70 * i65) + i17) - (i66 * i64), i68 < 0 ? uu.aq.bn : 0);
                            i68++;
                        }
                        i67++;
                    }
                }
            }
        }
        int i71 = 0;
        while (true) {
            int i72 = 4;
            if (i71 >= 4) {
                return true;
            }
            fdVar.o = true;
            int i73 = 0;
            while (i73 < i72) {
                int i74 = -1;
                while (i74 < i72) {
                    int i75 = i73 - 1;
                    fdVar.f((i75 * i64) + i16, i2 + i74, (i75 * i65) + i17, i73 == 0 || i73 == 3 || i74 == -1 || i74 == 3 ? uu.aq.bn : uu.bf.bn);
                    i74++;
                    i72 = 4;
                }
                i73++;
                i72 = 4;
            }
            fdVar.o = false;
            int i76 = 0;
            while (true) {
                if (i76 < 4) {
                    int i77 = -1;
                    for (int i78 = 4; i77 < i78; i78 = 4) {
                        int i79 = i76 - 1;
                        int i80 = (i79 * i64) + i16;
                        int i81 = i2 + i77;
                        int i82 = (i79 * i65) + i17;
                        fdVar.i(i80, i81, i82, fdVar.a(i80, i81, i82));
                        i77++;
                    }
                    i76++;
                }
            }
            i71++;
        }
    }
}
