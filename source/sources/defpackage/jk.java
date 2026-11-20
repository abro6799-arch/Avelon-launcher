package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class jk extends da {
    private da a;
    private ro i;
    private final String j;

    public jk(da daVar, String str) {
        this.a = daVar;
        this.j = str;
    }

    @Override // defpackage.da
    public void a() {
        this.i.b();
    }

    @Override // defpackage.da
    public void b() {
        nh nhVarA = nh.a();
        Keyboard.enableRepeatEvents(true);
        this.e.clear();
        this.e.add(new ke(0, (this.c / 2) - 100, (this.d / 4) + 96 + 12, nhVarA.a("selectWorld.renameButton")));
        this.e.add(new ke(1, (this.c / 2) - 100, (this.d / 4) + 120 + 12, nhVarA.a("gui.cancel")));
        ro roVar = new ro(this, this.g, (this.c / 2) - 100, 60, Keyboard.KEY_UP, 20, this.b.c().b(this.j).j());
        this.i = roVar;
        roVar.a = true;
        this.i.a(32);
    }

    @Override // defpackage.da
    public void h() {
        Keyboard.enableRepeatEvents(false);
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.g) {
            if (keVar.f == 1) {
                this.b.a(this.a);
            } else if (keVar.f == 0) {
                this.b.c().a(this.j, this.i.a().trim());
                this.b.a(this.a);
            }
        }
    }

    @Override // defpackage.da
    protected void a(char c, int i) {
        this.i.a(c, i);
        ((ke) this.e.get(0)).g = this.i.a().trim().length() > 0;
        if (c == '\r') {
            a((ke) this.e.get(0));
        }
    }

    @Override // defpackage.da
    protected void a(int i, int i2, int i3) {
        super.a(i, i2, i3);
        this.i.a(i, i2, i3);
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        nh nhVarA = nh.a();
        i();
        a(this.g, nhVarA.a("selectWorld.renameTitle"), this.c / 2, ((this.d / 4) - 60) + 20, 16777215);
        b(this.g, nhVarA.a("selectWorld.enterName"), (this.c / 2) - 100, 47, 10526880);
        this.i.c();
        super.a(i, i2, f);
    }
}
