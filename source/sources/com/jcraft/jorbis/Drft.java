package com.jcraft.jorbis;

/* JADX INFO: loaded from: classes.dex */
class Drft {
    int n;
    int[] splitcache;
    float[] trigcache;
    static int[] ntryh = {4, 2, 3, 5};
    static float tpi = 6.2831855f;
    static float hsqt2 = 0.70710677f;
    static float taui = 0.8660254f;
    static float taur = -0.5f;
    static float sqrt2 = 1.4142135f;

    Drft() {
    }

    void backward(float[] fArr) {
        int i = this.n;
        if (i == 1) {
            return;
        }
        float[] fArr2 = this.trigcache;
        drftb1(i, fArr, fArr2, fArr2, i, this.splitcache);
    }

    void init(int i) {
        this.n = i;
        float[] fArr = new float[i * 3];
        this.trigcache = fArr;
        int[] iArr = new int[32];
        this.splitcache = iArr;
        fdrffti(i, fArr, iArr);
    }

    void clear() {
        if (this.trigcache != null) {
            this.trigcache = null;
        }
        if (this.splitcache != null) {
            this.splitcache = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004e  */
    /* JADX WARN: Code duplicated, block: B:40:0x0050 A[EDGE_INSN: B:40:0x0050->B:27:0x0050 BREAK  A[LOOP:0: B:3:0x0009->B:41:?, LOOP_LABEL: LOOP:0: B:3:0x0009->B:41:?], SYNTHETIC] */
    static void drfti1(int i, float[] fArr, int i2, int[] iArr) {
        int i3;
        int i4;
        int i5 = 0;
        int i6 = -1;
        int i7 = i;
        int i8 = 0;
        int i9 = 0;
        loop0: while (true) {
            char c = 'e';
            while (true) {
                i3 = 2;
                i4 = 1;
                if (c == 'e') {
                    i6++;
                    i8 = i6 < 4 ? ntryh[i6] : i8 + 2;
                } else if (c != 'h') {
                    if (c != 'k') {
                        continue;
                    } else if (i7 != 1) {
                        break loop0;
                    } else {
                        c = 'h';
                    }
                }
                int i10 = i7 / i8;
                if (i7 - (i8 * i10) != 0) {
                    break;
                }
                i9++;
                iArr[i9 + 1] = i8;
                if (i8 == 2 && i9 != 1) {
                    for (int i11 = 1; i11 < i9; i11++) {
                        int i12 = (i9 - i11) + 1;
                        iArr[i12 + 1] = iArr[i12];
                    }
                    iArr[2] = 2;
                    i7 = i10;
                    if (i7 != 1) {
                        break loop0;
                        break loop0;
                    }
                    c = 'h';
                } else {
                    i7 = i10;
                    c = 'k';
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i9;
        float f = tpi / i;
        int i13 = i9 - 1;
        if (i13 == 0) {
            return;
        }
        int i14 = 0;
        int i15 = 0;
        int i16 = 1;
        while (i14 < i13) {
            int i17 = iArr[i14 + 2];
            int i18 = i16 * i17;
            int i19 = i / i18;
            int i20 = i17 - i4;
            int i21 = i5;
            int i22 = i21;
            while (i21 < i20) {
                i22 += i16;
                float f2 = i22 * f;
                float f3 = 0.0f;
                int i23 = i15;
                int i24 = i3;
                while (i24 < i19) {
                    f3 += 1.0f;
                    int i25 = i23 + 1;
                    double d = f3 * f2;
                    fArr[i2 + i23] = (float) Math.cos(d);
                    i23 = i25 + 1;
                    fArr[i2 + i25] = (float) Math.sin(d);
                    i24 += 2;
                    i13 = i13;
                    i21 = i21;
                    i20 = i20;
                }
                i15 += i19;
                i21++;
                i3 = 2;
            }
            i14++;
            i16 = i18;
            i5 = 0;
            i3 = 2;
            i4 = 1;
        }
    }

    static void fdrffti(int i, float[] fArr, int[] iArr) {
        if (i == 1) {
            return;
        }
        drfti1(i, fArr, i, iArr);
    }

    static void dradf2(int i, int i2, float[] fArr, float[] fArr2, float[] fArr3, int i3) {
        int i4 = i2 * i;
        int i5 = i << 1;
        int i6 = i4;
        int i7 = 0;
        for (int i8 = 0; i8 < i2; i8++) {
            int i9 = i7 << 1;
            fArr2[i9] = fArr[i7] + fArr[i6];
            fArr2[(i9 + i5) - 1] = fArr[i7] - fArr[i6];
            i7 += i;
            i6 += i;
        }
        if (i < 2) {
            return;
        }
        if (i != 2) {
            int i10 = i4;
            int i11 = 0;
            for (int i12 = 0; i12 < i2; i12++) {
                int i13 = (i11 << 1) + i5;
                int i14 = i11 + i11;
                int i15 = i10;
                int i16 = i11;
                for (int i17 = 2; i17 < i; i17 += 2) {
                    i15 += 2;
                    i13 -= 2;
                    i16 += 2;
                    i14 += 2;
                    int i18 = i3 + i17;
                    float f = fArr3[i18 - 2];
                    float f2 = fArr[i15 - 1];
                    float f3 = fArr3[i18 - 1];
                    float f4 = fArr[i15];
                    float f5 = (f * f2) + (f3 * f4);
                    float f6 = (f * f4) - (f3 * f2);
                    fArr2[i14] = fArr[i16] + f6;
                    fArr2[i13] = f6 - fArr[i16];
                    int i19 = i16 - 1;
                    fArr2[i14 - 1] = fArr[i19] + f5;
                    fArr2[i13 - 1] = fArr[i19] - f5;
                }
                i11 += i;
                i10 += i;
            }
            if (i % 2 == 1) {
                return;
            }
        }
        int i20 = i - 1;
        int i21 = i4 + i20;
        int i22 = i;
        for (int i23 = 0; i23 < i2; i23++) {
            fArr2[i22] = -fArr[i21];
            fArr2[i22 - 1] = fArr[i20];
            i22 += i5;
            i21 += i;
            i20 += i;
        }
    }

    static void dradf4(int i, int i2, float[] fArr, float[] fArr2, float[] fArr3, int i3, float[] fArr4, int i4, float[] fArr5, int i5) {
        int i6 = i2 * i;
        int i7 = i6 << 1;
        int i8 = i6 + i7;
        int i9 = i6;
        int i10 = i7;
        int i11 = 0;
        for (int i12 = 0; i12 < i2; i12++) {
            float f = fArr[i9] + fArr[i8];
            float f2 = fArr[i11] + fArr[i10];
            int i13 = i11 << 2;
            fArr2[i13] = f + f2;
            fArr2[((i << 2) + i13) - 1] = f2 - f;
            int i14 = i13 + (i << 1);
            fArr2[i14 - 1] = fArr[i11] - fArr[i10];
            fArr2[i14] = fArr[i8] - fArr[i9];
            i9 += i;
            i8 += i;
            i11 += i;
            i10 += i;
        }
        if (i < 2) {
            return;
        }
        if (i != 2) {
            int i15 = 0;
            for (int i16 = 0; i16 < i2; i16++) {
                int i17 = i15 << 2;
                int i18 = i << 1;
                int i19 = i18 + i17;
                int i20 = i15;
                for (int i21 = 2; i21 < i; i21 += 2) {
                    i20 += 2;
                    i17 += 2;
                    i19 -= 2;
                    int i22 = i20 + i6;
                    int i23 = i3 + i21;
                    float f3 = fArr3[i23 - 2];
                    float f4 = fArr[i22 - 1];
                    float f5 = fArr3[i23 - 1];
                    float f6 = fArr[i22];
                    float f7 = (f3 * f4) + (f5 * f6);
                    float f8 = (f3 * f6) - (f5 * f4);
                    int i24 = i22 + i6;
                    int i25 = i4 + i21;
                    float f9 = fArr4[i25 - 2];
                    float f10 = fArr[i24 - 1];
                    float f11 = fArr4[i25 - 1];
                    float f12 = fArr[i24];
                    float f13 = (f9 * f10) + (f11 * f12);
                    float f14 = (f9 * f12) - (f11 * f10);
                    int i26 = i24 + i6;
                    int i27 = i5 + i21;
                    float f15 = fArr5[i27 - 2];
                    float f16 = fArr[i26 - 1];
                    float f17 = fArr5[i27 - 1];
                    float f18 = fArr[i26];
                    float f19 = (f15 * f16) + (f17 * f18);
                    float f20 = (f15 * f18) - (f17 * f16);
                    float f21 = f7 + f19;
                    float f22 = f19 - f7;
                    float f23 = f8 + f20;
                    float f24 = f8 - f20;
                    float f25 = fArr[i20];
                    float f26 = f25 + f14;
                    float f27 = f25 - f14;
                    float f28 = fArr[i20 - 1];
                    float f29 = f28 + f13;
                    float f30 = f28 - f13;
                    fArr2[i17 - 1] = f21 + f29;
                    fArr2[i17] = f23 + f26;
                    fArr2[i19 - 1] = f30 - f24;
                    fArr2[i19] = f22 - f27;
                    int i28 = i17 + i18;
                    fArr2[i28 - 1] = f24 + f30;
                    fArr2[i28] = f22 + f27;
                    int i29 = i19 + i18;
                    fArr2[i29 - 1] = f29 - f21;
                    fArr2[i29] = f23 - f26;
                }
                i15 += i;
            }
            if ((i & 1) != 0) {
                return;
            }
        }
        int i30 = (i6 + i) - 1;
        int i31 = i7 + i30;
        int i32 = i << 2;
        int i33 = i << 1;
        int i34 = i;
        int i35 = i34;
        for (int i36 = 0; i36 < i2; i36++) {
            float f31 = hsqt2;
            float f32 = fArr[i30];
            float f33 = fArr[i31];
            float f34 = (-f31) * (f32 + f33);
            float f35 = f31 * (f32 - f33);
            int i37 = i35 - 1;
            fArr2[i34 - 1] = fArr[i37] + f35;
            int i38 = i34 + i33;
            fArr2[i38 - 1] = fArr[i37] - f35;
            int i39 = i30 + i6;
            fArr2[i34] = f34 - fArr[i39];
            fArr2[i38] = f34 + fArr[i39];
            i30 += i;
            i31 += i;
            i34 += i32;
            i35 += i;
        }
    }

    static void dradfg(int i, int i2, int i3, int i4, float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5, float[] fArr6, int i5) {
        double d = tpi / i2;
        Math.cos(d);
        Math.sin(d);
        while (true) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004c  */
    /* JADX WARN: Code duplicated, block: B:17:0x0050  */
    /* JADX WARN: Code duplicated, block: B:18:0x0056  */
    static void drftf1(int i, float[] fArr, float[] fArr2, float[] fArr3, int[] iArr) {
        char c;
        int i2 = iArr[1];
        int i3 = i;
        int i4 = i3;
        int i5 = 1;
        int i6 = 0;
        while (i6 < i2) {
            int i7 = iArr[(i2 - i6) + 1];
            int i8 = i3 / i7;
            int i9 = i / i3;
            int i10 = i9 * i8;
            i4 -= (i7 - 1) * i9;
            i5 = 1 - i5;
            char c2 = 'd';
            char c3 = 'd';
            while (true) {
                char c4 = 'n';
                if (c3 != c2) {
                    if (c3 == 'm') {
                        dradfg(i9, i7, i8, i10, fArr2, fArr2, fArr2, fArr, fArr, fArr3, i4 - 1);
                        i5 = 0;
                        break;
                    }
                    if (c3 == 'n') {
                        break;
                    }
                    switch (c3) {
                        case 'f':
                            c4 = 'n';
                            c = c2;
                            if (i7 != 2) {
                                c3 = 'h';
                            } else if (i5 != 0) {
                                c3 = 'g';
                            } else {
                                dradf2(i9, i8, fArr, fArr2, fArr3, i4 - 1);
                                c3 = c4;
                            }
                            break;
                        case 'g':
                            dradf2(i9, i8, fArr2, fArr, fArr3, i4 - 1);
                            if (i9 == 1) {
                                i5 = 1 - i5;
                            }
                            if (i5 != 0) {
                                c = c2;
                                c3 = 'm';
                            } else {
                                c = c2;
                                dradfg(i9, i7, i8, i10, fArr, fArr, fArr, fArr2, fArr2, fArr3, i4 - 1);
                                i5 = 1;
                                c3 = c4;
                            }
                            break;
                        case 'h':
                            if (i9 == 1) {
                                i5 = 1 - i5;
                            }
                            if (i5 != 0) {
                                c = c2;
                                c3 = 'm';
                            } else {
                                c = c2;
                                dradfg(i9, i7, i8, i10, fArr, fArr, fArr, fArr2, fArr2, fArr3, i4 - 1);
                                i5 = 1;
                                c3 = c4;
                            }
                            break;
                        default:
                            c = c2;
                            break;
                    }
                } else {
                    c4 = 'n';
                    c = c2;
                    if (i7 != 4) {
                        c3 = 'f';
                    } else {
                        int i11 = i4 + i9;
                        int i12 = i11 + i9;
                        if (i5 != 0) {
                            dradf4(i9, i8, fArr2, fArr, fArr3, i4 - 1, fArr3, i11 - 1, fArr3, i12 - 1);
                        } else {
                            dradf4(i9, i8, fArr, fArr2, fArr3, i4 - 1, fArr3, i11 - 1, fArr3, i12 - 1);
                        }
                        c3 = c4;
                    }
                }
                c2 = c;
            }
            i6++;
            i3 = i8;
        }
        if (i5 == 1) {
            return;
        }
        for (int i13 = 0; i13 < i; i13++) {
            fArr[i13] = fArr2[i13];
        }
    }

    static void dradb2(int i, int i2, float[] fArr, float[] fArr2, float[] fArr3, int i3) {
        int i4 = i2 * i;
        int i5 = i << 1;
        int i6 = i5 - 1;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < i2; i9++) {
            int i10 = i6 + i8;
            fArr2[i7] = fArr[i8] + fArr[i10];
            fArr2[i7 + i4] = fArr[i8] - fArr[i10];
            i7 += i;
            i8 = i7 << 1;
        }
        if (i < 2) {
            return;
        }
        if (i != 2) {
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 0; i13 < i2; i13++) {
                int i14 = i12 + i5;
                int i15 = i4 + i11;
                int i16 = i11;
                for (int i17 = 2; i17 < i; i17 += 2) {
                    i16 += 2;
                    i12 += 2;
                    i14 -= 2;
                    i15 += 2;
                    int i18 = i12 - 1;
                    int i19 = i14 - 1;
                    fArr2[i16 - 1] = fArr[i18] + fArr[i19];
                    float f = fArr[i18] - fArr[i19];
                    fArr2[i16] = fArr[i12] - fArr[i14];
                    float f2 = fArr[i12] + fArr[i14];
                    int i20 = i3 + i17;
                    int i21 = i20 - 2;
                    int i22 = i20 - 1;
                    fArr2[i15 - 1] = (fArr3[i21] * f) - (fArr3[i22] * f2);
                    fArr2[i15] = (fArr3[i21] * f2) + (fArr3[i22] * f);
                }
                i11 += i;
                i12 = i11 << 1;
            }
            if (i % 2 == 1) {
                return;
            }
        }
        int i23 = i - 1;
        int i24 = i23;
        for (int i25 = 0; i25 < i2; i25++) {
            float f3 = fArr[i24];
            fArr2[i23] = f3 + f3;
            float f4 = fArr[i24 + 1];
            fArr2[i23 + i4] = -(f4 + f4);
            i23 += i;
            i24 += i5;
        }
    }

    static void dradb3(int i, int i2, float[] fArr, float[] fArr2, float[] fArr3, int i3, float[] fArr4, int i4) {
        int i5 = i2 * i;
        int i6 = i5 << 1;
        int i7 = i << 1;
        int i8 = i + i7;
        int i9 = i7;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < i2; i12++) {
            float f = fArr[i9 - 1];
            float f2 = f + f;
            float f3 = fArr[i10];
            float f4 = (taur * f2) + f3;
            fArr2[i11] = f3 + f2;
            float f5 = taui;
            float f6 = fArr[i9];
            float f7 = f5 * (f6 + f6);
            fArr2[i11 + i5] = f4 - f7;
            fArr2[i11 + i6] = f4 + f7;
            i11 += i;
            i9 += i8;
            i10 += i8;
        }
        if (i == 1) {
            return;
        }
        int i13 = 0;
        for (int i14 = 0; i14 < i2; i14++) {
            int i15 = (i13 << 1) + i13;
            int i16 = i15 + i7;
            int i17 = i13 + i5;
            int i18 = i13;
            int i19 = i17 + i5;
            int i20 = i17;
            int i21 = i16;
            for (int i22 = 2; i22 < i; i22 += 2) {
                i16 += 2;
                i21 -= 2;
                i15 += 2;
                i18 += 2;
                i20 += 2;
                i19 += 2;
                int i23 = i16 - 1;
                int i24 = i21 - 1;
                float f8 = fArr[i23] + fArr[i24];
                float f9 = fArr[i15 - 1];
                float f10 = taur;
                float f11 = f9 + (f10 * f8);
                fArr2[i18 - 1] = f9 + f8;
                float f12 = fArr[i16] - fArr[i21];
                float f13 = fArr[i15];
                float f14 = f13 + (f10 * f12);
                fArr2[i18] = f13 + f12;
                float f15 = taui;
                float f16 = (fArr[i23] - fArr[i24]) * f15;
                float f17 = f15 * (fArr[i16] + fArr[i21]);
                float f18 = f11 - f17;
                float f19 = f11 + f17;
                float f20 = f14 + f16;
                float f21 = f14 - f16;
                int i25 = i3 + i22;
                int i26 = i25 - 2;
                int i27 = i25 - 1;
                fArr2[i20 - 1] = (fArr3[i26] * f18) - (fArr3[i27] * f20);
                fArr2[i20] = (fArr3[i26] * f20) + (fArr3[i27] * f18);
                int i28 = i4 + i22;
                int i29 = i28 - 2;
                int i30 = i28 - 1;
                fArr2[i19 - 1] = (fArr4[i29] * f19) - (fArr4[i30] * f21);
                fArr2[i19] = (fArr4[i29] * f21) + (fArr4[i30] * f19);
            }
            i13 += i;
        }
    }

    static void dradb4(int i, int i2, float[] fArr, float[] fArr2, float[] fArr3, int i3, float[] fArr4, int i4, float[] fArr5, int i5) {
        int i6 = i2 * i;
        int i7 = i << 2;
        int i8 = i << 1;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < i2; i11++) {
            int i12 = i9 + i8;
            float f = fArr[i12 - 1];
            float f2 = f + f;
            float f3 = fArr[i12];
            float f4 = f3 + f3;
            float f5 = fArr[i9];
            float f6 = fArr[(i12 + i8) - 1];
            float f7 = f5 - f6;
            float f8 = f5 + f6;
            fArr2[i10] = f8 + f2;
            int i13 = i10 + i6;
            fArr2[i13] = f7 - f4;
            int i14 = i13 + i6;
            fArr2[i14] = f8 - f2;
            fArr2[i14 + i6] = f7 + f4;
            i10 += i;
            i9 += i7;
        }
        if (i < 2) {
            return;
        }
        if (i != 2) {
            int i15 = 0;
            for (int i16 = 0; i16 < i2; i16++) {
                int i17 = i15 << 2;
                int i18 = i17 + i8;
                int i19 = i15;
                int i20 = i18 + i8;
                int i21 = i18;
                for (int i22 = 2; i22 < i; i22 += 2) {
                    i17 += 2;
                    i18 += 2;
                    i21 -= 2;
                    i20 -= 2;
                    i19 += 2;
                    float f9 = fArr[i17];
                    float f10 = fArr[i20];
                    float f11 = f9 + f10;
                    float f12 = f9 - f10;
                    float f13 = fArr[i18];
                    float f14 = fArr[i21];
                    float f15 = f13 - f14;
                    float f16 = f13 + f14;
                    float f17 = fArr[i17 - 1];
                    float f18 = fArr[i20 - 1];
                    float f19 = f17 - f18;
                    float f20 = f17 + f18;
                    float f21 = fArr[i18 - 1];
                    float f22 = fArr[i21 - 1];
                    float f23 = f21 - f22;
                    float f24 = f21 + f22;
                    fArr2[i19 - 1] = f20 + f24;
                    float f25 = f20 - f24;
                    fArr2[i19] = f12 + f15;
                    float f26 = f12 - f15;
                    float f27 = f19 - f16;
                    float f28 = f19 + f16;
                    float f29 = f11 + f23;
                    float f30 = f11 - f23;
                    int i23 = i19 + i6;
                    int i24 = i3 + i22;
                    int i25 = i24 - 2;
                    int i26 = i24 - 1;
                    fArr2[i23 - 1] = (fArr3[i25] * f27) - (fArr3[i26] * f29);
                    fArr2[i23] = (fArr3[i25] * f29) + (fArr3[i26] * f27);
                    int i27 = i23 + i6;
                    int i28 = i4 + i22;
                    int i29 = i28 - 2;
                    int i30 = i28 - 1;
                    fArr2[i27 - 1] = (fArr4[i29] * f25) - (fArr4[i30] * f26);
                    fArr2[i27] = (fArr4[i29] * f26) + (fArr4[i30] * f25);
                    int i31 = i27 + i6;
                    int i32 = i5 + i22;
                    int i33 = i32 - 2;
                    int i34 = i32 - 1;
                    fArr2[i31 - 1] = (fArr5[i33] * f28) - (fArr5[i34] * f30);
                    fArr2[i31] = (fArr5[i33] * f30) + (fArr5[i34] * f28);
                }
                i15 += i;
            }
            if (i % 2 == 1) {
                return;
            }
        }
        int i35 = i - 1;
        int i36 = i8 + i;
        int i37 = i;
        for (int i38 = 0; i38 < i2; i38++) {
            float f31 = fArr[i37];
            float f32 = fArr[i36];
            float f33 = f31 + f32;
            float f34 = f32 - f31;
            float f35 = fArr[i37 - 1];
            float f36 = fArr[i36 - 1];
            float f37 = f35 - f36;
            float f38 = f35 + f36;
            fArr2[i35] = f38 + f38;
            int i39 = i35 + i6;
            float f39 = sqrt2;
            fArr2[i39] = (f37 - f33) * f39;
            int i40 = i39 + i6;
            fArr2[i40] = f34 + f34;
            fArr2[i40 + i6] = (-f39) * (f37 + f33);
            i35 += i;
            i37 += i7;
            i36 += i7;
        }
    }

    static void dradbg(int i, int i2, int i3, int i4, float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5, float[] fArr6, int i5) {
        char c = 'd';
        char c2 = 'd';
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        float fCos = 0.0f;
        float fSin = 0.0f;
        while (true) {
            if (c2 != c) {
                if (c2 == 'g') {
                    int i11 = 0;
                    for (int i12 = 0; i12 < i; i12++) {
                        int i13 = i11;
                        int i14 = i13;
                        for (int i15 = 0; i15 < i3; i15++) {
                            fArr4[i13] = fArr[i14];
                            i13 += i;
                            i14 += i10;
                        }
                        i11++;
                    }
                } else if (c2 != 'j') {
                    if (c2 == 'p') {
                        int i16 = i6 * i7;
                        int i17 = 0;
                        int i18 = 0;
                        for (int i19 = 1; i19 < i9; i19++) {
                            i17 += i7;
                            i16 -= i7;
                            i18 += i << 1;
                            int i20 = i16;
                            int i21 = i17;
                            int i22 = i18;
                            int i23 = i22;
                            for (int i24 = 2; i24 < i; i24 += 2) {
                                i21 += 2;
                                i20 += 2;
                                i22 += 2;
                                i23 -= 2;
                                int i25 = i21;
                                int i26 = i20;
                                int i27 = i22;
                                int i28 = i23;
                                for (int i29 = 0; i29 < i3; i29++) {
                                    int i30 = i27 - 1;
                                    int i31 = i28 - 1;
                                    fArr4[i25 - 1] = fArr[i30] + fArr[i31];
                                    fArr4[i26 - 1] = fArr[i30] - fArr[i31];
                                    fArr4[i25] = fArr[i27] - fArr[i28];
                                    fArr4[i26] = fArr[i27] + fArr[i28];
                                    i25 += i;
                                    i26 += i;
                                    i27 += i10;
                                    i28 += i10;
                                }
                            }
                        }
                    } else if (c2 != 't') {
                        if (c2 == 128) {
                            int i32 = i6 * i7;
                            int i33 = 0;
                            for (int i34 = 1; i34 < i9; i34++) {
                                i33 += i7;
                                i32 -= i7;
                                int i35 = i32;
                                int i36 = i33;
                                for (int i37 = 2; i37 < i; i37 += 2) {
                                    i36 += 2;
                                    i35 += 2;
                                    int i38 = i36;
                                    int i39 = i35;
                                    for (int i40 = 0; i40 < i3; i40++) {
                                        int i41 = i38 - 1;
                                        fArr4[i41] = fArr2[i41] - fArr2[i39];
                                        int i42 = i39 - 1;
                                        fArr4[i42] = fArr2[i41] + fArr2[i39];
                                        fArr4[i38] = fArr2[i38] + fArr2[i42];
                                        fArr4[i39] = fArr2[i38] - fArr2[i42];
                                        i38 += i;
                                        i39 += i;
                                    }
                                }
                            }
                        } else if (c2 != 132) {
                            if (c2 == 139) {
                                int i43 = (-i) - 1;
                                int i44 = 0;
                                for (int i45 = 1; i45 < i2; i45++) {
                                    i43 += i;
                                    i44 += i7;
                                    int i46 = i44;
                                    for (int i47 = 0; i47 < i3; i47++) {
                                        int i48 = i43;
                                        int i49 = i46;
                                        for (int i50 = 2; i50 < i; i50 += 2) {
                                            i48 += 2;
                                            i49 += 2;
                                            int i51 = i49 - 1;
                                            int i52 = i5 + i48;
                                            int i53 = i52 - 1;
                                            fArr2[i51] = (fArr6[i53] * fArr4[i51]) - (fArr6[i52] * fArr4[i49]);
                                            fArr2[i49] = (fArr6[i53] * fArr4[i49]) + (fArr6[i52] * fArr4[i51]);
                                        }
                                        i46 += i;
                                    }
                                }
                                return;
                            }
                        }
                        if (i == 1) {
                            return;
                        }
                        for (int i54 = 0; i54 < i4; i54++) {
                            fArr3[i54] = fArr5[i54];
                        }
                        int i55 = 0;
                        for (int i56 = 1; i56 < i2; i56++) {
                            i55 += i7;
                            int i57 = i55;
                            for (int i58 = 0; i58 < i3; i58++) {
                                fArr2[i57] = fArr4[i57];
                                i57 += i;
                            }
                        }
                        if (i8 <= i3) {
                            int i59 = (-i) - 1;
                            int i60 = 0;
                            for (int i61 = 1; i61 < i2; i61++) {
                                i59 += i;
                                i60 += i7;
                                int i62 = i59;
                                int i63 = i60;
                                for (int i64 = 2; i64 < i; i64 += 2) {
                                    i63 += 2;
                                    i62 += 2;
                                    int i65 = i63;
                                    for (int i66 = 0; i66 < i3; i66++) {
                                        int i67 = i65 - 1;
                                        int i68 = i5 + i62;
                                        int i69 = i68 - 1;
                                        fArr2[i67] = (fArr6[i69] * fArr4[i67]) - (fArr6[i68] * fArr4[i65]);
                                        fArr2[i65] = (fArr6[i69] * fArr4[i65]) + (fArr6[i68] * fArr4[i67]);
                                        i65 += i;
                                    }
                                }
                            }
                            return;
                        }
                        c2 = 139;
                    }
                    int i70 = i6 * i4;
                    int i71 = (i2 - 1) * i4;
                    float f = 1.0f;
                    int i72 = i70;
                    int i73 = 1;
                    int i74 = 0;
                    float f2 = 0.0f;
                    while (i73 < i9) {
                        i74 += i4;
                        i72 -= i4;
                        float f3 = (fCos * f) - (fSin * f2);
                        f2 = (f2 * fCos) + (f * fSin);
                        int i75 = i4;
                        int i76 = i71;
                        int i77 = i74;
                        int i78 = i72;
                        int i79 = 0;
                        int i80 = 0;
                        while (i79 < i4) {
                            fArr3[i77] = fArr5[i80] + (fArr5[i75] * f3);
                            fArr3[i78] = fArr5[i76] * f2;
                            i79++;
                            i78++;
                            i76++;
                            i77++;
                            i80++;
                            i75++;
                        }
                        int i81 = i70 - i4;
                        int i82 = i4;
                        int i83 = i70;
                        int i84 = 2;
                        float f4 = f2;
                        float f5 = f3;
                        while (i84 < i9) {
                            i82 += i4;
                            i81 -= i4;
                            float f6 = (f3 * f5) - (f2 * f4);
                            f4 = (f4 * f3) + (f5 * f2);
                            int i85 = i71;
                            int i86 = i81;
                            int i87 = i74;
                            int i88 = i72;
                            int i89 = i82;
                            int i90 = 0;
                            while (i90 < i4) {
                                fArr3[i87] = fArr3[i87] + (fArr5[i89] * f6);
                                fArr3[i88] = fArr3[i88] + (fArr5[i86] * f4);
                                i90++;
                                i88++;
                                i87++;
                                i86++;
                                i89++;
                            }
                            i84++;
                            i71 = i85;
                            f5 = f6;
                        }
                        i73++;
                        f = f3;
                        i70 = i83;
                    }
                    int i91 = 0;
                    for (int i92 = 1; i92 < i9; i92++) {
                        i91 += i4;
                        int i93 = i91;
                        int i94 = 0;
                        while (i94 < i4) {
                            fArr5[i94] = fArr5[i94] + fArr5[i93];
                            i94++;
                            i93++;
                        }
                    }
                    int i95 = i6 * i7;
                    int i96 = i95;
                    int i97 = 0;
                    for (int i98 = 1; i98 < i9; i98++) {
                        i97 += i7;
                        i96 -= i7;
                        int i99 = i97;
                        int i100 = i96;
                        for (int i101 = 0; i101 < i3; i101++) {
                            fArr4[i99] = fArr2[i99] - fArr2[i100];
                            fArr4[i100] = fArr2[i99] + fArr2[i100];
                            i99 += i;
                            i100 += i;
                        }
                    }
                    if (i == 1) {
                        c2 = 132;
                    } else if (i8 < i3) {
                        c2 = 128;
                    } else {
                        int i102 = 0;
                        for (int i103 = 1; i103 < i9; i103++) {
                            i102 += i7;
                            i95 -= i7;
                            int i104 = i95;
                            int i105 = i102;
                            for (int i106 = 0; i106 < i3; i106++) {
                                int i107 = i105;
                                int i108 = i104;
                                for (int i109 = 2; i109 < i; i109 += 2) {
                                    i107 += 2;
                                    i108 += 2;
                                    int i110 = i107 - 1;
                                    fArr4[i110] = fArr2[i110] - fArr2[i108];
                                    int i111 = i108 - 1;
                                    fArr4[i111] = fArr2[i110] + fArr2[i108];
                                    fArr4[i107] = fArr2[i107] + fArr2[i111];
                                    fArr4[i108] = fArr2[i107] - fArr2[i111];
                                }
                                i105 += i;
                                i104 += i;
                            }
                        }
                        c2 = 132;
                    }
                }
                int i112 = i6 * i7;
                int i113 = i << 1;
                int i114 = i112;
                int i115 = i113;
                int i116 = 0;
                for (int i117 = 1; i117 < i9; i117++) {
                    i116 += i7;
                    i114 -= i7;
                    int i118 = i116;
                    int i119 = i114;
                    int i120 = i115;
                    for (int i121 = 0; i121 < i3; i121++) {
                        float f7 = fArr[i120 - 1];
                        fArr4[i118] = f7 + f7;
                        float f8 = fArr[i120];
                        fArr4[i119] = f8 + f8;
                        i118 += i;
                        i119 += i;
                        i120 += i10;
                    }
                    i115 += i113;
                }
                if (i == 1) {
                    c2 = 't';
                } else if (i8 < i3) {
                    c2 = 'p';
                } else {
                    int i122 = 0;
                    int i123 = 0;
                    for (int i124 = 1; i124 < i9; i124++) {
                        i122 += i7;
                        i112 -= i7;
                        i123 += i113;
                        int i125 = i112;
                        int i126 = i122;
                        int i127 = i123;
                        int i128 = 0;
                        while (i128 < i3) {
                            int i129 = i112;
                            int i130 = i126;
                            int i131 = i125;
                            int i132 = i127;
                            int i133 = i132;
                            for (int i134 = 2; i134 < i; i134 += 2) {
                                i130 += 2;
                                i131 += 2;
                                i132 += 2;
                                i133 -= 2;
                                int i135 = i132 - 1;
                                int i136 = i133 - 1;
                                fArr4[i130 - 1] = fArr[i135] + fArr[i136];
                                fArr4[i131 - 1] = fArr[i135] - fArr[i136];
                                fArr4[i130] = fArr[i132] - fArr[i133];
                                fArr4[i131] = fArr[i132] + fArr[i133];
                            }
                            i126 += i;
                            i125 += i;
                            i127 += i10;
                            i128++;
                            i112 = i129;
                        }
                    }
                    c2 = 't';
                }
            } else {
                i10 = i2 * i;
                i7 = i3 * i;
                double d = tpi / i2;
                fCos = (float) Math.cos(d);
                fSin = (float) Math.sin(d);
                i8 = (i - 1) >>> 1;
                i9 = (i2 + 1) >>> 1;
                if (i < i3) {
                    i6 = i2;
                    c2 = 'g';
                } else {
                    int i137 = 0;
                    int i138 = 0;
                    for (int i139 = 0; i139 < i3; i139++) {
                        int i140 = i137;
                        int i141 = i138;
                        for (int i142 = 0; i142 < i; i142++) {
                            fArr4[i140] = fArr[i141];
                            i140++;
                            i141++;
                        }
                        i137 += i;
                        i138 += i10;
                    }
                    i6 = i2;
                    c2 = 'j';
                }
            }
            c = 'd';
        }
    }

    static void drftb1(int i, float[] fArr, float[] fArr2, float[] fArr3, int i2, int[] iArr) {
        char c;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = iArr[1];
        int i9 = 1;
        int i10 = 1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i11 < i8) {
            char c2 = 'd';
            int i17 = i13;
            int i18 = i14;
            int i19 = i15;
            int i20 = i16;
            char c3 = 'd';
            while (true) {
                if (c3 != c2) {
                    if (c3 == 'g') {
                        c = 's';
                        i3 = i17;
                        i4 = i18;
                        if (i3 != 2) {
                            c3 = 'j';
                            i18 = i4;
                        } else if (i12 != 0) {
                            dradb2(i4, i9, fArr2, fArr, fArr3, (i2 + i10) - 1);
                        } else {
                            dradb2(i4, i9, fArr, fArr2, fArr3, (i2 + i10) - 1);
                        }
                        i17 = i3;
                    } else if (c3 == 'j') {
                        int i21 = i17;
                        i4 = i18;
                        if (i21 != 3) {
                            c3 = 'm';
                            c2 = c2;
                            i17 = i21;
                            i18 = i4;
                        } else {
                            int i22 = i10 + i4;
                            if (i12 != 0) {
                                c = 's';
                                i3 = i21;
                                dradb3(i4, i9, fArr2, fArr, fArr3, (i2 + i10) - 1, fArr3, (i2 + i22) - 1);
                            } else {
                                c = 's';
                                i3 = i21;
                                dradb3(i4, i9, fArr, fArr2, fArr3, (i2 + i10) - 1, fArr3, (i2 + i22) - 1);
                            }
                        }
                    } else {
                        if (c3 == 'm') {
                            if (i12 != 0) {
                                i6 = i17;
                                i5 = i18;
                                dradbg(i18, i17, i9, i19, fArr2, fArr2, fArr2, fArr, fArr, fArr3, (i2 + i10) - 1);
                            } else {
                                i5 = i18;
                                i6 = i17;
                                dradbg(i5, i6, i9, i19, fArr, fArr, fArr, fArr2, fArr2, fArr3, (i2 + i10) - 1);
                            }
                            i7 = i5;
                            if (i7 != 1) {
                                break;
                            }
                            i12 = 1 - i12;
                            break;
                        }
                        if (c3 == 's') {
                            i6 = i17;
                            i7 = i18;
                            break;
                        }
                        c2 = c2;
                    }
                    i12 = 1 - i12;
                    i18 = i4;
                    c3 = c;
                    i17 = i3;
                } else {
                    i17 = iArr[i11 + 2];
                    int i23 = i17 * i9;
                    i18 = i / i23;
                    int i24 = i18 * i9;
                    if (i17 != 4) {
                        c3 = 'g';
                        c2 = c2;
                    } else {
                        int i25 = i10 + i18;
                        int i26 = i25 + i18;
                        if (i12 != 0) {
                            int i27 = (i2 + i26) - 1;
                            dradb4(i18, i9, fArr2, fArr, fArr3, (i2 + i10) - 1, fArr3, (i2 + i25) - 1, fArr3, i27);
                        } else {
                            int i28 = (i2 + i26) - 1;
                            dradb4(i18, i9, fArr, fArr2, fArr3, (i2 + i10) - 1, fArr3, (i2 + i25) - 1, fArr3, i28);
                        }
                        i12 = 1 - i12;
                        c3 = 's';
                    }
                    i20 = i23;
                    i19 = i24;
                }
                c2 = c2;
            }
            int i29 = i6;
            i10 += (i29 - 1) * i7;
            i11++;
            i13 = i29;
            i14 = i7;
            i15 = i19;
            i16 = i20;
            i9 = i16;
        }
        if (i12 == 0) {
            return;
        }
        for (int i30 = 0; i30 < i; i30++) {
            fArr[i30] = fArr2[i30];
        }
    }
}
