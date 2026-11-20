package defpackage;

/* JADX INFO: loaded from: classes.dex */
abstract class ba implements yp {
    protected abstract Object c(Object obj);

    ba() {
    }

    @Override // defpackage.yp
    public final Object b(Object obj) {
        if (!a(obj)) {
            throw mz.a(this);
        }
        return c(obj);
    }
}
