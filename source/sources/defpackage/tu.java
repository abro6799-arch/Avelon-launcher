package defpackage;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class tu {
    static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[jn.values().length];
        a = iArr;
        try {
            iArr[jn.linux.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            a[jn.solaris.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            a[jn.windows.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            a[jn.macos.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
