package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class tc extends rw {
    private static boolean c;
    private Random a;
    private final boolean b;

    protected tc(int i, boolean z) {
        super(i, ln.e);
        this.a = new Random();
        this.b = z;
        this.bm = 45;
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return uu.aC.bn;
    }

    @Override // defpackage.rw, defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        super.c(fdVar, i, i2, i3);
        h(fdVar, i, i2, i3);
    }

    private void h(fd fdVar, int i, int i2, int i3) {
        if (fdVar.B) {
            return;
        }
        int iA = fdVar.a(i, i2, i3 - 1);
        int iA2 = fdVar.a(i, i2, i3 + 1);
        int iA3 = fdVar.a(i - 1, i2, i3);
        int iA4 = fdVar.a(i + 1, i2, i3);
        if (uu.o[iA]) {
            boolean z = uu.o[iA2];
        }
        int i4 = (!uu.o[iA2] || uu.o[iA]) ? 3 : 2;
        if (uu.o[iA3] && !uu.o[iA4]) {
            i4 = 5;
        }
        if (uu.o[iA4] && !uu.o[iA3]) {
            i4 = 4;
        }
        fdVar.d(i, i2, i3, i4);
    }

    @Override // defpackage.uu
    public int a(xp xpVar, int i, int i2, int i3, int i4) {
        if (i4 == 1) {
            return this.bm + 17;
        }
        if (i4 == 0) {
            return this.bm + 17;
        }
        if (i4 != xpVar.e(i, i2, i3)) {
            return this.bm;
        }
        return this.b ? this.bm + 16 : this.bm - 1;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, Random random) {
        if (this.b) {
            int iE = fdVar.e(i, i2, i3);
            float f = i + 0.5f;
            float fNextFloat = i2 + 0.0f + ((random.nextFloat() * 6.0f) / 16.0f);
            float f2 = i3 + 0.5f;
            float fNextFloat2 = (random.nextFloat() * 0.6f) - 0.3f;
            if (iE == 4) {
                double d = f - 0.52f;
                double d2 = fNextFloat;
                double d3 = f2 + fNextFloat2;
                fdVar.a("smoke", d, d2, d3, 0.0d, 0.0d, 0.0d);
                fdVar.a("flame", d, d2, d3, 0.0d, 0.0d, 0.0d);
                return;
            }
            if (iE == 5) {
                double d4 = f + 0.52f;
                double d5 = fNextFloat;
                double d6 = f2 + fNextFloat2;
                fdVar.a("smoke", d4, d5, d6, 0.0d, 0.0d, 0.0d);
                fdVar.a("flame", d4, d5, d6, 0.0d, 0.0d, 0.0d);
                return;
            }
            if (iE == 2) {
                double d7 = f + fNextFloat2;
                double d8 = fNextFloat;
                double d9 = f2 - 0.52f;
                fdVar.a("smoke", d7, d8, d9, 0.0d, 0.0d, 0.0d);
                fdVar.a("flame", d7, d8, d9, 0.0d, 0.0d, 0.0d);
                return;
            }
            if (iE == 3) {
                double d10 = f + fNextFloat2;
                double d11 = fNextFloat;
                double d12 = f2 + 0.52f;
                fdVar.a("smoke", d10, d11, d12, 0.0d, 0.0d, 0.0d);
                fdVar.a("flame", d10, d11, d12, 0.0d, 0.0d, 0.0d);
            }
        }
    }

    @Override // defpackage.uu
    public int a(int i) {
        if (i == 1) {
            return this.bm + 17;
        }
        if (i == 0) {
            return this.bm + 17;
        }
        if (i == 3) {
            return this.bm - 1;
        }
        return this.bm;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        if (fdVar.B) {
            return true;
        }
        gsVar.a((sk) fdVar.b(i, i2, i3));
        return true;
    }

    public static void a(boolean z, fd fdVar, int i, int i2, int i3) {
        int iE = fdVar.e(i, i2, i3);
        ow owVarB = fdVar.b(i, i2, i3);
        c = true;
        if (z) {
            fdVar.f(i, i2, i3, uu.aD.bn);
        } else {
            fdVar.f(i, i2, i3, uu.aC.bn);
        }
        c = false;
        fdVar.d(i, i2, i3, iE);
        owVarB.j();
        fdVar.a(i, i2, i3, owVarB);
    }

    @Override // defpackage.rw
    protected ow a_() {
        return new sk();
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, ls lsVar) {
        int iB = in.b(((double) ((lsVar.aS * 4.0f) / 360.0f)) + 0.5d) & 3;
        if (iB == 0) {
            fdVar.d(i, i2, i3, 2);
        }
        if (iB == 1) {
            fdVar.d(i, i2, i3, 5);
        }
        if (iB == 2) {
            fdVar.d(i, i2, i3, 3);
        }
        if (iB == 3) {
            fdVar.d(i, i2, i3, 4);
        }
    }

    @Override // defpackage.rw, defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        if (!c) {
            sk skVar = (sk) fdVar.b(i, i2, i3);
            int i4 = 0;
            while (i4 < skVar.a()) {
                iz izVarF_ = skVar.f_(i4);
                if (izVarF_ != null) {
                    float fNextFloat = (this.a.nextFloat() * 0.8f) + 0.1f;
                    float fNextFloat2 = (this.a.nextFloat() * 0.8f) + 0.1f;
                    float fNextFloat3 = (this.a.nextFloat() * 0.8f) + 0.1f;
                    while (izVarF_.a > 0) {
                        int iNextInt = this.a.nextInt(21) + 10;
                        if (iNextInt > izVarF_.a) {
                            iNextInt = izVarF_.a;
                        }
                        izVarF_.a -= iNextInt;
                        hl hlVar = new hl(fdVar, i + fNextFloat, i2 + fNextFloat2, i3 + fNextFloat3, new iz(izVarF_.c, iNextInt, izVarF_.i()));
                        hlVar.aP = ((float) this.a.nextGaussian()) * 0.05f;
                        hlVar.aQ = (((float) this.a.nextGaussian()) * 0.05f) + 0.2f;
                        hlVar.aR = ((float) this.a.nextGaussian()) * 0.05f;
                        fdVar.b(hlVar);
                        skVar = skVar;
                        fNextFloat2 = fNextFloat2;
                        fNextFloat3 = fNextFloat3;
                        fNextFloat = fNextFloat;
                    }
                }
                i4++;
                skVar = skVar;
            }
        }
        super.b(fdVar, i, i2, i3);
    }
}
