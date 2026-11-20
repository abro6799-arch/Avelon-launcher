package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class pk extends fv {
    protected void a(int i, int i2, byte[] bArr, double d, double d2, double d3) {
        a(i, i2, bArr, d, d2, d3, (this.b.nextFloat() * 6.0f) + 1.0f, 0.0f, 0.0f, -1, -1, 0.5d);
    }

    protected void a(int i, int i2, byte[] bArr, double d, double d2, double d3, float f, float f2, float f3, int i3, int i4, double d4) {
        int iNextInt;
        boolean z;
        Random random;
        Random random2;
        double d5;
        boolean z2;
        boolean z3;
        int i5;
        byte b;
        boolean z4;
        int i6 = i * 16;
        double d6 = i6 + 8;
        int i7 = i2 * 16;
        double d7 = i7 + 8;
        Random random3 = new Random(this.b.nextLong());
        if (i4 <= 0) {
            int i8 = (this.a * 16) - 16;
            iNextInt = i8 - random3.nextInt(i8 / 4);
        } else {
            iNextInt = i4;
        }
        int i9 = i3;
        if (i9 == -1) {
            i9 = iNextInt / 2;
            z = true;
        } else {
            z = false;
        }
        int iNextInt2 = random3.nextInt(iNextInt / 2) + (iNextInt / 4);
        boolean z5 = random3.nextInt(6) == 0;
        double d8 = d2;
        double d9 = d3;
        float f4 = f3;
        int i10 = i9;
        float fNextFloat = 0.0f;
        float fNextFloat2 = 0.0f;
        double d10 = d;
        float f5 = f2;
        while (i10 < iNextInt) {
            int i11 = iNextInt;
            double dA = ((double) (in.a((i10 * 3.1415927f) / iNextInt) * f * 1.0f)) + 1.5d;
            double d11 = dA * d4;
            float fB = in.b(f4);
            float fA = in.a(f4);
            int i12 = i7;
            double dB = d10 + ((double) (in.b(f5) * fB));
            double d12 = d8 + ((double) fA);
            double dA2 = d9 + ((double) (in.a(f5) * fB));
            f4 = (f4 * (z5 ? 0.92f : 0.7f)) + (fNextFloat * 0.1f);
            float f6 = f5 + (0.1f * fNextFloat2);
            fNextFloat = (fNextFloat * 0.9f) + ((random3.nextFloat() - random3.nextFloat()) * random3.nextFloat() * 2.0f);
            fNextFloat2 = (fNextFloat2 * 0.75f) + ((random3.nextFloat() - random3.nextFloat()) * random3.nextFloat() * 4.0f);
            if (!z && i10 == iNextInt2 && f > 1.0f) {
                float f7 = f4 / 3.0f;
                a(i, i2, bArr, dB, d12, dA2, (random3.nextFloat() * 0.5f) + 0.5f, f6 - 1.5707964f, f7, i10, i11, 1.0d);
                a(i, i2, bArr, dB, d12, dA2, (random3.nextFloat() * 0.5f) + 0.5f, f6 + 1.5707964f, f7, i10, i11, 1.0d);
                return;
            }
            Random random4 = random3;
            int i13 = i10;
            if (z) {
                random = random4;
            } else {
                random = random4;
                if (random.nextInt(4) == 0) {
                    d5 = d7;
                    random2 = random;
                }
                z2 = z5;
                z3 = z;
                i5 = iNextInt2;
                i10 = i13 + 1;
                random3 = random2;
                z5 = z2;
                f5 = f6;
                d7 = d5;
                d6 = d6;
                iNextInt2 = i5;
                iNextInt = i11;
                i7 = i12;
                z = z3;
                d10 = dB;
                d8 = d12;
                d9 = dA2;
            }
            double d13 = dB - d6;
            double d14 = dA2 - d7;
            random2 = random;
            double d15 = i11 - i13;
            d5 = d7;
            double d16 = f + 2.0f + 16.0f;
            if (((d13 * d13) + (d14 * d14)) - (d15 * d15) > d16 * d16) {
                return;
            }
            double d17 = 2.0d * dA;
            if (dB < (d6 - 16.0d) - d17 || dA2 < (d5 - 16.0d) - d17 || dB > d6 + 16.0d + d17 || dA2 > d5 + 16.0d + d17) {
                z2 = z5;
                z3 = z;
                i5 = iNextInt2;
            } else {
                int iB = (in.b(dB - dA) - i6) - 1;
                int iB2 = (in.b(dB + dA) - i6) + 1;
                int iB3 = in.b(d12 - d11) - 1;
                int iB4 = in.b(d12 + d11) + 1;
                int iB5 = (in.b(dA2 - dA) - i12) - 1;
                int iB6 = (in.b(dA2 + dA) - i12) + 1;
                if (iB < 0) {
                    iB = 0;
                }
                if (iB2 > 16) {
                    iB2 = 16;
                }
                if (iB3 < 1) {
                    iB3 = 1;
                }
                if (iB4 > 120) {
                    iB4 = 120;
                }
                if (iB5 < 0) {
                    iB5 = 0;
                }
                if (iB6 > 16) {
                    iB6 = 16;
                }
                int i14 = iB;
                boolean z6 = false;
                while (!z6 && i14 < iB2) {
                    int i15 = iB5;
                    while (!z6 && i15 < iB6) {
                        double d18 = d6;
                        int i16 = iB4 + 1;
                        while (!z6) {
                            int i17 = iB3 - 1;
                            if (i16 < i17) {
                                break;
                            }
                            boolean z7 = z5;
                            int i18 = iNextInt2;
                            int i19 = (((i14 * 16) + i15) * 128) + i16;
                            if (i16 < 0 || i16 >= 128) {
                                z4 = z;
                            } else {
                                z4 = z;
                                if (bArr[i19] == uu.D.bn || bArr[i19] == uu.E.bn) {
                                    z6 = true;
                                }
                                if (i16 != i17 && i14 != iB && i14 != iB2 - 1 && i15 != iB5 && i15 != iB6 - 1) {
                                    i16 = iB3;
                                }
                            }
                            i16--;
                            z5 = z7;
                            iNextInt2 = i18;
                            z = z4;
                        }
                        i15++;
                        z5 = z5;
                        d6 = d18;
                        iNextInt2 = iNextInt2;
                        z = z;
                    }
                    i14++;
                    z5 = z5;
                    d6 = d6;
                    iNextInt2 = iNextInt2;
                    z = z;
                }
                d6 = d6;
                z2 = z5;
                z3 = z;
                i5 = iNextInt2;
                if (!z6) {
                    while (iB < iB2) {
                        double d19 = ((((double) (iB + i6)) + 0.5d) - dB) / dA;
                        int i20 = iB5;
                        while (i20 < iB6) {
                            int i21 = iB;
                            double d20 = ((((double) (i20 + i12)) + 0.5d) - dA2) / dA;
                            int i22 = (((i21 * 16) + i20) * 128) + iB4;
                            int i23 = iB4 - 1;
                            while (i23 >= iB3) {
                                int i24 = iB2;
                                int i25 = iB3;
                                double d21 = ((((double) i23) + 0.5d) - d12) / d11;
                                if (d21 > -0.7d && (d19 * d19) + (d21 * d21) + (d20 * d20) < 1.0d && ((b = bArr[i22]) == uu.bc.bn || b == uu.w.bn || b == uu.v.bn)) {
                                    bArr[i22] = 0;
                                }
                                i22--;
                                i23--;
                                iB3 = i25;
                                iB2 = i24;
                            }
                            i20++;
                            iB = i21;
                            iB2 = iB2;
                        }
                        iB++;
                        iB2 = iB2;
                    }
                    if (z3) {
                        return;
                    }
                }
            }
            i10 = i13 + 1;
            random3 = random2;
            z5 = z2;
            f5 = f6;
            d7 = d5;
            d6 = d6;
            iNextInt2 = i5;
            iNextInt = i11;
            i7 = i12;
            z = z3;
            d10 = dB;
            d8 = d12;
            d9 = dA2;
        }
    }

    @Override // defpackage.fv
    protected void a(fd fdVar, int i, int i2, int i3, int i4, byte[] bArr) {
        double d;
        int iNextInt;
        pk pkVar = this;
        int iNextInt2 = pkVar.b.nextInt(5) != 0 ? 0 : pkVar.b.nextInt(pkVar.b.nextInt(pkVar.b.nextInt(10) + 1) + 1);
        int i5 = 0;
        while (i5 < iNextInt2) {
            double dNextInt = (i * 16) + pkVar.b.nextInt(16);
            double dNextInt2 = pkVar.b.nextInt(128);
            double dNextInt3 = (i2 * 16) + pkVar.b.nextInt(16);
            if (pkVar.b.nextInt(4) == 0) {
                d = dNextInt3;
                a(i3, i4, bArr, dNextInt, dNextInt2, d);
                iNextInt = pkVar.b.nextInt(4) + 1;
            } else {
                d = dNextInt3;
                iNextInt = 1;
            }
            int i6 = 0;
            while (i6 < iNextInt) {
                double d2 = dNextInt;
                a(i3, i4, bArr, d2, dNextInt2, d, ((pkVar.b.nextFloat() * 2.0f) + pkVar.b.nextFloat()) * 2.0f, pkVar.b.nextFloat() * 3.1415927f * 2.0f, ((pkVar.b.nextFloat() - 0.5f) * 2.0f) / 8.0f, 0, 0, 0.5d);
                i6++;
                pkVar = this;
                dNextInt = d2;
                i5 = i5;
                iNextInt2 = iNextInt2;
                iNextInt = iNextInt;
            }
            i5++;
            pkVar = this;
        }
    }
}
