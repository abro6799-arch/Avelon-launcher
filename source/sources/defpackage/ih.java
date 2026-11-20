package defpackage;

import java.lang.reflect.Array;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ih extends pg {
    static final byte[] a = {2, 0, 0, 1, 2, 1};
    fd c;
    int f;
    int[][] o;
    Random b = new Random();
    int[] d = {0, 0, 0};
    int e = 0;
    double g = 0.618d;
    double h = 1.0d;
    double i = 0.381d;
    double j = 1.0d;
    double k = 1.0d;
    int l = 1;
    int m = 12;
    int n = 4;

    void a() {
        int i;
        char c;
        char c2;
        char c3;
        byte b;
        int i2 = this.e;
        int i3 = (int) (((double) i2) * this.g);
        this.f = i3;
        if (i3 >= i2) {
            this.f = i2 - 1;
        }
        double d = 2.0d;
        int iPow = (int) (Math.pow((this.k * ((double) i2)) / 13.0d, 2.0d) + 1.382d);
        char c4 = 1;
        if (iPow < 1) {
            iPow = 1;
        }
        int i4 = 4;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, this.e * iPow, 4);
        int[] iArr2 = this.d;
        int i5 = iArr2[1];
        int i6 = (this.e + i5) - this.n;
        int i7 = this.f + i5;
        int i8 = i6 - i5;
        int i9 = 0;
        int[] iArr3 = iArr[0];
        iArr3[0] = iArr2[0];
        iArr3[1] = i6;
        char c5 = 2;
        iArr3[2] = iArr2[2];
        char c6 = 3;
        iArr3[3] = i7;
        byte b2 = -1;
        int i10 = i6 - 1;
        int i11 = 1;
        while (i8 >= 0) {
            float fA = a(i8);
            if (fA < 0.0f) {
                i10--;
                i8--;
            } else {
                int i12 = i9;
                while (i12 < iPow) {
                    int i13 = i8;
                    int[][] iArr4 = iArr;
                    int i14 = i11;
                    double dNextFloat = this.j * ((double) fA) * (((double) this.b.nextFloat()) + 0.328d);
                    double dNextFloat2 = ((double) this.b.nextFloat()) * d * 3.14159d;
                    int iB = in.b((Math.sin(dNextFloat2) * dNextFloat) + ((double) this.d[i9]) + 0.5d);
                    int iB2 = in.b((dNextFloat * Math.cos(dNextFloat2)) + ((double) this.d[2]) + 0.5d);
                    int[] iArr5 = {iB, i10, iB2};
                    if (a(iArr5, new int[]{iB, this.n + i10, iB2}) == -1) {
                        int[] iArr6 = this.d;
                        int i15 = iArr6[i9];
                        int[] iArr7 = {i15, iArr6[1], iArr6[2]};
                        i = i12;
                        double dSqrt = Math.sqrt(Math.pow(Math.abs(i15 - iArr5[i9]), 2.0d) + Math.pow(Math.abs(this.d[2] - iArr5[2]), 2.0d)) * this.i;
                        int i16 = iArr5[1];
                        if (((double) i16) - dSqrt > i7) {
                            c3 = 1;
                            iArr7[1] = i7;
                        } else {
                            c3 = 1;
                            iArr7[1] = (int) (((double) i16) - dSqrt);
                        }
                        b = -1;
                        if (a(iArr7, iArr5) == -1) {
                            int[] iArr8 = iArr4[i14];
                            iArr8[0] = iB;
                            iArr8[c3] = i10;
                            c2 = 2;
                            iArr8[2] = iB2;
                            int i17 = iArr7[c3];
                            c = 3;
                            iArr8[3] = i17;
                            i11 = i14 + 1;
                        } else {
                            c = 3;
                            c2 = 2;
                        }
                        int i18 = i + 1;
                        c6 = c;
                        b2 = b;
                        c5 = c2;
                        i8 = i13;
                        iArr = iArr4;
                        d = 2.0d;
                        i12 = i18;
                        c4 = c3;
                        i9 = 0;
                    } else {
                        i = i12;
                        c = 3;
                        c2 = 2;
                        c3 = 1;
                        b = -1;
                    }
                    i11 = i14;
                    int i19 = i + 1;
                    c6 = c;
                    b2 = b;
                    c5 = c2;
                    i8 = i13;
                    iArr = iArr4;
                    d = 2.0d;
                    i12 = i19;
                    c4 = c3;
                    i9 = 0;
                }
                i10--;
                d = 2.0d;
                i4 = 4;
                i8--;
                c4 = c4;
                i9 = 0;
            }
        }
        int[][] iArr9 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i11, i4);
        this.o = iArr9;
        System.arraycopy(iArr, 0, iArr9, 0, i11);
    }

    void a(int i, int i2, int i3, float f, byte b, int i4) {
        double d = f;
        int i5 = (int) (0.618d + d);
        byte[] bArr = a;
        byte b2 = bArr[b];
        byte b3 = bArr[b + 3];
        int[] iArr = {i, i2, i3};
        boolean z = false;
        int[] iArr2 = {0, 0, 0};
        int i6 = -i5;
        iArr2[b] = iArr[b];
        for (int i7 = i6; i7 <= i5; i7++) {
            iArr2[b2] = iArr[b2] + i7;
            int i8 = i6;
            while (i8 <= i5) {
                iArr2 = iArr2;
                if (Math.sqrt(Math.pow(((double) Math.abs(i7)) + 0.5d, 2.0d) + Math.pow(((double) Math.abs(i8)) + 0.5d, 2.0d)) <= d) {
                    iArr2[b3] = iArr[b3] + i8;
                    int iA = this.c.a(iArr2[0], iArr2[1], iArr2[2]);
                    if (iA == 0 || iA == 18) {
                        this.c.c(iArr2[0], iArr2[1], iArr2[2], i4);
                        i8++;
                        z = false;
                    }
                }
                i8++;
                z = false;
            }
        }
    }

    float a(int i) {
        double d = i;
        int i2 = this.e;
        if (d < ((double) i2) * 0.3d) {
            return -1.618f;
        }
        float fSqrt = i2 / 2.0f;
        float f = (i2 / 2.0f) - i;
        if (f != 0.0f) {
            fSqrt = Math.abs(f) >= fSqrt ? 0.0f : (float) Math.sqrt(Math.pow(Math.abs(fSqrt), 2.0d) - Math.pow(Math.abs(f), 2.0d));
        }
        return fSqrt * 0.5f;
    }

    float b(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.n)) {
            return -1.0f;
        }
        return (i == 0 || i == i2 + (-1)) ? 2.0f : 3.0f;
    }

    void a(int i, int i2, int i3) {
        int i4 = this.n + i2;
        for (int i5 = i2; i5 < i4; i5++) {
            a(i, i5, i3, b(i5 - i2), (byte) 1, 18);
        }
    }

    void a(int[] iArr, int[] iArr2, int i) {
        char c = 0;
        int[] iArr3 = {0, 0, 0};
        byte b = 0;
        for (byte b2 = 0; b2 < 3; b2 = (byte) (b2 + 1)) {
            int i2 = iArr2[b2] - iArr[b2];
            iArr3[b2] = i2;
            if (Math.abs(i2) > Math.abs(iArr3[b])) {
                b = b2;
            }
        }
        int i3 = iArr3[b];
        if (i3 == 0) {
            return;
        }
        byte[] bArr = a;
        byte b3 = bArr[b];
        byte b4 = bArr[b + 3];
        int i4 = i3 > 0 ? 1 : -1;
        double d = ((double) iArr3[b3]) / ((double) i3);
        double d2 = ((double) iArr3[b4]) / ((double) i3);
        int[] iArr4 = {0, 0, 0};
        int i5 = i3 + i4;
        int i6 = 0;
        while (i6 != i5) {
            iArr4[b] = in.b(((double) (iArr[b] + i6)) + 0.5d);
            int i7 = i4;
            double d3 = i6;
            iArr4[b3] = in.b(((double) iArr[b3]) + (d3 * d) + 0.5d);
            iArr4[b4] = in.b(((double) iArr[b4]) + (d3 * d2) + 0.5d);
            this.c.c(iArr4[c], iArr4[1], iArr4[2], i);
            i6 += i7;
            i4 = i7;
            c = 0;
        }
    }

    void b() {
        int length = this.o.length;
        for (int i = 0; i < length; i++) {
            int[] iArr = this.o[i];
            a(iArr[0], iArr[1], iArr[2]);
        }
    }

    boolean c(int i) {
        return ((double) i) >= ((double) this.e) * 0.2d;
    }

    void c() {
        int[] iArr = this.d;
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = this.f + i2;
        int i4 = iArr[2];
        int[] iArr2 = {i, i2, i4};
        int[] iArr3 = {i, i3, i4};
        a(iArr2, iArr3, 17);
        if (this.l == 2) {
            iArr2[0] = iArr2[0] + 1;
            iArr3[0] = iArr3[0] + 1;
            a(iArr2, iArr3, 17);
            iArr2[2] = iArr2[2] + 1;
            iArr3[2] = iArr3[2] + 1;
            a(iArr2, iArr3, 17);
            iArr2[0] = iArr2[0] - 1;
            iArr3[0] = iArr3[0] - 1;
            a(iArr2, iArr3, 17);
        }
    }

    void d() {
        int length = this.o.length;
        int[] iArr = this.d;
        int[] iArr2 = {iArr[0], iArr[1], iArr[2]};
        for (int i = 0; i < length; i++) {
            int[] iArr3 = this.o[i];
            int[] iArr4 = {iArr3[0], iArr3[1], iArr3[2]};
            int i2 = iArr3[3];
            iArr2[1] = i2;
            if (c(i2 - this.d[1])) {
                a(iArr2, iArr4, 17);
            }
        }
    }

    int a(int[] iArr, int[] iArr2) {
        char c = 0;
        int[] iArr3 = {0, 0, 0};
        byte b = 0;
        for (byte b2 = 0; b2 < 3; b2 = (byte) (b2 + 1)) {
            int i = iArr2[b2] - iArr[b2];
            iArr3[b2] = i;
            if (Math.abs(i) > Math.abs(iArr3[b])) {
                b = b2;
            }
        }
        int i2 = iArr3[b];
        if (i2 == 0) {
            return -1;
        }
        byte[] bArr = a;
        byte b3 = bArr[b];
        byte b4 = bArr[b + 3];
        int i3 = i2 > 0 ? 1 : -1;
        double d = ((double) iArr3[b3]) / ((double) i2);
        double d2 = ((double) iArr3[b4]) / ((double) i2);
        int[] iArr4 = {0, 0, 0};
        int i4 = i2 + i3;
        int i5 = 0;
        while (i5 != i4) {
            iArr4[b] = iArr[b] + i5;
            int i6 = i3;
            double d3 = i5;
            iArr4[b3] = in.b(((double) iArr[b3]) + (d3 * d));
            iArr4[b4] = in.b(((double) iArr[b4]) + (d3 * d2));
            int iA = this.c.a(iArr4[c], iArr4[1], iArr4[2]);
            if (iA != 0 && iA != 18) {
                break;
            }
            i5 += i6;
            i3 = i6;
            c = 0;
        }
        if (i5 == i4) {
            return -1;
        }
        return Math.abs(i5);
    }

    boolean e() {
        int[] iArr = this.d;
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int[] iArr2 = {i, i2, i3};
        int[] iArr3 = {i, (this.e + i2) - 1, i3};
        int iA = this.c.a(i, i2 - 1, i3);
        if (iA != 2 && iA != 3) {
            return false;
        }
        int iA2 = a(iArr2, iArr3);
        if (iA2 == -1) {
            return true;
        }
        if (iA2 < 6) {
            return false;
        }
        this.e = iA2;
        return true;
    }

    @Override // defpackage.pg
    public void a(double d, double d2, double d3) {
        this.m = (int) (12.0d * d);
        if (d > 0.5d) {
            this.n = 5;
        }
        this.j = d2;
        this.k = d3;
    }

    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        this.c = fdVar;
        this.b.setSeed(random.nextLong());
        int[] iArr = this.d;
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = i3;
        if (this.e == 0) {
            this.e = this.b.nextInt(this.m) + 5;
        }
        if (!e()) {
            return false;
        }
        a();
        b();
        c();
        d();
        return true;
    }
}
