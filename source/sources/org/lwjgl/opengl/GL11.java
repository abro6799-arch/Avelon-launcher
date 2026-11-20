package org.lwjgl.opengl;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import mcport.NativeLib;
import org.lwjgl.BufferUtils;

/* JADX INFO: loaded from: classes.dex */
public final class GL11 {
    public static native void glAlphaFunc(int i, float f);

    public static native void glBindTexture(int i, int i2);

    public static native void glBlendFunc(int i, int i2);

    public static native void glCallList(int i);

    public static native void glClear(int i);

    public static native void glClearColor(float f, float f2, float f3, float f4);

    public static native void glClearDepth(double d);

    public static native void glColor4f(float f, float f2, float f3, float f4);

    public static native void glColorMask(boolean z, boolean z2, boolean z3, boolean z4);

    public static native void glColorMaterial(int i, int i2);

    public static void glColorPointer(int i, int i2, int i3, long j) {
    }

    public static native void glCullFace(int i);

    public static native void glDeleteLists(int i, int i2);

    public static native void glDepthFunc(int i);

    public static native void glDepthMask(boolean z);

    public static native void glDisable(int i);

    public static native void glDisableClientState(int i);

    public static native void glDrawArrays(int i, int i2, int i3);

    public static native void glEnable(int i);

    public static native void glEnableClientState(int i);

    public static native void glEndList();

    public static native void glFogf(int i, float f);

    public static native void glFogi(int i, int i2);

    public static native int glGenLists(int i);

    public static native int glGetError();

    public static native String glGetString(int i);

    public static native void glLineWidth(float f);

    public static native void glLoadIdentity();

    public static native void glMatrixMode(int i);

    public static native void glNewList(int i, int i2);

    public static native void glNormal3f(float f, float f2, float f3);

    public static void glNormalPointer(int i, int i2, long j) {
    }

    public static native void glOrtho(double d, double d2, double d3, double d4, double d5, double d6);

    public static native void glPixelStorei(int i, int i2);

    public static native void glPolygonOffset(float f, float f2);

    public static native void glPopMatrix();

    public static native void glPushMatrix();

    public static native void glRotatef(float f, float f2, float f3, float f4);

    public static native void glScalef(float f, float f2, float f3);

    public static native void glShadeModel(int i);

    public static void glTexCoordPointer(int i, int i2, int i3, long j) {
    }

    public static native void glTexParameteri(int i, int i2, int i3);

    public static native void glTranslatef(float f, float f2, float f3);

    public static void glVertexPointer(int i, int i2, int i3, long j) {
    }

    public static native void glViewport(int i, int i2, int i3, int i4);

    static native void nglCallLists(Buffer buffer, int i, int i2);

    static native void nglColorPointer(int i, int i2, int i3, Buffer buffer, int i4);

    static native void nglDeleteTextures(Buffer buffer, int i, int i2);

    static native void nglFogfv(int i, Buffer buffer, int i2);

    static native void nglGenTextures(Buffer buffer, int i, int i2);

    static native void nglGetFloatv(int i, Buffer buffer, int i2);

    static native void nglLightModelfv(int i, Buffer buffer, int i2);

    static native void nglLightfv(int i, int i2, Buffer buffer, int i3);

    static native void nglNormalPointer(int i, int i2, Buffer buffer, int i3);

    static native void nglReadPixels(int i, int i2, int i3, int i4, int i5, int i6, Buffer buffer, int i7);

    static native void nglTexCoordPointer(int i, int i2, int i3, Buffer buffer, int i4);

    static native void nglTexImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer, int i9);

    static native void nglTexSubImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer, int i9);

    static native void nglVertexPointer(int i, int i2, int i3, Buffer buffer, int i4);

    static {
        NativeLib.load();
    }

    private GL11() {
    }

    public static void glCallLists(IntBuffer intBuffer) {
        nglCallLists(intBuffer, intBuffer.position() << 2, intBuffer.remaining());
    }

    public static void glColor3f(float f, float f2, float f3) {
        glColor4f(f, f2, f3, 1.0f);
    }

    public static void glColorPointer(int i, boolean z, int i2, ByteBuffer byteBuffer) {
        nglColorPointer(i, z ? 5121 : 5120, i2, byteBuffer, byteBuffer.position());
    }

    public static void glDeleteTextures(IntBuffer intBuffer) {
        nglDeleteTextures(intBuffer, intBuffer.position() << 2, intBuffer.remaining());
    }

    public static void glFog(int i, FloatBuffer floatBuffer) {
        nglFogfv(i, floatBuffer, floatBuffer.position() << 2);
    }

    public static void glGenTextures(IntBuffer intBuffer) {
        nglGenTextures(intBuffer, intBuffer.position() << 2, intBuffer.remaining());
    }

    public static int glGenTextures() {
        IntBuffer intBufferCreateIntBuffer = BufferUtils.createIntBuffer(1);
        glGenTextures(intBufferCreateIntBuffer);
        return intBufferCreateIntBuffer.get(0);
    }

    public static void glGetFloat(int i, FloatBuffer floatBuffer) {
        nglGetFloatv(i, floatBuffer, floatBuffer.position() << 2);
    }

    public static void glLight(int i, int i2, FloatBuffer floatBuffer) {
        nglLightfv(i, i2, floatBuffer, floatBuffer.position() << 2);
    }

    public static void glLightModel(int i, FloatBuffer floatBuffer) {
        nglLightModelfv(i, floatBuffer, floatBuffer.position() << 2);
    }

    public static void glNormalPointer(int i, ByteBuffer byteBuffer) {
        nglNormalPointer(5120, i, byteBuffer, byteBuffer.position());
    }

    public static void glReadPixels(int i, int i2, int i3, int i4, int i5, int i6, ByteBuffer byteBuffer) {
        nglReadPixels(i, i2, i3, i4, i5, i6, byteBuffer, byteBuffer.position());
    }

    public static void glScaled(double d, double d2, double d3) {
        glScalef((float) d, (float) d2, (float) d3);
    }

    public static void glTexCoordPointer(int i, int i2, FloatBuffer floatBuffer) {
        nglTexCoordPointer(i, 5126, i2, floatBuffer, floatBuffer.position() << 2);
    }

    public static void glTexImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, ByteBuffer byteBuffer) {
        nglTexImage2D(i, i2, i3, i4, i5, i6, i7, i8, byteBuffer, byteBuffer == null ? 0 : byteBuffer.position());
    }

    public static void glTexSubImage2D(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, ByteBuffer byteBuffer) {
        nglTexSubImage2D(i, i2, i3, i4, i5, i6, i7, i8, byteBuffer, byteBuffer.position());
    }

    public static void glVertexPointer(int i, int i2, FloatBuffer floatBuffer) {
        nglVertexPointer(i, 5126, i2, floatBuffer, floatBuffer.position() << 2);
    }
}
