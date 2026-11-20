package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class sm extends uu {
    private boolean a;
    private Set b;

    @Override // defpackage.uu
    public int b() {
        return 5;
    }

    @Override // defpackage.uu
    public int b(xp xpVar, int i, int i2, int i3) {
        return 8388608;
    }

    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        return null;
    }

    public sm(int i, int i2) {
        super(i, i2, ln.o);
        this.a = true;
        this.b = new HashSet();
        a(0.0f, 0.0f, 0.0f, 1.0f, 0.0625f, 1.0f);
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        return this.bm;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        return fdVar.h(i, i2 - 1, i3);
    }

    private void h(fd fdVar, int i, int i2, int i3) {
        a(fdVar, i, i2, i3, i, i2, i3);
        ArrayList arrayList = new ArrayList(this.b);
        this.b.clear();
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            wf wfVar = (wf) arrayList.get(i4);
            fdVar.i(wfVar.a, wfVar.b, wfVar.c, this.bn);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0088  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a4  */
    /* JADX WARN: Multi-variable type inference failed */
    private void a(fd fdVar, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int i8;
        int i9;
        int iF;
        int iF2;
        boolean z;
        int iE = fdVar.e(i, i2, i3);
        this.a = false;
        boolean zS = fdVar.s(i, i2, i3);
        int i10 = 1;
        this.a = true;
        int i11 = 3;
        int i12 = 4;
        int i13 = 2;
        if (zS) {
            i8 = 15;
            z = 1;
        } else {
            int i14 = 0;
            int i15 = 0;
            while (i14 < i12) {
                int i16 = i14 == 0 ? i - 1 : i;
                if (i14 == i10) {
                    i16++;
                }
                int i17 = i14 == i13 ? i3 - 1 : i3;
                if (i14 == i11) {
                    i17++;
                }
                int i18 = i17;
                if (i16 == i4 && i2 == i5 && i18 == i6) {
                    i9 = i16;
                    iF = i15;
                } else {
                    i9 = i16;
                    iF = f(fdVar, i9, i2, i18, i15);
                }
                if (fdVar.h(i9, i2, i18)) {
                    int i19 = i2 + 1;
                    if (fdVar.h(i, i19, i3)) {
                        if (!fdVar.h(i9, i2, i18) || (i9 == i4 && i2 - 1 == i5 && i18 == i6)) {
                            i15 = iF;
                        } else {
                            iF2 = f(fdVar, i9, i2 - 1, i18, iF);
                            i15 = iF2;
                        }
                    } else if (i9 == i4 && i19 == i5 && i18 == i6) {
                        i15 = iF;
                    } else {
                        iF2 = f(fdVar, i9, i19, i18, iF);
                        i15 = iF2;
                    }
                } else {
                    if (fdVar.h(i9, i2, i18)) {
                    }
                    i15 = iF;
                }
                i14++;
                i10 = i10;
                i13 = 2;
                i12 = 4;
                i11 = 3;
            }
            i7 = i10;
            i8 = i15 > 0 ? i15 - 1 : 0;
        }
        if (iE != i8) {
            z = i7;
            z = i7;
            fdVar.o = z;
            fdVar.d(i, i2, i3, i8);
            fdVar.b(i, i2, i3, i, i2, i3);
            fdVar.o = false;
            int i20 = 0;
            while (i20 < 4) {
                int i21 = i2 - 1;
                int i22 = i20 == 0 ? i - 1 : i;
                if (i20 == z) {
                    i22++;
                }
                int i23 = i22;
                int i24 = i20 == 2 ? i3 - 1 : i3;
                if (i20 == 3) {
                    i24++;
                }
                int i25 = i24;
                if (fdVar.h(i23, i2, i25)) {
                    i21 += 2;
                }
                int i26 = i21;
                int iF3 = f(fdVar, i23, i2, i25, -1);
                int iE2 = fdVar.e(i, i2, i3);
                if (iE2 > 0) {
                    iE2--;
                }
                if (iF3 >= 0 && iF3 != iE2) {
                    a(fdVar, i23, i2, i25, i, i2, i3);
                }
                int iF4 = f(fdVar, i23, i26, i25, -1);
                int iE3 = fdVar.e(i, i2, i3);
                if (iE3 > 0) {
                    iE3--;
                }
                int i27 = iE3;
                if (iF4 >= 0 && iF4 != i27) {
                    a(fdVar, i23, i26, i25, i, i2, i3);
                }
                i20++;
                i8 = i27;
            }
            if (iE == 0 || i8 == 0) {
                this.b.add(new wf(i, i2, i3));
                this.b.add(new wf(i - 1, i2, i3));
                this.b.add(new wf(i + 1, i2, i3));
                this.b.add(new wf(i, i2 - 1, i3));
                this.b.add(new wf(i, i2 + 1, i3));
                this.b.add(new wf(i, i2, i3 - 1));
                this.b.add(new wf(i, i2, i3 + 1));
                return;
            }
        }
        z = i7;
        z = i7;
    }

    private void i(fd fdVar, int i, int i2, int i3) {
        if (fdVar.a(i, i2, i3) != this.bn) {
            return;
        }
        fdVar.i(i, i2, i3, this.bn);
        fdVar.i(i - 1, i2, i3, this.bn);
        fdVar.i(i + 1, i2, i3, this.bn);
        fdVar.i(i, i2, i3 - 1, this.bn);
        fdVar.i(i, i2, i3 + 1, this.bn);
        fdVar.i(i, i2 - 1, i3, this.bn);
        fdVar.i(i, i2 + 1, i3, this.bn);
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        super.c(fdVar, i, i2, i3);
        if (fdVar.B) {
            return;
        }
        h(fdVar, i, i2, i3);
        int i4 = i2 + 1;
        fdVar.i(i, i4, i3, this.bn);
        int i5 = i2 - 1;
        fdVar.i(i, i5, i3, this.bn);
        int i6 = i - 1;
        i(fdVar, i6, i2, i3);
        int i7 = i + 1;
        i(fdVar, i7, i2, i3);
        int i8 = i3 - 1;
        i(fdVar, i, i2, i8);
        int i9 = i3 + 1;
        i(fdVar, i, i2, i9);
        if (fdVar.h(i6, i2, i3)) {
            i(fdVar, i6, i4, i3);
        } else {
            i(fdVar, i6, i5, i3);
        }
        if (fdVar.h(i7, i2, i3)) {
            i(fdVar, i7, i4, i3);
        } else {
            i(fdVar, i7, i5, i3);
        }
        if (fdVar.h(i, i2, i8)) {
            i(fdVar, i, i4, i8);
        } else {
            i(fdVar, i, i5, i8);
        }
        if (fdVar.h(i, i2, i9)) {
            i(fdVar, i, i4, i9);
        } else {
            i(fdVar, i, i5, i9);
        }
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        super.b(fdVar, i, i2, i3);
        if (fdVar.B) {
            return;
        }
        int i4 = i2 + 1;
        fdVar.i(i, i4, i3, this.bn);
        int i5 = i2 - 1;
        fdVar.i(i, i5, i3, this.bn);
        h(fdVar, i, i2, i3);
        int i6 = i - 1;
        i(fdVar, i6, i2, i3);
        int i7 = i + 1;
        i(fdVar, i7, i2, i3);
        int i8 = i3 - 1;
        i(fdVar, i, i2, i8);
        int i9 = i3 + 1;
        i(fdVar, i, i2, i9);
        if (fdVar.h(i6, i2, i3)) {
            i(fdVar, i6, i4, i3);
        } else {
            i(fdVar, i6, i5, i3);
        }
        if (fdVar.h(i7, i2, i3)) {
            i(fdVar, i7, i4, i3);
        } else {
            i(fdVar, i7, i5, i3);
        }
        if (fdVar.h(i, i2, i8)) {
            i(fdVar, i, i4, i8);
        } else {
            i(fdVar, i, i5, i8);
        }
        if (fdVar.h(i, i2, i9)) {
            i(fdVar, i, i4, i9);
        } else {
            i(fdVar, i, i5, i9);
        }
    }

    private int f(fd fdVar, int i, int i2, int i3, int i4) {
        int iE;
        return (fdVar.a(i, i2, i3) == this.bn && (iE = fdVar.e(i, i2, i3)) > i4) ? iE : i4;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        if (fdVar.B) {
            return;
        }
        int iE = fdVar.e(i, i2, i3);
        if (!a(fdVar, i, i2, i3)) {
            g(fdVar, i, i2, i3, iE);
            fdVar.f(i, i2, i3, 0);
        } else {
            h(fdVar, i, i2, i3);
        }
        super.b(fdVar, i, i2, i3, i4);
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return gm.aA.bf;
    }

    @Override // defpackage.uu
    public boolean d(fd fdVar, int i, int i2, int i3, int i4) {
        if (this.a) {
            return c((xp) fdVar, i, i2, i3, i4);
        }
        return false;
    }

    @Override // defpackage.uu
    public boolean c(xp xpVar, int i, int i2, int i3, int i4) {
        int i5;
        if (!this.a || xpVar.e(i, i2, i3) == 0) {
            return false;
        }
        if (i4 == 1) {
            return true;
        }
        int i6 = i - 1;
        boolean z = e(xpVar, i6, i2, i3, 1) || (!xpVar.h(i6, i2, i3) && e(xpVar, i6, i2 + (-1), i3, -1));
        int i7 = i + 1;
        boolean z2 = e(xpVar, i7, i2, i3, 3) || (!xpVar.h(i7, i2, i3) && e(xpVar, i7, i2 + (-1), i3, -1));
        int i8 = i3 - 1;
        boolean z3 = e(xpVar, i, i2, i8, 2) || (!xpVar.h(i, i2, i8) && e(xpVar, i, i2 + (-1), i8, -1));
        int i9 = i3 + 1;
        boolean z4 = e(xpVar, i, i2, i9, 0) || (!xpVar.h(i, i2, i9) && e(xpVar, i, i2 + (-1), i9, -1));
        int i10 = i2 + 1;
        if (!xpVar.h(i, i10, i3)) {
            if (xpVar.h(i6, i2, i3) && e(xpVar, i6, i10, i3, -1)) {
                z = true;
            }
            if (xpVar.h(i7, i2, i3) && e(xpVar, i7, i10, i3, -1)) {
                z2 = true;
            }
            if (xpVar.h(i, i2, i8) && e(xpVar, i, i10, i8, -1)) {
                z3 = true;
            }
            if (xpVar.h(i, i2, i9) && e(xpVar, i, i10, i9, -1)) {
                z4 = true;
            }
        }
        if (z3 || z2 || z || z4) {
            i5 = 2;
        } else {
            i5 = 2;
            if (i4 >= 2 && i4 <= 5) {
                return true;
            }
        }
        if (i4 == i5 && z3 && !z && !z2) {
            return true;
        }
        if (i4 == 3 && z4 && !z && !z2) {
            return true;
        }
        if (i4 != 4 || !z || z3 || z4) {
            return i4 == 5 && z2 && !z3 && !z4;
        }
        return true;
    }

    @Override // defpackage.uu
    public boolean f() {
        return this.a;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, Random random) {
        int iE = fdVar.e(i, i2, i3);
        if (iE > 0) {
            double dNextFloat = ((double) i) + 0.5d + ((((double) random.nextFloat()) - 0.5d) * 0.2d);
            double d = i2 + 0.0625f;
            double dNextFloat2 = ((double) i3) + 0.5d + ((((double) random.nextFloat()) - 0.5d) * 0.2d);
            float f = iE / 15.0f;
            float f2 = (f * 0.6f) + 0.4f;
            if (iE == 0) {
                f2 = 0.0f;
            }
            float f3 = f * f;
            float f4 = (f3 * 0.7f) - 0.5f;
            float f5 = (f3 * 0.6f) - 0.7f;
            if (f4 < 0.0f) {
                f4 = 0.0f;
            }
            fdVar.a("reddust", dNextFloat, d, dNextFloat2, f2, f4, f5 >= 0.0f ? f5 : 0.0f);
        }
    }

    public static boolean e(xp xpVar, int i, int i2, int i3, int i4) {
        int iA = xpVar.a(i, i2, i3);
        if (iA == uu.aw.bn) {
            return true;
        }
        if (iA == 0) {
            return false;
        }
        if (uu.m[iA].f()) {
            return true;
        }
        if (iA == uu.bi.bn || iA == uu.bj.bn) {
            return i4 == jj.b[xpVar.e(i, i2, i3) & 3];
        }
        return false;
    }
}
