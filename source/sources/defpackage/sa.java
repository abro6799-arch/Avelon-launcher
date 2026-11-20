package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class sa extends gm {
    public sa(int i) {
        super(i);
        this.bg = 1;
    }

    @Override // defpackage.gm
    public void a(iz izVar, ls lsVar) {
        if (lsVar instanceof wh) {
            wh whVar = (wh) lsVar;
            if (whVar.v()) {
                return;
            }
            whVar.a(true);
            izVar.a--;
        }
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, ls lsVar, ls lsVar2) {
        a(izVar, lsVar);
        return true;
    }
}
