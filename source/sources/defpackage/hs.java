package defpackage;

import java.lang.reflect.Array;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class hs extends aw {
    private int g;
    private byte[][] h;

    public hs() {
        super(uu.bf.bm);
        this.g = 0;
        this.h = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 32, 1024);
        Random random = new Random(100L);
        for (int i = 0; i < 32; i++) {
            int i2 = 0;
            while (true) {
                if (i2 < 16) {
                    int i3 = 0;
                    for (int i4 = 16; i3 < i4; i4 = 16) {
                        float fA = 0.0f;
                        int i5 = 0;
                        while (i5 < 2) {
                            float f = i5 * 8;
                            float f2 = ((i2 - f) / 16.0f) * 2.0f;
                            float f3 = ((i3 - f) / 16.0f) * 2.0f;
                            f2 = f2 < -1.0f ? f2 + 2.0f : f2;
                            f2 = f2 >= 1.0f ? f2 - 2.0f : f2;
                            f3 = f3 < -1.0f ? f3 + 2.0f : f3;
                            if (f3 >= 1.0f) {
                                f3 -= 2.0f;
                            }
                            float f4 = (f2 * f2) + (f3 * f3);
                            int i6 = i5 * 2;
                            fA += (((in.a(((float) Math.atan2(f3, f2)) + ((((((i / 32.0f) * 3.1415927f) * 2.0f) - (10.0f * f4)) + i6) * (i6 - 1))) + 1.0f) / 2.0f) / (f4 + 1.0f)) * 0.5f;
                            i5++;
                            i3 = i3;
                        }
                        int i7 = i3;
                        float fNextFloat = fA + (random.nextFloat() * 0.1f);
                        int i8 = (int) ((100.0f * fNextFloat) + 155.0f);
                        float f5 = fNextFloat * fNextFloat;
                        int i9 = (int) ((200.0f * f5) + 55.0f);
                        int i10 = (int) (f5 * fNextFloat * fNextFloat * 255.0f);
                        byte[] bArr = this.h[i];
                        int i11 = ((i7 * 16) + i2) * 4;
                        bArr[i11 + 0] = (byte) i9;
                        bArr[i11 + 1] = (byte) i10;
                        byte b = (byte) i8;
                        bArr[i11 + 2] = b;
                        bArr[i11 + 3] = b;
                        i3 = i7 + 1;
                    }
                    i2++;
                }
            }
        }
    }

    @Override // defpackage.aw
    public void a() {
        int i = this.g + 1;
        this.g = i;
        byte[] bArr = this.h[i & 31];
        for (int i2 = 0; i2 < 256; i2++) {
            int i3 = i2 * 4;
            int i4 = i3 + 0;
            int i5 = bArr[i4] & 255;
            int i6 = i3 + 1;
            int i7 = bArr[i6] & 255;
            int i8 = i3 + 2;
            int i9 = bArr[i8] & 255;
            int i10 = i3 + 3;
            int i11 = bArr[i10] & 255;
            if (this.c) {
                int i12 = i5 * 30;
                int i13 = (((i7 * 59) + i12) + (i9 * 11)) / 100;
                i7 = ((i7 * 70) + i12) / 100;
                i9 = (i12 + (i9 * 70)) / 100;
                i5 = i13;
            }
            this.a[i4] = (byte) i5;
            this.a[i6] = (byte) i7;
            this.a[i8] = (byte) i9;
            this.a[i10] = (byte) i11;
        }
    }
}
