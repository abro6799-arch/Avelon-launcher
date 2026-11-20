package defpackage;

import net.minecraft.client.Minecraft;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class hy extends je {
    private cv b;

    @Override // defpackage.je
    public void a(uk ukVar, double d, double d2, double d3, float f) {
        uu uuVar = uu.m[ukVar.a()];
        if (uuVar == null || ukVar.a(f) >= 1.0f) {
            return;
        }
        nw nwVar = nw.a;
        a("/terrain.png");
        u.a();
        GL11.glBlendFunc(770, 771);
        GL11.glEnable(3042);
        GL11.glDisable(2884);
        if (Minecraft.v()) {
            GL11.glShadeModel(7425);
        } else {
            GL11.glShadeModel(7424);
        }
        nwVar.b();
        float f2 = (float) d;
        float f3 = (float) d2;
        float f4 = (float) d3;
        nwVar.b((f2 - ukVar.e) + ukVar.b(f), (f3 - ukVar.f) + ukVar.c(f), (f4 - ukVar.g) + ukVar.d(f));
        nwVar.a(1, 1, 1);
        if (uuVar == uu.ab && ukVar.a(f) < 0.5f) {
            this.b.a(uuVar, ukVar.e, ukVar.f, ukVar.g, false);
        } else if (ukVar.k() && !ukVar.b()) {
            uu.ab.a_(((jq) uuVar).i());
            this.b.a(uu.ab, ukVar.e, ukVar.f, ukVar.g, ukVar.a(f) < 0.5f);
            uu.ab.a();
            nwVar.b(f2 - ukVar.e, f3 - ukVar.f, f4 - ukVar.g);
            this.b.d(uuVar, ukVar.e, ukVar.f, ukVar.g);
        } else {
            this.b.a(uuVar, ukVar.e, ukVar.f, ukVar.g);
        }
        nwVar.b(0.0d, 0.0d, 0.0d);
        nwVar.a();
        u.b();
    }

    @Override // defpackage.je
    public void a(fd fdVar) {
        this.b = new cv(fdVar);
    }
}
