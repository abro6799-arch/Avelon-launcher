package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ne extends gk {
    public ne(int i, int i2) {
        super(i, i2);
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return random.nextInt(10) == 0 ? gm.an.bf : this.bn;
    }
}
