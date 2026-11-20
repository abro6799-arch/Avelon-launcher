package defpackage;

/* JADX INFO: loaded from: classes.dex */
final class kk extends ba {
    @Override // defpackage.yp
    public String a() {
        return "A short form string";
    }

    public String toString() {
        return "a value that is a string";
    }

    kk() {
    }

    @Override // defpackage.yp
    public boolean a(gu guVar) {
        return at.STRING == guVar.a();
    }

    @Override // defpackage.ba
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public String c(gu guVar) {
        return guVar.b();
    }
}
