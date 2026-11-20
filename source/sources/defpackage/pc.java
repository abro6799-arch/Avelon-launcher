package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class pc extends uu {
    private final boolean a;

    @Override // defpackage.uu
    public int a(Random random) {
        return 1;
    }

    @Override // defpackage.uu
    public int b() {
        return 9;
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

    @Override // defpackage.uu
    public int h() {
        return 0;
    }

    public static final boolean h(fd fdVar, int i, int i2, int i3) {
        int iA = fdVar.a(i, i2, i3);
        return iA == uu.aH.bn || iA == uu.U.bn || iA == uu.V.bn;
    }

    public static final boolean d(int i) {
        return i == uu.aH.bn || i == uu.U.bn || i == uu.V.bn;
    }

    protected pc(int i, int i2, boolean z) {
        super(i, i2, ln.o);
        this.a = z;
        a(0.0f, 0.0f, 0.0f, 1.0f, 0.125f, 1.0f);
    }

    public boolean i() {
        return this.a;
    }

    @Override // defpackage.uu
    public vf a(fd fdVar, int i, int i2, int i3, bt btVar, bt btVar2) {
        a((xp) fdVar, i, i2, i3);
        return super.a(fdVar, i, i2, i3, btVar, btVar2);
    }

    @Override // defpackage.uu
    public void a(xp xpVar, int i, int i2, int i3) {
        int iE = xpVar.e(i, i2, i3);
        if (iE >= 2 && iE <= 5) {
            a(0.0f, 0.0f, 0.0f, 1.0f, 0.625f, 1.0f);
        } else {
            a(0.0f, 0.0f, 0.0f, 1.0f, 0.125f, 1.0f);
        }
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        int i3;
        if (this.a) {
            if (this.bn == uu.U.bn && (i2 & 8) == 0) {
                i3 = this.bm;
                return i3 - 16;
            }
            return this.bm;
        }
        if (i2 >= 6) {
            i3 = this.bm;
            return i3 - 16;
        }
        return this.bm;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        return fdVar.h(i, i2 - 1, i3);
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        if (fdVar.B) {
            return;
        }
        a(fdVar, i, i2, i3, true);
    }

    /* JADX WARN: Code duplicated, block: B:60:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:79:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        boolean z;
        if (fdVar.B) {
            return;
        }
        int iE = fdVar.e(i, i2, i3);
        int i5 = this.a ? iE & 7 : iE;
        int i6 = i2 - 1;
        boolean z2 = !fdVar.h(i, i6, i3);
        if (i5 == 2 && !fdVar.h(i + 1, i2, i3)) {
            z2 = true;
        }
        if (i5 == 3 && !fdVar.h(i - 1, i2, i3)) {
            z2 = true;
        }
        if (i5 == 4 && !fdVar.h(i, i2, i3 - 1)) {
            z2 = true;
        }
        if (i5 == 5 && !fdVar.h(i, i2, i3 + 1)) {
            z2 = true;
        }
        if (z2) {
            g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
            fdVar.f(i, i2, i3, 0);
            return;
        }
        if (this.bn == uu.U.bn) {
            boolean z3 = (fdVar.s(i, i2, i3) || fdVar.s(i, i2 + 1, i3)) || a(fdVar, i, i2, i3, iE, true, 0) || a(fdVar, i, i2, i3, iE, false, 0);
            if (!z3 || (iE & 8) != 0) {
                if (z3 || (iE & 8) == 0) {
                    z = false;
                } else {
                    fdVar.d(i, i2, i3, i5);
                }
                if (z) {
                    fdVar.i(i, i6, i3, this.bn);
                    if (i5 != 2 || i5 == 3 || i5 == 4 || i5 == 5) {
                        fdVar.i(i, i2 + 1, i3, this.bn);
                        return;
                    }
                    return;
                }
                return;
            }
            fdVar.d(i, i2, i3, i5 | 8);
            z = true;
            if (z) {
                fdVar.i(i, i6, i3, this.bn);
                if (i5 != 2) {
                }
                fdVar.i(i, i2 + 1, i3, this.bn);
                return;
            }
            return;
        }
        if (i4 <= 0 || !uu.m[i4].f() || this.a || new vo(this, fdVar, i, i2, i3).b() != 3) {
            return;
        }
        a(fdVar, i, i2, i3, false);
    }

    private void a(fd fdVar, int i, int i2, int i3, boolean z) {
        if (fdVar.B) {
            return;
        }
        new vo(this, fdVar, i, i2, i3).a(fdVar.s(i, i2, i3), z);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x008b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:47:0x008c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x008e  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a1 A[RETURN] */
    private boolean a(fd fdVar, int i, int i2, int i3, int i4, boolean z, int i5) {
        int i6;
        int i7;
        boolean z2;
        int i8;
        int i9;
        boolean z3;
        int i10;
        int i11;
        boolean z4;
        if (i5 >= 8) {
            return false;
        }
        int i12 = i4 & 7;
        if (i12 == 0) {
            i6 = i;
            i7 = z ? i3 + 1 : i3 - 1;
        } else {
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 3) {
                        if (i12 != 4) {
                            if (i12 != 5) {
                                i6 = i;
                                i7 = i3;
                            } else if (z) {
                                i10 = i3 + 1;
                                i11 = i2 + 1;
                                z4 = false;
                            } else {
                                i10 = i3 - 1;
                                i11 = i2;
                                z4 = true;
                            }
                        } else if (z) {
                            i10 = i3 + 1;
                            i11 = i2;
                            z4 = true;
                        } else {
                            i10 = i3 - 1;
                            i11 = i2 + 1;
                            z4 = false;
                        }
                        i6 = i;
                        i7 = i10;
                        i2 = i11;
                        z2 = z4;
                        i12 = 0;
                    } else if (z) {
                        i8 = i - 1;
                        i9 = i2 + 1;
                        z3 = false;
                        i7 = i3;
                        i6 = i8;
                        i2 = i9;
                        z2 = z3;
                        i12 = 1;
                    } else {
                        i8 = i + 1;
                        i9 = i2;
                        z3 = true;
                        i7 = i3;
                        i6 = i8;
                        i2 = i9;
                        z2 = z3;
                        i12 = 1;
                    }
                } else if (z) {
                    i8 = i - 1;
                    i9 = i2;
                    z3 = true;
                    i7 = i3;
                    i6 = i8;
                    i2 = i9;
                    z2 = z3;
                    i12 = 1;
                } else {
                    i8 = i + 1;
                    i9 = i2 + 1;
                    z3 = false;
                    i7 = i3;
                    i6 = i8;
                    i2 = i9;
                    z2 = z3;
                    i12 = 1;
                }
                if (a(fdVar, i6, i2, i7, z, i5, i12)) {
                    return true;
                }
                if (z2) {
                    if (a(fdVar, i6, i2 - 1, i7, z, i5, i12)) {
                        return true;
                    }
                }
                return false;
            }
            i7 = i3;
            i6 = z ? i - 1 : i + 1;
        }
        z2 = true;
        if (a(fdVar, i6, i2, i7, z, i5, i12)) {
            return true;
        }
        if (z2) {
            if (a(fdVar, i6, i2 - 1, i7, z, i5, i12)) {
                return true;
            }
        }
        return false;
    }

    private boolean a(fd fdVar, int i, int i2, int i3, boolean z, int i4, int i5) {
        if (fdVar.a(i, i2, i3) == uu.U.bn) {
            int iE = fdVar.e(i, i2, i3);
            int i6 = iE & 7;
            if (i5 == 1 && (i6 == 0 || i6 == 4 || i6 == 5)) {
                return false;
            }
            if ((i5 != 0 || (i6 != 1 && i6 != 2 && i6 != 3)) && (iE & 8) != 0) {
                if (fdVar.s(i, i2, i3) || fdVar.s(i, i2 + 1, i3)) {
                    return true;
                }
                return a(fdVar, i, i2, i3, iE, z, i4 + 1);
            }
        }
        return false;
    }
}
