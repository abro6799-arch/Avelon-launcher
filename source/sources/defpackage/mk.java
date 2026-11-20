package defpackage;

import net.minecraft.client.Minecraft;
import org.lwjgl.input.Keyboard;
import org.lwjgl.opengl.Display;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class mk implements yb {
    private Minecraft b;
    private String a = "";
    private String c = "";
    private long d = System.currentTimeMillis();
    private boolean e = false;

    public mk(Minecraft minecraft) {
        this.b = minecraft;
    }

    public void a(String str) {
        this.e = false;
        c(str);
    }

    @Override // defpackage.yb
    public void b(String str) {
        this.e = true;
        c(this.c);
    }

    public void c(String str) {
        if (!this.b.J) {
            if (!this.e) {
                throw new xx();
            }
            return;
        }
        this.c = str;
        qq qqVar = new qq(this.b.z, this.b.d, this.b.e);
        GL11.glClear(Keyboard.KEYBOARD_SIZE);
        GL11.glMatrixMode(5889);
        GL11.glLoadIdentity();
        GL11.glOrtho(0.0d, qqVar.a, qqVar.b, 0.0d, 100.0d, 300.0d);
        GL11.glMatrixMode(5888);
        GL11.glLoadIdentity();
        GL11.glTranslatef(0.0f, 0.0f, -200.0f);
    }

    @Override // defpackage.yb
    public void d(String str) {
        if (!this.b.J) {
            if (!this.e) {
                throw new xx();
            }
        } else {
            this.d = 0L;
            this.a = str;
            a(-1);
            this.d = 0L;
        }
    }

    @Override // defpackage.yb
    public void a(int i) {
        if (!this.b.J) {
            if (!this.e) {
                throw new xx();
            }
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.d < 20) {
            return;
        }
        this.d = jCurrentTimeMillis;
        qq qqVar = new qq(this.b.z, this.b.d, this.b.e);
        int iA = qqVar.a();
        int iB = qqVar.b();
        GL11.glClear(Keyboard.KEYBOARD_SIZE);
        GL11.glMatrixMode(5889);
        GL11.glLoadIdentity();
        GL11.glOrtho(0.0d, qqVar.a, qqVar.b, 0.0d, 100.0d, 300.0d);
        GL11.glMatrixMode(5888);
        GL11.glLoadIdentity();
        GL11.glTranslatef(0.0f, 0.0f, -200.0f);
        GL11.glClear(16640);
        nw nwVar = nw.a;
        GL11.glBindTexture(3553, this.b.p.b("/gui/background.png"));
        nwVar.b();
        nwVar.b(4210752);
        double d = iB;
        double d2 = iB / 32.0f;
        nwVar.a(0.0d, d, 0.0d, 0.0d, d2);
        double d3 = iA;
        double d4 = iA / 32.0f;
        nwVar.a(d3, d, 0.0d, d4, d2);
        nwVar.a(d3, 0.0d, 0.0d, d4, 0.0d);
        nwVar.a(0.0d, 0.0d, 0.0d, 0.0d, 0.0d);
        nwVar.a();
        if (i >= 0) {
            int i2 = (iA / 2) - 50;
            int i3 = (iB / 2) + 16;
            GL11.glDisable(3553);
            nwVar.b();
            nwVar.b(8421504);
            double d5 = i2;
            double d6 = i3;
            nwVar.a(d5, d6, 0.0d);
            double d7 = i3 + 2;
            nwVar.a(d5, d7, 0.0d);
            double d8 = i2 + 100;
            nwVar.a(d8, d7, 0.0d);
            nwVar.a(d8, d6, 0.0d);
            nwVar.b(8454016);
            nwVar.a(d5, d6, 0.0d);
            nwVar.a(d5, d7, 0.0d);
            double d9 = i2 + i;
            nwVar.a(d9, d7, 0.0d);
            nwVar.a(d9, d6, 0.0d);
            nwVar.a();
            GL11.glEnable(3553);
        }
        int i4 = (iB / 2) - 4;
        this.b.q.a(this.c, (iA - this.b.q.a(this.c)) / 2, i4 - 16, 16777215);
        this.b.q.a(this.a, (iA - this.b.q.a(this.a)) / 2, i4 + 8, 16777215);
        Display.update();
        try {
            Thread.yield();
        } catch (Exception unused) {
        }
    }
}
