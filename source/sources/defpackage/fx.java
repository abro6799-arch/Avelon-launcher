package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class fx extends pg {
    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        for (int i4 = 0; i4 < 10; i4++) {
            int iNextInt = (random.nextInt(8) + i) - random.nextInt(8);
            int iNextInt2 = (random.nextInt(4) + i2) - random.nextInt(4);
            int iNextInt3 = (random.nextInt(8) + i3) - random.nextInt(8);
            if (fdVar.d(iNextInt, iNextInt2, iNextInt3)) {
                int iNextInt4 = random.nextInt(random.nextInt(3) + 1) + 1;
                for (int i5 = 0; i5 < iNextInt4; i5++) {
                    int i6 = iNextInt2 + i5;
                    if (uu.aW.g(fdVar, iNextInt, i6, iNextInt3)) {
                        fdVar.c(iNextInt, i6, iNextInt3, uu.aW.bn);
                    }
                }
            }
        }
        return true;
    }
}
