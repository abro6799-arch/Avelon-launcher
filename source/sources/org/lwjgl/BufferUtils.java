package org.lwjgl;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class BufferUtils {
    public static ByteBuffer createByteBuffer(int i) {
        return ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
    }

    public static IntBuffer createIntBuffer(int i) {
        return createByteBuffer(i * 4).asIntBuffer();
    }

    public static FloatBuffer createFloatBuffer(int i) {
        return createByteBuffer(i * 4).asFloatBuffer();
    }
}
