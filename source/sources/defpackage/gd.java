package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class gd extends pg {
    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        if (!fdVar.d(i, i2, i3) || fdVar.a(i, i2 + 1, i3) != uu.bc.bn) {
            return false;
        }
        fdVar.f(i, i2, i3, uu.be.bn);
        for (int i4 = 0; i4 < 1500; i4++) {
            int iNextInt = (random.nextInt(8) + i) - random.nextInt(8);
            int iNextInt2 = i2 - random.nextInt(12);
            int iNextInt3 = (random.nextInt(8) + i3) - random.nextInt(8);
            if (fdVar.a(iNextInt, iNextInt2, iNextInt3) == 0) {
                int i5 = 0;
                int i6 = 0;
                while (i5 < 6) {
                    int iA = i5 == 0 ? fdVar.a(iNextInt - 1, iNextInt2, iNextInt3) : 0;
                    if (i5 == 1) {
                        iA = fdVar.a(iNextInt + 1, iNextInt2, iNextInt3);
                    }
                    if (i5 == 2) {
                        iA = fdVar.a(iNextInt, iNextInt2 - 1, iNextInt3);
                    }
                    if (i5 == 3) {
                        iA = fdVar.a(iNextInt, iNextInt2 + 1, iNextInt3);
                    }
                    if (i5 == 4) {
                        iA = fdVar.a(iNextInt, iNextInt2, iNextInt3 - 1);
                    }
                    if (i5 == 5) {
                        iA = fdVar.a(iNextInt, iNextInt2, iNextInt3 + 1);
                    }
                    if (iA == uu.be.bn) {
                        i6++;
                    }
                    i5++;
                }
                if (i6 == 1) {
                    fdVar.f(iNextInt, iNextInt2, iNextInt3, uu.be.bn);
                }
            }
        }
        return true;
    }
}
