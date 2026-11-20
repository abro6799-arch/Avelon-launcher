package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class az extends ow implements lw {
    private iz[] a = new iz[9];
    private Random b = new Random();

    @Override // defpackage.lw
    public int a() {
        return 9;
    }

    @Override // defpackage.lw
    public String c() {
        return "Trap";
    }

    @Override // defpackage.lw
    public int d() {
        return 64;
    }

    @Override // defpackage.lw
    public iz f_(int i) {
        return this.a[i];
    }

    @Override // defpackage.lw
    public iz a(int i, int i2) {
        iz izVar = this.a[i];
        if (izVar == null) {
            return null;
        }
        if (izVar.a <= i2) {
            iz[] izVarArr = this.a;
            iz izVar2 = izVarArr[i];
            izVarArr[i] = null;
            y_();
            return izVar2;
        }
        iz izVarA = this.a[i].a(i2);
        if (this.a[i].a == 0) {
            this.a[i] = null;
        }
        y_();
        return izVarA;
    }

    public iz b() {
        int i = -1;
        int i2 = 0;
        int i3 = 1;
        while (true) {
            iz[] izVarArr = this.a;
            if (i2 >= izVarArr.length) {
                break;
            }
            if (izVarArr[i2] != null) {
                int i4 = i3 + 1;
                if (this.b.nextInt(i3) == 0) {
                    i = i2;
                }
                i3 = i4;
            }
            i2++;
        }
        if (i >= 0) {
            return a(i, 1);
        }
        return null;
    }

    @Override // defpackage.lw
    public void a(int i, iz izVar) {
        this.a[i] = izVar;
        if (izVar != null && izVar.a > d()) {
            izVar.a = d();
        }
        y_();
    }

    @Override // defpackage.ow
    public void a(nu nuVar) {
        super.a(nuVar);
        sp spVarL = nuVar.l("Items");
        this.a = new iz[a()];
        for (int i = 0; i < spVarL.c(); i++) {
            nu nuVar2 = (nu) spVarL.a(i);
            int iC = nuVar2.c("Slot") & 255;
            if (iC >= 0) {
                iz[] izVarArr = this.a;
                if (iC < izVarArr.length) {
                    izVarArr[iC] = new iz(nuVar2);
                }
            }
        }
    }

    @Override // defpackage.ow
    public void b(nu nuVar) {
        super.b(nuVar);
        sp spVar = new sp();
        int i = 0;
        while (true) {
            iz[] izVarArr = this.a;
            if (i < izVarArr.length) {
                if (izVarArr[i] != null) {
                    nu nuVar2 = new nu();
                    nuVar2.a("Slot", (byte) i);
                    this.a[i].a(nuVar2);
                    spVar.a(nuVar2);
                }
                i++;
            } else {
                nuVar.a("Items", spVar);
                return;
            }
        }
    }

    @Override // defpackage.lw
    public boolean a_(gs gsVar) {
        return this.d.b(this.e, this.f, this.g) == this && gsVar.g(((double) this.e) + 0.5d, ((double) this.f) + 0.5d, ((double) this.g) + 0.5d) <= 64.0d;
    }
}
