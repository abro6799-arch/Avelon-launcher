package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class cg extends aw {
    protected float[] g;
    protected float[] h;
    protected float[] i;
    protected float[] j;

    public cg() {
        super(uu.D.bm);
        this.g = new float[Keyboard.KEYBOARD_SIZE];
        this.h = new float[Keyboard.KEYBOARD_SIZE];
        this.i = new float[Keyboard.KEYBOARD_SIZE];
        this.j = new float[Keyboard.KEYBOARD_SIZE];
    }

    @Override // defpackage.aw
    public void a() {
        int i;
        for (int i2 = 0; i2 < 16; i2++) {
            int i3 = 0;
            while (i3 < 16) {
                int iA = (int) (in.a(((i3 * 3.1415927f) * 2.0f) / 16.0f) * 1.2f);
                int iA2 = (int) (in.a(((i2 * 3.1415927f) * 2.0f) / 16.0f) * 1.2f);
                int i4 = i2 - 1;
                float f = 0.0f;
                while (true) {
                    i = i2 + 1;
                    if (i4 > i) {
                        break;
                    }
                    for (int i5 = i3 - 1; i5 <= i3 + 1; i5++) {
                        f += this.g[((i4 + iA) & 15) + (((i5 + iA2) & 15) * 16)];
                    }
                    i4++;
                }
                float[] fArr = this.h;
                int i6 = (i3 * 16) + i2;
                float[] fArr2 = this.i;
                int i7 = (i2 + 0) & 15;
                int i8 = ((i3 + 0) & 15) * 16;
                int i9 = i & 15;
                float f2 = fArr2[i7 + i8] + fArr2[i8 + i9];
                i3++;
                int i10 = (i3 & 15) * 16;
                fArr[i6] = (f / 10.0f) + ((((f2 + fArr2[i9 + i10]) + fArr2[i7 + i10]) / 4.0f) * 0.8f);
                float f3 = fArr2[i6];
                float[] fArr3 = this.j;
                float f4 = f3 + (fArr3[i6] * 0.01f);
                fArr2[i6] = f4;
                if (f4 < 0.0f) {
                    fArr2[i6] = 0.0f;
                }
                fArr3[i6] = fArr3[i6] - 0.06f;
                if (Math.random() < 0.005d) {
                    this.j[i6] = 1.5f;
                }
            }
        }
        float[] fArr4 = this.h;
        this.h = this.g;
        this.g = fArr4;
        for (int i11 = 0; i11 < 256; i11++) {
            float f5 = this.g[i11] * 2.0f;
            if (f5 > 1.0f) {
                f5 = 1.0f;
            }
            if (f5 < 0.0f) {
                f5 = 0.0f;
            }
            int i12 = (int) ((100.0f * f5) + 155.0f);
            float f6 = f5 * f5;
            int i13 = (int) (255.0f * f6);
            int i14 = (int) (f6 * f5 * f5 * 128.0f);
            if (this.c) {
                int i15 = i12 * 30;
                int i16 = (((i13 * 59) + i15) + (i14 * 11)) / 100;
                i13 = ((i13 * 70) + i15) / 100;
                i14 = (i15 + (i14 * 70)) / 100;
                i12 = i16;
            }
            int i17 = i11 * 4;
            this.a[i17 + 0] = (byte) i12;
            this.a[i17 + 1] = (byte) i13;
            this.a[i17 + 2] = (byte) i14;
            this.a[i17 + 3] = -1;
        }
    }
}
