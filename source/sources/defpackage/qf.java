package defpackage;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class qf extends ba {
    @Override // defpackage.yp
    public String a() {
        return "A short form object";
    }

    public String toString() {
        return "an object";
    }

    qf() {
    }

    @Override // defpackage.yp
    public boolean a(gu guVar) {
        return at.OBJECT == guVar.a();
    }

    @Override // defpackage.ba
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Map c(gu guVar) {
        return guVar.c();
    }
}
