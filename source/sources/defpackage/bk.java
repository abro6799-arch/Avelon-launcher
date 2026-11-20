package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class bk extends nr {
    int[] a;
    private int c;

    @Override // defpackage.uu
    protected int b_(int i) {
        return i & 3;
    }

    protected bk(int i, int i2) {
        super(i, i2, ln.i, false);
        this.c = i2;
        b(true);
    }

    @Override // defpackage.uu
    public int b(int i) {
        if ((i & 1) == 1) {
            return jh.a();
        }
        if ((i & 2) == 2) {
            return jh.b();
        }
        return jh.c();
    }

    @Override // defpackage.uu
    public int b(xp xpVar, int i, int i2, int i3) {
        int iE = xpVar.e(i, i2, i3);
        if ((iE & 1) == 1) {
            return jh.a();
        }
        if ((iE & 2) == 2) {
            return jh.b();
        }
        xpVar.a().a(i, i3, 1, 1);
        return jh.a(xpVar.a().a[0], xpVar.a().b[0]);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        if (fdVar.a(i - 2, i2 - 2, i3 - 2, i + 2, i2 + 2, i3 + 2)) {
            for (int i4 = -1; i4 <= 1; i4++) {
                for (int i5 = -1; i5 <= 1; i5++) {
                    for (int i6 = -1; i6 <= 1; i6++) {
                        int i7 = i + i4;
                        int i8 = i2 + i5;
                        int i9 = i3 + i6;
                        if (fdVar.a(i7, i8, i9) == uu.L.bn) {
                            fdVar.e(i7, i8, i9, fdVar.e(i7, i8, i9) | 8);
                        }
                    }
                }
            }
        }
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        int i4;
        if (fdVar.B) {
            return;
        }
        int iE = fdVar.e(i, i2, i3);
        if ((iE & 8) != 0) {
            if (this.a == null) {
                this.a = new int[32768];
            }
            if (fdVar.a(i - 5, i2 - 5, i3 - 5, i + 5, i2 + 5, i3 + 5)) {
                int i5 = -4;
                while (true) {
                    i4 = 4;
                    if (i5 > 4) {
                        break;
                    }
                    for (int i6 = -4; i6 <= 4; i6++) {
                        for (int i7 = -4; i7 <= 4; i7++) {
                            int iA = fdVar.a(i + i5, i2 + i6, i3 + i7);
                            if (iA == uu.K.bn) {
                                this.a[((i5 + 16) * 1024) + ((i6 + 16) * 32) + i7 + 16] = 0;
                            } else if (iA == uu.L.bn) {
                                this.a[((i5 + 16) * 1024) + ((i6 + 16) * 32) + i7 + 16] = -2;
                            } else {
                                this.a[((i5 + 16) * 1024) + ((i6 + 16) * 32) + i7 + 16] = -1;
                            }
                        }
                    }
                    i5++;
                }
                int i8 = 1;
                while (i8 <= i4) {
                    int i9 = -4;
                    while (i9 <= i4) {
                        int i10 = -4;
                        while (i10 <= i4) {
                            int i11 = -4;
                            while (i11 <= i4) {
                                int[] iArr = this.a;
                                int i12 = i9 + 16;
                                int i13 = i12 * 1024;
                                int i14 = i10 + 16;
                                int i15 = i14 * 32;
                                int i16 = i13 + i15;
                                int i17 = i11 + 16;
                                if (iArr[i16 + i17] == i8 - 1) {
                                    int i18 = ((i12 - 1) * 1024) + i15 + i17;
                                    if (iArr[i18] == -2) {
                                        iArr[i18] = i8;
                                    }
                                    int i19 = ((i12 + 1) * 1024) + i15 + i17;
                                    if (iArr[i19] == -2) {
                                        iArr[i19] = i8;
                                    }
                                    int i20 = ((i14 - 1) * 32) + i13 + i17;
                                    if (iArr[i20] == -2) {
                                        iArr[i20] = i8;
                                    }
                                    int i21 = i13 + ((i14 + 1) * 32) + i17;
                                    if (iArr[i21] == -2) {
                                        iArr[i21] = i8;
                                    }
                                    int i22 = i16 + (i17 - 1);
                                    if (iArr[i22] == -2) {
                                        iArr[i22] = i8;
                                    }
                                    int i23 = i16 + i17 + 1;
                                    if (iArr[i23] == -2) {
                                        iArr[i23] = i8;
                                    }
                                }
                                i11++;
                                i4 = 4;
                            }
                            i10++;
                            i4 = 4;
                        }
                        i9++;
                        i4 = 4;
                    }
                    i8++;
                    i4 = 4;
                }
            }
            if (this.a[16912] >= 0) {
                fdVar.e(i, i2, i3, iE & (-9));
            } else {
                h(fdVar, i, i2, i3);
            }
        }
    }

    private void h(fd fdVar, int i, int i2, int i3) {
        g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
        fdVar.f(i, i2, i3, 0);
    }

    @Override // defpackage.uu
    public int a(Random random) {
        return random.nextInt(20) == 0 ? 1 : 0;
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return uu.z.bn;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, gs gsVar, int i, int i2, int i3, int i4) {
        if (!fdVar.B && gsVar.G() != null && gsVar.G().c == gm.bc.bf) {
            gsVar.a(jl.C[this.bn], 1);
            a(fdVar, i, i2, i3, new iz(uu.L.bn, 1, i4 & 3));
        } else {
            super.a(fdVar, gsVar, i, i2, i3, i4);
        }
    }

    @Override // defpackage.nr, defpackage.uu
    public boolean c() {
        return !this.b;
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        if ((i2 & 3) == 1) {
            return this.bm + 80;
        }
        return this.bm;
    }

    public void a(boolean z) {
        this.b = z;
        this.bm = this.c + (!z ? 1 : 0);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, sn snVar) {
        super.b(fdVar, i, i2, i3, snVar);
    }
}
