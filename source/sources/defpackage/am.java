package defpackage;

import java.util.Random;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class am extends df {
    public double a;
    public double b;
    public double c;
    private int[] d;

    public final double a(int i, double d, double d2) {
        int i2 = i & 15;
        double d3 = ((double) (1 - ((i2 & 8) >> 3))) * d;
        if (i2 < 4) {
            d = 0.0d;
        } else if (i2 != 12 && i2 != 14) {
            d = d2;
        }
        if ((i2 & 1) != 0) {
            d3 = -d3;
        }
        if ((i2 & 2) != 0) {
            d = -d;
        }
        return d3 + d;
    }

    public final double a(int i, double d, double d2, double d3) {
        int i2 = i & 15;
        double d4 = i2 < 8 ? d : d2;
        if (i2 < 4) {
            d = d2;
        } else if (i2 != 12 && i2 != 14) {
            d = d3;
        }
        if ((i2 & 1) != 0) {
            d4 = -d4;
        }
        if ((i2 & 2) != 0) {
            d = -d;
        }
        return d4 + d;
    }

    public final double b(double d, double d2, double d3) {
        return d2 + (d * (d3 - d2));
    }

    public am() {
        this(new Random());
    }

    public am(Random random) {
        this.d = new int[512];
        this.a = random.nextDouble() * 256.0d;
        this.b = random.nextDouble() * 256.0d;
        this.c = random.nextDouble() * 256.0d;
        for (int i = 0; i < 256; i++) {
            this.d[i] = i;
        }
        for (int i2 = 0; i2 < 256; i2++) {
            int iNextInt = random.nextInt(256 - i2) + i2;
            int[] iArr = this.d;
            int i3 = iArr[i2];
            iArr[i2] = iArr[iNextInt];
            iArr[iNextInt] = i3;
            iArr[i2 + Keyboard.KEYBOARD_SIZE] = iArr[i2];
        }
    }

    public double a(double d, double d2, double d3) {
        double d4 = d + this.a;
        double d5 = d2 + this.b;
        double d6 = d3 + this.c;
        int i = (int) d4;
        int i2 = (int) d5;
        int i3 = (int) d6;
        if (d4 < i) {
            i--;
        }
        if (d5 < i2) {
            i2--;
        }
        if (d6 < i3) {
            i3--;
        }
        int i4 = i & 255;
        int i5 = i2 & 255;
        int i6 = i3 & 255;
        double d7 = d4 - ((double) i);
        double d8 = d5 - ((double) i2);
        double d9 = d6 - ((double) i3);
        double d10 = d7 * d7 * d7 * ((((d7 * 6.0d) - 15.0d) * d7) + 10.0d);
        double d11 = d8 * d8 * d8 * ((((d8 * 6.0d) - 15.0d) * d8) + 10.0d);
        double d12 = d9 * d9 * d9 * ((((6.0d * d9) - 15.0d) * d9) + 10.0d);
        int[] iArr = this.d;
        int i7 = iArr[i4] + i5;
        int i8 = iArr[i7] + i6;
        int i9 = iArr[i7 + 1] + i6;
        int i10 = iArr[i4 + 1] + i5;
        int i11 = iArr[i10] + i6;
        int i12 = iArr[i10 + 1] + i6;
        double d13 = d7 - 1.0d;
        double d14 = d8 - 1.0d;
        double dB = b(d11, b(d10, a(iArr[i8], d7, d8, d9), a(this.d[i11], d13, d8, d9)), b(d10, a(this.d[i9], d7, d14, d9), a(this.d[i12], d13, d14, d9)));
        double d15 = d9 - 1.0d;
        return b(d12, dB, b(d11, b(d10, a(this.d[i8 + 1], d7, d8, d15), a(this.d[i11 + 1], d13, d8, d15)), b(d10, a(this.d[i9 + 1], d7, d14, d15), a(this.d[i12 + 1], d13, d14, d15))));
    }

    public double a(double d, double d2) {
        return a(d, d2, 0.0d);
    }

    public void a(double[] dArr, double d, double d2, double d3, int i, int i2, int i3, double d4, double d5, double d6, double d7) {
        double dB;
        double d8;
        int i4 = i;
        int i5 = i2;
        boolean z = true;
        if (i5 == 1) {
            double d9 = 1.0d / d7;
            int i6 = 0;
            int i7 = 0;
            while (i7 < i4) {
                double d10 = ((d + ((double) i7)) * d4) + this.a;
                int i8 = (int) d10;
                if (d10 < i8) {
                    i8--;
                }
                int i9 = i8 & 255;
                double d11 = d10 - ((double) i8);
                double d12 = d11 * d11 * d11 * ((((d11 * 6.0d) - 15.0d) * d11) + 10.0d);
                int i10 = i6;
                int i11 = 0;
                while (i11 < i3) {
                    double d13 = ((d3 + ((double) i11)) * d6) + this.c;
                    int i12 = (int) d13;
                    int i13 = i9;
                    if (d13 < i12) {
                        i12--;
                    }
                    int i14 = i12 & 255;
                    double d14 = d13 - ((double) i12);
                    double d15 = d14 * d14 * d14 * ((((d14 * 6.0d) - 15.0d) * d14) + 10.0d);
                    int[] iArr = this.d;
                    int i15 = iArr[iArr[i13] + 0] + i14;
                    int i16 = iArr[iArr[i13 + 1] + 0] + i14;
                    double d16 = d11 - 1.0d;
                    double dB2 = b(d12, a(iArr[i15], d11, d14), a(this.d[i16], d16, 0.0d, d14));
                    double d17 = d14 - 1.0d;
                    dArr[i10] = dArr[i10] + (b(d15, dB2, b(d12, a(this.d[i15 + 1], d11, 0.0d, d17), a(this.d[i16 + 1], d16, 0.0d, d17))) * d9);
                    i11++;
                    i10++;
                    i9 = i13;
                    z = true;
                }
                i7++;
                i6 = i10;
            }
            return;
        }
        double d18 = 1.0d / d7;
        double d19 = 0.0d;
        double d20 = 0.0d;
        double d21 = 0.0d;
        int i17 = -1;
        int i18 = 0;
        int i19 = 0;
        double d22 = 0.0d;
        while (i18 < i4) {
            double d23 = d19;
            double d24 = ((d + ((double) i18)) * d4) + this.a;
            int i20 = (int) d24;
            double dB3 = d22;
            if (d24 < i20) {
                i20--;
            }
            int i21 = i20 & 255;
            double d25 = d24 - ((double) i20);
            double d26 = ((((d25 * 6.0d) - 15.0d) * d25) + 10.0d) * d25 * d25 * d25;
            d19 = d23;
            int i22 = 0;
            while (i22 < i3) {
                double d27 = d19;
                double d28 = d20;
                int i23 = i22;
                double d29 = ((d3 + ((double) i22)) * d6) + this.c;
                int i24 = (int) d29;
                int i25 = i23;
                if (d29 < i24) {
                    i24--;
                }
                int i26 = i24 & 255;
                double d30 = d29 - ((double) i24);
                double d31 = d30 * d30 * d30 * ((((d30 * 6.0d) - 15.0d) * d30) + 10.0d);
                double d32 = d27;
                int i27 = 0;
                int i28 = i17;
                d21 = d21;
                while (i27 < i5) {
                    double d33 = d32;
                    double d34 = d21;
                    double d35 = ((d2 + ((double) i27)) * d5) + this.b;
                    int i29 = (int) d35;
                    if (d35 < i29) {
                        i29--;
                    }
                    int i30 = i29 & 255;
                    double d36 = d35 - ((double) i29);
                    double d37 = d36 * d36 * d36 * ((((d36 * 6.0d) - 15.0d) * d36) + 10.0d);
                    if (i27 == 0 || i30 != i28) {
                        int[] iArr2 = this.d;
                        int i31 = iArr2[i21] + i30;
                        int i32 = iArr2[i31] + i26;
                        int i33 = iArr2[i31 + 1] + i26;
                        int i34 = iArr2[i21 + 1] + i30;
                        int i35 = iArr2[i34] + i26;
                        int i36 = iArr2[i34 + 1] + i26;
                        double d38 = d25 - 1.0d;
                        double dB4 = b(d26, a(iArr2[i32], d25, d36, d30), a(this.d[i35], d38, d36, d30));
                        double d39 = d36 - 1.0d;
                        double dB5 = b(d26, a(this.d[i33], d25, d39, d30), a(this.d[i36], d38, d39, d30));
                        double d40 = d30 - 1.0d;
                        dB = b(d26, a(this.d[i32 + 1], d25, d36, d40), a(this.d[i35 + 1], d38, d36, d40));
                        dB3 = b(d26, a(this.d[i33 + 1], d25, d39, d40), a(this.d[i36 + 1], d38, d39, d40));
                        d8 = dB4;
                        d34 = dB5;
                    } else {
                        dB = d33;
                        i30 = i28;
                        d8 = d28;
                    }
                    dArr[i19] = dArr[i19] + (b(d31, b(d37, d8, d34), b(d37, dB, dB3)) * d18);
                    i27++;
                    i5 = i2;
                    i19++;
                    i28 = i30;
                    i21 = i21;
                    d21 = d34;
                    i25 = i25;
                    d32 = dB;
                    i26 = i26;
                    d28 = d8;
                }
                i5 = i2;
                i17 = i28;
                d20 = d28;
                i22 = i25 + 1;
                d19 = d32;
            }
            i18++;
            i4 = i;
            i5 = i2;
            d22 = dB3;
        }
    }
}
