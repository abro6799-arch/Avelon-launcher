package com.jcraft.jorbis;

/* JADX INFO: loaded from: classes.dex */
class Lpc {
    Drft fft = new Drft();
    int ln;
    int m;

    Lpc() {
    }

    static float lpc_from_data(float[] fArr, float[] fArr2, int i, int i2) {
        int i3 = i2 + 1;
        float[] fArr3 = new float[i3];
        while (true) {
            int i4 = i3 - 1;
            float f = 0.0f;
            if (i3 == 0) {
                break;
            }
            for (int i5 = i4; i5 < i; i5++) {
                f += fArr[i5] * fArr[i5 - i4];
            }
            fArr3[i4] = f;
            i3 = i4;
        }
        float f2 = fArr3[0];
        int i6 = 0;
        while (i6 < i2) {
            int i7 = i6 + 1;
            float f3 = -fArr3[i7];
            if (f2 == 0.0f) {
                for (int i8 = 0; i8 < i2; i8++) {
                    fArr2[i8] = 0.0f;
                }
                return 0.0f;
            }
            for (int i9 = 0; i9 < i6; i9++) {
                f3 -= fArr2[i9] * fArr3[i6 - i9];
            }
            float f4 = f3 / f2;
            fArr2[i6] = f4;
            int i10 = 0;
            while (i10 < i6 / 2) {
                float f5 = fArr2[i10];
                int i11 = (i6 - 1) - i10;
                fArr2[i10] = (fArr2[i11] * f4) + f5;
                fArr2[i11] = fArr2[i11] + (f5 * f4);
                i10++;
            }
            if (i6 % 2 != 0) {
                float f6 = fArr2[i10];
                fArr2[i10] = f6 + (f6 * f4);
            }
            f2 = (float) (((double) f2) * (1.0d - ((double) (f4 * f4))));
            i6 = i7;
        }
        return f2;
    }

    float lpc_from_curve(float[] fArr, float[] fArr2) {
        int i = this.ln;
        float[] fArr3 = new float[i + i];
        float f = (float) (0.5d / ((double) i));
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 * 2;
            fArr3[i3] = fArr[i2] * f;
            fArr3[i3 + 1] = 0.0f;
        }
        int i4 = i * 2;
        fArr3[i4 - 1] = fArr[i - 1] * f;
        this.fft.backward(fArr3);
        int i5 = i4 / 2;
        int i6 = i5;
        for (int i7 = 0; i7 < i5; i7++) {
            float f2 = fArr3[i7];
            fArr3[i7] = fArr3[i6];
            fArr3[i6] = f2;
            i6++;
        }
        return lpc_from_data(fArr3, fArr2, i4, this.m);
    }

    void init(int i, int i2) {
        this.ln = i;
        this.m = i2;
        this.fft.init(i * 2);
    }

    void clear() {
        this.fft.clear();
    }

    static float FAST_HYPOT(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    void lpc_to_curve(float[] fArr, float[] fArr2, float f) {
        for (int i = 0; i < this.ln * 2; i++) {
            fArr[i] = 0.0f;
        }
        if (f == 0.0f) {
            return;
        }
        for (int i2 = 0; i2 < this.m; i2++) {
            int i3 = i2 * 2;
            float f2 = 4.0f * f;
            fArr[i3 + 1] = fArr2[i2] / f2;
            fArr[i3 + 2] = (-fArr2[i2]) / f2;
        }
        this.fft.backward(fArr);
        int i4 = this.ln * 2;
        float f3 = (float) (1.0d / ((double) f));
        fArr[0] = (float) (1.0d / ((double) ((fArr[0] * 2.0f) + f3)));
        for (int i5 = 1; i5 < this.ln; i5++) {
            float f4 = fArr[i5];
            float f5 = fArr[i4 - i5];
            fArr[i5] = (float) (1.0d / ((double) FAST_HYPOT((f4 + f5) + f3, f4 - f5)));
        }
    }
}
