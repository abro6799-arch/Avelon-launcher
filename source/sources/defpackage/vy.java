package defpackage;

import java.nio.IntBuffer;
import mcshim.awt.Component;
import org.lwjgl.LWJGLException;
import org.lwjgl.input.Cursor;
import org.lwjgl.input.Mouse;

/* JADX INFO: loaded from: classes.dex */
public class vy {
    public int a;
    public int b;
    private Component c;
    private Cursor d;
    private int e = 10;

    public vy(Component component) {
        this.c = component;
        IntBuffer intBufferD = ge.d(1);
        intBufferD.put(0);
        intBufferD.flip();
        try {
            this.d = new Cursor(32, 32, 16, 16, 1, ge.d(1024), intBufferD);
        } catch (LWJGLException e) {
            e.printStackTrace();
        }
    }

    public void a() {
        Mouse.setGrabbed(true);
        this.a = 0;
        this.b = 0;
    }

    public void b() {
        Mouse.setCursorPosition(this.c.getWidth() / 2, this.c.getHeight() / 2);
        Mouse.setGrabbed(false);
    }

    public void c() {
        this.a = Mouse.getDX();
        this.b = Mouse.getDY();
    }
}
