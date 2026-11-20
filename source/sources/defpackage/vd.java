package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class vd extends gm {
    public vd(int i) {
        super(i);
        this.bg = 1;
    }

    @Override // defpackage.gm
    public iz a(iz izVar, fd fdVar, gs gsVar) {
        float f = gsVar.aV + ((gsVar.aT - gsVar.aV) * 1.0f);
        float f2 = gsVar.aU + ((gsVar.aS - gsVar.aU) * 1.0f);
        double d = 1.0f;
        bt btVarB = bt.b(gsVar.aJ + ((gsVar.aM - gsVar.aJ) * d), ((gsVar.aK + ((gsVar.aN - gsVar.aK) * d)) + 1.62d) - ((double) gsVar.bf), gsVar.aL + ((gsVar.aO - gsVar.aL) * d));
        float f3 = ((-f2) * 0.017453292f) - 3.1415927f;
        float fB = in.b(f3);
        float fA = in.a(f3);
        float f4 = (-f) * 0.017453292f;
        float f5 = -in.b(f4);
        vf vfVarA = fdVar.a(btVarB, btVarB.c(((double) (fA * f5)) * 5.0d, ((double) in.a(f4)) * 5.0d, ((double) (fB * f5)) * 5.0d), true);
        if (vfVarA != null && vfVarA.a == jg.TILE) {
            int i = vfVarA.b;
            int i2 = vfVarA.c;
            int i3 = vfVarA.d;
            if (!fdVar.B) {
                if (fdVar.a(i, i2, i3) == uu.aT.bn) {
                    i2--;
                }
                fdVar.b(new fz(fdVar, i + 0.5f, i2 + 1.0f, i3 + 0.5f));
            }
            izVar.a--;
        }
        return izVar;
    }
}
