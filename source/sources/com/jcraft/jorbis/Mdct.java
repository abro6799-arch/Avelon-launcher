package com.jcraft.jorbis;

/* JADX INFO: loaded from: classes.dex */
class Mdct {
    int[] bitrev;
    int log2n;
    int n;
    float scale;
    float[] trig;
    float[] _x = new float[1024];
    float[] _w = new float[1024];

    void clear() {
    }

    void forward(float[] fArr, float[] fArr2) {
    }

    Mdct() {
    }

    void init(int i) {
        int i2;
        int i3 = i / 4;
        this.bitrev = new int[i3];
        this.trig = new float[i + i3];
        double d = i;
        this.log2n = (int) Math.rint(Math.log(d) / Math.log(2.0d));
        this.n = i;
        int i4 = i / 2;
        int i5 = i4 + 0;
        int i6 = i5 + 1;
        int i7 = i4 + i5;
        int i8 = i7 + 1;
        int i9 = 0;
        int i10 = 0;
        while (i10 < i3) {
            int i11 = i10 * 2;
            double d2 = (3.141592653589793d / d) * ((double) (i10 * 4));
            this.trig[i9 + i11] = (float) Math.cos(d2);
            int i12 = 1 + i11;
            this.trig[i12] = (float) (-Math.sin(d2));
            int i13 = i3;
            double d3 = (3.141592653589793d / ((double) (i * 2))) * ((double) i12);
            this.trig[i5 + i11] = (float) Math.cos(d3);
            this.trig[i11 + i6] = (float) Math.sin(d3);
            i10++;
            i3 = i13;
            d = d;
            i9 = 0;
        }
        double d4 = d;
        int i14 = 0;
        while (true) {
            i2 = i / 8;
            if (i14 >= i2) {
                break;
            }
            int i15 = i14 * 2;
            double d5 = (3.141592653589793d / d4) * ((double) ((i14 * 4) + 2));
            this.trig[i7 + i15] = (float) Math.cos(d5);
            this.trig[i15 + i8] = (float) (-Math.sin(d5));
            i14++;
        }
        int i16 = this.log2n;
        int i17 = (1 << (i16 - 1)) - 1;
        int i18 = 1 << (i16 - 2);
        for (int i19 = 0; i19 < i2; i19++) {
            int i20 = 0;
            int i21 = 0;
            while (true) {
                int i22 = i18 >>> i20;
                if (i22 != 0) {
                    if ((i22 & i19) != 0) {
                        i21 |= 1 << i20;
                    }
                    i20++;
                }
            }
            int[] iArr = this.bitrev;
            int i23 = i19 * 2;
            iArr[i23] = (~i21) & i17;
            iArr[i23 + 1] = i21;
        }
        this.scale = 4.0f / i;
    }

    synchronized void backward(float[] fArr, float[] fArr2) {
        int length = this._x.length;
        int i = this.n;
        if (length < i / 2) {
            this._x = new float[i / 2];
        }
        if (this._w.length < i / 2) {
            this._w = new float[i / 2];
        }
        float[] fArr3 = this._x;
        float[] fArr4 = this._w;
        int i2 = i >>> 1;
        int i3 = i >>> 2;
        int i4 = i >>> 3;
        int i5 = 1;
        int i6 = i2;
        int i7 = 0;
        for (int i8 = 0; i8 < i4; i8++) {
            i6 -= 2;
            int i9 = i7 + 1;
            int i10 = i5 + 2;
            float f = -fArr[i10];
            float[] fArr5 = this.trig;
            int i11 = i6 + 1;
            fArr3[i7] = (f * fArr5[i11]) - (fArr[i5] * fArr5[i6]);
            i7 = i9 + 1;
            fArr3[i9] = (fArr[i5] * fArr5[i11]) - (fArr[i10] * fArr5[i6]);
            i5 += 4;
        }
        int i12 = i2 - 4;
        for (int i13 = 0; i13 < i4; i13++) {
            i6 -= 2;
            int i14 = i7 + 1;
            float f2 = fArr[i12];
            float[] fArr6 = this.trig;
            int i15 = i6 + 1;
            int i16 = i12 + 2;
            fArr3[i7] = (f2 * fArr6[i15]) + (fArr[i16] * fArr6[i6]);
            i7 = i14 + 1;
            fArr3[i14] = (fArr[i12] * fArr6[i6]) - (fArr[i16] * fArr6[i15]);
            i12 -= 4;
        }
        float[] fArrMdct_kernel = mdct_kernel(fArr3, fArr4, this.n, i2, i3, i4);
        int i17 = i3 - 1;
        int i18 = i3 + i2;
        int i19 = i18 - 1;
        int i20 = i3;
        int i21 = 0;
        for (int i22 = 0; i22 < i3; i22++) {
            float f3 = fArrMdct_kernel[i21];
            float[] fArr7 = this.trig;
            float f4 = fArr7[i2 + 1];
            float f5 = fArrMdct_kernel[i21 + 1];
            float f6 = fArr7[i2];
            float f7 = (f3 * f4) - (f5 * f6);
            float f8 = -((f3 * f6) + (f5 * f4));
            fArr2[i20] = -f7;
            fArr2[i17] = f7;
            fArr2[i18] = f8;
            fArr2[i19] = f8;
            i20++;
            i17--;
            i18++;
            i19--;
            i21 += 2;
            i2 += 2;
        }
    }

