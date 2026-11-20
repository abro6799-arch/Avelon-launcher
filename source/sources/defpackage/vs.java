package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class vs extends aw {
    protected float[] g;
    protected float[] h;
    protected float[] i;
    protected float[] j;
    private int k;

    public vs() {
        super(uu.B.bm);
        this.g = new float[Keyboard.KEYBOARD_SIZE];
        this.h = new float[Keyboard.KEYBOARD_SIZE];
        this.i = new float[Keyboard.KEYBOARD_SIZE];
        this.j = new float[Keyboard.KEYBOARD_SIZE];
        this.k = 0;
    }

    @Override // defpackage.aw
    public void a() {
        int i;
        this.k++;
        for (int i2 = 0; i2 < 16; i2++) {
            for (int i3 = 0; i3 < 16; i3++) {
                float f = 0.0f;
                for (int i4 = i2 - 1; i4 <= i2 + 1; i4++) {
                    f += this.g[(i4 & 15) + ((i3 & 15) * 16)];
                }
                int i5 = (i3 * 16) + i2;
                this.h[i5] = (f / 3.3f) + (this.i[i5] * 0.8f);
            }
        }
        for (int i6 = 0; i6 < 16; i6++) {
            for (int i7 = 0; i7 < 16; i7++) {
                float[] fArr = this.i;
                int i8 = (i7 * 16) + i6;
                float f2 = fArr[i8];
                float[] fArr2 = this.j;
                float f3 = f2 + (fArr2[i8] * 0.05f);
                fArr[i8] = f3;
                if (f3 < 0.0f) {
                    fArr[i8] = 0.0f;
                }
                fArr2[i8] = fArr2[i8] - 0.1f;
                if (Math.random() < 0.05d) {
                    this.j[i8] = 0.5f;
                }
            }
        }
        float[] fArr3 = this.h;
        this.h = this.g;
        this.g = fArr3;
        for (int i9 = 0; i9 < 256; i9++) {
            float f4 = this.g[i9];
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
                i = (i13 + 17850) / 100;
                i10 = i14;
            } else {
                i = 255;
            }
            int i15 = i9 * 4;
            this.a[i15 + 0] = (byte) i10;
            this.a[i15 + 1] = (byte) i11;
            this.a[i15 + 2] = (byte) i;
            this.a[i15 + 3] = (byte) i12;
        }
    }
}
