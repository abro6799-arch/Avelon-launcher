package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class qd extends gm {
    private int a;

    @Override // defpackage.gm
    public boolean b() {
        return true;
    }

    public qd(int i, bu buVar) {
        super(i);
        this.bg = 1;
        e(buVar.a());
        this.a = (buVar.c() * 2) + 4;
    }

    @Override // defpackage.gm
    public float a(iz izVar, uu uuVar) {
        return uuVar.bn == uu.X.bn ? 15.0f : 1.5f;
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, ls lsVar, ls lsVar2) {
        izVar.a(1, lsVar2);
        return true;
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, int i, int i2, int i3, int i4, ls lsVar) {
        izVar.a(2, lsVar);
        return true;
    }

    @Override // defpackage.gm
    public int a(sn snVar) {
        return this.a;
    }

    @Override // defpackage.gm
    public boolean a(uu uuVar) {
        return uuVar.bn == uu.X.bn;
    }
}
