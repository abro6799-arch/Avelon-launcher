package defpackage;

/* JADX INFO: loaded from: classes.dex */
final class j implements yp {
    private final jt a;
    private final jt b;

    j(jt jtVar, jt jtVar2) {
        this.a = jtVar;
        this.b = jtVar2;
    }

    @Override // defpackage.yp
    public boolean a(Object obj) {
        return this.a.a(obj) && this.b.a(this.a.b(obj));
    }

    @Override // defpackage.yp
    public Object b(Object obj) {
        try {
            try {
                return this.b.b(this.a.b(obj));
            } catch (mz e) {
                throw mz.a(e, this.a);
            }
        } catch (mz e2) {
            throw mz.b(e2, this.a);
        }
    }

    @Override // defpackage.yp
    public String a() {
        return this.b.a();
    }

    public String toString() {
        return this.a.toString() + ", with " + this.b.toString();
    }
}
