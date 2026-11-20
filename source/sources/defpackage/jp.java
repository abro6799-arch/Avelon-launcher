package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class jp extends uu {
    private boolean a;

    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    protected jp(int i, int i2, ln lnVar, boolean z) {
        super(i, i2, lnVar);
        this.a = z;
    }

    @Override // defpackage.uu
    public boolean b(xp xpVar, int i, int i2, int i3, int i4) {
        int iA = xpVar.a(i, i2, i3);
        if (this.a || iA != this.bn) {
            return super.b(xpVar, i, i2, i3, i4);
        }
        return false;
    }
}
