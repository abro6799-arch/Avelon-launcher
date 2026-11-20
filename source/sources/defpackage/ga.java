package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class ga extends iv {
    final /* synthetic */ dv a;

    @Override // defpackage.iv
    protected String a(int i) {
        if (i == 0) {
            return "stat.crafted";
        }
        return i == 1 ? "stat.used" : "stat.mined";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ga(dv dvVar) {
        super(dvVar);
        this.a = dvVar;
        this.c = new ArrayList();
        for (tw twVar : jl.e) {
            int iA = twVar.a();
            boolean z = true;
            if (dvVar.o.a(twVar) <= 0 && ((jl.E[iA] == null || dvVar.o.a(jl.E[iA]) <= 0) && (jl.D[iA] == null || dvVar.o.a(jl.D[iA]) <= 0))) {
                z = false;
            }
            if (z) {
                this.c.add(twVar);
            }
        }
        this.d = new pr(this, dvVar);
    }

    @Override // defpackage.iv, defpackage.lg
    protected void a(int i, int i2, nw nwVar) {
        super.a(i, i2, nwVar);
        if (this.b == 0) {
            this.a.c(((i + 115) - 18) + 1, i2 + 1 + 1, 18, 18);
        } else {
            this.a.c((i + 115) - 18, i2 + 1, 18, 18);
        }
        if (this.b == 1) {
            this.a.c(((i + 165) - 18) + 1, i2 + 1 + 1, 36, 18);
        } else {
            this.a.c((i + 165) - 18, i2 + 1, 36, 18);
        }
        if (this.b == 2) {
            this.a.c(((i + 215) - 18) + 1, i2 + 1 + 1, 54, 18);
        } else {
            this.a.c((i + 215) - 18, i2 + 1, 54, 18);
        }
    }

    @Override // defpackage.lg
    protected void a(int i, int i2, int i3, int i4, nw nwVar) {
        tw twVarB = b(i);
        int iA = twVarB.a();
        this.a.c(i2 + 40, i3, iA);
        int i5 = i % 2;
        a((tw) jl.D[iA], i2 + 115, i3, i5 == 0);
        a((tw) jl.E[iA], i2 + 165, i3, i5 == 0);
        a(twVarB, i2 + 215, i3, i5 == 0);
    }
}
