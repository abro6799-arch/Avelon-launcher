package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class g extends kd {
    public g() {
        this.t.add(new bj(gi.class, 2));
    }

    @Override // defpackage.kd
    public pg a(Random random) {
        if (random.nextInt(3) == 0) {
            return new pw();
        }
        return new ws();
    }
}
