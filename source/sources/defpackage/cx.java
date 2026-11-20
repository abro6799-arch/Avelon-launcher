package defpackage;

import org.lwjgl.opengl.GLContext;

/* JADX INFO: loaded from: classes.dex */
public class cx {
    private static boolean a = true;

    public boolean a() {
        return a && GLContext.getCapabilities().GL_ARB_occlusion_query;
    }
}
