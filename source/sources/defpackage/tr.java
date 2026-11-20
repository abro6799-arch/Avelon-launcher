package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class tr extends gm {
    public final String a;

    protected tr(int i, String str) {
        super(i);
        this.a = str;
        this.bg = 1;
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, gs gsVar, fd fdVar, int i, int i2, int i3, int i4) {
        if (fdVar.a(i, i2, i3) != uu.aZ.bn || fdVar.e(i, i2, i3) != 0) {
            return false;
        }
        if (fdVar.B) {
            return true;
        }
        ((fo) uu.aZ).f(fdVar, i, i2, i3, this.bf);
        fdVar.a((gs) null, 1005, i, i2, i3, this.bf);
        izVar.a--;
        return true;
    }
}
