package defpackage;

import java.util.List;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class dv extends da {
    private static bb j = new bb();
    protected da a;
    private su l;
    private ci m;
    private ga n;
    private xi o;
    protected String i = "Select world";
    private lg p = null;

    public dv(da daVar, xi xiVar) {
        this.a = daVar;
        this.o = xiVar;
    }

    @Override // defpackage.da
    public void b() {
        this.i = Cdo.a("gui.stats");
        su suVar = new su(this);
        this.l = suVar;
        suVar.a(this.e, 1, 1);
        ci ciVar = new ci(this);
        this.m = ciVar;
        ciVar.a(this.e, 1, 1);
        ga gaVar = new ga(this);
        this.n = gaVar;
        gaVar.a(this.e, 1, 1);
        this.p = this.l;
        k();
    }

    public void k() {
        nh nhVarA = nh.a();
        this.e.add(new ke(0, (this.c / 2) + 4, this.d - 28, 150, 20, nhVarA.a("gui.done")));
        this.e.add(new ke(1, (this.c / 2) - 154, this.d - 52, 100, 20, nhVarA.a("stat.generalButton")));
        List list = this.e;
        ke keVar = new ke(2, (this.c / 2) - 46, this.d - 52, 100, 20, nhVarA.a("stat.blocksButton"));
        list.add(keVar);
        List list2 = this.e;
        ke keVar2 = new ke(3, (this.c / 2) + 62, this.d - 52, 100, 20, nhVarA.a("stat.itemsButton"));
        list2.add(keVar2);
        if (this.n.a() == 0) {
            keVar.g = false;
        }
        if (this.m.a() == 0) {
            keVar2.g = false;
        }
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.g) {
            if (keVar.f == 0) {
                this.b.a(this.a);
                return;
            }
            if (keVar.f == 1) {
                this.p = this.l;
                return;
            }
            if (keVar.f == 3) {
                this.p = this.m;
            } else if (keVar.f == 2) {
                this.p = this.n;
            } else {
                this.p.a(keVar);
            }
        }
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        this.p.a(i, i2, f);
        a(this.g, this.i, this.c / 2, 20, 16777215);
        super.a(i, i2, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i, int i2, int i3) {
        a(i + 1, i2 + 1);
        GL11.glEnable(32826);
        GL11.glPushMatrix();
        GL11.glRotatef(180.0f, 1.0f, 0.0f, 0.0f);
        u.b();
        GL11.glPopMatrix();
        j.a(this.g, this.b.p, i3, 0, gm.c[i3].a(0), i + 2, i2 + 2);
        u.a();
        GL11.glDisable(32826);
    }

    private void a(int i, int i2) {
        c(i, i2, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i, int i2, int i3, int i4) {
        int iB = this.b.p.b("/gui/slot.png");
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        this.b.p.b(iB);
        nw nwVar = nw.a;
        nwVar.b();
        double d = i + 0;
        double d2 = i2 + 18;
        double d3 = (i3 + 0) * 0.0078125f;
        double d4 = (i4 + 18) * 0.0078125f;
        nwVar.a(d, d2, this.k, d3, d4);
        double d5 = i + 18;
        double d6 = (i3 + 18) * 0.0078125f;
        nwVar.a(d5, d2, this.k, d6, d4);
        double d7 = i2 + 0;
        double d8 = (i4 + 0) * 0.0078125f;
        nwVar.a(d5, d7, this.k, d6, d8);
        nwVar.a(d, d7, this.k, d3, d8);
        nwVar.a();
    }
}
