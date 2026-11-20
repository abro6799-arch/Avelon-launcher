package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class jh {
    private static int[] a = new int[65536];

    public static int a() {
        return 6396257;
    }

    public static int b() {
        return 8431445;
    }

    public static int c() {
        return 4764952;
    }

    public static void a(int[] iArr) {
        a = iArr;
    }

    public static int a(double d, double d2) {
        return a[((int) ((1.0d - d) * 255.0d)) | (((int) ((1.0d - (d2 * d)) * 255.0d)) << 8)];
    }
}
