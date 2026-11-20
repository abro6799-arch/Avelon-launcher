package mcport;

/* JADX INFO: loaded from: classes.dex */
public abstract class Platform {
    private static Platform impl;

    public void drawString(int[] iArr, int i, int i2, String str, int i3, int i4, int i5) {
    }

    public String getClipboard() {
        return null;
    }

    public abstract boolean isActive();

    public boolean isCloseRequested() {
        return false;
    }

    public void onContextCreated() {
    }

    public abstract void onFrame();

    public void openURL(String str) {
    }

    public abstract int surfaceHeight();

    public abstract int surfaceWidth();

    public int swapInterval() {
        return 1;
    }

    public abstract Object waitForSurface();

    public static void set(Platform platform) {
        impl = platform;
    }

    public static Platform get() {
        return impl;
    }
}
