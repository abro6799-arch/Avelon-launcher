package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ru extends wb {
    protected ru(int i, int i2) {
        super(i, i2);
        a(0.099999994f, 0.0f, 0.099999994f, 0.9f, 0.8f, 0.9f);
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        if (i2 == 1) {
            return this.bm;
        }
        if (i2 == 2) {
            return this.bm + 16 + 1;
        }
        if (i2 == 0) {
            return this.bm + 16;
        }
        return this.bm;
    }

    @Override // defpackage.uu
    public int b(xp xpVar, int i, int i2, int i3) {
        if (xpVar.e(i, i2, i3) == 0) {
            return 16777215;
        }
        long j = (3129871 * i) + (6129781 * i3) + i2;
        long j2 = (j * j * 42317861) + (j * 11);
        xpVar.a().a((int) (((long) i) + ((j2 >> 14) & 31)), (int) (((long) i3) + ((j2 >> 24) & 31)), 1, 1);
        return ia.a(xpVar.a().a[0], xpVar.a().b[0]);
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        if (random.nextInt(8) == 0) {
            return gm.Q.bf;
        }
        return -1;
    }
}
