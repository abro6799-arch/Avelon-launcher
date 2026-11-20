package defpackage;

/* JADX INFO: loaded from: classes.dex */
final class pn {
    private lb a;
    private lb b;

    private pn() {
    }

    static pn a() {
        return new pn();
    }

    pn a(lb lbVar) {
        this.a = lbVar;
        return this;
    }

    pn b(lb lbVar) {
        this.b = lbVar;
        return this;
    }

    qa b() {
        return (qa) this.a.b();
    }

    gu c() {
        return this.b.b();
    }
}
