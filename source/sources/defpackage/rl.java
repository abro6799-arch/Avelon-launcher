package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class rl extends gm {
    public int a;

    public rl(int i, int i2) {
        super(i);
        this.bg = 1;
        this.a = i2;
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, gs gsVar, fd fdVar, int i, int i2, int i3, int i4) {
        if (!pc.d(fdVar.a(i, i2, i3))) {
            return false;
        }
        if (!fdVar.B) {
            fdVar.b(new yl(fdVar, i + 0.5f, i2 + 0.5f, i3 + 0.5f, this.a));
        }
        izVar.a--;
        return true;
    }
}
