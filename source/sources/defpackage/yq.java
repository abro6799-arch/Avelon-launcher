package defpackage;

import java.util.Random;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class yq extends uu {
    private int[] a;
    private int[] b;

    @Override // defpackage.uu
    public int a(Random random) {
        return 0;
    }

    @Override // defpackage.uu
    public int b() {
        return 3;
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
    public int e() {
        return 40;
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        return null;
    }

    @Override // defpackage.uu
    public boolean v_() {
        return false;
    }

    protected yq(int i, int i2) {
        super(i, i2, ln.m);
        this.a = new int[Keyboard.KEYBOARD_SIZE];
        this.b = new int[Keyboard.KEYBOARD_SIZE];
        b(true);
    }

    @Override // defpackage.uu
    public void k() {
        a(uu.y.bn, 5, 20);
        a(uu.ba.bn, 5, 20);
        a(uu.au.bn, 5, 20);
        a(uu.K.bn, 5, 5);
        a(uu.L.bn, 30, 60);
        a(uu.ao.bn, 30, 20);
        a(uu.an.bn, 15, 100);
        a(uu.Y.bn, 60, 100);
        a(uu.ac.bn, 30, 60);
    }

    private void a(int i, int i2, int i3) {
        this.a[i] = i2;
        this.b[i] = i3;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        int i4;
        int i5;
        int i6 = i2 - 1;
        boolean z = fdVar.a(i, i6, i3) == uu.bc.bn;
        if (!a(fdVar, i, i2, i3)) {
            fdVar.f(i, i2, i3, 0);
        }
        if (!z && fdVar.C() && (fdVar.t(i, i2, i3) || fdVar.t(i - 1, i2, i3) || fdVar.t(i + 1, i2, i3) || fdVar.t(i, i2, i3 - 1) || fdVar.t(i, i2, i3 + 1))) {
            fdVar.f(i, i2, i3, 0);
            return;
        }
        int iE = fdVar.e(i, i2, i3);
        if (iE < 15) {
            fdVar.e(i, i2, i3, (random.nextInt(3) / 2) + iE);
        }
        fdVar.c(i, i2, i3, this.bn, e());
        if (!z && !h(fdVar, i, i2, i3)) {
            if (!fdVar.h(i, i6, i3) || iE > 3) {
                fdVar.f(i, i2, i3, 0);
                return;
            }
            return;
        }
        if (!z && !c((xp) fdVar, i, i6, i3)) {
            if (iE == 15 && random.nextInt(4) == 0) {
                fdVar.f(i, i2, i3, 0);
                return;
            }
        }
        int i7 = i + 1;
        int i8 = i7;
        a(fdVar, i7, i2, i3, 300, random, iE);
        int i9 = i - 1;
        a(fdVar, i9, i2, i3, 300, random, iE);
        a(fdVar, i, i6, i3, 250, random, iE);
        int i10 = i2 + 1;
        a(fdVar, i, i10, i3, 250, random, iE);
        int i11 = i3 - 1;
        a(fdVar, i, i2, i11, 300, random, iE);
        int i12 = i3 + 1;
        int i13 = i12;
        a(fdVar, i, i2, i12, 300, random, iE);
        int i14 = i9;
        while (i14 <= i8) {
            int i15 = i11;
            while (i15 <= i13) {
                int i16 = i6;
                while (i16 <= i2 + 4) {
                    if (i14 == i && i16 == i2 && i15 == i3) {
                        i4 = i13;
                    } else {
                        int i17 = i16 > i10 ? 100 + ((i16 - i10) * 100) : 100;
                        i4 = i13;
                        int i18 = i(fdVar, i14, i16, i15);
                        if (i18 > 0 && (i5 = (i18 + 40) / (iE + 30)) > 0) {
                            i8 = i8;
                            if (random.nextInt(i17) > i5 || ((fdVar.C() && fdVar.t(i14, i16, i15)) || fdVar.t(i14 - 1, i16, i3) || fdVar.t(i14 + 1, i16, i15) || fdVar.t(i14, i16, i15 - 1) || fdVar.t(i14, i16, i15 + 1))) {
                                i16 = i16;
                            } else {
                                int iNextInt = (random.nextInt(5) / 4) + iE;
                                i16 = i16;
                                fdVar.b(i14, i16, i15, this.bn, iNextInt > 15 ? 15 : iNextInt);
                            }
                        }
                        i16++;
                        i13 = i4;
                        i8 = i8;
                    }
                    i16++;
                    i13 = i4;
                    i8 = i8;
                }
                i15++;
                i13 = i13;
                i8 = i8;
            }
            i14++;
            i13 = i13;
            i8 = i8;
        }
    }

    private void a(fd fdVar, int i, int i2, int i3, int i4, Random random, int i5) {
        if (random.nextInt(i4) < this.b[fdVar.a(i, i2, i3)]) {
            boolean z = fdVar.a(i, i2, i3) == uu.an.bn;
            if (random.nextInt(i5 + 10) < 5 && !fdVar.t(i, i2, i3)) {
                int iNextInt = i5 + (random.nextInt(5) / 4);
                fdVar.b(i, i2, i3, this.bn, iNextInt > 15 ? 15 : iNextInt);
            } else {
                fdVar.f(i, i2, i3, 0);
            }
            if (z) {
                uu.an.c(fdVar, i, i2, i3, 1);
            }
        }
    }

    private boolean h(fd fdVar, int i, int i2, int i3) {
        return c((xp) fdVar, i + 1, i2, i3) || c((xp) fdVar, i + (-1), i2, i3) || c((xp) fdVar, i, i2 + (-1), i3) || c((xp) fdVar, i, i2 + 1, i3) || c((xp) fdVar, i, i2, i3 + (-1)) || c((xp) fdVar, i, i2, i3 + 1);
    }

    private int i(fd fdVar, int i, int i2, int i3) {
        if (!fdVar.d(i, i2, i3)) {
            return 0;
        }
        return f(fdVar, i, i2, i3 + 1, f(fdVar, i, i2, i3 - 1, f(fdVar, i, i2 + 1, i3, f(fdVar, i, i2 - 1, i3, f(fdVar, i - 1, i2, i3, f(fdVar, i + 1, i2, i3, 0))))));
    }

    public boolean c(xp xpVar, int i, int i2, int i3) {
        return this.a[xpVar.a(i, i2, i3)] > 0;
    }

    public int f(fd fdVar, int i, int i2, int i3, int i4) {
        int i5 = this.a[fdVar.a(i, i2, i3)];
        return i5 > i4 ? i5 : i4;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        return fdVar.h(i, i2 + (-1), i3) || h(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        if (fdVar.h(i, i2 - 1, i3) || h(fdVar, i, i2, i3)) {
            return;
        }
        fdVar.f(i, i2, i3, 0);
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        int i4 = i2 - 1;
        if (fdVar.a(i, i4, i3) == uu.aq.bn && uu.bf.a_(fdVar, i, i2, i3)) {
            return;
        }
        if (!fdVar.h(i, i4, i3) && !h(fdVar, i, i2, i3)) {
            fdVar.f(i, i2, i3, 0);
        } else {
            fdVar.c(i, i2, i3, this.bn, e());
        }
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, Random random) {
        int i4 = i2;
        int i5 = i3;
        if (random.nextInt(24) == 0) {
            fdVar.a(i + 0.5f, i4 + 0.5f, i5 + 0.5f, "fire.fire", random.nextFloat() + 1.0f, 0.3f + (random.nextFloat() * 0.7f));
        }
        int i6 = i4 - 1;
        if (fdVar.h(i, i6, i5) || uu.as.c((xp) fdVar, i, i6, i5)) {
            int i7 = 0;
            while (i7 < 3) {
                fdVar.a("largesmoke", i + random.nextFloat(), i4 + (random.nextFloat() * 0.5f) + 0.5f, i5 + random.nextFloat(), 0.0d, 0.0d, 0.0d);
                i7++;
                i4 = i2;
            }
            return;
        }
        if (uu.as.c((xp) fdVar, i - 1, i4, i5)) {
            int i8 = 0;
            for (int i9 = 2; i8 < i9; i9 = 2) {
                fdVar.a("largesmoke", i + (random.nextFloat() * 0.1f), i4 + random.nextFloat(), i5 + random.nextFloat(), 0.0d, 0.0d, 0.0d);
                i8++;
                i4 = i2;
                i5 = i3;
            }
        }
        int i10 = i + 1;
        int i11 = i2;
        int i12 = i3;
        if (uu.as.c((xp) fdVar, i10, i11, i12)) {
            int i13 = 0;
            while (i13 < 2) {
                fdVar.a("largesmoke", i10 - (random.nextFloat() * 0.1f), i11 + random.nextFloat(), i12 + random.nextFloat(), 0.0d, 0.0d, 0.0d);
                i13++;
                i11 = i2;
                i12 = i3;
                i10 = i10;
            }
        }
        int i14 = i3;
        int i15 = i2;
        if (uu.as.c((xp) fdVar, i, i15, i14 - 1)) {
            int i16 = 0;
            for (int i17 = 2; i16 < i17; i17 = 2) {
                fdVar.a("largesmoke", i + random.nextFloat(), i15 + random.nextFloat(), i14 + (random.nextFloat() * 0.1f), 0.0d, 0.0d, 0.0d);
                i16++;
                i15 = i2;
                i14 = i14;
            }
        }
        int i18 = i14 + 1;
        int i19 = i2;
        if (uu.as.c((xp) fdVar, i, i19, i18)) {
            int i20 = 0;
            for (int i21 = 2; i20 < i21; i21 = 2) {
                fdVar.a("largesmoke", i + random.nextFloat(), i19 + random.nextFloat(), i18 - (random.nextFloat() * 0.1f), 0.0d, 0.0d, 0.0d);
                i20++;
                i19 = i19;
                i18 = i18;
            }
        }
        int i22 = i19 + 1;
        int i23 = i3;
        if (uu.as.c((xp) fdVar, i, i22, i23)) {
            int i24 = 0;
            int i25 = 2;
            while (i24 < i25) {
                fdVar.a("largesmoke", i + random.nextFloat(), i22 - (random.nextFloat() * 0.1f), i23 + random.nextFloat(), 0.0d, 0.0d, 0.0d);
                i24++;
                i23 = i23;
                i25 = i25;
                i22 = i22;
            }
        }
    }
}
