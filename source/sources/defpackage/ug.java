package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ug extends df {
    private cc[] a;
    private int b;

    public ug(Random random, int i) {
        this.b = i;
        this.a = new cc[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.a[i2] = new cc(random);
        }
    }

    public double[] a(double[] dArr, double d, double d2, int i, int i2, double d3, double d4, double d5) {
        return a(dArr, d, d2, i, i2, d3, d4, d5, 0.5d);
    }

    public double[] a(double[] dArr, double d, double d2, int i, int i2, double d3, double d4, double d5, double d6) {
        double[] dArr2 = dArr;
        double d7 = d3 / 1.5d;
        double d8 = d4 / 1.5d;
        if (dArr2 == null || dArr2.length < i * i2) {
            dArr2 = new double[i * i2];
        } else {
            for (int i3 = 0; i3 < dArr2.length; i3++) {
                dArr2[i3] = 0.0d;
            }
        }
        double[] dArr3 = dArr2;
        double d9 = 1.0d;
        double d10 = 1.0d;
        for (int i4 = 0; i4 < this.b; i4++) {
            this.a[i4].a(dArr3, d, d2, i, i2, d7 * d9, d8 * d9, 0.55d / d10);
            d9 *= d5;
            d10 *= d6;
        }
        return dArr3;
    }
}
