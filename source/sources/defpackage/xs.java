package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class xs extends pg {
    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        for (int i4 = 0; i4 < 64; i4++) {
            int iNextInt = (random.nextInt(8) + i) - random.nextInt(8);
            int iNextInt2 = (random.nextInt(4) + i2) - random.nextInt(4);
            int iNextInt3 = (random.nextInt(8) + i3) - random.nextInt(8);
            if (fdVar.d(iNextInt, iNextInt2, iNextInt3) && fdVar.a(iNextInt, iNextInt2 - 1, iNextInt3) == uu.bc.bn) {
                fdVar.f(iNextInt, iNextInt2, iNextInt3, uu.as.bn);
            }
        }
        return true;
    }
}
