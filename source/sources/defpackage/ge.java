package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.List;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class ge {
    private static List a = new ArrayList();
    private static List b = new ArrayList();

    public static synchronized int a(int i) {
        int iGlGenLists;
        iGlGenLists = GL11.glGenLists(i);
        a.add(Integer.valueOf(iGlGenLists));
        a.add(Integer.valueOf(i));
        return iGlGenLists;
    }

    public static synchronized void a(IntBuffer intBuffer) {
        GL11.glGenTextures(intBuffer);
        for (int iPosition = intBuffer.position(); iPosition < intBuffer.limit(); iPosition++) {
            b.add(Integer.valueOf(intBuffer.get(iPosition)));
        }
    }

    public static synchronized void b(int i) {
        int iIndexOf = a.indexOf(Integer.valueOf(i));
        GL11.glDeleteLists(((Integer) a.get(iIndexOf)).intValue(), ((Integer) a.get(iIndexOf + 1)).intValue());
        a.remove(iIndexOf);
        a.remove(iIndexOf);
    }

    public static synchronized void a() {
        for (int i = 0; i < a.size(); i += 2) {
            GL11.glDeleteLists(((Integer) a.get(i)).intValue(), ((Integer) a.get(i + 1)).intValue());
        }
        IntBuffer intBufferD = d(b.size());
        intBufferD.flip();
        GL11.glDeleteTextures(intBufferD);
        for (int i2 = 0; i2 < b.size(); i2++) {
            intBufferD.put(((Integer) b.get(i2)).intValue());
        }
        intBufferD.flip();
        GL11.glDeleteTextures(intBufferD);
        a.clear();
        b.clear();
    }

    public static synchronized ByteBuffer c(int i) {
        return ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
    }

    public static IntBuffer d(int i) {
        return c(i << 2).asIntBuffer();
    }

    public static FloatBuffer e(int i) {
        return c(i << 2).asFloatBuffer();
    }
}
