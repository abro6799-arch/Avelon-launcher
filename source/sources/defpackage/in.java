package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class in {
    private static float[] a = new float[65536];

    public static double a(double d, double d2) {
        if (d < 0.0d) {
            d = -d;
        }
        if (d2 < 0.0d) {
            d2 = -d2;
        }
        return d > d2 ? d : d2;
    }

    public static int b(double d) {
        int i = (int) d;
        return d < ((double) i) ? i - 1 : i;
    }

    public static int d(float f) {
        int i = (int) f;
        return f < ((float) i) ? i - 1 : i;
    }

    public static float e(float f) {
        return f >= 0.0f ? f : -f;
    }

    static {
        for (int i = 0; i < 65536; i++) {
            a[i] = (float) Math.sin(((((double) i) * 3.141592653589793d) * 2.0d) / 65536.0d);
        }
    }

    public static final float a(float f) {
        return a[((int) (f * 10430.378f)) & 65535];
    }

    public static final float b(float f) {
        return a[((int) ((f * 10430.378f) + 16384.0f)) & 65535];
    }

    public static final float c(float f) {
        return (float) Math.sqrt(f);
    }

    public static final float a(double d) {
        return (float) Math.sqrt(d);
    }

    public static int a(int i, int i2) {
        if (i < 0) {
            return (-(((-i) - 1) / i2)) - 1;
        }
        return i / i2;
    }

    public static boolean a(String str) {
        return str == null || str.length() == 0;
    }
}
