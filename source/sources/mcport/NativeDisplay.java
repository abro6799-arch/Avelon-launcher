package mcport;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class NativeDisplay {
    public static native boolean attachPbuffer();

    public static native boolean attachSurface(Object obj, int i, int i2);

    public static native boolean create(Object obj, int i, int i2);

    public static native void destroy();

    public static native int height();

    public static native void readRGBA(ByteBuffer byteBuffer);

    public static native void releaseSurface();

    public static native boolean swap();

    public static native void swapInterval(int i);

    public static native int width();

    static {
        NativeLib.load();
    }
}
