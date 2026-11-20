package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class er extends pg {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v7, types: [boolean, int] */
    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        int i4;
        int i5 = i;
        int iNextInt = random.nextInt(2) + 2;
        int iNextInt2 = random.nextInt(2) + 2;
        int i6 = 1;
        int i7 = (i5 - iNextInt) - 1;
        int i8 = i7;
        int i9 = 0;
        while (true) {
            int i10 = i5 + iNextInt + 1;
            if (i8 > i10) {
                if (i9 < 1 || i9 > 5) {
                    return false;
                }
                int i11 = i7;
                while (i11 <= i10) {
                    int i12 = i2 + 3;
                    int i13 = i12;
                    while (true) {
                        int i14 = i2 - 1;
                        if (i13 >= i14) {
                            int i15 = (i3 - iNextInt2) - i6;
                            int i16 = i15;
                            while (true) {
                                int i17 = i3 + iNextInt2 + i6;
                                if (i16 <= i17) {
                                    if (i11 == i7 || i13 == i14 || i16 == i15 || i11 == i10 || i13 == i12 + 1 || i16 == i17) {
                                        if (i13 >= 0 && !fdVar.f(i11, i13 - 1, i16).a()) {
                                            fdVar.f(i11, i13, i16, 0);
                                        } else if (fdVar.f(i11, i13, i16).a()) {
                                            if (i13 == i14 && random.nextInt(4) != 0) {
                                                fdVar.f(i11, i13, i16, uu.ap.bn);
                                            } else {
                                                fdVar.f(i11, i13, i16, uu.x.bn);
                                            }
                                        }
                                    } else {
                                        fdVar.f(i11, i13, i16, 0);
                                    }
                                    i16++;
                                    i6 = 1;
                                }
                            }
                            i13--;
                            i6 = 1;
                        }
                    }
                    i11++;
                    i6 = 1;
                }
                for (int i18 = 0; i18 < 2; i18++) {
                    for (int i19 = 0; i19 < 3; i19++) {
                        int iNextInt3 = (random.nextInt((iNextInt * 2) + 1) + i) - iNextInt;
                        int iNextInt4 = (random.nextInt((iNextInt2 * 2) + 1) + i3) - iNextInt2;
                        if (fdVar.d(iNextInt3, i2, iNextInt4)) {
                            ?? A = fdVar.f(iNextInt3 - 1, i2, iNextInt4).a();
                            if (fdVar.f(iNextInt3 + 1, i2, iNextInt4).a()) {
                                i4 = A;
                                i4 = A + 1;
                            }
                            i4 = A;
                            int i20 = i4;
                            if (fdVar.f(iNextInt3, i2, iNextInt4 - 1).a()) {
                                i20 = i4 + 1;
                            }
                            int i21 = i20;
                            if (fdVar.f(iNextInt3, i2, iNextInt4 + 1).a()) {
                                i21 = i20 + 1;
                            }
                            if (i21 == 1) {
                                fdVar.f(iNextInt3, i2, iNextInt4, uu.av.bn);
                                js jsVar = (js) fdVar.b(iNextInt3, i2, iNextInt4);
                                for (int i22 = 0; i22 < 8; i22++) {
                                    iz izVarA = a(random);
                                    if (izVarA != null) {
                                        jsVar.a(random.nextInt(jsVar.a()), izVarA);
                                    }
                                }
                                break;
                            }
                        }
                    }
                }
                fdVar.f(i, i2, i3, uu.at.bn);
                ((cy) fdVar.b(i, i2, i3)).a(b(random));
                return true;
            }
            int i23 = i2 - 1;
            int i24 = i23;
            while (true) {
                int i25 = i2 + 3 + 1;
                if (i24 <= i25) {
                    int i26 = i9;
                    int i27 = (i3 - iNextInt2) - 1;
                    int i28 = i27;
                    while (true) {
                        int i29 = i3 + iNextInt2 + 1;
                        if (i28 <= i29) {
                            ln lnVarF = fdVar.f(i8, i24, i28);
                            if (i24 == i23 && !lnVarF.a()) {
                                return false;
                            }
                            if (i24 == i25 && !lnVarF.a()) {
                                return false;
                            }
                            if ((i8 == i7 || i8 == i10 || i28 == i27 || i28 == i29) && i24 == i2 && fdVar.d(i8, i24, i28) && fdVar.d(i8, i24 + 1, i28)) {
                                i26++;
                            }
                            i28++;
                        }
                    }
                    i24++;
                    i9 = i26;
                }
            }
            i8++;
            i5 = i;
        }
    }

    private iz a(Random random) {
        int iNextInt = random.nextInt(11);
        if (iNextInt == 0) {
            return new iz(gm.ay);
        }
        if (iNextInt == 1) {
            return new iz(gm.m, random.nextInt(4) + 1);
        }
        if (iNextInt == 2) {
            return new iz(gm.S);
        }
        if (iNextInt == 3) {
            return new iz(gm.R, random.nextInt(4) + 1);
        }
        if (iNextInt == 4) {
            return new iz(gm.K, random.nextInt(4) + 1);
        }
        if (iNextInt == 5) {
            return new iz(gm.I, random.nextInt(4) + 1);
        }
        if (iNextInt == 6) {
            return new iz(gm.au);
        }
        if (iNextInt == 7 && random.nextInt(100) == 0) {
            return new iz(gm.ar);
        }
        if (iNextInt == 8 && random.nextInt(2) == 0) {
            return new iz(gm.aA, random.nextInt(4) + 1);
        }
        if (iNextInt == 9 && random.nextInt(10) == 0) {
            return new iz(gm.c[gm.bd.bf + random.nextInt(2)]);
        }
        if (iNextInt == 10) {
            return new iz(gm.aU, 1, 3);
        }
        return null;
    }

    private String b(Random random) {
        int iNextInt = random.nextInt(4);
        if (iNextInt == 0) {
            return "Skeleton";
        }
        if (iNextInt == 1 || iNextInt == 2) {
            return "Zombie";
        }
        return iNextInt == 3 ? "Spider" : "";
    }
}
