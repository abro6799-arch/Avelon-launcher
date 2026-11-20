package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class oo extends id {
    public oo(ix ixVar, fd fdVar, int i, int i2, int i3) {
        super(new it(ixVar, fdVar, i, i2, i3));
    }

    @Override // defpackage.id, defpackage.da
    public void h() {
        super.h();
        this.j.a(this.b.h);
    }

    @Override // defpackage.id
    protected void k() {
        this.g.b("Crafting", 28, 6, 4210752);
        this.g.b("Inventory", 8, (this.i - 96) + 2, 4210752);
    }

    @Override // defpackage.id
    protected void a(float f) {
        int iB = this.b.p.b("/gui/crafting.png");
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        this.b.p.b(iB);
        b((this.c - this.a) / 2, (this.d - this.i) / 2, 0, 0, this.a, this.i);
    }
}
