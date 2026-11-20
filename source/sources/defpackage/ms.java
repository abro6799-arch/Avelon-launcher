package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ms extends pg {
    private int a = uu.aX.bn;
    private int b;

    public ms(int i) {
        this.b = i;
    }

    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        if (fdVar.f(i, i2, i3) != ln.g) {
            return false;
        }
        float fNextFloat = random.nextFloat() * 3.1415927f;
        float f = i + 8;
        double dA = ((in.a(fNextFloat) * this.b) / 8.0f) + f;
        double dA2 = f - ((in.a(fNextFloat) * this.b) / 8.0f);
        float f2 = i3 + 8;
        double dB = ((in.b(fNextFloat) * this.b) / 8.0f) + f2;
        double dB2 = f2 - ((in.b(fNextFloat) * this.b) / 8.0f);
        double dNextInt = random.nextInt(3) + i2 + 2;
        double dNextInt2 = random.nextInt(3) + i2 + 2;
        int i4 = 0;
        while (true) {
            int i5 = this.b;
            if (i4 > i5) {
                return true;
            }
            double d = dA2 - dA;
            double d2 = dA2;
            double d3 = i4;
            double d4 = dA + ((d * d3) / ((double) i5));
            double d5 = dNextInt2;
            double d6 = (((dNextInt2 - dNextInt) * d3) / ((double) i5)) + dNextInt;
            double d7 = dB + (((dB2 - dB) * d3) / ((double) i5));
            double dNextDouble = random.nextDouble();
            int i6 = this.b;
            double d8 = dB2;
            double d9 = (dNextDouble * ((double) i6)) / 16.0d;
            float f3 = i4 * 3.1415927f;
            double d10 = dNextInt;
            double dA3 = (((double) (in.a(f3 / i6) + 1.0f)) * d9) + 1.0d;
            double dA4 = (((double) (in.a(f3 / this.b) + 1.0f)) * d9) + 1.0d;
            double d11 = dA3 / 2.0d;
            int iB = in.b(d4 - d11);
            int iB2 = in.b(d4 + d11);
            double d12 = dA4 / 2.0d;
            int iB3 = in.b(d6 - d12);
            int iB4 = in.b(d6 + d12);
            int iB5 = in.b(d7 - d11);
            int iB6 = in.b(d7 + d11);
            int i7 = iB;
            while (i7 <= iB2) {
                int i8 = iB2;
                int i9 = iB3;
                while (i9 <= iB4) {
                    int i10 = iB4;
                    int i11 = iB5;
                    while (i11 <= iB6) {
                        double d13 = dA;
                        double d14 = ((((double) i7) + 0.5d) - d4) / d11;
                        double d15 = ((((double) i9) + 0.5d) - d6) / d12;
                        double d16 = d6;
                        double d17 = ((((double) i11) + 0.5d) - d7) / d11;
                        if ((d14 * d14) + (d15 * d15) + (d17 * d17) < 1.0d && fdVar.a(i7, i9, i11) == uu.F.bn) {
                            fdVar.c(i7, i9, i11, this.a);
                        }
                        i11++;
                        dA = d13;
                        d6 = d16;
                    }
                    i9++;
                    iB4 = i10;
                    d6 = d6;
                }
                i7++;
                iB2 = i8;
                d6 = d6;
            }
            i4++;
            dNextInt2 = d5;
            dA2 = d2;
            dB2 = d8;
            dNextInt = d10;
        }
    }
}
