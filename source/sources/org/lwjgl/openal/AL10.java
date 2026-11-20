package org.lwjgl.openal;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import mcport.NativeLib;

/* JADX INFO: loaded from: classes.dex */
public final class AL10 {
    public static native int alGetError();

    public static native int alGetSourcei(int i, int i2);

    public static native void alListenerf(int i, float f);

    public static native void alSourcePause(int i);

    public static native void alSourcePlay(int i);

    public static native void alSourceRewind(int i);

    public static native void alSourceStop(int i);

    public static native void alSourcef(int i, int i2, float f);

    public static native void alSourcei(int i, int i2, int i3);

    static native void nalBufferData(int i, int i2, Buffer buffer, int i3, int i4, int i5);

    static native void nalDeleteBuffers(int i, Buffer buffer, int i2);

    static native void nalDeleteSources(int i, Buffer buffer, int i2);

    static native void nalGenBuffers(int i, Buffer buffer, int i2);

    static native void nalGenSources(int i, Buffer buffer, int i2);

    static native void nalListenerfv(int i, Buffer buffer, int i2);

    static native void nalSourceQueueBuffers(int i, int i2, Buffer buffer, int i3);

    static native void nalSourceStopv(int i, Buffer buffer, int i2);

    static native void nalSourceUnqueueBuffers(int i, int i2, Buffer buffer, int i3);

    static native void nalSourcefv(int i, int i2, Buffer buffer, int i3);

    static {
        NativeLib.load();
    }

    public static void alBufferData(int i, int i2, ByteBuffer byteBuffer, int i3) {
        nalBufferData(i, i2, byteBuffer, byteBuffer.position(), byteBuffer.remaining(), i3);
    }

    public static void alDeleteBuffers(IntBuffer intBuffer) {
        nalDeleteBuffers(intBuffer.remaining(), intBuffer, intBuffer.position() << 2);
    }

    public static void alDeleteSources(IntBuffer intBuffer) {
        nalDeleteSources(intBuffer.remaining(), intBuffer, intBuffer.position() << 2);
    }

    public static void alGenBuffers(IntBuffer intBuffer) {
        nalGenBuffers(intBuffer.remaining(), intBuffer, intBuffer.position() << 2);
    }

    public static void alGenSources(IntBuffer intBuffer) {
        nalGenSources(intBuffer.remaining(), intBuffer, intBuffer.position() << 2);
    }

    public static void alListener(int i, FloatBuffer floatBuffer) {
        nalListenerfv(i, floatBuffer, floatBuffer.position() << 2);
    }

    public static void alSource(int i, int i2, FloatBuffer floatBuffer) {
        nalSourcefv(i, i2, floatBuffer, floatBuffer.position() << 2);
    }

    public static void alSourceQueueBuffers(int i, IntBuffer intBuffer) {
        nalSourceQueueBuffers(i, intBuffer.remaining(), intBuffer, intBuffer.position() << 2);
    }

    public static void alSourceStop(IntBuffer intBuffer) {
        nalSourceStopv(intBuffer.remaining(), intBuffer, intBuffer.position() << 2);
    }

    public static void alSourceUnqueueBuffers(int i, IntBuffer intBuffer) {
        nalSourceUnqueueBuffers(i, intBuffer.remaining(), intBuffer, intBuffer.position() << 2);
    }
}
