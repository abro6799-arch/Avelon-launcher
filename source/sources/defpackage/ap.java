package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ap extends pg {
    private int a;
    private int b;

    public ap(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // defpackage.pg
    public boolean a(fd fdVar, Random random, int i, int i2, int i3) {
        while (true) {
            int iA = fdVar.a(i, i2, i3);
            if ((iA != 0 && iA != uu.L.bn) || i2 <= 0) {
                break;
            }
            i2--;
        }
        for (int i4 = 0; i4 < 128; i4++) {
            int iNextInt = (random.nextInt(8) + i) - random.nextInt(8);
            int iNextInt2 = (random.nextInt(4) + i2) - random.nextInt(4);
            int iNextInt3 = (random.nextInt(8) + i3) - random.nextInt(8);
            if (fdVar.d(iNextInt, iNextInt2, iNextInt3) && ((wb) uu.m[this.a]).g(fdVar, iNextInt, iNextInt2, iNextInt3)) {
                fdVar.a(iNextInt, iNextInt2, iNextInt3, this.a, this.b);
            }
        }
        return true;
    }
}
