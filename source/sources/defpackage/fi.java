package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class fi extends uu {
    protected fi(int i) {
        super(i, ln.d);
        this.bm = 59;
    }

    @Override // defpackage.uu
    public int a(int i) {
        if (i == 1) {
            return this.bm - 16;
        }
        if (i == 0) {
            return uu.y.a(0);
        }
        if (i == 2 || i == 4) {
            return this.bm + 1;
        }
        return this.bm;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        if (fdVar.B) {
            return true;
        }
        gsVar.a(i, i2, i3);
        return true;
    }
}
