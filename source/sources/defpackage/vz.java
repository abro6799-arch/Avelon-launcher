package defpackage;

import net.minecraft.client.Minecraft;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class vz extends ke {
    public float i;
    public boolean j;
    private ht l;

    @Override // defpackage.ke
    protected int a(boolean z) {
        return 0;
    }

    public vz(int i, int i2, int i3, ht htVar, String str, float f) {
        super(i, i2, i3, 150, 20, str);
        this.j = false;
        this.l = htVar;
        this.i = f;
    }

    @Override // defpackage.ke
    protected void b(Minecraft minecraft, int i, int i2) {
        if (this.h) {
            if (this.j) {
                float f = (i - (this.c + 4)) / (this.a - 8);
                this.i = f;
                if (f < 0.0f) {
                    this.i = 0.0f;
                }
                if (this.i > 1.0f) {
                    this.i = 1.0f;
                }
                minecraft.z.a(this.l, this.i);
                this.e = minecraft.z.c(this.l);
            }
            GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
            b(this.c + ((int) (this.i * (this.a - 8))), this.d, 0, 66, 4, 20);
            b(this.c + ((int) (this.i * (this.a - 8))) + 4, this.d, 196, 66, 4, 20);
        }
    }

    @Override // defpackage.ke
    public boolean c(Minecraft minecraft, int i, int i2) {
        if (!super.c(minecraft, i, i2)) {
            return false;
        }
        float f = (i - (this.c + 4)) / (this.a - 8);
        this.i = f;
        if (f < 0.0f) {
            this.i = 0.0f;
        }
        if (this.i > 1.0f) {
            this.i = 1.0f;
        }
        minecraft.z.a(this.l, this.i);
        this.e = minecraft.z.c(this.l);
        this.j = true;
        return true;
    }

    @Override // defpackage.ke
    public void a(int i, int i2) {
        this.j = false;
    }
}
