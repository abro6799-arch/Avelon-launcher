package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class oh extends aw {
    protected float[] g;
    protected float[] h;
    protected float[] i;
    protected float[] j;
    private int k;

    public oh() {
        super(uu.B.bm + 1);
        this.g = new float[Keyboard.KEYBOARD_SIZE];
        this.h = new float[Keyboard.KEYBOARD_SIZE];
        this.i = new float[Keyboard.KEYBOARD_SIZE];
        this.j = new float[Keyboard.KEYBOARD_SIZE];
        this.k = 0;
        this.e = 2;
    }

    @Override // defpackage.aw
    public void a() {
        this.k++;
        for (int i = 0; i < 16; i++) {
            for (int i2 = 0; i2 < 16; i2++) {
                float f = 0.0f;
                for (int i3 = i2 - 2; i3 <= i2; i3++) {
                    f += this.g[(i & 15) + ((i3 & 15) * 16)];
                }
                int i4 = (i2 * 16) + i;
                this.h[i4] = (f / 3.2f) + (this.i[i4] * 0.8f);
            }
        }
        for (int i5 = 0; i5 < 16; i5++) {
            for (int i6 = 0; i6 < 16; i6++) {
                float[] fArr = this.i;
                int i7 = (i6 * 16) + i5;
                float f2 = fArr[i7];
                float[] fArr2 = this.j;
                float f3 = f2 + (fArr2[i7] * 0.05f);
                fArr[i7] = f3;
                if (f3 < 0.0f) {
                    fArr[i7] = 0.0f;
                }
                fArr2[i7] = fArr2[i7] - 0.3f;
                if (Math.random() < 0.2d) {
                    this.j[i7] = 0.5f;
                }
            }
        }
        float[] fArr3 = this.h;
        this.h = this.g;
        this.g = fArr3;
        for (int i8 = 0; i8 < 256; i8++) {
            int i9 = 255;
            float f4 = this.g[(i8 - (this.k * 16)) & 255];
            if (f4 > 1.0f) {
                f4 = 1.0f;
            }
            if (f4 < 0.0f) {
                f4 = 0.0f;
            }
            float f5 = f4 * f4;
            int i10 = (int) ((f5 * 32.0f) + 32.0f);
            int i11 = (int) ((64.0f * f5) + 50.0f);
            int i12 = (int) ((f5 * 50.0f) + 146.0f);
            if (this.c) {
                int i13 = i10 * 30;
                int i14 = (((i11 * 59) + i13) + 2805) / 100;
                i11 = ((i11 * 70) + i13) / 100;
                i9 = (i13 + 17850) / 100;
                i10 = i14;
            }
            int i15 = i8 * 4;
            this.a[i15 + 0] = (byte) i10;
            this.a[i15 + 1] = (byte) i11;
            this.a[i15 + 2] = (byte) i9;
            this.a[i15 + 3] = (byte) i12;
        }
    }
}
