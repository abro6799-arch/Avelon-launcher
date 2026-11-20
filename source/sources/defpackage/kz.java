package defpackage;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class kz {
    static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[at.values().length];
        a = iArr;
        try {
            iArr[at.ARRAY.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            a[at.OBJECT.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            a[at.STRING.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            a[at.NUMBER.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            a[at.FALSE.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            a[at.TRUE.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            a[at.NULL.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
    }
}
