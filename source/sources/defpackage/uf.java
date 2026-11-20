package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class uf extends df {
    private am[] a;
    private int b;

    public uf(Random random, int i) {
        this.b = i;
        this.a = new am[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.a[i2] = new am(random);
        }
    }

    public double a(double d, double d2) {
        double dA = 0.0d;
        double d3 = 1.0d;
        for (int i = 0; i < this.b; i++) {
            dA += this.a[i].a(d * d3, d2 * d3) / d3;
            d3 /= 2.0d;
        }
        return dA;
    }

    public double[] a(double[] dArr, double d, double d2, double d3, int i, int i2, int i3, double d4, double d5, double d6) {
        double[] dArr2 = dArr;
        if (dArr2 == null) {
            dArr2 = new double[i * i2 * i3];
        } else {
            for (int i4 = 0; i4 < dArr2.length; i4++) {
                dArr2[i4] = 0.0d;
            }
        }
        double d7 = 1.0d;
        for (int i5 = 0; i5 < this.b; i5++) {
            this.a[i5].a(dArr2, d, d2, d3, i, i2, i3, d4 * d7, d5 * d7, d6 * d7, d7);
            d7 /= 2.0d;
        }
        return dArr2;
    }

    public double[] a(double[] dArr, int i, int i2, int i3, int i4, double d, double d2, double d3) {
        return a(dArr, i, 10.0d, i2, i3, 1, i4, d, 1.0d, d2);
    }
}
