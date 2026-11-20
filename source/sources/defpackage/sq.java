package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class sq extends fv {
    protected void a(int i, int i2, byte[] bArr, double d, double d2, double d3) {
        a(i, i2, bArr, d, d2, d3, (this.b.nextFloat() * 6.0f) + 1.0f, 0.0f, 0.0f, -1, -1, 0.5d);
    }

    /* JADX WARN: Code duplicated, block: B:123:0x02fb A[PHI: r16
      0x02fb: PHI (r16v10 boolean) = (r16v9 boolean), (r16v9 boolean), (r16v12 boolean), (r16v12 boolean), (r16v12 boolean) binds: [B:103:0x02b0, B:105:0x02b8, B:119:0x02e5, B:117:0x02da, B:114:0x02d4] A[DONT_GENERATE, DONT_INLINE]] */
    protected void a(int i, int i2, byte[] bArr, double d, double d2, double d3, float f, float f2, float f3, int i3, int i4, double d4) {
        int iNextInt;
        boolean z;
        Random random;
        Random random2;
        double d5;
        boolean z2;
        boolean z3;
        int i5;
        int i6;
        boolean z4;
        int i7 = i * 16;
        double d6 = i7 + 8;
        int i8 = i2 * 16;
        double d7 = i8 + 8;
        Random random3 = new Random(this.b.nextLong());
        if (i4 <= 0) {
            int i9 = (this.a * 16) - 16;
            iNextInt = i9 - random3.nextInt(i9 / 4);
        } else {
            iNextInt = i4;
        }
        int i10 = i3;
        if (i10 == -1) {
            i10 = iNextInt / 2;
            z = true;
        } else {
            z = false;
        }
        int iNextInt2 = random3.nextInt(iNextInt / 2) + (iNextInt / 4);
        boolean z5 = random3.nextInt(6) == 0;
        double d8 = d2;
        double d9 = d3;
        float f4 = f3;
        int i11 = i10;
        float fNextFloat = 0.0f;
        float fNextFloat2 = 0.0f;
        double d10 = d;
        float f5 = f2;
        while (i11 < iNextInt) {
            int i12 = iNextInt;
            double dA = ((double) (in.a((i11 * 3.1415927f) / iNextInt) * f * 1.0f)) + 1.5d;
            double d11 = dA * d4;
            float fB = in.b(f4);
            float fA = in.a(f4);
            int i13 = i8;
            double dB = d10 + ((double) (in.b(f5) * fB));
            double d12 = d8 + ((double) fA);
            double dA2 = d9 + ((double) (in.a(f5) * fB));
            f4 = (f4 * (z5 ? 0.92f : 0.7f)) + (fNextFloat * 0.1f);
            float f6 = f5 + (0.1f * fNextFloat2);
            fNextFloat = (fNextFloat * 0.9f) + ((random3.nextFloat() - random3.nextFloat()) * random3.nextFloat() * 2.0f);
            fNextFloat2 = (fNextFloat2 * 0.75f) + ((random3.nextFloat() - random3.nextFloat()) * random3.nextFloat() * 4.0f);
            if (!z && i11 == iNextInt2 && f > 1.0f) {
                float f7 = f4 / 3.0f;
                a(i, i2, bArr, dB, d12, dA2, (random3.nextFloat() * 0.5f) + 0.5f, f6 - 1.5707964f, f7, i11, i12, 1.0d);
                a(i, i2, bArr, dB, d12, dA2, (random3.nextFloat() * 0.5f) + 0.5f, f6 + 1.5707964f, f7, i11, i12, 1.0d);
                return;
            }
            Random random4 = random3;
            int i14 = i11;
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
                i11 = i14 + 1;
                random3 = random2;
                z5 = z2;
                f5 = f6;
                d7 = d5;
                d6 = d6;
                iNextInt2 = i5;
                iNextInt = i12;
                i8 = i13;
                z = z3;
                d10 = dB;
                d8 = d12;
                d9 = dA2;
                i7 = i7;
            }
            double d13 = dB - d6;
            double d14 = dA2 - d7;
            random2 = random;
            double d15 = i12 - i14;
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
                int iB = (in.b(dB - dA) - i7) - 1;
                int iB2 = (in.b(dB + dA) - i7) + 1;
                int iB3 = in.b(d12 - d11) - 1;
                int iB4 = in.b(d12 + d11) + 1;
                int iB5 = (in.b(dA2 - dA) - i13) - 1;
                int iB6 = (in.b(dA2 + dA) - i13) + 1;
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
                int i15 = iB;
                boolean z6 = false;
                while (!z6 && i15 < iB2) {
                    int i16 = iB5;
                    while (!z6 && i16 < iB6) {
                        double d18 = d6;
                        int i17 = iB4 + 1;
                        while (!z6) {
                            int i18 = iB3 - 1;
                            if (i17 < i18) {
                                break;
                            }
                            boolean z7 = z5;
                            int i19 = iNextInt2;
                            int i20 = (((i15 * 16) + i16) * 128) + i17;
                            if (i17 < 0 || i17 >= 128) {
                                z4 = z;
                            } else {
                                z4 = z;
                                if (bArr[i20] == uu.B.bn || bArr[i20] == uu.C.bn) {
                                    z6 = true;
                                }
                                if (i17 != i18 && i15 != iB && i15 != iB2 - 1 && i16 != iB5 && i16 != iB6 - 1) {
                                    i17 = iB3;
                                }
                            }
                            i17--;
                            z5 = z7;
                            iNextInt2 = i19;
                            z = z4;
                        }
                        i16++;
                        z5 = z5;
                        d6 = d18;
                        iNextInt2 = iNextInt2;
                        z = z;
                    }
                    i15++;
                    z5 = z5;
                    d6 = d6;
                    iNextInt2 = iNextInt2;
                    z = z;
                }
                d6 = d6;
                z2 = z5;
                z3 = z;
                i5 = iNextInt2;
                if (z6) {
                    i7 = i7;
                } else {
                    while (iB < iB2) {
                        double d19 = ((((double) (iB + i7)) + 0.5d) - dB) / dA;
                        int i21 = iB5;
                        while (i21 < iB6) {
                            int i22 = iB;
                            double d20 = ((((double) (i21 + i13)) + 0.5d) - dA2) / dA;
                            int i23 = (((i22 * 16) + i21) * 128) + iB4;
                            double d21 = d19 * d19;
                            double d22 = d20 * d20;
                            if (d21 + d22 < 1.0d) {
                                int i24 = iB4 - 1;
                                boolean z8 = false;
                                while (i24 >= iB3) {
                                    int i25 = iB2;
                                    int i26 = iB3;
                                    double d23 = ((((double) i24) + 0.5d) - d12) / d11;
                                    if (d23 <= -0.7d || d21 + (d23 * d23) + d22 >= 1.0d) {
                                        i6 = i7;
                                    } else {
                                        byte b = bArr[i23];
                                        if (b == uu.v.bn) {
                                            z8 = true;
                                        }
                                        if (b == uu.u.bn || b == uu.w.bn || b == uu.v.bn) {
                                            if (i24 < 10) {
                                                bArr[i23] = (byte) uu.D.bn;
                                            } else {
                                                bArr[i23] = 0;
                                                if (z8) {
                                                    int i27 = i23 - 1;
                                                    i6 = i7;
                                                    if (bArr[i27] == uu.w.bn) {
                                                        bArr[i27] = (byte) uu.v.bn;
                                                    }
                                                }
                                            }
                                            i6 = i7;
                                        } else {
                                            i6 = i7;
                                        }
                                    }
                                    i23--;
                                    i24--;
                                    iB3 = i26;
                                    iB2 = i25;
                                    i7 = i6;
                                }
                            }
                            i21++;
                            iB3 = iB3;
                            iB = i22;
                            iB2 = iB2;
                            i7 = i7;
                        }
                        iB++;
                    }
                    i7 = i7;
                    if (z3) {
                        return;
                    }
                }
            }
            i11 = i14 + 1;
            random3 = random2;
            z5 = z2;
            f5 = f6;
            d7 = d5;
            d6 = d6;
            iNextInt2 = i5;
            iNextInt = i12;
            i8 = i13;
            z = z3;
            d10 = dB;
            d8 = d12;
            d9 = dA2;
            i7 = i7;
        }
    }

    @Override // defpackage.fv
    protected void a(fd fdVar, int i, int i2, int i3, int i4, byte[] bArr) {
        double d;
        int iNextInt;
        sq sqVar = this;
        int iNextInt2 = sqVar.b.nextInt(15) != 0 ? 0 : sqVar.b.nextInt(sqVar.b.nextInt(sqVar.b.nextInt(40) + 1) + 1);
        int i5 = 0;
        while (i5 < iNextInt2) {
            double dNextInt = (i * 16) + sqVar.b.nextInt(16);
            double dNextInt2 = sqVar.b.nextInt(sqVar.b.nextInt(120) + 8);
            double dNextInt3 = (i2 * 16) + sqVar.b.nextInt(16);
            if (sqVar.b.nextInt(4) == 0) {
                d = dNextInt3;
                a(i3, i4, bArr, dNextInt, dNextInt2, d);
                iNextInt = sqVar.b.nextInt(4) + 1;
            } else {
                d = dNextInt3;
                iNextInt = 1;
            }
            int i6 = 0;
            while (i6 < iNextInt) {
                double d2 = dNextInt;
                a(i3, i4, bArr, d2, dNextInt2, d, (sqVar.b.nextFloat() * 2.0f) + sqVar.b.nextFloat(), sqVar.b.nextFloat() * 3.1415927f * 2.0f, ((sqVar.b.nextFloat() - 0.5f) * 2.0f) / 8.0f, 0, 0, 1.0d);
                i6++;
                sqVar = this;
                dNextInt = d2;
                i5 = i5;
                iNextInt2 = iNextInt2;
                iNextInt = iNextInt;
            }
            i5++;
            sqVar = this;
        }
    }
}
