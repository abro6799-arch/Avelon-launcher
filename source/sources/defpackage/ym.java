package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ym extends gm {
    public ym(int i) {
        super(i);
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, gs gsVar, fd fdVar, int i, int i2, int i3, int i4) {
        if (i4 == 0 || i4 == 1) {
            return false;
        }
        int i5 = i4 == 4 ? 1 : 0;
        if (i4 == 3) {
            i5 = 2;
        }
        qv qvVar = new qv(fdVar, i, i2, i3, i4 == 5 ? 3 : i5);
        if (qvVar.k()) {
            if (!fdVar.B) {
                fdVar.b(qvVar);
            }
            izVar.a--;
        }
        return true;
    }
}
