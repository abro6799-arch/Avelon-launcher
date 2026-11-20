package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class gq extends id {
    public gq(ix ixVar, az azVar) {
        super(new sh(ixVar, azVar));
    }

    @Override // defpackage.id
    protected void k() {
        this.g.b("Dispenser", 60, 6, 4210752);
        this.g.b("Inventory", 8, (this.i - 96) + 2, 4210752);
    }

    @Override // defpackage.id
    protected void a(float f) {
        int iB = this.b.p.b("/gui/trap.png");
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        this.b.p.b(iB);
        b((this.c - this.a) / 2, (this.d - this.i) / 2, 0, 0, this.a, this.i);
    }
}
