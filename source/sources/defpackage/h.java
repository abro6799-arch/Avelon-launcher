package defpackage;

import java.util.ArrayList;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class h extends uu {
    private int a;

    public static int c(int i) {
        return i & 7;
    }

    @Override // defpackage.uu
    public int a(Random random) {
        return 0;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        return false;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, int i4) {
        return false;
    }

    @Override // defpackage.uu
    public int b() {
        return 17;
    }

    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    public h(int i, int i2) {
        super(i, i2, ln.B);
        this.a = -1;
        a(h);
        c(0.5f);
    }

    public void a_(int i) {
        this.a = i;
    }

    public void a() {
        this.a = -1;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        super.b(fdVar, i, i2, i3);
        int i4 = wj.a[c(fdVar.e(i, i2, i3))];
        int i5 = i + wj.b[i4];
        int i6 = i2 + wj.c[i4];
        int i7 = i3 + wj.d[i4];
        int iA = fdVar.a(i5, i6, i7);
        if (iA == uu.aa.bn || iA == uu.W.bn) {
            int iE = fdVar.e(i5, i6, i7);
            if (jq.e(iE)) {
                uu.m[iA].g(fdVar, i5, i6, i7, iE);
                fdVar.f(i5, i6, i7, 0);
            }
        }
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        int iC = c(i2);
        if (i != iC) {
            return i == wj.a[iC] ? 107 : 108;
        }
        int i3 = this.a;
        if (i3 >= 0) {
            return i3;
        }
        if ((i2 & 8) != 0) {
            return this.bm - 1;
        }
        return this.bm;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, eq eqVar, ArrayList arrayList) {
        int iC = c(fdVar.e(i, i2, i3));
        if (iC == 0) {
            a(0.0f, 0.0f, 0.0f, 1.0f, 0.25f, 1.0f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
            a(0.375f, 0.25f, 0.375f, 0.625f, 1.0f, 0.625f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
        } else if (iC == 1) {
            a(0.0f, 0.75f, 0.0f, 1.0f, 1.0f, 1.0f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
            a(0.375f, 0.0f, 0.375f, 0.625f, 0.75f, 0.625f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
        } else if (iC == 2) {
            a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.25f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
            a(0.25f, 0.375f, 0.25f, 0.75f, 0.625f, 1.0f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
        } else if (iC == 3) {
            a(0.0f, 0.0f, 0.75f, 1.0f, 1.0f, 1.0f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
            a(0.25f, 0.375f, 0.0f, 0.75f, 0.625f, 0.75f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
        } else if (iC == 4) {
            a(0.0f, 0.0f, 0.0f, 0.25f, 1.0f, 1.0f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
            a(0.375f, 0.25f, 0.25f, 0.625f, 0.75f, 1.0f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
        } else if (iC == 5) {
            a(0.75f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
            a(0.0f, 0.375f, 0.25f, 0.75f, 0.625f, 0.75f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
        }
        a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
    }

    @Override // defpackage.uu
    public void a(xp xpVar, int i, int i2, int i3) {
        int iC = c(xpVar.e(i, i2, i3));
        if (iC == 0) {
            a(0.0f, 0.0f, 0.0f, 1.0f, 0.25f, 1.0f);
            return;
        }
        if (iC == 1) {
            a(0.0f, 0.75f, 0.0f, 1.0f, 1.0f, 1.0f);
            return;
        }
        if (iC == 2) {
            a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.25f);
            return;
        }
        if (iC == 3) {
            a(0.0f, 0.0f, 0.75f, 1.0f, 1.0f, 1.0f);
        } else if (iC == 4) {
            a(0.0f, 0.0f, 0.0f, 0.25f, 1.0f, 1.0f);
        } else {
            if (iC != 5) {
                return;
            }
            a(0.75f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
        }
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        int iC = c(fdVar.e(i, i2, i3));
        int iA = fdVar.a(i - wj.b[iC], i2 - wj.c[iC], i3 - wj.d[iC]);
        if (iA != uu.aa.bn && iA != uu.W.bn) {
            fdVar.f(i, i2, i3, 0);
        } else {
            uu.m[iA].b(fdVar, i - wj.b[iC], i2 - wj.c[iC], i3 - wj.d[iC], i4);
        }
    }
}
