package mcport;

import com.mcport.b173.Prefs;

/* JADX INFO: loaded from: classes.dex */
public final class NativeLib {
    private static boolean loaded;

    public static synchronized void load() {
        if (loaded) {
            return;
        }
        String property = System.getProperty("mcport.lib");
        if (property != null) {
            System.load(property);
        } else {
            System.loadLibrary(Prefs.FILE);
        }
        loaded = true;
    }
}
