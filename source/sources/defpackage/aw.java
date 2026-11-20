package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class aw {
    public int b;
    public byte[] a = new byte[1024];
    public boolean c = false;
    public int d = 0;
    public int e = 1;
    public int f = 0;

    public void a() {
    }

    public aw(int i) {
        this.b = i;
    }

    public void a(ji jiVar) {
        int i = this.f;
        if (i == 0) {
            GL11.glBindTexture(3553, jiVar.b("/terrain.png"));
        } else if (i == 1) {
            GL11.glBindTexture(3553, jiVar.b("/gui/items.png"));
        }
    }
}
