package defpackage;

import java.nio.IntBuffer;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class tg {
    private int a;
    private int b;
    private int c;
    private float d;
    private float e;
    private float f;
    private IntBuffer g = ge.d(65536);
    private boolean h = false;
    private boolean i = false;

    public void a(int i, int i2, int i3, double d, double d2, double d3) {
        this.h = true;
        this.g.clear();
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = (float) d;
        this.e = (float) d2;
        this.f = (float) d3;
    }

    public boolean a(int i, int i2, int i3) {
        return this.h && i == this.a && i2 == this.b && i3 == this.c;
    }

    public void a(int i) {
        this.g.put(i);
        if (this.g.remaining() == 0) {
            a();
        }
    }

    public void a() {
        if (this.h) {
            if (!this.i) {
                this.g.flip();
                this.i = true;
            }
            if (this.g.remaining() > 0) {
                GL11.glPushMatrix();
                GL11.glTranslatef(this.a - this.d, this.b - this.e, this.c - this.f);
                GL11.glCallLists(this.g);
                GL11.glPopMatrix();
            }
        }
    }

    public void b() {
        this.h = false;
        this.i = false;
    }
}
