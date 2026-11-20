package defpackage;

import java.util.Random;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class fj extends da {
    private da a;
    private ro i;
    private ro j;
    private String l;
    private boolean m;

    public fj(da daVar) {
        this.a = daVar;
    }

    @Override // defpackage.da
    public void a() {
        this.i.b();
        this.j.b();
    }

    @Override // defpackage.da
    public void b() {
        nh nhVarA = nh.a();
        Keyboard.enableRepeatEvents(true);
        this.e.clear();
        this.e.add(new ke(0, (this.c / 2) - 100, (this.d / 4) + 96 + 12, nhVarA.a("selectWorld.create")));
        this.e.add(new ke(1, (this.c / 2) - 100, (this.d / 4) + 120 + 12, nhVarA.a("gui.cancel")));
        ro roVar = new ro(this, this.g, (this.c / 2) - 100, 60, Keyboard.KEY_UP, 20, nhVarA.a("selectWorld.newWorld"));
        this.i = roVar;
        roVar.a = true;
        this.i.a(32);
        this.j = new ro(this, this.g, (this.c / 2) - 100, 116, Keyboard.KEY_UP, 20, "");
        k();
    }

    private void k() {
        this.l = this.i.a().trim();
        for (char c : fp.b) {
            this.l = this.l.replace(c, '_');
        }
        if (in.a(this.l)) {
            this.l = "World";
        }
        this.l = a(this.b.c(), this.l);
    }

    public static String a(nl nlVar, String str) {
        while (nlVar.b(str) != null) {
            str = str + "-";
        }
        return str;
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
                return;
            }
            if (keVar.f == 0) {
                this.b.a((da) null);
                if (this.m) {
                    return;
                }
                this.m = true;
                long jNextLong = new Random().nextLong();
                String strA = this.j.a();
                if (!in.a(strA)) {
                    try {
                        long j = Long.parseLong(strA);
                        if (j != 0) {
                            jNextLong = j;
                        }
                    } catch (NumberFormatException unused) {
                        jNextLong = strA.hashCode();
                    }
                }
                this.b.c = new os(this.b);
                this.b.a(this.l, this.i.a(), jNextLong);
                this.b.a((da) null);
            }
        }
    }

    @Override // defpackage.da
    protected void a(char c, int i) {
        if (this.i.a) {
            this.i.a(c, i);
        } else {
            this.j.a(c, i);
        }
        if (c == '\r') {
            a((ke) this.e.get(0));
        }
        ((ke) this.e.get(0)).g = this.i.a().length() > 0;
        k();
    }

    @Override // defpackage.da
    protected void a(int i, int i2, int i3) {
        super.a(i, i2, i3);
        this.i.a(i, i2, i3);
        this.j.a(i, i2, i3);
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        nh nhVarA = nh.a();
        i();
        a(this.g, nhVarA.a("selectWorld.create"), this.c / 2, ((this.d / 4) - 60) + 20, 16777215);
        b(this.g, nhVarA.a("selectWorld.enterName"), (this.c / 2) - 100, 47, 10526880);
        b(this.g, nhVarA.a("selectWorld.resultFolder") + " " + this.l, (this.c / 2) - 100, 85, 10526880);
        b(this.g, nhVarA.a("selectWorld.enterSeed"), (this.c / 2) + (-100), 104, 10526880);
        b(this.g, nhVarA.a("selectWorld.seedInfo"), (this.c / 2) + (-100), 140, 10526880);
        this.i.c();
        this.j.c();
        super.a(i, i2, f);
    }

    @Override // defpackage.da
    public void j() {
        if (this.i.a) {
            this.i.a(false);
            this.j.a(true);
        } else {
            this.i.a(true);
            this.j.a(false);
        }
    }
}
