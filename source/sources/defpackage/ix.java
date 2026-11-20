package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ix implements lw {
    public gs d;
    private iz f;
    public iz[] a = new iz[36];
    public iz[] b = new iz[4];
    public int c = 0;
    public boolean e = false;

    @Override // defpackage.lw
    public String c() {
        return "Inventory";
    }

    @Override // defpackage.lw
    public int d() {
        return 64;
    }

    public ix(gs gsVar) {
        this.d = gsVar;
    }

    public iz b() {
        int i = this.c;
        if (i >= 9 || i < 0) {
            return null;
        }
        return this.a[i];
    }

    private int f(int i) {
        int i2 = 0;
        while (true) {
            iz[] izVarArr = this.a;
            if (i2 >= izVarArr.length) {
                return -1;
            }
            iz izVar = izVarArr[i2];
            if (izVar != null && izVar.c == i) {
                return i2;
            }
            i2++;
        }
    }

    private int d(iz izVar) {
        int i = 0;
        while (true) {
            iz[] izVarArr = this.a;
            if (i >= izVarArr.length) {
                return -1;
            }
            iz izVar2 = izVarArr[i];
            if (izVar2 != null && izVar2.c == izVar.c && this.a[i].d() && this.a[i].a < this.a[i].c() && this.a[i].a < d() && (!this.a[i].f() || this.a[i].i() == izVar.i())) {
                return i;
            }
            i++;
        }
    }

    private int j() {
        int i = 0;
        while (true) {
            iz[] izVarArr = this.a;
            if (i >= izVarArr.length) {
                return -1;
            }
            if (izVarArr[i] == null) {
                return i;
            }
            i++;
        }
    }

    public void a(int i, boolean z) {
        int iF = f(i);
        if (iF < 0 || iF >= 9) {
            return;
        }
        this.c = iF;
    }

    public void b(int i) {
        if (i > 0) {
            i = 1;
        }
        if (i < 0) {
            i = -1;
        }
        this.c -= i;
        while (true) {
            int i2 = this.c;
            if (i2 >= 0) {
                break;
            } else {
                this.c = i2 + 9;
            }
        }
        while (true) {
            int i3 = this.c;
            if (i3 < 9) {
                return;
            } else {
                this.c = i3 - 9;
            }
        }
    }

    private int e(iz izVar) {
        int i = izVar.c;
        int i2 = izVar.a;
        int iD = d(izVar);
        if (iD < 0) {
            iD = j();
        }
        if (iD < 0) {
            return i2;
        }
        iz[] izVarArr = this.a;
        if (izVarArr[iD] == null) {
            izVarArr[iD] = new iz(i, 0, izVar.i());
        }
        int iC = i2 > this.a[iD].c() - this.a[iD].a ? this.a[iD].c() - this.a[iD].a : i2;
        if (iC > d() - this.a[iD].a) {
            iC = d() - this.a[iD].a;
        }
        if (iC == 0) {
            return i2;
        }
        int i3 = i2 - iC;
        this.a[iD].a += iC;
        this.a[iD].b = 5;
        return i3;
    }

    public void e() {
        int i = 0;
        while (true) {
            iz[] izVarArr = this.a;
            if (i >= izVarArr.length) {
                return;
            }
            iz izVar = izVarArr[i];
            if (izVar != null) {
                izVar.a(this.d.aI, this.d, i, this.c == i);
            }
            i++;
        }
    }

    public boolean c(int i) {
        int iF = f(i);
        if (iF < 0) {
            return false;
        }
        iz izVar = this.a[iF];
        int i2 = izVar.a - 1;
        izVar.a = i2;
        if (i2 <= 0) {
            this.a[iF] = null;
        }
        return true;
    }

    public boolean a(iz izVar) {
        int i;
        if (!izVar.g()) {
            do {
                i = izVar.a;
                izVar.a = e(izVar);
                if (izVar.a <= 0) {
                    break;
                }
            } while (izVar.a < i);
            return izVar.a < i;
        }
        int iJ = j();
        if (iJ < 0) {
            return false;
        }
        this.a[iJ] = iz.b(izVar);
        this.a[iJ].b = 5;
        izVar.a = 0;
        return true;
    }

    @Override // defpackage.lw
    public iz a(int i, int i2) {
        iz[] izVarArr = this.a;
        if (i >= izVarArr.length) {
            iz[] izVarArr2 = this.b;
            i -= izVarArr.length;
            izVarArr = izVarArr2;
        }
        iz izVar = izVarArr[i];
        if (izVar == null) {
            return null;
        }
        if (izVar.a <= i2) {
            iz izVar2 = izVarArr[i];
            izVarArr[i] = null;
            return izVar2;
        }
        iz izVarA = izVarArr[i].a(i2);
        if (izVarArr[i].a == 0) {
            izVarArr[i] = null;
        }
        return izVarA;
    }

    @Override // defpackage.lw
    public void a(int i, iz izVar) {
        iz[] izVarArr = this.a;
        if (i >= izVarArr.length) {
            i -= izVarArr.length;
            izVarArr = this.b;
        }
        izVarArr[i] = izVar;
    }

    public float a(uu uuVar) {
        iz izVar = this.a[this.c];
        if (izVar != null) {
            return 1.0f * izVar.a(uuVar);
        }
        return 1.0f;
    }

    public sp a(sp spVar) {
        int i = 0;
        int i2 = 0;
        while (true) {
            iz[] izVarArr = this.a;
            if (i2 >= izVarArr.length) {
                break;
            }
            if (izVarArr[i2] != null) {
                nu nuVar = new nu();
                nuVar.a("Slot", (byte) i2);
                this.a[i2].a(nuVar);
                spVar.a(nuVar);
            }
            i2++;
        }
        while (true) {
            iz[] izVarArr2 = this.b;
            if (i >= izVarArr2.length) {
                return spVar;
            }
            if (izVarArr2[i] != null) {
                nu nuVar2 = new nu();
                nuVar2.a("Slot", (byte) (i + 100));
                this.b[i].a(nuVar2);
                spVar.a(nuVar2);
            }
            i++;
        }
    }

    public void b(sp spVar) {
        this.a = new iz[36];
        this.b = new iz[4];
        for (int i = 0; i < spVar.c(); i++) {
            nu nuVar = (nu) spVar.a(i);
            int iC = nuVar.c("Slot") & 255;
            iz izVar = new iz(nuVar);
            if (izVar.a() != null) {
                if (iC >= 0) {
                    iz[] izVarArr = this.a;
                    if (iC < izVarArr.length) {
                        izVarArr[iC] = izVar;
                    }
                }
                if (iC >= 100) {
                    iz[] izVarArr2 = this.b;
                    if (iC < izVarArr2.length + 100) {
                        izVarArr2[iC - 100] = izVar;
                    }
                }
            }
        }
    }

    @Override // defpackage.lw
    public int a() {
        return this.a.length + 4;
    }

    @Override // defpackage.lw
    public iz f_(int i) {
        iz[] izVarArr = this.a;
        if (i >= izVarArr.length) {
            i -= izVarArr.length;
            izVarArr = this.b;
        }
        return izVarArr[i];
    }

    public int a(sn snVar) {
        iz izVarF_ = f_(this.c);
        if (izVarF_ != null) {
            return izVarF_.a(snVar);
        }
        return 1;
    }

    public boolean b(uu uuVar) {
        if (uuVar.bA.i()) {
            return true;
        }
        iz izVarF_ = f_(this.c);
        if (izVarF_ != null) {
            return izVarF_.b(uuVar);
        }
        return false;
    }

    public iz d(int i) {
        return this.b[i];
    }

    public int f() {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int iH = 0;
        while (true) {
            iz[] izVarArr = this.b;
            if (i >= izVarArr.length) {
                break;
            }
            iz izVar = izVarArr[i];
            if (izVar != null && (izVar.a() instanceof wa)) {
                int iJ = this.b[i].j();
                iH += iJ - this.b[i].h();
                i2 += iJ;
                i3 += ((wa) this.b[i].a()).bl;
            }
            i++;
        }
        if (i2 == 0) {
            return 0;
        }
        return (((i3 - 1) * iH) / i2) + 1;
    }

    public void e(int i) {
        int i2 = 0;
        while (true) {
            iz[] izVarArr = this.b;
            if (i2 >= izVarArr.length) {
                return;
            }
            iz izVar = izVarArr[i2];
            if (izVar != null && (izVar.a() instanceof wa)) {
                this.b[i2].a(i, this.d);
                if (this.b[i2].a == 0) {
                    this.b[i2].a(this.d);
                    this.b[i2] = null;
                }
            }
            i2++;
        }
    }

    public void g() {
        int i = 0;
        int i2 = 0;
        while (true) {
            iz[] izVarArr = this.a;
            if (i2 >= izVarArr.length) {
                break;
            }
            iz izVar = izVarArr[i2];
            if (izVar != null) {
                this.d.a(izVar, true);
                this.a[i2] = null;
            }
            i2++;
        }
        while (true) {
            iz[] izVarArr2 = this.b;
            if (i >= izVarArr2.length) {
                return;
            }
            iz izVar2 = izVarArr2[i];
            if (izVar2 != null) {
                this.d.a(izVar2, true);
                this.b[i] = null;
            }
            i++;
        }
    }

    @Override // defpackage.lw
    public void y_() {
        this.e = true;
    }

    public void b(iz izVar) {
        this.f = izVar;
        this.d.b(izVar);
    }

    public iz i() {
        return this.f;
    }

    @Override // defpackage.lw
    public boolean a_(gs gsVar) {
        return !this.d.be && gsVar.g(this.d) <= 64.0d;
    }

    public boolean c(iz izVar) {
        int i = 0;
        while (true) {
            iz[] izVarArr = this.b;
            if (i < izVarArr.length) {
                iz izVar2 = izVarArr[i];
                if (izVar2 != null && izVar2.c(izVar)) {
                    return true;
                }
                i++;
            } else {
                int i2 = 0;
                while (true) {
                    iz[] izVarArr2 = this.a;
                    if (i2 >= izVarArr2.length) {
                        return false;
                    }
                    iz izVar3 = izVarArr2[i2];
                    if (izVar3 != null && izVar3.c(izVar)) {
                        return true;
                    }
                    i2++;
                }
            }
        }
    }
}
