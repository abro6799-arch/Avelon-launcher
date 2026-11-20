package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class om extends rp {
    int a;
    boolean[] b;
    int[] c;

    protected om(int i, ln lnVar) {
        super(i, lnVar);
        this.a = 0;
        this.b = new boolean[4];
        this.c = new int[4];
    }

    private void j(fd fdVar, int i, int i2, int i3) {
        fdVar.a(i, i2, i3, this.bn + 1, fdVar.e(i, i2, i3));
        fdVar.b(i, i2, i3, i, i2, i3);
        fdVar.j(i, i2, i3);
    }

    @Override // defpackage.rp, defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        int i4;
        int i5;
        boolean z;
        int iH = h(fdVar, i, i2, i3);
        int i6 = (this.bA != ln.h || fdVar.t.d) ? 1 : 2;
        if (iH > 0) {
            this.a = 0;
            i4 = 8;
            int iF = f(fdVar, i, i2, i3 + 1, f(fdVar, i, i2, i3 - 1, f(fdVar, i + 1, i2, i3, f(fdVar, i - 1, i2, i3, -100))));
            int iH2 = iF + i6;
            if (iH2 >= 8 || iF < 0) {
                iH2 = -1;
            }
            int i7 = i2 + 1;
            if (h(fdVar, i, i7, i3) >= 0 && (iH2 = h(fdVar, i, i7, i3)) < 8) {
                iH2 += 8;
            }
            if (this.a >= 2 && this.bA == ln.g) {
                int i8 = i2 - 1;
                if (fdVar.f(i, i8, i3).a() || (fdVar.f(i, i8, i3) == this.bA && fdVar.e(i, i2, i3) == 0)) {
                    iH2 = 0;
                }
            }
            if (this.bA != ln.h || iH >= 8 || iH2 >= 8 || iH2 <= iH || random.nextInt(4) == 0) {
                i5 = iH2;
                z = true;
            } else {
                i5 = iH;
                z = false;
            }
            if (i5 != iH) {
                if (i5 < 0) {
                    fdVar.f(i, i2, i3, 0);
                } else {
                    fdVar.d(i, i2, i3, i5);
                    fdVar.c(i, i2, i3, this.bn, e());
                    fdVar.i(i, i2, i3, this.bn);
                }
                iH = i5;
            } else if (z) {
                j(fdVar, i, i2, i3);
            }
        } else {
            i4 = 8;
            j(fdVar, i, i2, i3);
        }
        int i9 = iH;
        int i10 = i2 - 1;
        if (m(fdVar, i, i10, i3)) {
            if (i9 >= i4) {
                fdVar.b(i, i10, i3, this.bn, i9);
                return;
            } else {
                fdVar.b(i, i10, i3, this.bn, i9 + i4);
                return;
            }
        }
        if (i9 >= 0) {
            if (i9 == 0 || l(fdVar, i, i10, i3)) {
                boolean[] zArrK = k(fdVar, i, i2, i3);
                int i11 = i6 + i9;
                if (i9 >= i4) {
                    i11 = 1;
                }
                if (i11 >= i4) {
                    return;
                }
                if (zArrK[0]) {
                    h(fdVar, i - 1, i2, i3, i11);
                }
                if (zArrK[1]) {
                    h(fdVar, i + 1, i2, i3, i11);
                }
                if (zArrK[2]) {
                    h(fdVar, i, i2, i3 - 1, i11);
                }
                if (zArrK[3]) {
                    h(fdVar, i, i2, i3 + 1, i11);
                }
            }
        }
    }

    private void h(fd fdVar, int i, int i2, int i3, int i4) {
        if (m(fdVar, i, i2, i3)) {
            int iA = fdVar.a(i, i2, i3);
            if (iA > 0) {
                if (this.bA == ln.h) {
                    i(fdVar, i, i2, i3);
                } else {
                    uu.m[iA].g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
                }
            }
            fdVar.b(i, i2, i3, this.bn, i4);
        }
    }

    private int b(fd fdVar, int i, int i2, int i3, int i4, int i5) {
        int i6 = 1000;
        int i7 = 0;
        while (i7 < 4) {
            if ((i7 != 0 || i5 != 1) && ((i7 != 1 || i5 != 0) && ((i7 != 2 || i5 != 3) && (i7 != 3 || i5 != 2)))) {
                int i8 = i7 == 0 ? i - 1 : i;
                if (i7 == 1) {
                    i8++;
                }
                int i9 = i7 == 2 ? i3 - 1 : i3;
                if (i7 == 3) {
                    i9++;
                }
                int i10 = i9;
                if (!l(fdVar, i8, i2, i10) && (fdVar.f(i8, i2, i10) != this.bA || fdVar.e(i8, i2, i10) != 0)) {
                    if (!l(fdVar, i8, i2 - 1, i10)) {
                        return i4;
                    }
                    if (i4 < 4) {
                        int iB = b(fdVar, i8, i2, i10, i4 + 1, i7);
                        if (iB < i6) {
                            i6 = iB;
                        }
                    }
                }
            }
            i7++;
        }
        return i6;
    }

    private boolean[] k(fd fdVar, int i, int i2, int i3) {
        int i4 = 0;
        while (i4 < 4) {
            this.c[i4] = 1000;
            int i5 = i4 == 0 ? i - 1 : i;
            if (i4 == 1) {
                i5++;
            }
            int i6 = i5;
            int i7 = i4 == 2 ? i3 - 1 : i3;
            if (i4 == 3) {
                i7++;
            }
            int i8 = i7;
            if (!l(fdVar, i6, i2, i8) && (fdVar.f(i6, i2, i8) != this.bA || fdVar.e(i6, i2, i8) != 0)) {
                if (!l(fdVar, i6, i2 - 1, i8)) {
                    this.c[i4] = 0;
                } else {
                    this.c[i4] = b(fdVar, i6, i2, i8, 1, i4);
                }
            }
            i4++;
        }
        int i9 = this.c[0];
        for (int i10 = 1; i10 < 4; i10++) {
            int i11 = this.c[i10];
            if (i11 < i9) {
                i9 = i11;
            }
        }
        for (int i12 = 0; i12 < 4; i12++) {
            this.b[i12] = this.c[i12] == i9;
        }
        return this.b;
    }

    private boolean l(fd fdVar, int i, int i2, int i3) {
        int iA = fdVar.a(i, i2, i3);
        if (iA == uu.aF.bn || iA == uu.aM.bn || iA == uu.aE.bn || iA == uu.aG.bn || iA == uu.aY.bn) {
            return true;
        }
        return iA != 0 && uu.m[iA].bA.c();
    }

    protected int f(fd fdVar, int i, int i2, int i3, int i4) {
        int iH = h(fdVar, i, i2, i3);
        if (iH < 0) {
            return i4;
        }
        if (iH == 0) {
            this.a++;
        }
        if (iH >= 8) {
            iH = 0;
        }
        return (i4 < 0 || iH < i4) ? iH : i4;
    }

    private boolean m(fd fdVar, int i, int i2, int i3) {
        ln lnVarF = fdVar.f(i, i2, i3);
        if (lnVarF == this.bA || lnVarF == ln.h) {
            return false;
        }
        return !l(fdVar, i, i2, i3);
    }

    @Override // defpackage.rp, defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        super.c(fdVar, i, i2, i3);
        if (fdVar.a(i, i2, i3) == this.bn) {
            fdVar.c(i, i2, i3, this.bn, e());
        }
    }
}
