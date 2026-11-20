package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class he extends wb {
    @Override // defpackage.uu
    protected int b_(int i) {
        return i & 3;
    }

    protected he(int i, int i2) {
        super(i, i2);
        a(0.099999994f, 0.0f, 0.099999994f, 0.9f, 0.8f, 0.9f);
    }

    @Override // defpackage.wb, defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        if (fdVar.B) {
            return;
        }
        super.a(fdVar, i, i2, i3, random);
        if (fdVar.n(i, i2 + 1, i3) < 9 || random.nextInt(30) != 0) {
            return;
        }
        int iE = fdVar.e(i, i2, i3);
        if ((iE & 8) == 0) {
            fdVar.d(i, i2, i3, iE | 8);
        } else {
            c(fdVar, i, i2, i3, random);
        }
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        int i3 = i2 & 3;
        if (i3 == 1) {
            return 63;
        }
        if (i3 == 2) {
            return 79;
        }
        return super.a(i, i3);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0048  */
    /* JADX WARN: Code duplicated, block: B:16:0x0055  */
    public void c(fd fdVar, int i, int i2, int i3, Random random) {
        pg yhVar;
        int iE = fdVar.e(i, i2, i3) & 3;
        fdVar.c(i, i2, i3, 0);
        if (iE == 1) {
            yhVar = new ws();
        } else {
            if (iE == 2) {
                yhVar = new k();
            } else {
                yhVar = new yh();
                if (random.nextInt(10) == 0) {
                    yhVar = new ih();
                }
            }
            if (yhVar.a(fdVar, random, i, i2, i3)) {
            }
            fdVar.a(i, i2, i3, this.bn, iE);
        }
        if (yhVar.a(fdVar, random, i, i2, i3)) {
            fdVar.a(i, i2, i3, this.bn, iE);
        }
    }
}
