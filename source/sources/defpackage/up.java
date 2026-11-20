package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class up extends da {
    private da i;
    private kv j;
    protected String a = "Controls";
    private int l = -1;

    public up(da daVar, kv kvVar) {
        this.i = daVar;
        this.j = kvVar;
    }

    private int k() {
        return (this.c / 2) - 155;
    }

    @Override // defpackage.da
    public void b() {
        nh nhVarA = nh.a();
        int iK = k();
        for (int i = 0; i < this.j.w.length; i++) {
            this.e.add(new ab(i, iK + ((i % 2) * 160), (this.d / 6) + ((i >> 1) * 24), 70, 20, this.j.b(i)));
        }
        this.e.add(new ke(Keyboard.KEY_UP, (this.c / 2) - 100, (this.d / 6) + 168, nhVarA.a("gui.done")));
        this.a = nhVarA.a("controls.title");
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        for (int i = 0; i < this.j.w.length; i++) {
            ((ke) this.e.get(i)).e = this.j.b(i);
        }
        if (keVar.f == 200) {
            this.b.a(this.i);
            return;
        }
        this.l = keVar.f;
        keVar.e = "> " + this.j.b(keVar.f) + " <";
    }

    @Override // defpackage.da
    protected void a(char c, int i) {
        int i2 = this.l;
        if (i2 >= 0) {
            this.j.a(i2, i);
            ((ke) this.e.get(this.l)).e = this.j.b(this.l);
            this.l = -1;
            return;
        }
        super.a(c, i);
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        i();
        a(this.g, this.a, this.c / 2, 20, 16777215);
        int iK = k();
        for (int i3 = 0; i3 < this.j.w.length; i3++) {
            b(this.g, this.j.a(i3), ((i3 % 2) * 160) + iK + 70 + 6, (this.d / 6) + ((i3 >> 1) * 24) + 7, -1);
        }
        super.a(i, i2, f);
    }
}
