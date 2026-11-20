package mcport;

/* JADX INFO: loaded from: classes.dex */
public final class NativeStats {
    public static native long[] read();

    static {
        NativeLib.load();
    }
}
