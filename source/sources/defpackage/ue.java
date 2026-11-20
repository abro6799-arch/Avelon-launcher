package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class ue extends id {
    private float l;
    private float m;

    public ue(gs gsVar) {
        super(gsVar.d);
        this.f = true;
        gsVar.a(ep.f, 1);
    }

    @Override // defpackage.id, defpackage.da
    public void b() {
        this.e.clear();
    }

    @Override // defpackage.id
    protected void k() {
        this.g.b("Crafting", 86, 16, 4210752);
    }

    @Override // defpackage.id, defpackage.da
    public void a(int i, int i2, float f) {
        super.a(i, i2, f);
        this.l = i;
        this.m = i2;
    }

    @Override // defpackage.id
    protected void a(float f) {
        int iB = this.b.p.b("/gui/inventory.png");
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        this.b.p.b(iB);
        int i = (this.c - this.a) / 2;
        int i2 = (this.d - this.i) / 2;
        b(i, i2, 0, 0, this.a, this.i);
        GL11.glEnable(32826);
        GL11.glEnable(2903);
        GL11.glPushMatrix();
        float f2 = i + 51;
        int i3 = i2 + 75;
        GL11.glTranslatef(f2, i3, 50.0f);
        GL11.glScalef(-30.0f, 30.0f, 30.0f);
        GL11.glRotatef(180.0f, 0.0f, 0.0f, 1.0f);
        float f3 = this.b.h.H;
        float f4 = this.b.h.aS;
        float f5 = this.b.h.aT;
        float f6 = f2 - this.l;
        float f7 = (i3 - 50) - this.m;
        GL11.glRotatef(135.0f, 0.0f, 1.0f, 0.0f);
        u.b();
        GL11.glRotatef(-135.0f, 0.0f, 1.0f, 0.0f);
        double d = f7 / 40.0f;
        GL11.glRotatef((-((float) Math.atan(d))) * 20.0f, 1.0f, 0.0f, 0.0f);
        double d2 = f6 / 40.0f;
        this.b.h.H = ((float) Math.atan(d2)) * 20.0f;
        this.b.h.aS = ((float) Math.atan(d2)) * 40.0f;
        this.b.h.aT = (-((float) Math.atan(d))) * 20.0f;
        this.b.h.bE = 1.0f;
        GL11.glTranslatef(0.0f, this.b.h.bf, 0.0f);
        th.a.i = 180.0f;
        th.a.a(this.b.h, 0.0d, 0.0d, 0.0d, 0.0f, 1.0f);
        this.b.h.bE = 0.0f;
        this.b.h.H = f3;
        this.b.h.aS = f4;
        this.b.h.aT = f5;
        GL11.glPopMatrix();
        u.a();
        GL11.glDisable(32826);
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.f == 0) {
            this.b.a(new xm(this.b.I));
        }
        if (keVar.f == 1) {
            this.b.a(new dv(this, this.b.I));
        }
    }
}
