package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ia {
    private static int[] a = new int[65536];

    public static void a(int[] iArr) {
        a = iArr;
    }

    public static int a(double d, double d2) {
        return a[((int) ((1.0d - d) * 255.0d)) | (((int) ((1.0d - (d2 * d)) * 255.0d)) << 8)];
    }
}
