package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class tn extends ow {
    public byte a = 0;
    public boolean b = false;

    @Override // defpackage.ow
    public void b(nu nuVar) {
        super.b(nuVar);
        nuVar.a("note", this.a);
    }

    @Override // defpackage.ow
    public void a(nu nuVar) {
        super.a(nuVar);
        byte bC = nuVar.c("note");
        this.a = bC;
        if (bC < 0) {
            this.a = (byte) 0;
        }
        if (this.a > 24) {
            this.a = (byte) 24;
        }
    }

    public void a() {
        this.a = (byte) ((this.a + 1) % 25);
        y_();
    }

    public void a(fd fdVar, int i, int i2, int i3) {
        if (fdVar.f(i, i2 + 1, i3) != ln.a) {
            return;
        }
        ln lnVarF = fdVar.f(i, i2 - 1, i3);
        int i4 = lnVarF == ln.e ? 1 : 0;
        if (lnVarF == ln.n) {
            i4 = 2;
        }
        if (lnVarF == ln.p) {
            i4 = 3;
        }
        if (lnVarF == ln.d) {
            i4 = 4;
        }
        fdVar.d(i, i2, i3, i4, this.a);
    }
}
