package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ri extends uu {
    @Override // defpackage.uu
    public int b() {
        return 1;
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

    protected ri(int i, int i2) {
        super(i, ln.j);
        this.bm = i2;
        a(0.125f, 0.0f, 0.125f, 0.875f, 1.0f, 0.875f);
        b(true);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        int i4 = i2 + 1;
        if (fdVar.d(i, i4, i3)) {
            int i5 = 1;
            while (fdVar.a(i, i2 - i5, i3) == this.bn) {
                i5++;
            }
            if (i5 < 3) {
                int iE = fdVar.e(i, i2, i3);
                if (iE == 15) {
                    fdVar.f(i, i4, i3, this.bn);
                    fdVar.d(i, i2, i3, 0);
                } else {
                    fdVar.d(i, i2, i3, iE + 1);
                }
            }
        }
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        int i4 = i2 - 1;
        int iA = fdVar.a(i, i4, i3);
        if (iA == this.bn) {
            return true;
        }
        if (iA == uu.v.bn || iA == uu.w.bn) {
            return fdVar.f(i + (-1), i4, i3) == ln.g || fdVar.f(i + 1, i4, i3) == ln.g || fdVar.f(i, i4, i3 + (-1)) == ln.g || fdVar.f(i, i4, i3 + 1) == ln.g;
        }
        return false;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        h(fdVar, i, i2, i3);
    }

    protected final void h(fd fdVar, int i, int i2, int i3) {
        if (g(fdVar, i, i2, i3)) {
            return;
        }
        g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
        fdVar.f(i, i2, i3, 0);
    }

    @Override // defpackage.uu
    public boolean g(fd fdVar, int i, int i2, int i3) {
        return a(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return gm.aH.bf;
    }
}
