package defpackage;

import java.io.IOException;
import java.util.Arrays;
import mcshim.awt.image.BufferedImage;
import mcshim.imageio.ImageIO;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class un {
    private float[] a = new float[768];
    private int[] b = new int[5120];
    private int[] c = new int[5120];
    private int[] d = new int[5120];
    private int[] e = new int[5120];
    private int[] f = new int[34];
    private int[] g = new int[768];

    public un() {
        try {
            int[] iArr = new int[65536];
            ImageIO.read(un.class.getResource("/terrain.png")).getRGB(0, 0, Keyboard.KEYBOARD_SIZE, Keyboard.KEYBOARD_SIZE, iArr, 0, Keyboard.KEYBOARD_SIZE);
            for (int i = 0; i < 256; i++) {
                int i2 = (i % 16) * 16;
                int i3 = (i / 16) * 16;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                for (int i8 = 0; i8 < 16; i8++) {
                    for (int i9 = 0; i9 < 16; i9++) {
                        int i10 = iArr[i9 + i2 + ((i8 + i3) * Keyboard.KEYBOARD_SIZE)];
                        if (((i10 >> 24) & 255) > 128) {
                            i4 += (i10 >> 16) & 255;
                            i6 += (i10 >> 8) & 255;
                            i7 += i10 & 255;
                            i5++;
                        }
                    }
                    i5 = i5 == 0 ? i5 + 1 : i5;
                    float[] fArr = this.a;
                    int i11 = i * 3;
                    fArr[i11 + 0] = i4 / i5;
                    fArr[i11 + 1] = i6 / i5;
                    fArr[i11 + 2] = i7 / i5;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        for (int i12 = 0; i12 < 256; i12++) {
            if (uu.m[i12] != null) {
                int i13 = i12 * 3;
                this.g[i13 + 0] = uu.m[i12].a(1);
                this.g[i13 + 1] = uu.m[i12].a(2);
                this.g[i13 + 2] = uu.m[i12].a(3);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:72:0x0176  */
    /* JADX WARN: Code duplicated, block: B:74:0x0182  */
    public void a(re reVar) {
        int i;
        int i2;
        float f;
        int[] iArr;
        int i3;
        fd fdVar = reVar.b;
        boolean z = true;
        if (fdVar == null) {
            reVar.f = true;
            reVar.e = true;
            return;
        }
        int i4 = reVar.c * 16;
        int i5 = reVar.d * 16;
        int i6 = i4 + 16;
        int i7 = i5 + 16;
        if (fdVar.c(reVar.c, reVar.d).h()) {
            reVar.f = true;
            reVar.e = true;
            return;
        }
        int i8 = 0;
        reVar.f = false;
        Arrays.fill(this.c, 0);
        Arrays.fill(this.d, 0);
        int i9 = 160;
        Arrays.fill(this.f, 160);
        int i10 = i7 - 1;
        while (i10 >= i5) {
            int i11 = i6 - 1;
            while (i11 >= i4) {
                int i12 = i11 - i4;
                int i13 = i10 - i5;
                int i14 = i12 + i13;
                boolean z2 = z;
                int i15 = i8;
                while (i15 < 128) {
                    int i16 = (((i13 - i12) - i15) + i9) - 16;
                    int[] iArr2 = this.f;
                    if (i16 < iArr2[i14] || i16 < iArr2[i14 + 1]) {
                        uu uuVar = uu.m[fdVar.a(i11, i15, i10)];
                        if (uuVar == null) {
                            i = i4;
                            z2 = false;
                            i2 = 0;
                        } else {
                            i = i4;
                            if (uuVar.bA == ln.g) {
                                int i17 = i15 + 1;
                                int iA = fdVar.a(i11, i17, i10);
                                if (iA == 0 || uu.m[iA].bA != ln.g) {
                                    float fC = fdVar.c(i11, i17, i10) * (((i15 / 127.0f) * 0.6f) + 0.4f);
                                    if (i16 >= 0 && i16 < 160) {
                                        int i18 = (i16 * 32) + i14;
                                        if (i14 >= 0 && i14 <= 32) {
                                            int[] iArr3 = this.d;
                                            if (iArr3[i18] <= i15) {
                                                iArr3[i18] = i15;
                                                this.e[i18] = (int) (fC * 127.0f);
                                            }
                                        }
                                        if (i14 >= -1 && i14 <= 31) {
                                            int[] iArr4 = this.d;
                                            int i19 = i18 + 1;
                                            if (iArr4[i19] <= i15) {
                                                iArr4[i19] = i15;
                                                this.e[i19] = (int) (fC * 127.0f);
                                            }
                                        }
                                        z2 = false;
                                    }
                                }
                            } else {
                                if (z2) {
                                    int[] iArr5 = this.f;
                                    if (i16 < iArr5[i14]) {
                                        iArr5[i14] = i16;
                                    }
                                    int i20 = i14 + 1;
                                    if (i16 < iArr5[i20]) {
                                        iArr5[i20] = i16;
                                    }
                                }
                                float f2 = ((i15 / 127.0f) * 0.6f) + 0.4f;
                                if (i16 < 0 || i16 >= 160) {
                                    i5 = i5;
                                    i6 = i6;
                                    i12 = i12;
                                    i13 = i13;
                                    i2 = 0;
                                } else {
                                    int i21 = (i16 * 32) + i14;
                                    i5 = i5;
                                    i2 = 0;
                                    int i22 = this.g[(uuVar.bn * 3) + 0];
                                    float fC2 = ((fdVar.c(i11, i15 + 1, i10) * 0.8f) + 0.2f) * f2;
                                    i6 = i6;
                                    if (i14 >= 0) {
                                        int[] iArr6 = this.c;
                                        i12 = i12;
                                        if (iArr6[i21] <= i15) {
                                            iArr6[i21] = i15;
                                            int[] iArr7 = this.b;
                                            float[] fArr = this.a;
                                            int i23 = i22 * 3;
                                            iArr7[i21] = (((int) (fArr[i23 + 1] * fC2)) << 8) | (((int) (fArr[i23 + 0] * fC2)) << 16) | (-16777216) | ((int) (fArr[i23 + 2] * fC2));
                                        }
                                        if (i14 < 31) {
                                            f = fC2 * 0.9f;
                                            iArr = this.c;
                                            i3 = i21 + 1;
                                            if (iArr[i3] <= i15) {
                                                iArr[i3] = i15;
                                                int[] iArr8 = this.b;
                                                float[] fArr2 = this.a;
                                                int i24 = i22 * 3;
                                                iArr8[i3] = ((int) (fArr2[i24 + 2] * f)) | (((int) (fArr2[i24 + 0] * f)) << 16) | (-16777216) | (((int) (fArr2[i24 + 1] * f)) << 8);
                                            }
                                        }
                                    } else {
                                        i12 = i12;
                                    }
                                    if (i14 < 31) {
                                        f = fC2 * 0.9f;
                                        iArr = this.c;
                                        i3 = i21 + 1;
                                        if (iArr[i3] <= i15) {
                                            iArr[i3] = i15;
                                            int[] iArr9 = this.b;
                                            float[] fArr3 = this.a;
                                            int i25 = i22 * 3;
                                            iArr9[i3] = ((int) (fArr3[i25 + 2] * f)) | (((int) (fArr3[i25 + 0] * f)) << 16) | (-16777216) | (((int) (fArr3[i25 + 1] * f)) << 8);
                                        }
                                    }
                                }
                                if (i16 >= -1 && i16 < 159) {
                                    int i26 = ((i16 + 1) * 32) + i14;
                                    int i27 = this.g[(uuVar.bn * 3) + 1];
                                    float fC3 = (fdVar.c(i11 - 1, i15, i10) * 0.8f) + 0.2f;
                                    int i28 = this.g[(uuVar.bn * 3) + 2];
                                    float fC4 = (fdVar.c(i11, i15, i10 + 1) * 0.8f) + 0.2f;
                                    if (i14 >= 0) {
                                        float f3 = fC3 * f2 * 0.6f;
                                        int[] iArr10 = this.c;
                                        int i29 = i15 - 1;
                                        if (iArr10[i26] <= i29) {
                                            iArr10[i26] = i29;
                                            int[] iArr11 = this.b;
                                            float[] fArr4 = this.a;
                                            int i30 = i27 * 3;
                                            iArr11[i26] = ((int) (fArr4[i30 + 2] * f3)) | (((int) (fArr4[i30 + 0] * f3)) << 16) | (-16777216) | (((int) (fArr4[i30 + 1] * f3)) << 8);
                                        }
                                    }
                                    if (i14 < 31) {
                                        float f4 = fC4 * 0.9f * f2 * 0.4f;
                                        int[] iArr12 = this.c;
                                        int i31 = i26 + 1;
                                        int i32 = i15 - 1;
                                        if (iArr12[i31] <= i32) {
                                            iArr12[i31] = i32;
                                            int[] iArr13 = this.b;
                                            float[] fArr5 = this.a;
                                            int i33 = i28 * 3;
                                            iArr13[i31] = ((int) (fArr5[i33 + 2] * f4)) | (((int) (fArr5[i33 + 0] * f4)) << 16) | (-16777216) | (((int) (fArr5[i33 + 1] * f4)) << 8);
                                        }
                                    }
                                }
                            }
                        }
                        i15++;
                        i8 = i2;
                        i4 = i;
                        i5 = i5;
                        i6 = i6;
                        i12 = i12;
                        i13 = i13;
                        i9 = 160;
                    } else {
                        i = i4;
                    }
                    i2 = 0;
                    i15++;
                    i8 = i2;
                    i4 = i;
                    i5 = i5;
                    i6 = i6;
                    i12 = i12;
                    i13 = i13;
                    i9 = 160;
                }
                i11--;
                z = true;
                i9 = 160;
            }
            i10--;
            z = true;
            i9 = 160;
        }
        a();
        if (reVar.a == null) {
            reVar.a = new BufferedImage(32, 160, 2);
        }
        reVar.a.setRGB(0, 0, 32, 160, this.b, 0, 32);
        reVar.e = true;
    }

    private void a() {
        for (int i = 0; i < 32; i++) {
            for (int i2 = 0; i2 < 160; i2++) {
                int i3 = (i2 * 32) + i;
                int[] iArr = this.c;
                if (iArr[i3] == 0) {
                    this.b[i3] = 0;
                }
                if (this.d[i3] > iArr[i3]) {
                    int[] iArr2 = this.b;
                    int i4 = iArr2[i3];
                    int i5 = (i4 >> 24) & 255;
                    int[] iArr3 = this.e;
                    int i6 = ((i4 & 16711422) >> 1) + iArr3[i3];
                    iArr2[i3] = i6;
                    if (i5 < 128) {
                        iArr2[i3] = (iArr3[i3] * 2) - Integer.MIN_VALUE;
                    } else {
                        iArr2[i3] = i6 | (-16777216);
                    }
                }
            }
        }
    }
}
