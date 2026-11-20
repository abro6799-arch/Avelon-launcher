package defpackage;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class rq extends da {
    protected da a;
    private int m;
    private List n;
    private mg o;
    private String p;
    private String q;
    private boolean r;
    private ke s;
    private ke t;
    private ke u;
    private final DateFormat j = new SimpleDateFormat();
    protected String i = "Select world";
    private boolean l = false;

    public rq(da daVar) {
        this.a = daVar;
    }

    @Override // defpackage.da
    public void b() {
        nh nhVarA = nh.a();
        this.i = nhVarA.a("selectWorld.title");
        this.p = nhVarA.a("selectWorld.world");
        this.q = nhVarA.a("selectWorld.conversion");
        l();
        mg mgVar = new mg(this);
        this.o = mgVar;
        mgVar.a(this.e, 4, 5);
        k();
    }

    private void l() {
        List listB = this.b.c().b();
        this.n = listB;
        Collections.sort(listB);
        this.m = -1;
    }

    protected String c(int i) {
        return ((vb) this.n.get(i)).a();
    }

    protected String d(int i) {
        String strB = ((vb) this.n.get(i)).b();
        if (strB != null && !in.a(strB)) {
            return strB;
        }
        return nh.a().a("selectWorld.world") + " " + (i + 1);
    }

    public void k() {
        nh nhVarA = nh.a();
        List list = this.e;
        ke keVar = new ke(1, (this.c / 2) - 154, this.d - 52, 150, 20, nhVarA.a("selectWorld.select"));
        this.t = keVar;
        list.add(keVar);
        List list2 = this.e;
        ke keVar2 = new ke(6, (this.c / 2) - 154, this.d - 28, 70, 20, nhVarA.a("selectWorld.rename"));
        this.s = keVar2;
        list2.add(keVar2);
        List list3 = this.e;
        ke keVar3 = new ke(2, (this.c / 2) - 74, this.d - 28, 70, 20, nhVarA.a("selectWorld.delete"));
        this.u = keVar3;
        list3.add(keVar3);
        this.e.add(new ke(3, (this.c / 2) + 4, this.d - 52, 150, 20, nhVarA.a("selectWorld.create")));
        this.e.add(new ke(0, (this.c / 2) + 4, this.d - 28, 150, 20, nhVarA.a("gui.cancel")));
        this.t.g = false;
        this.s.g = false;
        this.u.g = false;
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.g) {
            if (keVar.f == 2) {
                String strD = d(this.m);
                if (strD != null) {
                    this.r = true;
                    nh nhVarA = nh.a();
                    this.b.a(new qt(this, nhVarA.a("selectWorld.deleteQuestion"), "'" + strD + "' " + nhVarA.a("selectWorld.deleteWarning"), nhVarA.a("selectWorld.deleteButton"), nhVarA.a("gui.cancel"), this.m));
                    return;
                }
                return;
            }
            if (keVar.f == 1) {
                e(this.m);
                return;
            }
            if (keVar.f == 3) {
                this.b.a(new fj(this));
                return;
            }
            if (keVar.f == 6) {
                this.b.a(new jk(this, c(this.m)));
            } else if (keVar.f == 0) {
                this.b.a(this.a);
            } else {
                this.o.a(keVar);
            }
        }
    }

    public void e(int i) {
        this.b.a((da) null);
        if (this.l) {
            return;
        }
        this.l = true;
        this.b.c = new os(this.b);
        String strC = c(i);
        if (strC == null) {
            strC = "World" + i;
        }
        this.b.a(strC, d(i), 0L);
        this.b.a((da) null);
    }

    @Override // defpackage.da
    public void a(boolean z, int i) {
        if (this.r) {
            this.r = false;
            if (z) {
                nl nlVarC = this.b.c();
                nlVarC.c();
                nlVarC.c(c(i));
                l();
            }
            this.b.a(this);
        }
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        this.o.a(i, i2, f);
        a(this.g, this.i, this.c / 2, 20, 16777215);
        super.a(i, i2, f);
    }
}
