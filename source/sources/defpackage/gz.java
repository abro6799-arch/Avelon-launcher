package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class gz extends ii implements ff {
    protected int c;

    public gz(fd fdVar) {
        super(fdVar);
        this.c = 2;
        this.Y = 20;
    }

    @Override // defpackage.ls
    public void o() {
        if (a(1.0f) > 0.5f) {
            this.av += 2;
        }
        super.o();
    }

    @Override // defpackage.ls, defpackage.sn
    public void w_() {
        super.w_();
        if (this.aI.B || this.aI.q != 0) {
            return;
        }
        K();
    }

    @Override // defpackage.ii
    protected sn g_() {
        gs gsVarA = this.aI.a((sn) this, 16.0d);
        if (gsVarA == null || !e(gsVarA)) {
            return null;
        }
        return gsVarA;
    }

    @Override // defpackage.ls, defpackage.sn
    public boolean a(sn snVar, int i) {
        if (!super.a(snVar, i)) {
            return false;
        }
        if (this.aG != snVar && this.aH != snVar && snVar != this) {
            this.d = snVar;
        }
        return true;
    }

    @Override // defpackage.ii
    protected void a(sn snVar, float f) {
        if (this.ae > 0 || f >= 2.0f || snVar.aW.e <= this.aW.b || snVar.aW.b >= this.aW.e) {
            return;
        }
        this.ae = 20;
        snVar.a(this, this.c);
    }

    @Override // defpackage.ii
    protected float a(int i, int i2, int i3) {
        return 0.5f - this.aI.c(i, i2, i3);
    }

    @Override // defpackage.ls, defpackage.sn
    public void b(nu nuVar) {
        super.b(nuVar);
    }

    @Override // defpackage.ls, defpackage.sn
    public void a(nu nuVar) {
        super.a(nuVar);
    }

    @Override // defpackage.ii, defpackage.ls
    public boolean d() {
        int iB = in.b(this.aM);
        int iB2 = in.b(this.aW.b);
        int iB3 = in.b(this.aO);
        if (this.aI.a(eb.Sky, iB, iB2, iB3) > this.bs.nextInt(32)) {
            return false;
        }
        int iN = this.aI.n(iB, iB2, iB3);
        if (this.aI.B()) {
            int i = this.aI.f;
            this.aI.f = 10;
            int iN2 = this.aI.n(iB, iB2, iB3);
            this.aI.f = i;
            iN = iN2;
        }
        return iN <= this.bs.nextInt(8) && super.d();
    }
}
