package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class yj extends kd {
    @Override // defpackage.kd
    public pg a(Random random) {
        if (random.nextInt(3) == 0) {
            return new ih();
        }
        return new yh();
    }
}
