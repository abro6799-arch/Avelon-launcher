package defpackage;

import net.minecraft.client.Minecraft;
import org.lwjgl.input.Keyboard;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class ke extends ub {
    protected int a;
    protected int b;
    public int c;
    public int d;
    public String e;
    public int f;
    public boolean g;
    public boolean h;

    public void a(int i, int i2) {
    }

    protected void b(Minecraft minecraft, int i, int i2) {
    }

    public ke(int i, int i2, int i3, String str) {
        this(i, i2, i3, Keyboard.KEY_UP, 20, str);
    }

    public ke(int i, int i2, int i3, int i4, int i5, String str) {
        this.g = true;
        this.h = true;
        this.f = i;
        this.c = i2;
        this.d = i3;
        this.a = i4;
        this.b = i5;
        this.e = str;
    }

    protected int a(boolean z) {
        if (this.g) {
            return z ? 2 : 1;
        }
        return 0;
    }

    public void a(Minecraft minecraft, int i, int i2) {
        int i3;
        if (this.h) {
            sj sjVar = minecraft.q;
            GL11.glBindTexture(3553, minecraft.p.b("/gui/gui.png"));
            GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
            int i4 = this.c;
            boolean z = i >= i4 && i2 >= (i3 = this.d) && i < i4 + this.a && i2 < i3 + this.b;
            int iA = (a(z) * 20) + 46;
            b(this.c, this.d, 0, iA, this.a / 2, this.b);
            int i5 = this.c;
            int i6 = this.a;
            b((i6 / 2) + i5, this.d, 200 - (i6 / 2), iA, i6 / 2, this.b);
            b(minecraft, i, i2);
            if (!this.g) {
                a(sjVar, this.e, this.c + (this.a / 2), this.d + ((this.b - 8) / 2), -6250336);
            } else if (z) {
                a(sjVar, this.e, this.c + (this.a / 2), this.d + ((this.b - 8) / 2), 16777120);
            } else {
                a(sjVar, this.e, this.c + (this.a / 2), this.d + ((this.b - 8) / 2), 14737632);
            }
        }
    }

    public boolean c(Minecraft minecraft, int i, int i2) {
        int i3;
        int i4;
        return this.g && i >= (i3 = this.c) && i2 >= (i4 = this.d) && i < i3 + this.a && i2 < i4 + this.b;
    }
}
