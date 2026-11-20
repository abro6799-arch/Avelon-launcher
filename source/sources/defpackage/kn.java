package defpackage;

/* JADX INFO: loaded from: classes.dex */
public /* synthetic */ class kn {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[pd.values().length];
        a = iArr;
        try {
            iArr[pd.linux.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            a[pd.solaris.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            a[pd.windows.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            a[pd.macos.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
