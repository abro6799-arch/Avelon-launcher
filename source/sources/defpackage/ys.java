package defpackage;

import java.util.Random;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class ys extends uu {
    public static final String[] a = {"stone", "sand", "wood", "cobble"};
    private boolean b;

    @Override // defpackage.uu
    public int a(int i, int i2) {
        if (i2 == 0) {
            return i <= 1 ? 6 : 5;
        }
        if (i2 == 1) {
            if (i == 0) {
                return Keyboard.KEY_DOWN;
            }
            return i == 1 ? 176 : 192;
        }
        if (i2 == 2) {
            return 4;
        }
        return i2 == 3 ? 16 : 6;
    }

    @Override // defpackage.uu
    protected int b_(int i) {
        return i;
    }

    public ys(int i, boolean z) {
        super(i, 6, ln.e);
        this.b = z;
        if (!z) {
            a(0.0f, 0.0f, 0.0f, 1.0f, 0.5f, 1.0f);
        }
        g(255);
    }

    @Override // defpackage.uu
    public int a(int i) {
        return a(i, 0);
    }

    @Override // defpackage.uu
    public boolean c() {
        return this.b;
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        if (this != uu.al) {
            super.c(fdVar, i, i2, i3);
        }
        int i4 = i2 - 1;
        int iA = fdVar.a(i, i4, i3);
        int iE = fdVar.e(i, i2, i3);
        if (iE == fdVar.e(i, i4, i3) && iA == al.bn) {
            fdVar.f(i, i2, i3, 0);
            fdVar.b(i, i4, i3, uu.ak.bn, iE);
        }
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return uu.al.bn;
    }

    @Override // defpackage.uu
    public int a(Random random) {
        return this.b ? 2 : 1;
    }

    @Override // defpackage.uu
    public boolean d() {
        return this.b;
    }

    @Override // defpackage.uu
    public boolean b(xp xpVar, int i, int i2, int i3, int i4) {
        if (this != uu.al) {
            super.b(xpVar, i, i2, i3, i4);
        }
        if (i4 == 1) {
            return true;
        }
        if (super.b(xpVar, i, i2, i3, i4)) {
            return i4 == 0 || xpVar.a(i, i2, i3) != this.bn;
        }
        return false;
    }
}
