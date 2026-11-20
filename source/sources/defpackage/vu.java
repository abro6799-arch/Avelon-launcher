package defpackage;

import net.minecraft.client.Minecraft;
import org.lwjgl.input.Keyboard;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class vu extends ub {
    private Minecraft a;
    private int b;
    private int c;
    private String d;
    private String e;
    private ny f;
    private long g;
    private bb h = new bb();
    private boolean i;

    public vu(Minecraft minecraft) {
        this.a = minecraft;
    }

    public void a(ny nyVar) {
        this.d = Cdo.a("achievement.get");
        this.e = nyVar.f;
        this.g = System.currentTimeMillis();
        this.f = nyVar;
        this.i = false;
    }

    public void b(ny nyVar) {
        this.d = nyVar.f;
        this.e = nyVar.e();
        this.g = System.currentTimeMillis() - 2500;
        this.f = nyVar;
        this.i = true;
    }

    private void b() {
        GL11.glViewport(0, 0, this.a.d, this.a.e);
        GL11.glMatrixMode(5889);
        GL11.glLoadIdentity();
        GL11.glMatrixMode(5888);
        GL11.glLoadIdentity();
        this.b = this.a.d;
        this.c = this.a.e;
        qq qqVar = new qq(this.a.z, this.a.d, this.a.e);
        this.b = qqVar.a();
        this.c = qqVar.b();
        GL11.glClear(Keyboard.KEYBOARD_SIZE);
        GL11.glMatrixMode(5889);
        GL11.glLoadIdentity();
        GL11.glOrtho(0.0d, this.b, this.c, 0.0d, 1000.0d, 3000.0d);
        GL11.glMatrixMode(5888);
        GL11.glLoadIdentity();
        GL11.glTranslatef(0.0f, 0.0f, -2000.0f);
    }

    public void a() {
        if (Minecraft.H > 0) {
            GL11.glDisable(2929);
            GL11.glDepthMask(false);
            u.a();
            b();
            this.a.q.a("Minecraft Beta 1.7.3   Unlicensed Copy :(", 2, 2, 16777215);
            this.a.q.a("(Or logged in from another location)", 2, 11, 16777215);
            this.a.q.a("Purchase at minecraft.net", 2, 20, 16777215);
            GL11.glDepthMask(true);
            GL11.glEnable(2929);
        }
        if (this.f == null || this.g == 0) {
            return;
        }
        double dCurrentTimeMillis = (System.currentTimeMillis() - this.g) / 3000.0d;
        boolean z = this.i;
        if (!z && !z && (dCurrentTimeMillis < 0.0d || dCurrentTimeMillis > 1.0d)) {
            this.g = 0L;
            return;
        }
        b();
        GL11.glDisable(2929);
        GL11.glDepthMask(false);
        double d = dCurrentTimeMillis * 2.0d;
        if (d > 1.0d) {
            d = 2.0d - d;
        }
        double d2 = 1.0d - (d * 4.0d);
        double d3 = d2 >= 0.0d ? d2 : 0.0d;
        double d4 = d3 * d3;
        int i = this.b - 160;
        int i2 = 0 - ((int) ((d4 * d4) * 36.0d));
        int iB = this.a.p.b("/achievement/bg.png");
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        GL11.glEnable(3553);
        GL11.glBindTexture(3553, iB);
        GL11.glDisable(2896);
        b(i, i2, 96, 202, 160, 32);
        if (this.i) {
            this.a.q.a(this.e, i + 30, i2 + 7, 120, -1);
        } else {
            int i3 = i + 30;
            this.a.q.b(this.d, i3, i2 + 7, -256);
            this.a.q.b(this.e, i3, i2 + 18, -1);
        }
        GL11.glPushMatrix();
        GL11.glRotatef(180.0f, 1.0f, 0.0f, 0.0f);
        u.b();
        GL11.glPopMatrix();
        GL11.glDisable(2896);
        GL11.glEnable(32826);
        GL11.glEnable(2903);
        GL11.glEnable(2896);
        this.h.a(this.a.q, this.a.p, this.f.d, i + 8, i2 + 8);
        GL11.glDisable(2896);
        GL11.glDepthMask(true);
        GL11.glEnable(2929);
    }
}
