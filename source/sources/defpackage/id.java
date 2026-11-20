package defpackage;

import org.lwjgl.input.Keyboard;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public abstract class id extends da {
    private static bb l = new bb();
    protected int a = 176;
    protected int i = 166;
    public dw j;

    protected abstract void a(float f);

    @Override // defpackage.da
    protected void b(int i, int i2, int i3) {
    }

    @Override // defpackage.da
    public boolean c() {
        return false;
    }

    protected void k() {
    }

    public id(dw dwVar) {
        this.j = dwVar;
    }

    @Override // defpackage.da
    public void b() {
        super.b();
        this.b.h.e = this.j;
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        i();
        int i3 = (this.c - this.a) / 2;
        int i4 = (this.d - this.i) / 2;
        a(f);
        GL11.glPushMatrix();
        GL11.glRotatef(120.0f, 1.0f, 0.0f, 0.0f);
        u.b();
        GL11.glPopMatrix();
        GL11.glPushMatrix();
        GL11.glTranslatef(i3, i4, 0.0f);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        GL11.glEnable(32826);
        gp gpVar = null;
        for (int i5 = 0; i5 < this.j.e.size(); i5++) {
            gp gpVar2 = (gp) this.j.e.get(i5);
            a(gpVar2);
            if (a(gpVar2, i, i2)) {
                GL11.glDisable(2896);
                GL11.glDisable(2929);
                int i6 = gpVar2.b;
                int i7 = gpVar2.c;
                a(i6, i7, i6 + 16, i7 + 16, -2130706433, -2130706433);
                GL11.glEnable(2896);
                GL11.glEnable(2929);
                gpVar = gpVar2;
            }
        }
        ix ixVar = this.b.h.c;
        if (ixVar.i() != null) {
            GL11.glTranslatef(0.0f, 0.0f, 32.0f);
            int i8 = (i - i3) - 8;
            int i9 = (i2 - i4) - 8;
            l.a(this.g, this.b.p, ixVar.i(), i8, i9);
            l.b(this.g, this.b.p, ixVar.i(), i8, i9);
        }
        GL11.glDisable(32826);
        u.a();
        GL11.glDisable(2896);
        GL11.glDisable(2929);
        k();
        if (ixVar.i() == null && gpVar != null && gpVar.b()) {
            String strTrim = ("" + nh.a().b(gpVar.a().l())).trim();
            if (strTrim.length() > 0) {
                int i10 = (i - i3) + 12;
                int i11 = (i2 - i4) - 12;
                a(i10 - 3, i11 - 3, this.g.a(strTrim) + i10 + 3, i11 + 8 + 3, -1073741824, -1073741824);
                this.g.a(strTrim, i10, i11, -1);
            }
        }
        GL11.glPopMatrix();
        super.a(i, i2, f);
        GL11.glEnable(2896);
        GL11.glEnable(2929);
    }

    private void a(gp gpVar) {
        int iE;
        int i = gpVar.b;
        int i2 = gpVar.c;
        iz izVarA = gpVar.a();
        if (izVarA == null && (iE = gpVar.e()) >= 0) {
            GL11.glDisable(2896);
            this.b.p.b(this.b.p.b("/gui/items.png"));
            b(i, i2, (iE % 16) * 16, (iE / 16) * 16, 16, 16);
            GL11.glEnable(2896);
            return;
        }
        l.a(this.g, this.b.p, izVarA, i, i2);
        l.b(this.g, this.b.p, izVarA, i, i2);
    }

    private gp a(int i, int i2) {
        for (int i3 = 0; i3 < this.j.e.size(); i3++) {
            gp gpVar = (gp) this.j.e.get(i3);
            if (a(gpVar, i, i2)) {
                return gpVar;
            }
        }
        return null;
    }

    private boolean a(gp gpVar, int i, int i2) {
        int i3 = i - ((this.c - this.a) / 2);
        int i4 = i2 - ((this.d - this.i) / 2);
        return i3 >= gpVar.b - 1 && i3 < (gpVar.b + 16) + 1 && i4 >= gpVar.c - 1 && i4 < (gpVar.c + 16) + 1;
    }

    @Override // defpackage.da
    protected void a(int i, int i2, int i3) {
        super.a(i, i2, i3);
        if (i3 == 0 || i3 == 1) {
            gp gpVarA = a(i, i2);
            int i4 = (this.c - this.a) / 2;
            int i5 = this.d;
            int i6 = this.i;
            int i7 = (i5 - i6) / 2;
            int i8 = i < i4 || i2 < i7 || i >= i4 + this.a || i2 >= i7 + i6 ? -999 : gpVarA != null ? gpVarA.a : -1;
            if (i8 != -1) {
                this.b.c.a(this.j.f, i8, i3, i8 != -999 && (Keyboard.isKeyDown(42) || Keyboard.isKeyDown(54)), this.b.h);
            }
        }
    }

    @Override // defpackage.da
    protected void a(char c, int i) {
        if (i == 1 || i == this.b.z.r.b) {
            this.b.h.r();
        }
    }

    @Override // defpackage.da
    public void h() {
        if (this.b.h == null) {
            return;
        }
        this.b.c.a(this.j.f, this.b.h);
    }

    @Override // defpackage.da
    public void a() {
        super.a();
        if (!this.b.h.W() || this.b.h.be) {
            this.b.h.r();
        }
    }
}
