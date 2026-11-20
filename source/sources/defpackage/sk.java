package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class sk extends ow implements lw {
    private iz[] i = new iz[3];
    public int a = 0;
    public int b = 0;
    public int c = 0;

    @Override // defpackage.lw
    public String c() {
        return "Furnace";
    }

    @Override // defpackage.lw
    public int d() {
        return 64;
    }

    @Override // defpackage.lw
    public int a() {
        return this.i.length;
    }

    @Override // defpackage.lw
    public iz f_(int i) {
        return this.i[i];
    }

    @Override // defpackage.lw
    public iz a(int i, int i2) {
        iz izVar = this.i[i];
        if (izVar == null) {
            return null;
        }
        if (izVar.a <= i2) {
            iz[] izVarArr = this.i;
            iz izVar2 = izVarArr[i];
            izVarArr[i] = null;
            return izVar2;
        }
        iz izVarA = this.i[i].a(i2);
        if (this.i[i].a == 0) {
            this.i[i] = null;
        }
        return izVarA;
    }

    @Override // defpackage.lw
    public void a(int i, iz izVar) {
        this.i[i] = izVar;
        if (izVar == null || izVar.a <= d()) {
            return;
        }
        izVar.a = d();
    }

    @Override // defpackage.ow
    public void a(nu nuVar) {
        super.a(nuVar);
        sp spVarL = nuVar.l("Items");
        this.i = new iz[a()];
        for (int i = 0; i < spVarL.c(); i++) {
            nu nuVar2 = (nu) spVarL.a(i);
            byte bC = nuVar2.c("Slot");
            if (bC >= 0) {
                iz[] izVarArr = this.i;
                if (bC < izVarArr.length) {
                    izVarArr[bC] = new iz(nuVar2);
                }
            }
        }
        this.a = nuVar.d("BurnTime");
        this.c = nuVar.d("CookTime");
        this.b = a(this.i[1]);
    }

    @Override // defpackage.ow
    public void b(nu nuVar) {
        super.b(nuVar);
        nuVar.a("BurnTime", (short) this.a);
        nuVar.a("CookTime", (short) this.c);
        sp spVar = new sp();
        int i = 0;
        while (true) {
            iz[] izVarArr = this.i;
            if (i < izVarArr.length) {
                if (izVarArr[i] != null) {
                    nu nuVar2 = new nu();
                    nuVar2.a("Slot", (byte) i);
                    this.i[i].a(nuVar2);
                    spVar.a(nuVar2);
                }
                i++;
            } else {
                nuVar.a("Items", spVar);
                return;
            }
        }
    }

    public int b(int i) {
        return (this.c * i) / Keyboard.KEY_UP;
    }

    public int c(int i) {
        if (this.b == 0) {
            this.b = Keyboard.KEY_UP;
        }
        return (this.a * i) / this.b;
    }

    public boolean b() {
        return this.a > 0;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0046  */
    @Override // defpackage.ow
    public void n_() {
        boolean z;
        int i = this.a;
        boolean z2 = false;
        boolean z3 = i > 0;
        if (i > 0) {
            this.a = i - 1;
        }
        if (!this.d.B) {
            if (this.a == 0 && l()) {
                int iA = a(this.i[1]);
                this.a = iA;
                this.b = iA;
                if (iA > 0) {
                    iz izVar = this.i[1];
                    if (izVar != null) {
                        izVar.a--;
                        if (this.i[1].a == 0) {
                            this.i[1] = null;
                        }
                    }
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            if (b() && l()) {
                int i2 = this.c + 1;
                this.c = i2;
                if (i2 == 200) {
                    this.c = 0;
                    k();
                    z = true;
                }
            } else {
                this.c = 0;
            }
            int i3 = this.a;
            if (z3 != (i3 > 0)) {
                tc.a(i3 > 0, this.d, this.e, this.f, this.g);
                z2 = true;
            } else {
                z2 = z;
            }
        }
        if (z2) {
            y_();
        }
    }

    private boolean l() {
        iz izVarA;
        if (this.i[0] == null || (izVarA = ey.a().a(this.i[0].a().bf)) == null) {
            return false;
        }
        iz izVar = this.i[2];
        if (izVar == null) {
            return true;
        }
        if (izVar.a(izVarA)) {
            return (this.i[2].a < d() && this.i[2].a < this.i[2].c()) || this.i[2].a < izVarA.c();
        }
        return false;
    }

    public void k() {
        if (l()) {
            iz izVarA = ey.a().a(this.i[0].a().bf);
            iz[] izVarArr = this.i;
            iz izVar = izVarArr[2];
            if (izVar == null) {
                izVarArr[2] = izVarA.k();
            } else if (izVar.c == izVarA.c) {
                this.i[2].a++;
            }
            this.i[0].a--;
            if (this.i[0].a <= 0) {
                this.i[0] = null;
            }
        }
    }

    private int a(iz izVar) {
        if (izVar == null) {
            return 0;
        }
        int i = izVar.a().bf;
        if (i < 256 && uu.m[i].bA == ln.d) {
            return 300;
        }
        if (i == gm.B.bf) {
            return 100;
        }
        if (i == gm.k.bf) {
            return 1600;
        }
        if (i == gm.aw.bf) {
            return 20000;
        }
        return i == uu.z.bn ? 100 : 0;
    }

    @Override // defpackage.lw
    public boolean a_(gs gsVar) {
        return this.d.b(this.e, this.f, this.g) == this && gsVar.g(((double) this.e) + 0.5d, ((double) this.f) + 0.5d, ((double) this.g) + 0.5d) <= 64.0d;
    }
}
