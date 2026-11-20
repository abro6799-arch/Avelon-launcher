package defpackage;

/* JADX INFO: loaded from: classes.dex */
public abstract class bg extends ii {
    @Override // defpackage.ls
    public int e() {
        return 120;
    }

    public bg(fd fdVar) {
        super(fdVar);
    }

    @Override // defpackage.ii
    protected float a(int i, int i2, int i3) {
        if (this.aI.a(i, i2 - 1, i3) == uu.v.bn) {
            return 10.0f;
        }
        return this.aI.c(i, i2, i3) - 0.5f;
    }

    @Override // defpackage.ls, defpackage.sn
    public void b(nu nuVar) {
        super.b(nuVar);
    }

    @Override // defpackage.ls, defpackage.sn
    public void a(nu nuVar) {
        super.a(nuVar);
    }

    @Override // defpackage.ii, defpackage.ls
    public boolean d() {
        int iB = in.b(this.aM);
        int iB2 = in.b(this.aW.b);
        int iB3 = in.b(this.aO);
        return this.aI.a(iB, iB2 + (-1), iB3) == uu.v.bn && this.aI.m(iB, iB2, iB3) > 8 && super.d();
    }
}
