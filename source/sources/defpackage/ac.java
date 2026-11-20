package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ac extends uu {
    @Override // defpackage.uu
    public int a(Random random) {
        return 4;
    }

    protected ac(int i, int i2) {
        super(i, i2, ln.u);
        b(true);
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return gm.aB.bf;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        if (fdVar.a(eb.Block, i, i2, i3) > 11) {
            g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
            fdVar.f(i, i2, i3, 0);
        }
    }
}
