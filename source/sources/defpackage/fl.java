package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class fl extends pg {
    private int a;
    private int b;

    public fl(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        double d;
        double d2;
        int i4;
        double d3;
        double d4;
        int i5;
        double d5;
        float fNextFloat = random.nextFloat() * 3.1415927f;
        float f = i + 8;
        double dA = ((in.a(fNextFloat) * this.b) / 8.0f) + f;
        double dA2 = f - ((in.a(fNextFloat) * this.b) / 8.0f);
        float f2 = i3 + 8;
        double dB = ((in.b(fNextFloat) * this.b) / 8.0f) + f2;
        double dB2 = f2 - ((in.b(fNextFloat) * this.b) / 8.0f);
        double d6 = dA2;
        double dNextInt = i2 + random.nextInt(3) + 2;
        double dNextInt2 = i2 + random.nextInt(3) + 2;
        int i6 = 0;
        while (true) {
            int i7 = this.b;
            if (i6 > i7) {
                return true;
            }
            double d7 = i6;
            double d8 = dB;
            double d9 = dA + (((d6 - dA) * d7) / ((double) i7));
            double d10 = dNextInt2;
            double d11 = (((dNextInt2 - dNextInt) * d7) / ((double) i7)) + dNextInt;
            double d12 = d8 + (((dB2 - d8) * d7) / ((double) i7));
            double dNextDouble = random.nextDouble();
            int i8 = this.b;
            double d13 = dNextInt;
            double d14 = (dNextDouble * ((double) i8)) / 16.0d;
            float f3 = i6 * 3.1415927f;
            double d15 = dA;
            double dA3 = (((double) (in.a(f3 / i8) + 1.0f)) * d14) + 1.0d;
            double dA4 = (((double) (in.a(f3 / this.b) + 1.0f)) * d14) + 1.0d;
            double d16 = dA3 / 2.0d;
            int iB = in.b(d9 - d16);
            double d17 = dA4 / 2.0d;
            int iB2 = in.b(d11 - d17);
            int iB3 = in.b(d12 - d16);
            int iB4 = in.b(d9 + d16);
            int iB5 = in.b(d11 + d17);
            int iB6 = in.b(d12 + d16);
            double d18 = dB2;
            int i9 = iB;
            while (i9 <= iB4) {
                double d19 = d6;
                double d20 = ((((double) i9) + 0.5d) - d9) / d16;
                double d21 = d20 * d20;
                if (d21 < 1.0d) {
                    int i10 = iB2;
                    while (i10 <= iB5) {
                        double d22 = d16;
                        double d23 = ((((double) i10) + 0.5d) - d11) / d17;
                        double d24 = (d23 * d23) + d21;
                        if (d24 < 1.0d) {
                            int i11 = iB3;
                            while (i11 <= iB6) {
                                int i12 = iB5;
                                double d25 = ((((double) i11) + 0.5d) - d12) / d22;
                                if ((d25 * d25) + d24 < 1.0d) {
                                    d5 = d12;
                                    if (fdVar.a(i9, i10, i11) == uu.u.bn) {
                                        fdVar.c(i9, i10, i11, this.a);
                                    }
                                } else {
                                    d5 = d12;
                                }
                                i11++;
                                iB5 = i12;
                                d12 = d5;
                            }
                            d4 = d12;
                            i5 = iB5;
                        } else {
                            d4 = d12;
                            i5 = iB5;
                        }
                        i10++;
                        iB5 = i5;
                        d16 = d22;
                        d17 = d17;
                        d12 = d4;
                    }
                    d = d12;
                    d2 = d17;
                    i4 = iB5;
                    d3 = d16;
                } else {
                    d = d12;
                    d2 = d17;
                    i4 = iB5;
                    d3 = d16;
                }
                i9++;
                iB4 = iB4;
                iB5 = i4;
                d6 = d19;
                d16 = d3;
                d17 = d2;
                d12 = d;
            }
            i6++;
            dNextInt2 = d10;
            dB = d8;
            dNextInt = d13;
            dA = d15;
            dB2 = d18;
        }
    }
}
