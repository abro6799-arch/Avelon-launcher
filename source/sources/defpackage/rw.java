package defpackage;

/* JADX INFO: loaded from: classes.dex */
public abstract class rw extends uu {
    protected abstract ow a_();

    protected rw(int i, ln lnVar) {
        super(i, lnVar);
        p[i] = true;
    }

    protected rw(int i, int i2, ln lnVar) {
        super(i, i2, lnVar);
        p[i] = true;
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        super.c(fdVar, i, i2, i3);
        fdVar.a(i, i2, i3, a_());
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        super.b(fdVar, i, i2, i3);
        fdVar.p(i, i2, i3);
    }
}
