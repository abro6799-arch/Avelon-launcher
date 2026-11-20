package defpackage;

import java.lang.reflect.Array;
import java.util.Random;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class yf implements cl {
    public uf a;
    public uf b;
    public uf c;
    double[] d;
    double[] e;
    double[] f;
    double[] g;
    double[] h;
    private Random j;
    private uf k;
    private uf l;
    private uf m;
    private uf n;
    private uf o;
    private fd p;
    private double[] q;
    private kd[] v;
    private double[] w;
    private double[] r = new double[Keyboard.KEYBOARD_SIZE];
    private double[] s = new double[Keyboard.KEYBOARD_SIZE];
    private double[] t = new double[Keyboard.KEYBOARD_SIZE];
    private fv u = new sq();
    int[][] i = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 32, 32);

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
        return "RandomLevelSource";
    }

    public yf(fd fdVar, long j) {
        this.p = fdVar;
        Random random = new Random(j);
        this.j = random;
        this.k = new uf(random, 16);
        this.l = new uf(this.j, 16);
        this.m = new uf(this.j, 8);
        this.n = new uf(this.j, 4);
        this.o = new uf(this.j, 4);
        this.a = new uf(this.j, 10);
        this.b = new uf(this.j, 16);
        this.c = new uf(this.j, 8);
    }

    public void a(int i, int i2, byte[] bArr, kd[] kdVarArr, double[] dArr) {
        int i3;
        int i4 = 5;
        int i5 = 4;
        this.q = a(this.q, i * 4, 0, i2 * 4, 5, 17, 5);
        int i6 = 0;
        while (i6 < i5) {
            int i7 = 0;
            while (i7 < i5) {
                int i8 = 0;
                while (i8 < 16) {
                    double[] dArr2 = this.q;
                    int i9 = (i6 + 0) * i4;
                    int i10 = i7 + 0;
                    int i11 = (i9 + i10) * 17;
                    int i12 = i8 + 0;
                    double d = dArr2[i11 + i12];
                    int i13 = i7 + 1;
                    int i14 = (i9 + i13) * 17;
                    double d2 = dArr2[i14 + i12];
                    int i15 = (i6 + 1) * 5;
                    int i16 = (i15 + i10) * 17;
                    double d3 = dArr2[i16 + i12];
                    int i17 = (i15 + i13) * 17;
                    double d4 = dArr2[i17 + i12];
                    int i18 = i8 + 1;
                    double d5 = (dArr2[i11 + i18] - d) * 0.125d;
                    double d6 = (dArr2[i14 + i18] - d2) * 0.125d;
                    double d7 = (dArr2[i16 + i18] - d3) * 0.125d;
                    double d8 = (dArr2[i17 + i18] - d4) * 0.125d;
                    int i19 = 0;
                    while (i19 < 8) {
                        double d9 = (d3 - d) * 0.25d;
                        double d10 = (d4 - d2) * 0.25d;
                        double d11 = d;
                        double d12 = d2;
                        int i20 = 0;
                        while (i20 < i5) {
                            int i21 = (i6 * 4) + i20;
                            int i22 = i7 * 4;
                            int i23 = (i8 * 8) + i19;
                            double d13 = (d12 - d11) * 0.25d;
                            int i24 = (i21 << 11) | ((i22 + 0) << 7) | i23;
                            double d14 = d11;
                            int i25 = i8;
                            int i26 = 0;
                            while (i26 < i5) {
                                double d15 = dArr[(i21 * 16) + i22 + i26];
                                if (i23 >= 64) {
                                    i3 = 0;
                                } else if (d15 < 0.5d && i23 >= 63) {
                                    i3 = uu.aU.bn;
                                } else {
                                    i3 = uu.C.bn;
                                }
                                if (d14 > 0.0d) {
                                    i3 = uu.u.bn;
                                }
                                bArr[i24] = (byte) i3;
                                i24 += 128;
                                d14 += d13;
                                i26++;
                                i5 = 4;
                            }
                            d11 += d9;
                            d12 += d10;
                            i20++;
                            i8 = i25;
                            i5 = 4;
                        }
                        d += d5;
                        d2 += d6;
                        d3 += d7;
                        d4 += d8;
                        i19++;
                        i4 = 5;
                        i5 = 4;
                    }
                    i8 = i18;
                }
                i7++;
                i4 = 5;
                i5 = 4;
            }
            i6++;
            i4 = 5;
            i5 = 4;
        }
    }

    public void a(int i, int i2, byte[] bArr, kd[] kdVarArr) {
        double d = i * 16;
        double d2 = i2 * 16;
        this.r = this.n.a(this.r, d, d2, 0.0d, 16, 16, 1, 0.03125d, 0.03125d, 1.0d);
        this.s = this.n.a(this.s, d, 109.0134d, d2, 16, 1, 16, 0.03125d, 1.0d, 0.03125d);
        this.t = this.o.a(this.t, d, d2, 0.0d, 16, 16, 1, 0.0625d, 0.0625d, 0.0625d);
        int i3 = 0;
        while (true) {
            if (i3 >= 16) {
                return;
            }
            int i4 = 0;
            for (int i5 = 16; i4 < i5; i5 = 16) {
                int i6 = (i4 * 16) + i3;
                kd kdVar = kdVarArr[i6];
                boolean z = this.r[i6] + (this.j.nextDouble() * 0.2d) > 0.0d;
                boolean z2 = this.s[i6] + (this.j.nextDouble() * 0.2d) > 3.0d;
                int iNextDouble = (int) ((this.t[i6] / 3.0d) + 3.0d + (this.j.nextDouble() * 0.25d));
                byte b = kdVar.p;
                byte b2 = kdVar.q;
                int iNextInt = -1;
                for (int i7 = 127; i7 >= 0; i7--) {
                    int i8 = (i6 * 128) + i7;
                    if (i7 <= this.j.nextInt(5) + 0) {
                        bArr[i8] = (byte) uu.A.bn;
                    } else {
                        byte b3 = bArr[i8];
                        if (b3 == 0) {
                            iNextInt = -1;
                        } else if (b3 == uu.u.bn) {
                            if (iNextInt == -1) {
                                if (iNextDouble <= 0) {
                                    b2 = (byte) uu.u.bn;
                                    b = 0;
                                } else if (i7 >= 60 && i7 <= 65) {
                                    b = kdVar.p;
                                    b2 = kdVar.q;
                                    if (z2) {
                                        b = 0;
                                    }
                                    if (z2) {
                                        b2 = (byte) uu.G.bn;
                                    }
                                    if (z) {
                                        b = (byte) uu.F.bn;
                                    }
                                    if (z) {
                                        b2 = (byte) uu.F.bn;
                                    }
                                }
                                if (i7 < 64 && b == 0) {
                                    b = (byte) uu.C.bn;
                                }
                                if (i7 >= 63) {
                                    bArr[i8] = b;
                                } else {
                                    bArr[i8] = b2;
                                }
                                iNextInt = iNextDouble;
                            } else if (iNextInt > 0) {
                                iNextInt--;
                                bArr[i8] = b2;
                                if (iNextInt == 0 && b2 == uu.F.bn) {
                                    iNextInt = this.j.nextInt(4);
                                    b2 = (byte) uu.R.bn;
                                }
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
        this.j.setSeed((((long) i) * 341873128712L) + (((long) i2) * 132897987541L));
        byte[] bArr = new byte[32768];
        lm lmVar = new lm(this.p, bArr, i, i2);
        this.v = this.p.a().a(this.v, i * 16, i2 * 16, 16, 16);
        a(i, i2, bArr, this.v, this.p.a().a);
        a(i, i2, bArr, this.v);
        this.u.a(this, this.p, i, i2, bArr);
        lmVar.c();
        return lmVar;
    }

    private double[] a(double[] dArr, int i, int i2, int i3, int i4, int i5, int i6) {
        double d;
        long j;
        double[] dArr2 = dArr == null ? new double[i4 * i5 * i6] : dArr;
        double[] dArr3 = this.p.a().a;
        double[] dArr4 = this.p.a().b;
        this.g = this.a.a(this.g, i, i3, i4, i6, 1.121d, 1.121d, 0.5d);
        this.h = this.b.a(this.h, i, i3, i4, i6, 200.0d, 200.0d, 0.5d);
        double d2 = i;
        double d3 = i2;
        double d4 = i3;
        this.d = this.m.a(this.d, d2, d3, d4, i4, i5, i6, 8.555150000000001d, 4.277575000000001d, 8.555150000000001d);
        this.e = this.k.a(this.e, d2, d3, d4, i4, i5, i6, 684.412d, 684.412d, 684.412d);
        this.f = this.l.a(this.f, d2, d3, d4, i4, i5, i6, 684.412d, 684.412d, 684.412d);
        int i7 = 16 / i4;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < i4) {
            int i11 = i7 / 2;
            int i12 = (i8 * i7) + i11;
            int i13 = 0;
            while (i13 < i6) {
                int i14 = (i12 * 16) + (i13 * i7) + i11;
                double d5 = 1.0d - (dArr4[i14] * dArr3[i14]);
                double d6 = d5 * d5;
                double d7 = ((this.g[i9] + 256.0d) / 512.0d) * (1.0d - (d6 * d6));
                if (d7 > 1.0d) {
                    d7 = 1.0d;
                }
                double d8 = this.h[i9] / 8000.0d;
                if (d8 < 0.0d) {
                    d8 = (-d8) * 0.3d;
                }
                double d9 = (d8 * 3.0d) - 2.0d;
                if (d9 < 0.0d) {
                    double d10 = d9 / 2.0d;
                    if (d10 < -1.0d) {
                        d10 = -1.0d;
                    }
                    d = (d10 / 1.4d) / 2.0d;
                    d7 = 0.0d;
                } else {
                    if (d9 > 1.0d) {
                        d9 = 1.0d;
                    }
                    d = d9 / 8.0d;
                }
                if (d7 < 0.0d) {
                    d7 = 0.0d;
                }
                double d11 = d7 + 0.5d;
                int i15 = i8;
                double d12 = i5;
                double d13 = (d12 / 2.0d) + (((d * d12) / 16.0d) * 4.0d);
                i9++;
                for (int i16 = 0; i16 < i5; i16++) {
                    double d14 = ((((double) i16) - d13) * 12.0d) / d11;
                    if (d14 < 0.0d) {
                        d14 *= 4.0d;
                    }
                    double d15 = this.e[i10] / 512.0d;
                    double d16 = this.f[i10] / 512.0d;
                    double d17 = ((this.d[i10] / 10.0d) + 1.0d) / 2.0d;
                    if (d17 >= 0.0d) {
                        d15 = d17 > 1.0d ? d16 : d15 + ((d16 - d15) * d17);
                    }
                    double d18 = d15 - d14;
                    int i17 = i5 - 4;
                    if (i16 > i17) {
                        double d19 = (i16 - i17) / 3.0f;
                        j = 4607182418800017408L;
                        d18 = (d18 * (1.0d - d19)) + (d19 * (-10.0d));
                    } else {
                        j = 4607182418800017408L;
                    }
                    dArr2[i10] = d18;
                    i10++;
                }
                i13++;
                i8 = i15;
            }
            i8++;
        }
        return dArr2;
    }

    @Override // defpackage.cl
    public void a(cl clVar, int i, int i2) {
        gk.a = true;
        int i3 = i * 16;
        int i4 = i2 * 16;
        kd kdVarA = this.p.a().a(i3 + 16, i4 + 16);
        this.j.setSeed(this.p.s());
        this.j.setSeed(this.p.s() ^ ((((long) i) * (((this.j.nextLong() / 2) * 2) + 1)) + (((long) i2) * (((this.j.nextLong() / 2) * 2) + 1))));
        if (this.j.nextInt(4) == 0) {
            new dj(uu.C.bn).a(this.p, this.j, this.j.nextInt(16) + i3 + 8, this.j.nextInt(128), this.j.nextInt(16) + i4 + 8);
        }
        if (this.j.nextInt(8) == 0) {
            int iNextInt = this.j.nextInt(16) + i3 + 8;
            Random random = this.j;
            int iNextInt2 = random.nextInt(random.nextInt(120) + 8);
            int iNextInt3 = this.j.nextInt(16) + i4 + 8;
            if (iNextInt2 < 64 || this.j.nextInt(10) == 0) {
                new dj(uu.E.bn).a(this.p, this.j, iNextInt, iNextInt2, iNextInt3);
            }
        }
        for (int i5 = 0; i5 < 8; i5++) {
            new er().a(this.p, this.j, this.j.nextInt(16) + i3 + 8, this.j.nextInt(128), this.j.nextInt(16) + i4 + 8);
        }
        for (int i6 = 0; i6 < 10; i6++) {
            new ms(32).a(this.p, this.j, i3 + this.j.nextInt(16), this.j.nextInt(128), i4 + this.j.nextInt(16));
        }
        for (int i7 = 0; i7 < 20; i7++) {
            new fl(uu.w.bn, 32).a(this.p, this.j, i3 + this.j.nextInt(16), this.j.nextInt(128), i4 + this.j.nextInt(16));
        }
        for (int i8 = 0; i8 < 10; i8++) {
            new fl(uu.G.bn, 32).a(this.p, this.j, i3 + this.j.nextInt(16), this.j.nextInt(128), i4 + this.j.nextInt(16));
        }
        for (int i9 = 0; i9 < 20; i9++) {
            new fl(uu.J.bn, 16).a(this.p, this.j, i3 + this.j.nextInt(16), this.j.nextInt(128), i4 + this.j.nextInt(16));
        }
        for (int i10 = 0; i10 < 20; i10++) {
            new fl(uu.I.bn, 8).a(this.p, this.j, i3 + this.j.nextInt(16), this.j.nextInt(64), i4 + this.j.nextInt(16));
        }
        for (int i11 = 0; i11 < 2; i11++) {
            new fl(uu.H.bn, 8).a(this.p, this.j, i3 + this.j.nextInt(16), this.j.nextInt(32), i4 + this.j.nextInt(16));
        }
        for (int i12 = 0; i12 < 8; i12++) {
            new fl(uu.aO.bn, 7).a(this.p, this.j, i3 + this.j.nextInt(16), this.j.nextInt(16), i4 + this.j.nextInt(16));
        }
        new fl(uu.ax.bn, 7).a(this.p, this.j, i3 + this.j.nextInt(16), this.j.nextInt(16), i4 + this.j.nextInt(16));
        new fl(uu.O.bn, 6).a(this.p, this.j, i3 + this.j.nextInt(16), this.j.nextInt(16) + this.j.nextInt(16), i4 + this.j.nextInt(16));
        int iA = (int) ((((this.c.a(((double) i3) * 0.5d, ((double) i4) * 0.5d) / 8.0d) + (this.j.nextDouble() * 4.0d)) + 4.0d) / 3.0d);
        int i13 = this.j.nextInt(10) == 0 ? 1 : 0;
        if (kdVarA == kd.d) {
            i13 += iA + 5;
        }
        if (kdVarA == kd.a) {
            i13 += iA + 5;
        }
        if (kdVarA == kd.c) {
            i13 += iA + 2;
        }
        if (kdVarA == kd.g) {
            i13 += iA + 5;
        }
        if (kdVarA == kd.h) {
            i13 -= 20;
        }
        if (kdVarA == kd.k) {
            i13 -= 20;
        }
        if (kdVarA == kd.i) {
            i13 -= 20;
        }
        for (int i14 = 0; i14 < i13; i14++) {
            int iNextInt4 = this.j.nextInt(16) + i3 + 8;
            int iNextInt5 = this.j.nextInt(16) + i4 + 8;
            pg pgVarA = kdVarA.a(this.j);
            pgVarA.a(1.0d, 1.0d, 1.0d);
            fd fdVar = this.p;
            pgVarA.a(fdVar, this.j, iNextInt4, fdVar.d(iNextInt4, iNextInt5), iNextInt5);
        }
        int i15 = kdVarA == kd.d ? 2 : 0;
        if (kdVarA == kd.c) {
            i15 = 4;
        }
        if (kdVarA == kd.g) {
            i15 = 2;
        }
        if (kdVarA == kd.i) {
            i15 = 3;
        }
        for (int i16 = 0; i16 < i15; i16++) {
            new be(uu.ae.bn).a(this.p, this.j, this.j.nextInt(16) + i3 + 8, this.j.nextInt(128), this.j.nextInt(16) + i4 + 8);
        }
        int i17 = kdVarA == kd.d ? 2 : 0;
        if (kdVarA == kd.a) {
            i17 = 10;
        }
        if (kdVarA == kd.c) {
            i17 = 2;
        }
        if (kdVarA == kd.g) {
            i17 = 1;
        }
        if (kdVarA == kd.i) {
            i17 = 10;
        }
        for (int i18 = 0; i18 < i17; i18++) {
            new ap(uu.Y.bn, (kdVarA != kd.a || this.j.nextInt(3) == 0) ? 1 : 2).a(this.p, this.j, this.j.nextInt(16) + i3 + 8, this.j.nextInt(128), this.j.nextInt(16) + i4 + 8);
        }
        int i19 = kdVarA == kd.h ? 2 : 0;
        for (int i20 = 0; i20 < i19; i20++) {
            new kt(uu.Z.bn).a(this.p, this.j, this.j.nextInt(16) + i3 + 8, this.j.nextInt(128), this.j.nextInt(16) + i4 + 8);
        }
        if (this.j.nextInt(2) == 0) {
            new be(uu.af.bn).a(this.p, this.j, this.j.nextInt(16) + i3 + 8, this.j.nextInt(128), this.j.nextInt(16) + i4 + 8);
        }
        if (this.j.nextInt(4) == 0) {
            new be(uu.ag.bn).a(this.p, this.j, this.j.nextInt(16) + i3 + 8, this.j.nextInt(128), this.j.nextInt(16) + i4 + 8);
        }
        if (this.j.nextInt(8) == 0) {
            new be(uu.ah.bn).a(this.p, this.j, this.j.nextInt(16) + i3 + 8, this.j.nextInt(128), this.j.nextInt(16) + i4 + 8);
        }
        for (int i21 = 0; i21 < 10; i21++) {
            new ir().a(this.p, this.j, this.j.nextInt(16) + i3 + 8, this.j.nextInt(128), this.j.nextInt(16) + i4 + 8);
        }
        if (this.j.nextInt(32) == 0) {
            new wx().a(this.p, this.j, this.j.nextInt(16) + i3 + 8, this.j.nextInt(128), this.j.nextInt(16) + i4 + 8);
        }
        int i22 = kdVarA == kd.h ? 10 : 0;
        for (int i23 = 0; i23 < i22; i23++) {
            new fx().a(this.p, this.j, this.j.nextInt(16) + i3 + 8, this.j.nextInt(128), this.j.nextInt(16) + i4 + 8);
        }
        for (int i24 = 0; i24 < 50; i24++) {
            int iNextInt6 = this.j.nextInt(16) + i3 + 8;
            Random random2 = this.j;
            new xo(uu.B.bn).a(this.p, this.j, iNextInt6, random2.nextInt(random2.nextInt(120) + 8), this.j.nextInt(16) + i4 + 8);
        }
        for (int i25 = 0; i25 < 20; i25++) {
            int iNextInt7 = this.j.nextInt(16) + i3 + 8;
            Random random3 = this.j;
            new xo(uu.D.bn).a(this.p, this.j, iNextInt7, random3.nextInt(random3.nextInt(random3.nextInt(112) + 8) + 8), this.j.nextInt(16) + i4 + 8);
        }
        int i26 = i3 + 8;
        int i27 = i4 + 8;
        this.w = this.p.a().a(this.w, i26, i27, 16, 16);
        for (int i28 = i26; i28 < i26 + 16; i28++) {
            for (int i29 = i27; i29 < i27 + 16; i29++) {
                int iE = this.p.e(i28, i29);
                if (this.w[((i28 - i26) * 16) + (i29 - i27)] - ((((double) (iE - 64)) / 64.0d) * 0.3d) < 0.5d && iE > 0 && iE < 128 && this.p.d(i28, iE, i29)) {
                    int i30 = iE - 1;
                    if (this.p.f(i28, i30, i29).c() && this.p.f(i28, i30, i29) != ln.s) {
                        this.p.f(i28, iE, i29, uu.aT.bn);
                    }
                }
            }
        }
        gk.a = false;
    }
}
