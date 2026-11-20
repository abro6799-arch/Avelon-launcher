package org.lwjgl;

import mcport.Platform;

/* JADX INFO: loaded from: classes.dex */
public final class Sys {
    public static long getTimerResolution() {
        return 1000L;
    }

    public static String getVersion() {
        return "2.9.0 (mcport shim)";
    }

    public static boolean openURL(String str) {
        Platform.get().openURL(str);
        return true;
    }

    public static long getTime() {
        return System.nanoTime() / 1000000;
    }

    public static void alert(String str, String str2) {
        System.err.println("ALERT " + str + ": " + str2);
    }
}
