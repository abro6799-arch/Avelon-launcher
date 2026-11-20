package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class sd extends aw {
    protected float[] g;
    protected float[] h;

    public sd(int i) {
        super(uu.as.bm + (i * 16));
        this.g = new float[320];
        this.h = new float[320];
    }

    @Override // defpackage.aw
    public void a() {
        for (int i = 0; i < 16; i++) {
            int i2 = 0;
            while (i2 < 20) {
                int i3 = i2 + 1;
                int i4 = 18;
                float f = this.g[((i3 % 20) * 16) + i] * 18;
                for (int i5 = i - 1; i5 <= i + 1; i5++) {
                    for (int i6 = i2; i6 <= i3; i6++) {
                        if (i5 >= 0 && i6 >= 0 && i5 < 16 && i6 < 20) {
                            f += this.g[(i6 * 16) + i5];
                        }
                        i4++;
                    }
                }
                float[] fArr = this.h;
                int i7 = (i2 * 16) + i;
                fArr[i7] = f / (i4 * 1.06f);
                if (i2 >= 19) {
                    fArr[i7] = (float) ((Math.random() * Math.random() * Math.random() * 4.0d) + (Math.random() * 0.10000000149011612d) + 0.20000000298023224d);
                }
                i2 = i3;
            }
        }
        float[] fArr2 = this.h;
        this.h = this.g;
        this.g = fArr2;
        for (int i8 = 0; i8 < 256; i8++) {
            float f2 = this.g[i8] * 1.8f;
            if (f2 > 1.0f) {
                f2 = 1.0f;
            }
            if (f2 < 0.0f) {
                f2 = 0.0f;
            }
            int i9 = (int) ((155.0f * f2) + 100.0f);
            float f3 = f2 * f2;
            int i10 = (int) (f3 * 255.0f);
            int i11 = (int) (f3 * f2 * f2 * f2 * f2 * f2 * f2 * f2 * f2 * 255.0f);
            int i12 = f2 < 0.5f ? 0 : 255;
            if (this.c) {
                int i13 = i9 * 30;
                int i14 = (((i10 * 59) + i13) + (i11 * 11)) / 100;
                i10 = ((i10 * 70) + i13) / 100;
                i11 = (i13 + (i11 * 70)) / 100;
                i9 = i14;
            }
            int i15 = i8 * 4;
            this.a[i15 + 0] = (byte) i9;
            this.a[i15 + 1] = (byte) i10;
            this.a[i15 + 2] = (byte) i11;
            this.a[i15 + 3] = (byte) i12;
        }
    }
}
