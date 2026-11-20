package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class kf extends ba {
    @Override // defpackage.yp
    public String a() {
        return "A short form array";
    }

    public String toString() {
        return "an array";
    }

    kf() {
    }

    @Override // defpackage.yp
    public boolean a(gu guVar) {
        return at.ARRAY == guVar.a();
    }

    @Override // defpackage.ba
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public List c(gu guVar) {
        return guVar.d();
    }
}
