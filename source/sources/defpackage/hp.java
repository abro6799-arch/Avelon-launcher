package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class hp extends id {
    private lw l;
    private lw m;
    private int n;

    public hp(lw lwVar, lw lwVar2) {
        super(new cd(lwVar, lwVar2));
        this.n = 0;
        this.l = lwVar;
        this.m = lwVar2;
        this.f = false;
        int iA = lwVar2.a() / 9;
        this.n = iA;
        this.i = 114 + (iA * 18);
    }

    @Override // defpackage.id
    protected void k() {
        this.g.b(this.m.c(), 8, 6, 4210752);
        this.g.b(this.l.c(), 8, (this.i - 96) + 2, 4210752);
    }

    @Override // defpackage.id
    protected void a(float f) {
        int iB = this.b.p.b("/gui/container.png");
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        this.b.p.b(iB);
        int i = (this.c - this.a) / 2;
        int i2 = (this.d - this.i) / 2;
        b(i, i2, 0, 0, this.a, (this.n * 18) + 17);
        b(i, i2 + (this.n * 18) + 17, 0, 126, this.a, 96);
    }
}
