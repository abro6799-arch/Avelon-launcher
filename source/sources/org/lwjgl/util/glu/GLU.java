package org.lwjgl.util.glu;

import mcport.NativeLib;

/* JADX INFO: loaded from: classes.dex */
public final class GLU {
    public static native void gluPerspective(float f, float f2, float f3, float f4);

    static {
        NativeLib.load();
    }

    public static String gluErrorString(int i) {
        if (i == 0) {
            return "No error";
        }
        switch (i) {
            case 1280:
                return "Invalid enum";
            case 1281:
                return "Invalid value";
            case 1282:
                return "Invalid operation";
            case 1283:
                return "Stack overflow";
            case 1284:
                return "Stack underflow";
            case 1285:
                return "Out of memory";
            default:
                return "Unknown error 0x" + Integer.toHexString(i);
        }
    }
}
