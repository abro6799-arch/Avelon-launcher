package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class cd extends dw {
    private lw a;
    private int b;

    public cd(lw lwVar, lw lwVar2) {
        this.a = lwVar2;
        int iA = lwVar2.a() / 9;
        this.b = iA;
        int i = (iA - 4) * 18;
        for (int i2 = 0; i2 < this.b; i2++) {
            for (int i3 = 0; i3 < 9; i3++) {
                a(new gp(lwVar2, (i2 * 9) + i3, (i3 * 18) + 8, (i2 * 18) + 18));
            }
        }
        for (int i4 = 0; i4 < 3; i4++) {
            for (int i5 = 0; i5 < 9; i5++) {
                a(new gp(lwVar, (i4 * 9) + i5 + 9, (i5 * 18) + 8, (i4 * 18) + 103 + i));
            }
        }
        for (int i6 = 0; i6 < 9; i6++) {
            a(new gp(lwVar, i6, (i6 * 18) + 8, i + 161));
        }
    }

    @Override // defpackage.dw
    public boolean b(gs gsVar) {
        return this.a.a_(gsVar);
    }

    @Override // defpackage.dw
    public iz a(int i) {
        gp gpVar = (gp) this.e.get(i);
        if (gpVar == null || !gpVar.b()) {
            return null;
        }
        iz izVarA = gpVar.a();
        iz izVarK = izVarA.k();
        int i2 = this.b;
        if (i < i2 * 9) {
            a(izVarA, i2 * 9, this.e.size(), true);
        } else {
            a(izVarA, 0, i2 * 9, false);
        }
        if (izVarA.a == 0) {
            gpVar.c(null);
        } else {
            gpVar.c();
        }
        return izVarK;
    }
}
