package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class jq extends uu {
    private boolean a;
    private boolean b;

    public static int d(int i) {
        return i & 7;
    }

    public static boolean e(int i) {
        return (i & 8) != 0;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        return false;
    }

    @Override // defpackage.uu
    public int b() {
        return 16;
    }

    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    public jq(int i, int i2, boolean z) {
        super(i, i2, ln.B);
        this.a = z;
        a(h);
        c(0.5f);
    }

    public int i() {
        return this.a ? 106 : 107;
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        int iD = d(i2);
        if (iD > 5) {
            return this.bm;
        }
        if (i != iD) {
            return i == wj.a[iD] ? 109 : 108;
        }
        if (e(i2) || this.bs > 0.0d || this.bt > 0.0d || this.bu > 0.0d || this.bv < 1.0d || this.bw < 1.0d || this.bx < 1.0d) {
            return 110;
        }
        return this.bm;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, ls lsVar) {
        fdVar.d(i, i2, i3, c(fdVar, i, i2, i3, (gs) lsVar));
        if (fdVar.B) {
            return;
        }
        h(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        if (fdVar.B || this.b) {
            return;
        }
        h(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        if (fdVar.B || fdVar.b(i, i2, i3) != null) {
            return;
        }
        h(fdVar, i, i2, i3);
    }

    private void h(fd fdVar, int i, int i2, int i3) {
        int iE = fdVar.e(i, i2, i3);
        int iD = d(iE);
        boolean zF = f(fdVar, i, i2, i3, iD);
        if (iE == 7) {
            return;
        }
        if (zF && !e(iE)) {
            if (h(fdVar, i, i2, i3, iD)) {
                fdVar.e(i, i2, i3, iD | 8);
                fdVar.d(i, i2, i3, 0, iD);
                return;
            }
            return;
        }
        if (zF || !e(iE)) {
            return;
        }
        fdVar.e(i, i2, i3, iD);
        fdVar.d(i, i2, i3, 1, iD);
    }

    private boolean f(fd fdVar, int i, int i2, int i3, int i4) {
        if (i4 != 0 && fdVar.k(i, i2 - 1, i3, 0)) {
            return true;
        }
        if (i4 != 1 && fdVar.k(i, i2 + 1, i3, 1)) {
            return true;
        }
        if (i4 != 2 && fdVar.k(i, i2, i3 - 1, 2)) {
            return true;
        }
        if (i4 != 3 && fdVar.k(i, i2, i3 + 1, 3)) {
            return true;
        }
        if (i4 != 5 && fdVar.k(i + 1, i2, i3, 5)) {
            return true;
        }
        if ((i4 != 4 && fdVar.k(i - 1, i2, i3, 4)) || fdVar.k(i, i2, i3, 0) || fdVar.k(i, i2 + 2, i3, 1)) {
            return true;
        }
        int i5 = i2 + 1;
        return fdVar.k(i, i5, i3 + (-1), 2) || fdVar.k(i, i5, i3 + 1, 3) || fdVar.k(i + (-1), i5, i3, 4) || fdVar.k(i + 1, i5, i3, 5);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00e3  */
    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, int i4, int i5) {
        boolean z;
        boolean z2;
        int iA;
        int iE;
        boolean z3;
        ow owVarB;
        int i6 = i;
        int i7 = i2;
        int i8 = i3;
        this.b = true;
        if (i4 != 0) {
            z = false;
            if (i4 == 1) {
                ow owVarB2 = fdVar.b(wj.b[i5] + i6, wj.c[i5] + i7, wj.d[i5] + i8);
                if (owVarB2 != null && (owVarB2 instanceof uk)) {
                    ((uk) owVarB2).l();
                }
                fdVar.a(i, i2, i3, uu.ad.bn, i5);
                fdVar.a(i6, i7, i8, ut.a(this.bn, i5, i5, false, true));
                if (this.a) {
                    int i9 = i6 + (wj.b[i5] * 2);
                    int i10 = i7 + (wj.c[i5] * 2);
                    int i11 = i8 + (wj.d[i5] * 2);
                    int iA2 = fdVar.a(i9, i10, i11);
                    int iE2 = fdVar.e(i9, i10, i11);
                    if (iA2 == uu.ad.bn && (owVarB = fdVar.b(i9, i10, i11)) != null && (owVarB instanceof uk)) {
                        uk ukVar = (uk) owVarB;
                        if (ukVar.d() == i5 && ukVar.b()) {
                            ukVar.l();
                            iA = ukVar.a();
                            iE = ukVar.e();
                            z3 = true;
                        } else {
                            iA = iA2;
                            iE = iE2;
                            z3 = false;
                        }
                    } else {
                        iA = iA2;
                        iE = iE2;
                        z3 = false;
                    }
                    if (!z3 && iA > 0 && a(iA, fdVar, i9, i10, i11, false) && (uu.m[iA].h() == 0 || iA == uu.aa.bn || iA == uu.W.bn)) {
                        this.b = false;
                        fdVar.f(i9, i10, i11, 0);
                        this.b = true;
                        i6 += wj.b[i5];
                        i7 += wj.c[i5];
                        i8 += wj.d[i5];
                        fdVar.a(i6, i7, i8, uu.ad.bn, iE);
                        fdVar.a(i6, i7, i8, ut.a(iA, iE, i5, false, false));
                    } else if (!z3) {
                        this.b = false;
                        fdVar.f(wj.b[i5] + i6, wj.c[i5] + i7, wj.d[i5] + i8, 0);
                        this.b = true;
                    }
                } else {
                    this.b = false;
                    fdVar.f(wj.b[i5] + i6, wj.c[i5] + i7, wj.d[i5] + i8, 0);
                    this.b = true;
                }
                z2 = false;
                fdVar.a(((double) i6) + 0.5d, ((double) i7) + 0.5d, 0.5d + ((double) i8), "tile.piston.in", 0.5f, (fdVar.r.nextFloat() * 0.15f) + 0.6f);
            } else {
                z2 = z;
            }
        } else if (i(fdVar, i, i2, i3, i5)) {
            fdVar.d(i6, i7, i8, i5 | 8);
            z = false;
            fdVar.a(((double) i6) + 0.5d, ((double) i7) + 0.5d, ((double) i8) + 0.5d, "tile.piston.out", 0.5f, (fdVar.r.nextFloat() * 0.25f) + 0.6f);
            z2 = z;
        } else {
            z2 = false;
        }
        this.b = z2;
    }

    @Override // defpackage.uu
    public void a(xp xpVar, int i, int i2, int i3) {
        int iE = xpVar.e(i, i2, i3);
        if (e(iE)) {
            int iD = d(iE);
            if (iD == 0) {
                a(0.0f, 0.25f, 0.0f, 1.0f, 1.0f, 1.0f);
                return;
            }
            if (iD == 1) {
                a(0.0f, 0.0f, 0.0f, 1.0f, 0.75f, 1.0f);
                return;
            }
            if (iD == 2) {
                a(0.0f, 0.0f, 0.25f, 1.0f, 1.0f, 1.0f);
                return;
            }
            if (iD == 3) {
                a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.75f);
                return;
            } else if (iD == 4) {
                a(0.25f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
                return;
            } else {
                if (iD != 5) {
                    return;
                }
                a(0.0f, 0.0f, 0.0f, 0.75f, 1.0f, 1.0f);
                return;
            }
        }
        a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
    }

    @Override // defpackage.uu
    public void g() {
        a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, eq eqVar, ArrayList arrayList) {
        a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
        super.a(fdVar, i, i2, i3, eqVar, arrayList);
    }

    private static int c(fd fdVar, int i, int i2, int i3, gs gsVar) {
        if (in.e(((float) gsVar.aM) - i) < 2.0f && in.e(((float) gsVar.aO) - i3) < 2.0f) {
            double d = (gsVar.aN + 1.82d) - ((double) gsVar.bf);
            double d2 = i2;
            if (d - d2 > 2.0d) {
                return 1;
            }
            if (d2 - d > 0.0d) {
                return 0;
            }
        }
        int iB = in.b(((double) ((gsVar.aS * 4.0f) / 360.0f)) + 0.5d) & 3;
        if (iB == 0) {
            return 2;
        }
        if (iB == 1) {
            return 5;
        }
        if (iB == 2) {
            return 3;
        }
        return iB == 3 ? 4 : 0;
    }

    private static boolean a(int i, fd fdVar, int i2, int i3, int i4, boolean z) {
        if (i == uu.aq.bn) {
            return false;
        }
        if (i == uu.aa.bn || i == uu.W.bn) {
            if (e(fdVar.e(i2, i3, i4))) {
                return false;
            }
        } else {
            if (uu.m[i].m() == -1.0f || uu.m[i].h() == 2) {
                return false;
            }
            if (!z && uu.m[i].h() == 1) {
                return false;
            }
        }
        return fdVar.b(i2, i3, i4) == null;
    }

    private static boolean h(fd fdVar, int i, int i2, int i3, int i4) {
        int i5 = i + wj.b[i4];
        int i6 = i2 + wj.c[i4];
        int i7 = i3 + wj.d[i4];
        for (int i8 = 0; i8 < 13; i8++) {
            if (i6 <= 0 || i6 >= 127) {
                return false;
            }
            int iA = fdVar.a(i5, i6, i7);
            if (iA == 0) {
                break;
            }
            if (!a(iA, fdVar, i5, i6, i7, true)) {
                return false;
            }
            if (uu.m[iA].h() == 1) {
                break;
            }
            if (i8 == 12) {
                return false;
            }
            i5 += wj.b[i4];
            i6 += wj.c[i4];
            i7 += wj.d[i4];
        }
        return true;
    }

    private boolean i(fd fdVar, int i, int i2, int i3, int i4) {
        int i5 = i;
        int i6 = wj.b[i4] + i5;
        int i7 = wj.c[i4] + i2;
        int i8 = wj.d[i4] + i3;
        int i9 = 0;
        while (i9 < 13) {
            if (i7 <= 0 || i7 >= 127) {
                return false;
            }
            int iA = fdVar.a(i6, i7, i8);
            if (iA == 0) {
                break;
            }
            int i10 = i9;
            if (!a(iA, fdVar, i6, i7, i8, true)) {
                return false;
            }
            if (uu.m[iA].h() == 1) {
                uu.m[iA].g(fdVar, i6, i7, i8, fdVar.e(i6, i7, i8));
                fdVar.f(i6, i7, i8, 0);
                break;
            }
            if (i10 == 12) {
                return false;
            }
            i6 += wj.b[i4];
            i7 += wj.c[i4];
            i8 += wj.d[i4];
            i9 = i10 + 1;
        }
        while (true) {
            if (i6 == i5 && i7 == i2 && i8 == i3) {
                return true;
            }
            int i11 = i6 - wj.b[i4];
            int i12 = i7 - wj.c[i4];
            int i13 = i8 - wj.d[i4];
            int iA2 = fdVar.a(i11, i12, i13);
            int iE = fdVar.e(i11, i12, i13);
            if (iA2 == this.bn && i11 == i5 && i12 == i2 && i13 == i3) {
                fdVar.a(i6, i7, i8, uu.ad.bn, i4 | (this.a ? 8 : 0));
                fdVar.a(i6, i7, i8, ut.a(uu.ab.bn, i4 | (this.a ? 8 : 0), i4, true, false));
            } else {
                fdVar.a(i6, i7, i8, uu.ad.bn, iE);
                fdVar.a(i6, i7, i8, ut.a(iA2, iE, i4, true, false));
            }
            i5 = i;
            i8 = i13;
            i7 = i12;
            i6 = i11;
        }
    }
}
