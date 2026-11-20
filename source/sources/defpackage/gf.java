package defpackage;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class gf implements Comparator {
    final /* synthetic */ dv a;
    final /* synthetic */ ci b;

    gf(ci ciVar, dv dvVar) {
        this.b = ciVar;
        this.a = dvVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(tw twVar, tw twVar2) {
        vr vrVar;
        vr vrVar2;
        int iA = twVar.a();
        int iA2 = twVar2.a();
        if (this.b.e == 0) {
            vrVar = jl.F[iA];
            vrVar2 = jl.F[iA2];
        } else if (this.b.e == 1) {
            vrVar = jl.D[iA];
            vrVar2 = jl.D[iA2];
        } else if (this.b.e == 2) {
            vrVar = jl.E[iA];
            vrVar2 = jl.E[iA2];
        } else {
            vrVar = null;
            vrVar2 = null;
        }
        if (vrVar != null || vrVar2 != null) {
            if (vrVar == null) {
                return 1;
            }
            if (vrVar2 == null) {
                return -1;
            }
            int iA3 = this.b.a.o.a(vrVar);
            int iA4 = this.b.a.o.a(vrVar2);
            if (iA3 != iA4) {
                return (iA3 - iA4) * this.b.f;
            }
        }
        return iA - iA2;
    }
}
