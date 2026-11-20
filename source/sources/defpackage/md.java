package defpackage;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class md implements Comparator {
    private ls a;

    public md(ls lsVar) {
        this.a = lsVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(dk dkVar, dk dkVar2) {
        boolean z = dkVar.o;
        boolean z2 = dkVar2.o;
        if (z && !z2) {
            return 1;
        }
        if (z2 && !z) {
            return -1;
        }
        double dA = dkVar.a(this.a);
        double dA2 = dkVar2.a(this.a);
        if (dA < dA2) {
            return 1;
        }
        return (dA <= dA2 && dkVar.w < dkVar2.w) ? 1 : -1;
    }
}
