package defpackage;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class ew implements xp {
    private int a;
    private int b;
    private lm[][] c;
    private fd d;

    public ew(fd fdVar, int i, int i2, int i3, int i4, int i5, int i6) {
        this.d = fdVar;
        int i7 = i >> 4;
        this.a = i7;
        int i8 = i3 >> 4;
        this.b = i8;
        int i9 = i4 >> 4;
        int i10 = i6 >> 4;
        this.c = (lm[][]) Array.newInstance((Class<?>) lm.class, (i9 - i7) + 1, (i10 - i8) + 1);
        for (int i11 = this.a; i11 <= i9; i11++) {
            for (int i12 = this.b; i12 <= i10; i12++) {
                this.c[i11 - this.a][i12 - this.b] = fdVar.c(i11, i12);
            }
        }
    }

    @Override // defpackage.xp
    public int a(int i, int i2, int i3) {
        lm lmVar;
        if (i2 < 0 || i2 >= 128) {
            return 0;
        }
        int i4 = (i >> 4) - this.a;
        int i5 = (i3 >> 4) - this.b;
        if (i4 >= 0) {
            lm[][] lmVarArr = this.c;
            if (i4 < lmVarArr.length && i5 >= 0) {
                lm[] lmVarArr2 = lmVarArr[i4];
                if (i5 < lmVarArr2.length && (lmVar = lmVarArr2[i5]) != null) {
                    return lmVar.a(i & 15, i2, i3 & 15);
                }
                return 0;
            }
        }
        return 0;
    }

    @Override // defpackage.xp
    public ow b(int i, int i2, int i3) {
        int i4 = (i >> 4) - this.a;
        return this.c[i4][(i3 >> 4) - this.b].d(i & 15, i2, i3 & 15);
    }

    @Override // defpackage.xp
    public float a(int i, int i2, int i3, int i4) {
        int iD = d(i, i2, i3);
        if (iD >= i4) {
            i4 = iD;
        }
        return this.d.t.f[i4];
    }

    @Override // defpackage.xp
    public float c(int i, int i2, int i3) {
        return this.d.t.f[d(i, i2, i3)];
    }

    public int d(int i, int i2, int i3) {
        return a(i, i2, i3, true);
    }

    public int a(int i, int i2, int i3, boolean z) {
        int iA;
        if (i < -32000000 || i3 < -32000000 || i >= 32000000 || i3 > 32000000) {
            return 15;
        }
        if (!z || ((iA = a(i, i2, i3)) != uu.al.bn && iA != uu.aB.bn && iA != uu.au.bn && iA != uu.aI.bn)) {
            if (i2 < 0) {
                return 0;
            }
            if (i2 >= 128) {
                int i4 = 15 - this.d.f;
                if (i4 < 0) {
                    return 0;
                }
                return i4;
            }
            return this.c[(i >> 4) - this.a][(i3 >> 4) - this.b].c(i & 15, i2, i3 & 15, this.d.f);
        }
        int iA2 = a(i, i2 + 1, i3, false);
        int iA3 = a(i + 1, i2, i3, false);
        int iA4 = a(i - 1, i2, i3, false);
        int iA5 = a(i, i2, i3 + 1, false);
        int iA6 = a(i, i2, i3 - 1, false);
        if (iA3 > iA2) {
            iA2 = iA3;
        }
        if (iA4 <= iA2) {
            iA4 = iA2;
        }
        if (iA5 <= iA4) {
            iA5 = iA4;
        }
        return iA6 > iA5 ? iA6 : iA5;
    }

    @Override // defpackage.xp
    public int e(int i, int i2, int i3) {
        if (i2 < 0 || i2 >= 128) {
            return 0;
        }
        int i4 = (i >> 4) - this.a;
        return this.c[i4][(i3 >> 4) - this.b].b(i & 15, i2, i3 & 15);
    }

    @Override // defpackage.xp
    public ln f(int i, int i2, int i3) {
        int iA = a(i, i2, i3);
        if (iA == 0) {
            return ln.a;
        }
        return uu.m[iA].bA;
    }

    @Override // defpackage.xp
    public xv a() {
        return this.d.a();
    }

    @Override // defpackage.xp
    public boolean g(int i, int i2, int i3) {
        uu uuVar = uu.m[a(i, i2, i3)];
        if (uuVar == null) {
            return false;
        }
        return uuVar.c();
    }

    @Override // defpackage.xp
    public boolean h(int i, int i2, int i3) {
        uu uuVar = uu.m[a(i, i2, i3)];
        return uuVar != null && uuVar.bA.c() && uuVar.d();
    }
}
