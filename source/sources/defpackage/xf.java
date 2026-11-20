package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class xf extends uu {
    protected xf(int i) {
        super(i, ln.k);
        this.bm = 48;
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        for (int i4 = i - 2; i4 <= i + 2; i4++) {
            for (int i5 = i2 - 2; i5 <= i2 + 2; i5++) {
                for (int i6 = i3 - 2; i6 <= i3 + 2; i6++) {
                    fdVar.f(i4, i5, i6);
                    ln lnVar = ln.g;
                }
            }
        }
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        for (int i4 = i - 2; i4 <= i + 2; i4++) {
            for (int i5 = i2 - 2; i5 <= i2 + 2; i5++) {
                for (int i6 = i3 - 2; i6 <= i3 + 2; i6++) {
                    fdVar.i(i4, i5, i6, fdVar.a(i4, i5, i6));
                }
            }
        }
    }
}
