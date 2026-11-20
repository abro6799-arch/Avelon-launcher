package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class dw {
    public List d = new ArrayList();
    public List e = new ArrayList();
    public int f = 0;
    private short a = 0;
    protected List g = new ArrayList();
    private Set b = new HashSet();

    public void a(int i, int i2) {
    }

    public void a(short s) {
    }

    public void b(short s) {
    }

    public abstract boolean b(gs gsVar);

    protected void a(gp gpVar) {
        gpVar.a = this.e.size();
        this.e.add(gpVar);
        this.d.add(null);
    }

    public void a() {
        for (int i = 0; i < this.e.size(); i++) {
            iz izVarA = ((gp) this.e.get(i)).a();
            if (!iz.a((iz) this.d.get(i), izVarA)) {
                iz izVarK = izVarA == null ? null : izVarA.k();
                this.d.set(i, izVarK);
                for (int i2 = 0; i2 < this.g.size(); i2++) {
                    ((ec) this.g.get(i2)).a(this, i, izVarK);
                }
            }
        }
    }

    public gp b(int i) {
        return (gp) this.e.get(i);
    }

    public iz a(int i) {
        gp gpVar = (gp) this.e.get(i);
        if (gpVar != null) {
            return gpVar.a();
        }
        return null;
    }

    public iz a(int i, int i2, boolean z, gs gsVar) {
        int i3;
        int iC;
        if (i2 != 0 && i2 != 1) {
            return null;
        }
        ix ixVar = gsVar.c;
        if (i == -999) {
            if (ixVar.i() == null || i != -999) {
                return null;
            }
            if (i2 == 0) {
                gsVar.a(ixVar.i());
                ixVar.b((iz) null);
            }
            if (i2 != 1) {
                return null;
            }
            gsVar.a(ixVar.i().a(1));
            if (ixVar.i().a != 0) {
                return null;
            }
            ixVar.b((iz) null);
            return null;
        }
        if (z) {
            iz izVarA = a(i);
            if (izVarA == null) {
                return null;
            }
            int i4 = izVarA.a;
            iz izVarK = izVarA.k();
            gp gpVar = (gp) this.e.get(i);
            if (gpVar != null && gpVar.a() != null && gpVar.a().a < i4) {
                a(i, i2, z, gsVar);
            }
            return izVarK;
        }
        gp gpVar2 = (gp) this.e.get(i);
        if (gpVar2 == null) {
            return null;
        }
        gpVar2.c();
        iz izVarA2 = gpVar2.a();
        iz izVarI = ixVar.i();
        iz izVarK2 = izVarA2 != null ? izVarA2.k() : null;
        if (izVarA2 == null) {
            if (izVarI != null && gpVar2.b(izVarI)) {
                iC = i2 == 0 ? izVarI.a : 1;
                if (iC > gpVar2.d()) {
                    iC = gpVar2.d();
                }
                gpVar2.c(izVarI.a(iC));
                if (izVarI.a == 0) {
                    ixVar.b((iz) null);
                }
            }
        } else if (izVarI == null) {
            ixVar.b(gpVar2.a(i2 == 0 ? izVarA2.a : (izVarA2.a + 1) / 2));
            if (izVarA2.a == 0) {
                gpVar2.c(null);
            }
            gpVar2.a(ixVar.i());
        } else if (gpVar2.b(izVarI)) {
            if (izVarA2.c != izVarI.c || (izVarA2.f() && izVarA2.i() != izVarI.i())) {
                if (izVarI.a <= gpVar2.d()) {
                    gpVar2.c(izVarI);
                    ixVar.b(izVarA2);
                }
            } else {
                iC = i2 == 0 ? izVarI.a : 1;
                if (iC > gpVar2.d() - izVarA2.a) {
                    iC = gpVar2.d() - izVarA2.a;
                }
                if (iC > izVarI.c() - izVarA2.a) {
                    iC = izVarI.c() - izVarA2.a;
                }
                izVarI.a(iC);
                if (izVarI.a == 0) {
                    ixVar.b((iz) null);
                }
                izVarA2.a += iC;
            }
        } else if (izVarA2.c == izVarI.c && izVarI.c() > 1 && ((!izVarA2.f() || izVarA2.i() == izVarI.i()) && (i3 = izVarA2.a) > 0 && izVarI.a + i3 <= izVarI.c())) {
            izVarI.a += i3;
            izVarA2.a(i3);
            if (izVarA2.a == 0) {
                gpVar2.c(null);
            }
            gpVar2.a(ixVar.i());
        }
        return izVarK2;
    }

    public void a(gs gsVar) {
        ix ixVar = gsVar.c;
        if (ixVar.i() != null) {
            gsVar.a(ixVar.i());
            ixVar.b((iz) null);
        }
    }

    public void a(lw lwVar) {
        a();
    }

    public void a(int i, iz izVar) {
        b(i).c(izVar);
    }

    public void a(iz[] izVarArr) {
        for (int i = 0; i < izVarArr.length; i++) {
            b(i).c(izVarArr[i]);
        }
    }

    public short a(ix ixVar) {
        short s = (short) (this.a + 1);
        this.a = s;
        return s;
    }

    protected void a(iz izVar, int i, int i2, boolean z) {
        int i3 = z ? i2 - 1 : i;
        if (izVar.d()) {
            while (izVar.a > 0 && ((!z && i3 < i2) || (z && i3 >= i))) {
                gp gpVar = (gp) this.e.get(i3);
                iz izVarA = gpVar.a();
                if (izVarA != null && izVarA.c == izVar.c && (!izVar.f() || izVar.i() == izVarA.i())) {
                    int i4 = izVarA.a + izVar.a;
                    if (i4 <= izVar.c()) {
                        izVar.a = 0;
                        izVarA.a = i4;
                        gpVar.c();
                    } else if (izVarA.a < izVar.c()) {
                        izVar.a -= izVar.c() - izVarA.a;
                        izVarA.a = izVar.c();
                        gpVar.c();
                    }
                }
                i3 = z ? i3 - 1 : i3 + 1;
            }
        }
        if (izVar.a <= 0) {
            return;
        }
        int i5 = z ? i2 - 1 : i;
        while (true) {
            if ((z || i5 >= i2) && (!z || i5 < i)) {
                return;
            }
            gp gpVar2 = (gp) this.e.get(i5);
            if (gpVar2.a() == null) {
                gpVar2.c(izVar.k());
                gpVar2.c();
                izVar.a = 0;
                return;
            }
            i5 = z ? i5 - 1 : i5 + 1;
        }
    }
}
