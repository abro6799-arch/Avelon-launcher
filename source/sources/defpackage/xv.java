package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class xv {
    public double[] a;
    public double[] b;
    public double[] c;
    public kd[] d;
    private ug e;
    private ug f;
    private ug g;

    protected xv() {
    }

    public xv(fd fdVar) {
        this.e = new ug(new Random(fdVar.s() * 9871), 4);
        this.f = new ug(new Random(fdVar.s() * 39811), 4);
        this.g = new ug(new Random(fdVar.s() * 543321), 2);
    }

    public kd a(yy yyVar) {
        return a(yyVar.a << 4, yyVar.b << 4);
    }

    public kd a(int i, int i2) {
        return a(i, i2, 1, 1)[0];
    }

    public double b(int i, int i2) {
        double[] dArrA = this.e.a(this.a, i, i2, 1, 1, 0.02500000037252903d, 0.02500000037252903d, 0.5d);
        this.a = dArrA;
        return dArrA[0];
    }

    public kd[] a(int i, int i2, int i3, int i4) {
        kd[] kdVarArrA = a(this.d, i, i2, i3, i4);
        this.d = kdVarArrA;
        return kdVarArrA;
    }

    public double[] a(double[] dArr, int i, int i2, int i3, int i4) {
        double[] dArr2 = dArr;
        if (dArr2 == null || dArr2.length < i3 * i4) {
            dArr2 = new double[i3 * i4];
        }
        double d = i;
        double d2 = i2;
        double[] dArrA = this.e.a(dArr2, d, d2, i3, i4, 0.02500000037252903d, 0.02500000037252903d, 0.25d);
        this.c = this.g.a(this.c, d, d2, i3, i4, 0.25d, 0.25d, 0.5882352941176471d);
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            for (int i7 = 0; i7 < i4; i7++) {
                double d3 = 1.0d;
                double d4 = 1.0d - ((((dArrA[i5] * 0.15d) + 0.7d) * 0.99d) + (((this.c[i5] * 1.1d) + 0.5d) * 0.01d));
                double d5 = 1.0d - (d4 * d4);
                if (d5 < 0.0d) {
                    d5 = 0.0d;
                }
                if (d5 <= 1.0d) {
                    d3 = d5;
                }
                dArrA[i5] = d3;
                i5++;
            }
        }
        return dArrA;
    }

    public kd[] a(kd[] kdVarArr, int i, int i2, int i3, int i4) {
        kd[] kdVarArr2 = kdVarArr;
        if (kdVarArr2 == null || kdVarArr2.length < i3 * i4) {
            kdVarArr2 = new kd[i3 * i4];
        }
        kd[] kdVarArr3 = kdVarArr2;
        double d = i;
        double d2 = i2;
        this.a = this.e.a(this.a, d, d2, i3, i3, 0.02500000037252903d, 0.02500000037252903d, 0.25d);
        this.b = this.f.a(this.b, d, d2, i3, i3, 0.05000000074505806d, 0.05000000074505806d, 0.3333333333333333d);
        this.c = this.g.a(this.c, d, d2, i3, i3, 0.25d, 0.25d, 0.5882352941176471d);
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = 0;
            while (i7 < i4) {
                double d3 = (this.c[i5] * 1.1d) + 0.5d;
                double[] dArr = this.a;
                double d4 = (((dArr[i5] * 0.15d) + 0.7d) * 0.99d) + (0.01d * d3);
                double[] dArr2 = this.b;
                double d5 = (((dArr2[i5] * 0.15d) + 0.5d) * 0.998d) + (d3 * 0.002d);
                double d6 = 1.0d;
                double d7 = 1.0d - d4;
                double d8 = 1.0d - (d7 * d7);
                if (d8 < 0.0d) {
                    d8 = 0.0d;
                }
                if (d5 < 0.0d) {
                    d5 = 0.0d;
                }
                if (d8 > 1.0d) {
                    d8 = 1.0d;
                }
                if (d5 <= 1.0d) {
                    d6 = d5;
                }
                dArr[i5] = d8;
                dArr2[i5] = d6;
                kdVarArr3[i5] = kd.a(d8, d6);
                i7++;
                i5++;
            }
        }
        return kdVarArr3;
    }
}
