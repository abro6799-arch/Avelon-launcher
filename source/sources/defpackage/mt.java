package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class mt extends uu {
    public mt(int i, int i2) {
        super(i, i2, ln.e);
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        if (this.bn == uu.J.bn) {
            return gm.k.bf;
        }
        if (this.bn == uu.ax.bn) {
            return gm.l.bf;
        }
        return this.bn == uu.O.bn ? gm.aU.bf : this.bn;
    }

    @Override // defpackage.uu
    public int a(Random random) {
        if (this.bn == uu.O.bn) {
            return random.nextInt(5) + 4;
        }
        return 1;
    }

    @Override // defpackage.uu
    protected int b_(int i) {
        return this.bn == uu.O.bn ? 4 : 0;
    }
}
