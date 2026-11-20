package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class vc extends gm {
    public vc(int i) {
        super(i);
        this.bg = 1;
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, gs gsVar, fd fdVar, int i, int i2, int i3, int i4) {
        if (i4 == 0 || !fdVar.f(i, i2, i3).a()) {
            return false;
        }
        if (i4 == 1) {
            i2++;
        }
        if (i4 == 2) {
            i3--;
        }
        if (i4 == 3) {
            i3++;
        }
        if (i4 == 4) {
            i--;
        }
        if (i4 == 5) {
            i++;
        }
        if (!uu.aE.a(fdVar, i, i2, i3)) {
            return false;
        }
        if (i4 == 1) {
            fdVar.b(i, i2, i3, uu.aE.bn, in.b(((double) (((gsVar.aS + 180.0f) * 16.0f) / 360.0f)) + 0.5d) & 15);
        } else {
            fdVar.b(i, i2, i3, uu.aJ.bn, i4);
        }
        izVar.a--;
        yk ykVar = (yk) fdVar.b(i, i2, i3);
        if (ykVar != null) {
            gsVar.a(ykVar);
        }
        return true;
    }
}
