package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public abstract class rp extends uu {
    public static float d(int i) {
        if (i >= 8) {
            i = 0;
        }
        return (i + 1) / 9.0f;
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return 0;
    }

    @Override // defpackage.uu
    public int a(Random random) {
        return 0;
    }

    @Override // defpackage.uu
    public boolean a(int i, boolean z) {
        return z && i == 0;
    }

    @Override // defpackage.uu
    public int b() {
        return 4;
    }

    @Override // defpackage.uu
    public int b(xp xpVar, int i, int i2, int i3) {
        return 16777215;
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

    protected rp(int i, ln lnVar) {
        super(i, ((lnVar == ln.h ? 14 : 12) * 16) + 13, lnVar);
        a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
        b(true);
    }

    @Override // defpackage.uu
    public int a(int i) {
        if (i == 0 || i == 1) {
            return this.bm;
        }
        return this.bm + 1;
    }

    protected int h(fd fdVar, int i, int i2, int i3) {
        if (fdVar.f(i, i2, i3) != this.bA) {
            return -1;
        }
        return fdVar.e(i, i2, i3);
    }

    protected int c(xp xpVar, int i, int i2, int i3) {
        if (xpVar.f(i, i2, i3) != this.bA) {
            return -1;
        }
        int iE = xpVar.e(i, i2, i3);
        if (iE >= 8) {
            return 0;
        }
        return iE;
    }

    @Override // defpackage.uu
    public boolean d(xp xpVar, int i, int i2, int i3, int i4) {
        ln lnVarF = xpVar.f(i, i2, i3);
        if (lnVarF == this.bA || lnVarF == ln.s) {
            return false;
        }
        if (i4 == 1) {
            return true;
        }
        return super.d(xpVar, i, i2, i3, i4);
    }

    @Override // defpackage.uu
    public boolean b(xp xpVar, int i, int i2, int i3, int i4) {
        ln lnVarF = xpVar.f(i, i2, i3);
        if (lnVarF == this.bA || lnVarF == ln.s) {
            return false;
        }
        if (i4 == 1) {
            return true;
        }
        return super.b(xpVar, i, i2, i3, i4);
    }

    private bt e(xp xpVar, int i, int i2, int i3) {
        boolean z;
        bt btVarC;
        int iC;
        bt btVarB = bt.b(0.0d, 0.0d, 0.0d);
        int iC2 = c(xpVar, i, i2, i3);
        bt btVarC2 = btVarB;
        int i4 = 0;
        while (true) {
            z = true;
            if (i4 >= 4) {
                break;
            }
            int i5 = i4 == 0 ? i - 1 : i;
            int i6 = i4 == 1 ? i3 - 1 : i3;
            if (i4 == 2) {
                i5++;
            }
            if (i4 == 3) {
                i6++;
            }
            int iC3 = c(xpVar, i5, i2, i6);
            if (iC3 < 0) {
                if (!xpVar.f(i5, i2, i6).c() && (iC = c(xpVar, i5, i2 - 1, i6)) >= 0) {
                    int i7 = iC - (iC2 - 8);
                    btVarC = btVarC2.c((i5 - i) * i7, (i2 - i2) * i7, (i6 - i3) * i7);
                    btVarC2 = btVarC;
                }
            } else if (iC3 >= 0) {
                int i8 = iC3 - iC2;
                btVarC = btVarC2.c((i5 - i) * i8, (i2 - i2) * i8, (i6 - i3) * i8);
                btVarC2 = btVarC;
            }
            i4++;
        }
        if (xpVar.e(i, i2, i3) >= 8) {
            boolean z2 = d(xpVar, i, i2, i3 + (-1), 2);
            if (z2 || d(xpVar, i, i2, i3 + 1, 3)) {
                z2 = true;
            }
            if (z2 || d(xpVar, i - 1, i2, i3, 4)) {
                z2 = true;
            }
            if (z2 || d(xpVar, i + 1, i2, i3, 5)) {
                z2 = true;
            }
            if (z2 || d(xpVar, i, i2 + 1, i3 - 1, 2)) {
                z2 = true;
            }
            if (z2 || d(xpVar, i, i2 + 1, i3 + 1, 3)) {
                z2 = true;
            }
            if (z2 || d(xpVar, i - 1, i2 + 1, i3, 4)) {
                z2 = true;
            }
            if (!z2 && !d(xpVar, i + 1, i2 + 1, i3, 5)) {
                z = z2;
            }
            if (z) {
                btVarC2 = btVarC2.c().c(0.0d, -6.0d, 0.0d);
            }
        }
        return btVarC2.c();
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, sn snVar, bt btVar) {
        bt btVarE = e((xp) fdVar, i, i2, i3);
        btVar.a += btVarE.a;
        btVar.b += btVarE.b;
        btVar.c += btVarE.c;
    }

    @Override // defpackage.uu
    public int e() {
        if (this.bA == ln.g) {
            return 5;
        }
        return this.bA == ln.h ? 30 : 0;
    }

    @Override // defpackage.uu
    public float d(xp xpVar, int i, int i2, int i3) {
        float fC = xpVar.c(i, i2, i3);
        float fC2 = xpVar.c(i, i2 + 1, i3);
        return fC > fC2 ? fC : fC2;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        super.a(fdVar, i, i2, i3, random);
    }

    @Override // defpackage.uu
    public int b_() {
        return this.bA == ln.g ? 1 : 0;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, Random random) {
        int iE;
        if (this.bA == ln.g && random.nextInt(64) == 0 && (iE = fdVar.e(i, i2, i3)) > 0 && iE < 8) {
            fdVar.a(i + 0.5f, i2 + 0.5f, i3 + 0.5f, "liquid.water", 0.75f + (random.nextFloat() * 0.25f), (random.nextFloat() * 1.0f) + 0.5f);
        }
        if (this.bA == ln.h) {
            int i4 = i2 + 1;
            if (fdVar.f(i, i4, i3) == ln.a && !fdVar.g(i, i4, i3) && random.nextInt(100) == 0) {
                fdVar.a("lava", i + random.nextFloat(), this.bw + ((double) i2), i3 + random.nextFloat(), 0.0d, 0.0d, 0.0d);
            }
        }
    }

    public static double a(xp xpVar, int i, int i2, int i3, ln lnVar) {
        bt btVarE = lnVar == ln.g ? ((rp) uu.B).e(xpVar, i, i2, i3) : null;
        if (lnVar == ln.h) {
            btVarE = ((rp) uu.D).e(xpVar, i, i2, i3);
        }
        if (btVarE.a == 0.0d && btVarE.c == 0.0d) {
            return -1000.0d;
        }
        return Math.atan2(btVarE.c, btVarE.a) - 1.5707963267948966d;
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        j(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        j(fdVar, i, i2, i3);
    }

    private void j(fd fdVar, int i, int i2, int i3) {
        if (fdVar.a(i, i2, i3) == this.bn && this.bA == ln.h) {
            boolean z = true;
            boolean z2 = fdVar.f(i, i2, i3 + (-1)) == ln.g;
            if (z2 || fdVar.f(i, i2, i3 + 1) == ln.g) {
                z2 = true;
            }
            if (z2 || fdVar.f(i - 1, i2, i3) == ln.g) {
                z2 = true;
            }
            if (z2 || fdVar.f(i + 1, i2, i3) == ln.g) {
                z2 = true;
            }
            if (!z2 && fdVar.f(i, i2 + 1, i3) != ln.g) {
                z = z2;
            }
            if (z) {
                int iE = fdVar.e(i, i2, i3);
                if (iE == 0) {
                    fdVar.f(i, i2, i3, uu.aq.bn);
                } else if (iE <= 4) {
                    fdVar.f(i, i2, i3, uu.x.bn);
                }
                i(fdVar, i, i2, i3);
            }
        }
    }

    protected void i(fd fdVar, int i, int i2, int i3) {
        int i4 = i2;
        int i5 = i3;
        fdVar.a(i + 0.5f, i4 + 0.5f, i5 + 0.5f, "random.fizz", 0.5f, ((fdVar.r.nextFloat() - fdVar.r.nextFloat()) * 0.8f) + 2.6f);
        int i6 = 0;
        while (i6 < 8) {
            fdVar.a("largesmoke", ((double) i) + Math.random(), ((double) i4) + 1.2d, ((double) i5) + Math.random(), 0.0d, 0.0d, 0.0d);
            i6++;
            i4 = i2;
            i5 = i3;
        }
    }
}
