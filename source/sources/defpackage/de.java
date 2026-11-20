package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
class de extends lg {
    final /* synthetic */ ft a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public de(ft ftVar) {
        super(ftVar.b, ftVar.c, ftVar.d, 32, (ftVar.d - 55) + 4, 36);
        this.a = ftVar;
    }

    @Override // defpackage.lg
    protected int a() {
        return this.a.b.D.b().size();
    }

    @Override // defpackage.lg
    protected void a(int i, boolean z) {
        this.a.b.D.a((i) this.a.b.D.b().get(i));
        this.a.b.p.b();
    }

    @Override // defpackage.lg
    protected boolean c_(int i) {
        return this.a.b.D.a == this.a.b.D.b().get(i);
    }

    @Override // defpackage.lg
    protected int b() {
        return a() * 36;
    }

    @Override // defpackage.lg
    protected void c() {
        this.a.i();
    }

    @Override // defpackage.lg
    protected void a(int i, int i2, int i3, int i4, nw nwVar) {
        i iVar = (i) this.a.b.D.b().get(i);
        iVar.c(this.a.b);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        nwVar.b();
        nwVar.b(16777215);
        double d = i2;
        double d2 = i3 + i4;
        nwVar.a(d, d2, 0.0d, 0.0d, 1.0d);
        int i5 = i2 + 32;
        double d3 = i5;
        nwVar.a(d3, d2, 0.0d, 1.0d, 1.0d);
        double d4 = i3;
        nwVar.a(d3, d4, 0.0d, 1.0d, 0.0d);
        nwVar.a(d, d4, 0.0d, 0.0d, 0.0d);
        nwVar.a();
        ft ftVar = this.a;
        int i6 = i5 + 2;
        ftVar.b(ftVar.g, iVar.a, i6, i3 + 1, 16777215);
        ft ftVar2 = this.a;
        int i7 = i3 + 12;
        ftVar2.b(ftVar2.g, iVar.b, i6, i7, 8421504);
        ft ftVar3 = this.a;
        ftVar3.b(ftVar3.g, iVar.c, i6, i7 + 10, 8421504);
    }
}
