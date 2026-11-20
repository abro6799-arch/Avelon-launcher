package org.lwjgl.openal;

import mcport.NativeLib;
import org.lwjgl.LWJGLException;

/* JADX INFO: loaded from: classes.dex */
public final class AL {
    private static boolean created;

    static native boolean ncreate();

    static native void ndestroy();

    static native void npause(boolean z);

    static {
        NativeLib.load();
    }

    public static void create() throws LWJGLException {
        if (created) {
            return;
        }
        if (!ncreate()) {
            throw new LWJGLException("Could not open OpenAL device");
        }
        created = true;
    }

    public static void create(String str, int i, int i2, boolean z) throws LWJGLException {
        create();
    }

    public static void destroy() {
        if (created) {
            ndestroy();
            created = false;
        }
    }

    public static boolean isCreated() {
        return created;
    }

    public static void setPaused(boolean z) {
        if (created) {
            npause(z);
        }
    }
}