    private float[] mdct_kernel(float[] fArr, float[] fArr2, int i, int i2, int i3, int i4) {
        int i5;
        int i6 = i2;
        int i7 = i3;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            i5 = 1;
            if (i8 >= i3) {
                break;
            }
            float f = fArr[i7];
            float f2 = fArr[i9];
            float f3 = f - f2;
            int i10 = i7 + 1;
            int i11 = i9 + 1;
            fArr2[i3 + i8] = f + f2;
            float f4 = fArr[i10] - fArr[i11];
            i6 -= 4;
            int i12 = i8 + 1;
            float[] fArr3 = this.trig;
            int i13 = i6 + 1;
            fArr2[i8] = (fArr3[i6] * f3) + (fArr3[i13] * f4);
            fArr2[i12] = (f4 * fArr3[i6]) - (f3 * fArr3[i13]);
            fArr2[i3 + i12] = fArr[i10] + fArr[i11];
            i8 = i12 + 1;
            i7 = i10 + 1;
            i9 = i11 + 1;
        }
        float[] fArr4 = fArr;
        float[] fArr5 = fArr2;
        int i14 = 0;
        while (i14 < this.log2n - 3) {
            int i15 = i >>> (i14 + 2);
            int i16 = 1 << (i14 + 3);
            int i17 = i2 - 2;
            int i18 = 0;
            int i19 = 0;
            while (i18 < (i15 >>> 2)) {
                int i20 = i17 - (i15 >> 1);
                float[] fArr6 = this.trig;
                float f5 = fArr6[i19];
                float f6 = fArr6[i19 + 1];
                int i21 = i17 - 2;
                int i22 = i15 + 1;
                for (int i23 = 0; i23 < (2 << i14); i23++) {
                    float f7 = fArr5[i17];
                    float f8 = fArr5[i20];
                    float f9 = f7 - f8;
                    fArr4[i17] = f7 + f8;
                    int i24 = i17 + 1;
                    float f10 = fArr5[i24];
                    int i25 = i20 + 1;
                    float f11 = fArr5[i25];
                    float f12 = f10 - f11;
                    fArr4[i24] = f10 + f11;
                    fArr4[i25] = (f12 * f5) - (f9 * f6);
                    fArr4[i25 - 1] = (f9 * f5) + (f12 * f6);
                    i17 = i24 - i22;
                    i20 = i25 - i22;
                }
                i15 = i22 - 1;
                i19 += i16;
                i18++;
                i17 = i21;
            }
            i14++;
            float[] fArr7 = fArr5;
            fArr5 = fArr4;
            fArr4 = fArr7;
        }
        int i26 = i2 - 1;
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        int i30 = i;
        while (i27 < i4) {
            int[] iArr = this.bitrev;
            int i31 = i29 + 1;
            int i32 = iArr[i29];
            i29 = i31 + 1;
            int i33 = iArr[i31];
            float f13 = fArr5[i32];
            float f14 = fArr5[i33 + 1];
            float f15 = f13 - f14;
            float f16 = fArr5[i32 - i5];
            float f17 = fArr5[i33];
            float f18 = f16 + f17;
            float f19 = f13 + f14;
            float f20 = f16 - f17;
            float[] fArr8 = this.trig;
            float f21 = fArr8[i30];
            float f22 = f15 * f21;
            int i34 = i30 + i5;
            float f23 = f21 * f18;
            float f24 = fArr8[i34];
            float f25 = f15 * f24;
            i30 = i34 + i5;
            float f26 = f18 * f24;
            int i35 = i28 + 1;
            fArr4[i28] = (f19 + f25 + f23) * 0.5f;
            int i36 = i26 - 1;
            fArr4[i26] = (((-f20) + f26) - f22) * 0.5f;
            fArr4[i35] = ((f20 + f26) - f22) * 0.5f;
            int i37 = i36 - 1;
            fArr4[i36] = ((f19 - f25) - f23) * 0.5f;
            i27++;
            i28 = i35 + 1;
            i26 = i37;
            i5 = 1;
        }
        return fArr4;
    }
}
