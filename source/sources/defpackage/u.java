package defpackage;

import java.nio.FloatBuffer;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class u {
    private static FloatBuffer a = ge.e(16);

    public static void a() {
        GL11.glDisable(2896);
        GL11.glDisable(16384);
        GL11.glDisable(16385);
        GL11.glDisable(2903);
    }

    public static void b() {
        GL11.glEnable(2896);
        GL11.glEnable(16384);
        GL11.glEnable(16385);
        GL11.glEnable(2903);
        GL11.glColorMaterial(1032, 5634);
        bt btVarC = bt.b(0.20000000298023224d, 1.0d, -0.699999988079071d).c();
        GL11.glLight(16384, 4611, a(btVarC.a, btVarC.b, btVarC.c, 0.0d));
        GL11.glLight(16384, 4609, a(0.6f, 0.6f, 0.6f, 1.0f));
        GL11.glLight(16384, 4608, a(0.0f, 0.0f, 0.0f, 1.0f));
        GL11.glLight(16384, 4610, a(0.0f, 0.0f, 0.0f, 1.0f));
        bt btVarC2 = bt.b(-0.20000000298023224d, 1.0d, 0.699999988079071d).c();
        GL11.glLight(16385, 4611, a(btVarC2.a, btVarC2.b, btVarC2.c, 0.0d));
        GL11.glLight(16385, 4609, a(0.6f, 0.6f, 0.6f, 1.0f));
        GL11.glLight(16385, 4608, a(0.0f, 0.0f, 0.0f, 1.0f));
        GL11.glLight(16385, 4610, a(0.0f, 0.0f, 0.0f, 1.0f));
        GL11.glShadeModel(7424);
        GL11.glLightModel(2899, a(0.4f, 0.4f, 0.4f, 1.0f));
    }

    private static FloatBuffer a(double d, double d2, double d3, double d4) {
        return a((float) d, (float) d2, (float) d3, (float) d4);
    }

    private static FloatBuffer a(float f, float f2, float f3, float f4) {
        a.clear();
        a.put(f).put(f2).put(f3).put(f4);
        a.flip();
        return a;
    }
}
