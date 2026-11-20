package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class js extends ow implements lw {
    private iz[] a = new iz[36];

    @Override // defpackage.lw
    public int a() {
        return 27;
    }

    @Override // defpackage.lw
    public String c() {
        return "Chest";
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
