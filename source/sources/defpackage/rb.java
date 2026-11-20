package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class rb extends kd {
    public rb() {
        this.t.add(new bj(gi.class, 2));
    }

    @Override // defpackage.kd
    public pg a(Random random) {
        if (random.nextInt(5) == 0) {
            return new k();
        }
        if (random.nextInt(3) == 0) {
            return new ih();
        }
        return new yh();
    }
}
