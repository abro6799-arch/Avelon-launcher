package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class ov extends id {
    private sk l;

    public ov(ix ixVar, sk skVar) {
        super(new bm(ixVar, skVar));
        this.l = skVar;
    }

    @Override // defpackage.id
    protected void k() {
        this.g.b("Furnace", 60, 6, 4210752);
        this.g.b("Inventory", 8, (this.i - 96) + 2, 4210752);
    }

    @Override // defpackage.id
    protected void a(float f) {
        int iB = this.b.p.b("/gui/furnace.png");
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        this.b.p.b(iB);
        int i = (this.c - this.a) / 2;
        int i2 = (this.d - this.i) / 2;
        b(i, i2, 0, 0, this.a, this.i);
        if (this.l.b()) {
            int iC = this.l.c(12);
            b(i + 56, ((i2 + 36) + 12) - iC, 176, 12 - iC, 14, iC + 2);
        }
        b(i + 79, i2 + 34, 176, 14, this.l.b(24) + 1, 16);
    }
}
