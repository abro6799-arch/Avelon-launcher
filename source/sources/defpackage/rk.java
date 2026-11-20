package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class rk extends gm {
    private int a;

    public rk(int i, int i2) {
        super(i);
        this.a = i2;
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, gs gsVar, fd fdVar, int i, int i2, int i3, int i4) {
        if (i4 == 1 && fdVar.a(i, i2, i3) == uu.aB.bn) {
            int i5 = i2 + 1;
            if (fdVar.d(i, i5, i3)) {
                fdVar.f(i, i5, i3, this.a);
                izVar.a--;
                return true;
            }
        }
        return false;
    }
}
