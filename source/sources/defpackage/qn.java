package defpackage;

import java.util.Random;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class qn implements cl {
    public uf a;
    public uf b;
    double[] c;
    double[] d;
    double[] e;
    double[] f;
    double[] g;
    private Random h;
    private uf i;
    private uf j;
    private uf k;
    private uf l;
    private uf m;
    private fd n;
    private double[] o;
    private double[] p = new double[Keyboard.KEYBOARD_SIZE];
    private double[] q = new double[Keyboard.KEYBOARD_SIZE];
    private double[] r = new double[Keyboard.KEYBOARD_SIZE];
    private fv s = new pk();

    @Override // defpackage.cl
    public boolean a() {
        return false;
    }

    @Override // defpackage.cl
    public boolean a(int i, int i2) {
        return true;
    }

    @Override // defpackage.cl
    public boolean a(boolean z, yb ybVar) {
        return true;
    }

    @Override // defpackage.cl
    public boolean b() {
        return true;
    }

    @Override // defpackage.cl
    public String c() {
        return "HellRandomLevelSource";
    }

    public qn(fd fdVar, long j) {
        this.n = fdVar;
        Random random = new Random(j);
        this.h = random;
        this.i = new uf(random, 16);
        this.j = new uf(this.h, 16);
        this.k = new uf(this.h, 8);
        this.l = new uf(this.h, 4);
        this.m = new uf(this.h, 4);
        this.a = new uf(this.h, 10);
        this.b = new uf(this.h, 16);
    }

    public void a(int i, int i2, byte[] bArr) {
        int i3 = 5;
        int i4 = 4;
        this.o = a(this.o, i * 4, 0, i2 * 4, 5, 17, 5);
        int i5 = 0;
        int i6 = 0;
        while (i6 < i4) {
            int i7 = i5;
            while (i7 < i4) {
                int i8 = i5;
                while (i8 < 16) {
                    double[] dArr = this.o;
                    int i9 = (i6 + 0) * i3;
                    int i10 = i7 + 0;
                    int i11 = (i9 + i10) * 17;
                    int i12 = i8 + 0;
                    double d = dArr[i11 + i12];
                    int i13 = i7 + 1;
                    int i14 = (i9 + i13) * 17;
                    double d2 = dArr[i14 + i12];
                    int i15 = (i6 + 1) * 5;
                    int i16 = (i15 + i10) * 17;
                    double d3 = dArr[i16 + i12];
                    int i17 = (i15 + i13) * 17;
                    double d4 = dArr[i17 + i12];
                    int i18 = i8 + 1;
                    double d5 = (dArr[i11 + i18] - d) * 0.125d;
                    double d6 = (dArr[i14 + i18] - d2) * 0.125d;
                    double d7 = (dArr[i16 + i18] - d3) * 0.125d;
                    double d8 = (dArr[i17 + i18] - d4) * 0.125d;
                    int i19 = i5;
                    while (i19 < 8) {
                        double d9 = (d3 - d) * 0.25d;
                        double d10 = (d4 - d2) * 0.25d;
                        int i20 = i5;
                        double d11 = d;
                        double d12 = d2;
                        while (i20 < i4) {
                            int i21 = (i8 * 8) + i19;
                            int i22 = (((i6 * 4) + i20) << 11) | (((i7 * 4) + 0) << 7) | i21;
                            double d13 = (d12 - d11) * 0.25d;
                            double d14 = d11;
                            int i23 = 0;
                            while (i23 < i4) {
                                int i24 = i21 < 32 ? uu.E.bn : 0;
                                if (d14 > 0.0d) {
                                    i24 = uu.bc.bn;
                                }
                                bArr[i22] = (byte) i24;
                                i22 += 128;
                                d14 += d13;
                                i23++;
                                i4 = 4;
                            }
                            d11 += d9;
                            d12 += d10;
                            i20++;
                            i4 = 4;
                        }
                        d += d5;
                        d2 += d6;
                        d3 += d7;
                        d4 += d8;
                        i19++;
                        i5 = 0;
                        i3 = 5;
                        i4 = 4;
                    }
                    i8 = i18;
                }
                i7++;
                i5 = 0;
                i3 = 5;
                i4 = 4;
            }
            i6++;
            i5 = 0;
            i3 = 5;
            i4 = 4;
        }
    }

    public void b(int i, int i2, byte[] bArr) {
        double d = i * 16;
        double d2 = i2 * 16;
        this.p = this.l.a(this.p, d, d2, 0.0d, 16, 16, 1, 0.03125d, 0.03125d, 1.0d);
        this.q = this.l.a(this.q, d, 109.0134d, d2, 16, 1, 16, 0.03125d, 1.0d, 0.03125d);
        this.r = this.m.a(this.r, d, d2, 0.0d, 16, 16, 1, 0.0625d, 0.0625d, 0.0625d);
        int i3 = 0;
        while (true) {
            if (i3 >= 16) {
                return;
            }
            int i4 = 0;
            for (int i5 = 16; i4 < i5; i5 = 16) {
                int i6 = (i4 * 16) + i3;
                boolean z = this.p[i6] + (this.h.nextDouble() * 0.2d) > 0.0d;
                boolean z2 = this.q[i6] + (this.h.nextDouble() * 0.2d) > 0.0d;
                int iNextDouble = (int) ((this.r[i6] / 3.0d) + 3.0d + (this.h.nextDouble() * 0.25d));
                byte b = (byte) uu.bc.bn;
                byte b2 = (byte) uu.bc.bn;
                int i7 = -1;
                for (int i8 = 127; i8 >= 0; i8--) {
                    int i9 = (i6 * 128) + i8;
                    if (i8 >= 127 - this.h.nextInt(5) || i8 <= this.h.nextInt(5) + 0) {
                        bArr[i9] = (byte) uu.A.bn;
                    } else {
                        byte b3 = bArr[i9];
                        if (b3 == 0) {
                            i7 = -1;
                        } else if (b3 == uu.bc.bn) {
                            if (i7 == -1) {
                                if (iNextDouble <= 0) {
                                    b2 = (byte) uu.bc.bn;
                                    b = 0;
                                } else if (i8 >= 60 && i8 <= 65) {
                                    b = (byte) uu.bc.bn;
                                    b2 = (byte) uu.bc.bn;
                                    if (z2) {
                                        b = (byte) uu.G.bn;
                                    }
                                    if (z2) {
                                        b2 = (byte) uu.bc.bn;
                                    }
                                    if (z) {
                                        b = (byte) uu.bd.bn;
                                    }
                                    if (z) {
                                        b2 = (byte) uu.bd.bn;
                                    }
                                }
                                if (i8 < 64 && b == 0) {
                                    b = (byte) uu.E.bn;
                                }
                                if (i8 >= 63) {
                                    bArr[i9] = b;
                                } else {
                                    bArr[i9] = b2;
                                }
                                i7 = iNextDouble;
                            } else if (i7 > 0) {
                                i7--;
                                bArr[i9] = b2;
                            }
                        }
                    }
                }
                i4++;
            }
            i3++;
        }
    }

    @Override // defpackage.cl
    public lm c(int i, int i2) {
        return b(i, i2);
    }

    @Override // defpackage.cl
    public lm b(int i, int i2) {
        this.h.setSeed((((long) i) * 341873128712L) + (((long) i2) * 132897987541L));
        byte[] bArr = new byte[32768];
        a(i, i2, bArr);
        b(i, i2, bArr);
        this.s.a(this, this.n, i, i2, bArr);
        return new lm(this.n, bArr, i, i2);
    }

    private double[] a(double[] dArr, int i, int i2, int i3, int i4, int i5, int i6) {
        double d;
        double[] dArr2 = dArr == null ? new double[i4 * i5 * i6] : dArr;
        double d2 = i;
        double d3 = i2;
        double d4 = i3;
        this.f = this.a.a(this.f, d2, d3, d4, i4, 1, i6, 1.0d, 0.0d, 1.0d);
        this.g = this.b.a(this.g, d2, d3, d4, i4, 1, i6, 100.0d, 0.0d, 100.0d);
        this.c = this.k.a(this.c, d2, d3, d4, i4, i5, i6, 8.555150000000001d, 34.2206d, 8.555150000000001d);
        this.d = this.i.a(this.d, d2, d3, d4, i4, i5, i6, 684.412d, 2053.236d, 684.412d);
        this.e = this.j.a(this.e, d2, d3, d4, i4, i5, i6, 684.412d, 2053.236d, 684.412d);
        double[] dArr3 = new double[i5];
        int i7 = 0;
        while (true) {
            d = 2.0d;
            if (i7 >= i5) {
                break;
            }
            double d5 = i7;
            double dCos = Math.cos(((3.141592653589793d * d5) * 6.0d) / ((double) i5)) * 2.0d;
            dArr3[i7] = dCos;
            if (i7 > i5 / 2) {
                d5 = (i5 - 1) - i7;
            }
            if (d5 < 4.0d) {
                double d6 = 4.0d - d5;
                dArr3[i7] = dCos - (((d6 * d6) * d6) * 10.0d);
            }
            i7++;
        }
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < i4) {
            int i11 = 0;
            while (i11 < i6) {
                double d7 = this.f[i9];
                double d8 = this.g[i9];
                i9++;
                int i12 = 0;
                while (i12 < i5) {
                    double d9 = dArr3[i12];
                    double d10 = this.d[i10] / 512.0d;
                    double d11 = this.e[i10] / 512.0d;
                    double d12 = ((this.c[i10] / 10.0d) + 1.0d) / d;
                    if (d12 >= 0.0d) {
                        d10 = d12 > 1.0d ? d11 : d10 + ((d11 - d10) * d12);
                    }
                    double d13 = d10 - d9;
                    int i13 = i5 - 4;
                    if (i12 > i13) {
                        double d14 = (i12 - i13) / 3.0f;
                        d13 = (d13 * (1.0d - d14)) + (d14 * (-10.0d));
                    }
                    double d15 = i12;
                    if (d15 < 0.0d) {
                        double d16 = (0.0d - d15) / 4.0d;
                        double d17 = d16 >= 0.0d ? d16 : 0.0d;
                        if (d17 > 1.0d) {
                            d17 = 1.0d;
                        }
                        d13 = (d13 * (1.0d - d17)) + (d17 * (-10.0d));
                    }
                    dArr2[i10] = d13;
                    i10++;
                    i12++;
                    d = 2.0d;
                }
                i11++;
                d = 2.0d;
            }
            i8++;
            d = 2.0d;
        }
        return dArr2;
    }

    @Override // defpackage.cl
    public void a(cl clVar, int i, int i2) {
        gk.a = true;
        int i3 = i * 16;
        int i4 = i2 * 16;
        for (int i5 = 0; i5 < 8; i5++) {
            new qc(uu.D.bn).a(this.n, this.h, this.h.nextInt(16) + i3 + 8, this.h.nextInt(120) + 4, this.h.nextInt(16) + i4 + 8);
        }
        Random random = this.h;
        int iNextInt = random.nextInt(random.nextInt(10) + 1) + 1;
        for (int i6 = 0; i6 < iNextInt; i6++) {
            new xs().a(this.n, this.h, this.h.nextInt(16) + i3 + 8, this.h.nextInt(120) + 4, this.h.nextInt(16) + i4 + 8);
        }
        Random random2 = this.h;
        int iNextInt2 = random2.nextInt(random2.nextInt(10) + 1);
        for (int i7 = 0; i7 < iNextInt2; i7++) {
            new gd().a(this.n, this.h, this.h.nextInt(16) + i3 + 8, this.h.nextInt(120) + 4, this.h.nextInt(16) + i4 + 8);
        }
        for (int i8 = 0; i8 < 10; i8++) {
            new sf().a(this.n, this.h, this.h.nextInt(16) + i3 + 8, this.h.nextInt(128), this.h.nextInt(16) + i4 + 8);
        }
        if (this.h.nextInt(1) == 0) {
            new be(uu.ag.bn).a(this.n, this.h, this.h.nextInt(16) + i3 + 8, this.h.nextInt(128), this.h.nextInt(16) + i4 + 8);
        }
        if (this.h.nextInt(1) == 0) {
            new be(uu.ah.bn).a(this.n, this.h, i3 + this.h.nextInt(16) + 8, this.h.nextInt(128), i4 + this.h.nextInt(16) + 8);
        }
        gk.a = false;
    }
}
