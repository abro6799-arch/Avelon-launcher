package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class bc extends gm {
    private int a;

    public bc(int i, int i2) {
        super(i);
        this.bg = 1;
        this.a = i2;
    }

    @Override // defpackage.gm
    public iz a(iz izVar, fd fdVar, gs gsVar) {
        float f = gsVar.aV + ((gsVar.aT - gsVar.aV) * 1.0f);
        float f2 = gsVar.aU + ((gsVar.aS - gsVar.aU) * 1.0f);
        double d = 1.0f;
        double d2 = gsVar.aJ + ((gsVar.aM - gsVar.aJ) * d);
        double d3 = ((gsVar.aK + ((gsVar.aN - gsVar.aK) * d)) + 1.62d) - ((double) gsVar.bf);
        double d4 = gsVar.aL + ((gsVar.aO - gsVar.aL) * d);
        bt btVarB = bt.b(d2, d3, d4);
        float f3 = ((-f2) * 0.017453292f) - 3.1415927f;
        float fB = in.b(f3);
        float fA = in.a(f3);
        float f4 = (-f) * 0.017453292f;
        float f5 = -in.b(f4);
        int i = 0;
        vf vfVarA = fdVar.a(btVarB, btVarB.c(((double) (fA * f5)) * 5.0d, ((double) in.a(f4)) * 5.0d, ((double) (fB * f5)) * 5.0d), this.a == 0);
        if (vfVarA == null) {
            return izVar;
        }
        if (vfVarA.a == jg.TILE) {
            int i2 = vfVarA.b;
            int i3 = vfVarA.c;
            int i4 = vfVarA.d;
            if (!fdVar.a(gsVar, i2, i3, i4)) {
                return izVar;
            }
            int i5 = this.a;
            if (i5 == 0) {
                if (fdVar.f(i2, i3, i4) == ln.g && fdVar.e(i2, i3, i4) == 0) {
                    fdVar.f(i2, i3, i4, 0);
                    return new iz(gm.av);
                }
                if (fdVar.f(i2, i3, i4) == ln.h && fdVar.e(i2, i3, i4) == 0) {
                    fdVar.f(i2, i3, i4, 0);
                    return new iz(gm.aw);
                }
            } else {
                if (i5 < 0) {
                    return new iz(gm.au);
                }
                if (vfVarA.e == 0) {
                    i3--;
                }
                if (vfVarA.e == 1) {
                    i3++;
                }
                int i6 = i3;
                if (vfVarA.e == 2) {
                    i4--;
                }
                if (vfVarA.e == 3) {
                    i4++;
                }
                if (vfVarA.e == 4) {
                    i2--;
                }
                if (vfVarA.e == 5) {
                    i2++;
                }
                int i7 = i2;
                if (fdVar.d(i7, i6, i4) || !fdVar.f(i7, i6, i4).a()) {
                    if (fdVar.t.d && this.a == uu.B.bn) {
                        int i8 = i7;
                        int i9 = i4;
                        fdVar.a(d2 + 0.5d, d3 + 0.5d, d4 + 0.5d, "random.fizz", 0.5f, ((fdVar.r.nextFloat() - fdVar.r.nextFloat()) * 0.8f) + 2.6f);
                        while (i < 8) {
                            fdVar.a("largesmoke", ((double) i8) + Math.random(), ((double) i6) + Math.random(), ((double) i9) + Math.random(), 0.0d, 0.0d, 0.0d);
                            i++;
                            i6 = i6;
                            i8 = i8;
                            i9 = i9;
                        }
                    } else {
                        fdVar.b(i7, i6, i4, this.a, 0);
                    }
                    return new iz(gm.au);
                }
            }
        } else if (this.a == 0 && (vfVarA.g instanceof bx)) {
            return new iz(gm.aE);
        }
        return izVar;
    }
}
