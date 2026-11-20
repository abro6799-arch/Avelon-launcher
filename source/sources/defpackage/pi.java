package defpackage;

import java.util.Random;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class pi extends bw {
    @Override // defpackage.bw
    public void a(c cVar, double d, double d2, double d3, float f, float f2) {
        int i;
        int i2;
        double dNextInt;
        int iNextInt;
        nw nwVar = nw.a;
        GL11.glDisable(3553);
        GL11.glDisable(2896);
        int i3 = 3042;
        GL11.glEnable(3042);
        boolean z = true;
        GL11.glBlendFunc(770, 1);
        double[] dArr = new double[8];
        double[] dArr2 = new double[8];
        Random random = new Random(cVar.a);
        double dNextInt2 = 0.0d;
        double dNextInt3 = 0.0d;
        int i4 = 7;
        while (true) {
            i = 11;
            i2 = 5;
            if (i4 < 0) {
                break;
            }
            dArr[i4] = dNextInt2;
            dArr2[i4] = dNextInt3;
            dNextInt2 += (double) (random.nextInt(11) - 5);
            dNextInt3 += (double) (random.nextInt(11) - 5);
            i4--;
        }
        int i5 = 0;
        while (i5 < 4) {
            Random random2 = new Random(cVar.a);
            int i6 = 0;
            while (i6 < 3) {
                int i7 = i6 > 0 ? 7 - i6 : 7;
                int i8 = i6 > 0 ? i7 - 2 : 0;
                double d4 = dArr[i7] - dNextInt2;
                double d5 = dArr2[i7] - dNextInt3;
                while (i7 >= i8) {
                    if (i6 == 0) {
                        dNextInt = d4 + ((double) (random2.nextInt(i) - 5));
                        iNextInt = random2.nextInt(i) - i2;
                    } else {
                        dNextInt = d4 + ((double) (random2.nextInt(31) - 15));
                        iNextInt = random2.nextInt(31) - 15;
                    }
                    double d6 = d5 + ((double) iNextInt);
                    nwVar.a(i2);
                    nwVar.a(0.45f, 0.45f, 0.5f, 0.3f);
                    nw nwVar2 = nwVar;
                    double d7 = (((double) i5) * 0.2d) + 0.1d;
                    double d8 = i6 == 0 ? d7 * ((((double) i7) * 0.1d) + 1.0d) : d7;
                    if (i6 == 0) {
                        d7 *= (((double) (i7 - 1)) * 0.1d) + 1.0d;
                    }
                    int i9 = 0;
                    int i10 = 5;
                    while (i9 < i10) {
                        double d9 = d + 0.5d;
                        double d10 = d9 - d8;
                        double d11 = d3 + 0.5d;
                        double d12 = d11 - d8;
                        if (i9 == 1 || i9 == 2) {
                            d10 += d8 * 2.0d;
                        }
                        if (i9 == 2 || i9 == 3) {
                            d12 += d8 * 2.0d;
                        }
                        double d13 = d9 - d7;
                        double d14 = d11 - d7;
                        if (i9 == 1 || i9 == 2) {
                            d13 += d7 * 2.0d;
                        }
                        if (i9 == 2 || i9 == 3) {
                            d14 += 2.0d * d7;
                        }
                        int i11 = i7;
                        nwVar2.a(d13 + dNextInt, d2 + ((double) (i7 * 16)), d14 + d6);
                        nwVar2.a(d10 + d4, d2 + ((double) ((i11 + 1) * 16)), d12 + d5);
                        i9++;
                        i10 = 5;
                        i6 = i6;
                        i5 = i5;
                        random2 = random2;
                        i7 = i11;
                    }
                    int i12 = i10;
                    nwVar2.a();
                    i7--;
                    nwVar = nwVar2;
                    d4 = dNextInt;
                    d5 = d6;
                    i = 11;
                    dArr = dArr;
                    i2 = i12;
                    z = true;
                }
                i6++;
            }
            i5++;
            i3 = 3042;
        }
        GL11.glDisable(i3);
        GL11.glEnable(2896);
        GL11.glEnable(3553);
    }
}
