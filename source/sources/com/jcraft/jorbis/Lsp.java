package com.jcraft.jorbis;

/* JADX INFO: loaded from: classes.dex */
class Lsp {
    static final float M_PI = 3.1415927f;

    Lsp() {
    }

    static void lsp_to_curve(float[] fArr, int[] iArr, int i, int i2, float[] fArr2, int i3, float f, float f2) {
        float f3;
        int i4;
        int i5;
        int i6;
        float f4 = M_PI / i2;
        for (int i7 = 0; i7 < i3; i7++) {
            fArr2[i7] = Lookup.coslook(fArr2[i7]);
        }
        int i8 = (i3 / 2) * 2;
        int i9 = 0;
        while (i9 < i) {
            int i10 = iArr[i9];
            float fCoslook = Lookup.coslook(i10 * f4);
            float f5 = 0.70710677f;
            float f6 = 0.70710677f;
            for (int i11 = 0; i11 < i8; i11 += 2) {
                f5 *= fArr2[i11] - fCoslook;
                f6 *= fArr2[i11 + 1] - fCoslook;
            }
            if ((i3 & 1) != 0) {
                float f7 = f5 * (fArr2[i3 - 1] - fCoslook);
                f3 = f7 * f7;
                fCoslook *= fCoslook;
            } else {
                f3 = f5 * (fCoslook + 1.0f) * f5;
            }
            float fIntBitsToFloat = (f6 * (1.0f - fCoslook) * f6) + f3;
            int iFloatToIntBits = Float.floatToIntBits(fIntBitsToFloat);
            int i12 = iFloatToIntBits & Integer.MAX_VALUE;
            if (i12 >= 2139095040 || i12 == 0) {
                i4 = 0;
            } else {
                if (i12 < 8388608) {
                    iFloatToIntBits = Float.floatToIntBits((float) (((double) fIntBitsToFloat) * 3.3554432E7d));
                    i12 = iFloatToIntBits & Integer.MAX_VALUE;
                    i6 = -25;
                } else {
                    i6 = 0;
                }
                i4 = i6 + ((i12 >>> 23) - 126);
                fIntBitsToFloat = Float.intBitsToFloat((iFloatToIntBits & (-2139095041)) | 1056964608);
            }
            float fFromdBlook = Lookup.fromdBlook(((Lookup.invsqlook(fIntBitsToFloat) * f) * Lookup.invsq2explook(i4 + i3)) - f2);
            while (true) {
                i5 = i9 + 1;
                fArr[i9] = fArr[i9] * fFromdBlook;
                if (i5 >= i || iArr[i5] != i10) {
                    break;
                } else {
                    i9 = i5;
                }
            }
            i9 = i5;
        }
    }
}
