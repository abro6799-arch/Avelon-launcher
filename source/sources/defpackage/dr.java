package defpackage;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class dr {
    public float[][] a = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 16, 16);
    public float[] b = new float[16];
    public float[] c = new float[16];
    public float[] d = new float[16];

    public boolean a(double d, double d2, double d3, double d4, double d5, double d6) {
        for (int i = 0; i < 6; i++) {
            float[] fArr = this.a[i];
            float f = fArr[0];
            float f2 = fArr[1];
            double d7 = (((double) f) * d) + (((double) f2) * d2);
            float f3 = fArr[2];
            float f4 = fArr[3];
            if (d7 + (((double) f3) * d3) + ((double) f4) <= 0.0d && (((double) f) * d4) + (((double) f2) * d2) + (((double) f3) * d3) + ((double) f4) <= 0.0d && (((double) f) * d) + (((double) f2) * d5) + (((double) f3) * d3) + ((double) f4) <= 0.0d && (((double) f) * d4) + (((double) f2) * d5) + (((double) f3) * d3) + ((double) f4) <= 0.0d && (((double) f) * d) + (((double) f2) * d2) + (((double) f3) * d6) + ((double) f4) <= 0.0d && (((double) f) * d4) + (((double) f2) * d2) + (((double) f3) * d6) + ((double) f4) <= 0.0d && (((double) f) * d) + (((double) f2) * d5) + (((double) f3) * d6) + ((double) f4) <= 0.0d && (((double) f) * d4) + (((double) f2) * d5) + (((double) f3) * d6) + ((double) f4) <= 0.0d) {
                return false;
            }
        }
        return true;
    }
}
