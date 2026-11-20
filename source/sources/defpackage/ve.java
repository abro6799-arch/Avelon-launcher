package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ve extends uu {
    public static final int[][] a = {new int[]{0, 1}, new int[]{-1, 0}, new int[]{0, -1}, new int[]{1, 0}};

    public static int d(int i) {
        return i & 3;
    }

    public static boolean e(int i) {
        return (i & 8) != 0;
    }

    public static boolean f(int i) {
        return (i & 4) != 0;
    }

    @Override // defpackage.uu
    public int b() {
        return 14;
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
    public int h() {
        return 1;
    }

    public ve(int i) {
        super(i, 134, ln.l);
        r();
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        int i4;
        int iE;
        int i5;
        if (fdVar.B) {
            return true;
        }
        int iE2 = fdVar.e(i, i2, i3);
        if (e(iE2)) {
            i4 = i;
            iE = iE2;
            i5 = i3;
        } else {
            int[] iArr = a[d(iE2)];
            i4 = i + iArr[0];
            i5 = i3 + iArr[1];
            if (fdVar.a(i4, i2, i5) != this.bn) {
                return true;
            }
            iE = fdVar.e(i4, i2, i5);
        }
        if (!fdVar.t.f()) {
            fdVar.f(i4, i2, i5, 0);
            int[] iArr2 = a[d(iE)];
            int i6 = i4 + iArr2[0];
            int i7 = i5 + iArr2[1];
            if (fdVar.a(i6, i2, i7) == this.bn) {
                fdVar.f(i6, i2, i7, 0);
            }
            fdVar.a((sn) null, i6 + 0.5f, i2 + 0.5f, i7 + 0.5f, 5.0f, true);
            return true;
        }
        if (f(iE)) {
            gs gsVar2 = null;
            for (gs gsVar3 : fdVar.d) {
                if (gsVar3.N()) {
                    br brVar = gsVar3.v;
                    if (brVar.a == i4 && brVar.b == i2 && brVar.c == i5) {
                        gsVar2 = gsVar3;
                    }
                }
            }
            if (gsVar2 == null) {
                a(fdVar, i4, i2, i5, false);
            } else {
                gsVar.b("tile.bed.occupied");
                return true;
            }
        }
        cw cwVarB = gsVar.b(i4, i2, i5);
        if (cwVarB == cw.OK) {
            a(fdVar, i4, i2, i5, true);
            return true;
        }
        if (cwVarB == cw.NOT_POSSIBLE_NOW) {
            gsVar.b("tile.bed.noSleep");
        }
        return true;
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        if (i == 0) {
            return uu.y.bm;
        }
        int i3 = jj.c[d(i2)][i];
        if (e(i2)) {
            if (i3 == 2) {
                return this.bm + 2 + 16;
            }
            if (i3 == 5 || i3 == 4) {
                return this.bm + 1 + 16;
            }
            return this.bm + 1;
        }
        if (i3 == 3) {
            return (this.bm - 1) + 16;
        }
        if (i3 == 5 || i3 == 4) {
            return this.bm + 16;
        }
        return this.bm;
    }

    @Override // defpackage.uu
    public void a(xp xpVar, int i, int i2, int i3) {
        r();
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        int iE = fdVar.e(i, i2, i3);
        int iD = d(iE);
        if (e(iE)) {
            int[] iArr = a[iD];
            if (fdVar.a(i - iArr[0], i2, i3 - iArr[1]) != this.bn) {
                fdVar.f(i, i2, i3, 0);
                return;
            }
            return;
        }
        int[] iArr2 = a[iD];
        if (fdVar.a(iArr2[0] + i, i2, iArr2[1] + i3) != this.bn) {
            fdVar.f(i, i2, i3, 0);
            if (fdVar.B) {
                return;
            }
            g(fdVar, i, i2, i3, iE);
        }
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        if (e(i)) {
            return 0;
        }
        return gm.aY.bf;
    }

    private void r() {
        a(0.0f, 0.0f, 0.0f, 1.0f, 0.5625f, 1.0f);
    }

    public static void a(fd fdVar, int i, int i2, int i3, boolean z) {
        int iE = fdVar.e(i, i2, i3);
        fdVar.d(i, i2, i3, z ? iE | 4 : iE & (-5));
    }

    public static br f(fd fdVar, int i, int i2, int i3, int i4) {
        int iD = d(fdVar.e(i, i2, i3));
        for (int i5 = 0; i5 <= 1; i5++) {
            int[] iArr = a[iD];
            int i6 = (i - (iArr[0] * i5)) - 1;
            int i7 = (i3 - (iArr[1] * i5)) - 1;
            int i8 = i6 + 2;
            int i9 = i7 + 2;
            while (i6 <= i8) {
                for (int i10 = i7; i10 <= i9; i10++) {
                    if (fdVar.h(i6, i2 - 1, i10) && fdVar.d(i6, i2, i10) && fdVar.d(i6, i2 + 1, i10)) {
                        if (i4 <= 0) {
                            return new br(i6, i2, i10);
                        }
                        i4--;
                    }
                }
                i6++;
            }
        }
        return null;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, int i4, float f) {
        if (e(i4)) {
            return;
        }
        super.a(fdVar, i, i2, i3, i4, f);
    }
}
