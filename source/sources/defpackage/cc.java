package defpackage;

import java.util.Random;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class cc {
    private static int[][] d = {new int[]{1, 1, 0}, new int[]{-1, 1, 0}, new int[]{1, -1, 0}, new int[]{-1, -1, 0}, new int[]{1, 0, 1}, new int[]{-1, 0, 1}, new int[]{1, 0, -1}, new int[]{-1, 0, -1}, new int[]{0, 1, 1}, new int[]{0, -1, 1}, new int[]{0, 1, -1}, new int[]{0, -1, -1}};
    private static final double f = (Math.sqrt(3.0d) - 1.0d) * 0.5d;
    private static final double g = (3.0d - Math.sqrt(3.0d)) / 6.0d;
    public double a;
    public double b;
    public double c;
    private int[] e;

    private static int a(double d2) {
        int i = (int) d2;
        return d2 > 0.0d ? i : i - 1;
    }

    public cc() {
        this(new Random());
    }

    public cc(Random random) {
        this.e = new int[512];
        this.a = random.nextDouble() * 256.0d;
        this.b = random.nextDouble() * 256.0d;
        this.c = random.nextDouble() * 256.0d;
        for (int i = 0; i < 256; i++) {
            this.e[i] = i;
        }
        for (int i2 = 0; i2 < 256; i2++) {
            int iNextInt = random.nextInt(256 - i2) + i2;
            int[] iArr = this.e;
            int i3 = iArr[i2];
            iArr[i2] = iArr[iNextInt];
            iArr[iNextInt] = i3;
            iArr[i2 + Keyboard.KEYBOARD_SIZE] = iArr[i2];
        }
    }

    private static double a(int[] iArr, double d2, double d3) {
        return (((double) iArr[0]) * d2) + (((double) iArr[1]) * d3);
    }

    public void a(double[] dArr, double d2, double d3, int i, int i2, double d4, double d5, double d6) {
        int i3;
        int i4;
        double dA;
        double dA2;
        int i5 = 0;
        int i6 = 0;
        while (i5 < i) {
            double d7 = ((d2 + ((double) i5)) * d4) + this.a;
            int i7 = 0;
            while (i7 < i2) {
                double d8 = ((d3 + ((double) i7)) * d5) + this.b;
                double d9 = (d7 + d8) * f;
                int iA = a(d7 + d9);
                int iA2 = a(d9 + d8);
                double d10 = g;
                double d11 = ((double) (iA + iA2)) * d10;
                double d12 = d7 - (((double) iA) - d11);
                double d13 = d8 - (((double) iA2) - d11);
                if (d12 > d13) {
                    i3 = 1;
                    i4 = 0;
                } else {
                    i3 = 0;
                    i4 = 1;
                }
                double d14 = (d12 - ((double) i3)) + d10;
                double d15 = d7;
                int i8 = i4;
                double d16 = (d13 - ((double) i8)) + d10;
                int i9 = i7;
                double d17 = (d12 - 1.0d) + (d10 * 2.0d);
                int i10 = i5;
                int i11 = i6;
                double d18 = (d13 - 1.0d) + (d10 * 2.0d);
                int i12 = iA & 255;
                int i13 = iA2 & 255;
                int[] iArr = this.e;
                int i14 = iArr[i12 + iArr[i13]] % 12;
                int i15 = iArr[(i3 + i12) + iArr[i8 + i13]] % 12;
                int i16 = iArr[(i12 + 1) + iArr[i13 + 1]] % 12;
                double d19 = (0.5d - (d12 * d12)) - (d13 * d13);
                double dA3 = 0.0d;
                if (d19 < 0.0d) {
                    dA = 0.0d;
                } else {
                    double d20 = d19 * d19;
                    dA = d20 * d20 * a(d[i14], d12, d13);
                }
                double d21 = (0.5d - (d14 * d14)) - (d16 * d16);
                if (d21 < 0.0d) {
                    dA2 = 0.0d;
                } else {
                    double d22 = d21 * d21;
                    dA2 = d22 * d22 * a(d[i15], d14, d16);
                }
                double d23 = (0.5d - (d17 * d17)) - (d18 * d18);
                if (d23 >= 0.0d) {
                    double d24 = d23 * d23;
                    dA3 = d24 * d24 * a(d[i16], d17, d18);
                }
                i6 = i11 + 1;
                dArr[i11] = dArr[i11] + ((dA + dA2 + dA3) * 70.0d * d6);
                i7 = i9 + 1;
                d7 = d15;
                i5 = i10;
            }
            i5++;
        }
    }
}
