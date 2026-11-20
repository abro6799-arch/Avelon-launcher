package org.lwjgl.opengl;

import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class ARBOcclusionQuery {
    public static void glBeginQueryARB(int i, int i2) {
    }

    public static void glEndQueryARB(int i) {
    }

    public static void glGenQueriesARB(IntBuffer intBuffer) {
        while (intBuffer.hasRemaining()) {
            intBuffer.put(intBuffer.position(), 0).position(intBuffer.position() + 1);
        }
    }

    public static void glGetQueryObjectuARB(int i, int i2, IntBuffer intBuffer) {
        intBuffer.put(intBuffer.position(), 1);
    }
}
