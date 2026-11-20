package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class yw extends gm {
    private int a;
    private boolean bk;

    public yw(int i, int i2, boolean z) {
        super(i);
        this.a = i2;
        this.bk = z;
        this.bg = 1;
    }

    @Override // defpackage.gm
    public iz a(iz izVar, fd fdVar, gs gsVar) {
        izVar.a--;
        gsVar.c(this.a);
        return izVar;
    }

    public int l() {
        return this.a;
    }

    public boolean m() {
        return this.bk;
    }
}
