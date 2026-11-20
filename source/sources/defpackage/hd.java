package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class hd extends xv {
    private kd e;
    private double f;
    private double g;

    public hd(kd kdVar, double d, double d2) {
        this.e = kdVar;
        this.f = d;
        this.g = d2;
    }

    @Override // defpackage.xv
    public kd a(yy yyVar) {
        return this.e;
    }

    @Override // defpackage.xv
    public kd a(int i, int i2) {
        return this.e;
    }

    @Override // defpackage.xv
    public double b(int i, int i2) {
        return this.f;
    }

    @Override // defpackage.xv
    public kd[] a(int i, int i2, int i3, int i4) {
        this.d = a(this.d, i, i2, i3, i4);
        return this.d;
    }

    @Override // defpackage.xv
    public double[] a(double[] dArr, int i, int i2, int i3, int i4) {
        if (dArr == null || dArr.length < i3 * i4) {
            dArr = new double[i3 * i4];
        }
        Arrays.fill(dArr, 0, i3 * i4, this.f);
        return dArr;
    }

    @Override // defpackage.xv
    public kd[] a(kd[] kdVarArr, int i, int i2, int i3, int i4) {
        if (kdVarArr == null || kdVarArr.length < i3 * i4) {
            kdVarArr = new kd[i3 * i4];
        }
        if (this.a == null || this.a.length < i3 * i4) {
            int i5 = i3 * i4;
            this.a = new double[i5];
            this.b = new double[i5];
        }
        int i6 = i3 * i4;
        Arrays.fill(kdVarArr, 0, i6, this.e);
        Arrays.fill(this.b, 0, i6, this.g);
        Arrays.fill(this.a, 0, i6, this.f);
        return kdVarArr;
    }
}
