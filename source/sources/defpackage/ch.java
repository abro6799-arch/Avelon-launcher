package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class ch extends da {
    @Override // defpackage.da
    protected void a(char c, int i) {
    }

    @Override // defpackage.da
    public boolean c() {
        return false;
    }

    @Override // defpackage.da
    public void b() {
        this.e.clear();
        this.e.add(new ke(1, (this.c / 2) - 100, (this.d / 4) + 72, "Respawn"));
        this.e.add(new ke(2, (this.c / 2) - 100, (this.d / 4) + 96, "Title menu"));
        if (this.b.k == null) {
            ((ke) this.e.get(1)).g = false;
        }
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        int i = keVar.f;
        if (keVar.f == 1) {
            this.b.h.p_();
            this.b.a((da) null);
        }
        if (keVar.f == 2) {
            this.b.a((fd) null);
            this.b.a(new fu());
        }
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        a(0, 0, this.c, this.d, 1615855616, -1602211792);
        GL11.glPushMatrix();
        GL11.glScalef(2.0f, 2.0f, 2.0f);
        a(this.g, "Game over!", (this.c / 2) / 2, 30, 16777215);
        GL11.glPopMatrix();
        a(this.g, "Score: &e" + this.b.h.C(), this.c / 2, 100, 16777215);
        super.a(i, i2, f);
    }
}
