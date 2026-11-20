package defpackage;

import java.util.ArrayList;
import java.util.List;
import net.minecraft.client.Minecraft;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class du extends ub {
    private List a = new ArrayList();
    private Minecraft b;

    public du(Minecraft minecraft) {
        this.b = minecraft;
    }

    public void a() {
        int i = 0;
        while (i < this.a.size()) {
            kw kwVar = (kw) this.a.get(i);
            kwVar.a();
            kwVar.a(this);
            if (kwVar.h) {
                this.a.remove(i);
                i--;
            }
            i++;
        }
    }

    public void a(float f) {
        du duVar = this;
        duVar.b.p.b(duVar.b.p.b("/gui/particles.png"));
        int i = 0;
        while (i < duVar.a.size()) {
            kw kwVar = (kw) duVar.a.get(i);
            double d = f;
            int i2 = (int) ((kwVar.c + ((kwVar.a - kwVar.c) * d)) - 4.0d);
            int i3 = (int) ((kwVar.d + ((kwVar.b - kwVar.d) * d)) - 4.0d);
            GL11.glColor4f((float) (kwVar.o + ((kwVar.k - kwVar.o) * d)), (float) (kwVar.p + ((kwVar.l - kwVar.p) * d)), (float) (kwVar.q + ((kwVar.m - kwVar.q) * d)), (float) (kwVar.r + ((kwVar.n - kwVar.r) * d)));
            b(i2, i3, 40, 0, 8, 8);
            i++;
            duVar = this;
        }
    }
}
