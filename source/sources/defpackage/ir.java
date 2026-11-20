package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ir extends pg {
    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        for (int i4 = 0; i4 < 20; i4++) {
            int iNextInt = (random.nextInt(4) + i) - random.nextInt(4);
            int iNextInt2 = (random.nextInt(4) + i3) - random.nextInt(4);
            if (fdVar.d(iNextInt, i2, iNextInt2)) {
                int i5 = i2 - 1;
                if (fdVar.f(iNextInt - 1, i5, iNextInt2) == ln.g || fdVar.f(iNextInt + 1, i5, iNextInt2) == ln.g || fdVar.f(iNextInt, i5, iNextInt2 - 1) == ln.g || fdVar.f(iNextInt, i5, iNextInt2 + 1) == ln.g) {
                    int iNextInt3 = random.nextInt(random.nextInt(3) + 1) + 2;
                    for (int i6 = 0; i6 < iNextInt3; i6++) {
                        int i7 = i2 + i6;
                        if (uu.aY.g(fdVar, iNextInt, i7, iNextInt2)) {
                            fdVar.c(iNextInt, i7, iNextInt2, uu.aY.bn);
                        }
                    }
                }
            }
        }
        return true;
    }
}
