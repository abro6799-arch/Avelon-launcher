package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class sh extends dw {
    private az a;

    public sh(lw lwVar, az azVar) {
        this.a = azVar;
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                a(new gp(azVar, (i * 3) + i2, (i2 * 18) + 62, (i * 18) + 17));
            }
        }
        for (int i3 = 0; i3 < 3; i3++) {
            for (int i4 = 0; i4 < 9; i4++) {
                a(new gp(lwVar, (i3 * 9) + i4 + 9, (i4 * 18) + 8, (i3 * 18) + 84));
            }
        }
        for (int i5 = 0; i5 < 9; i5++) {
            a(new gp(lwVar, i5, (i5 * 18) + 8, 142));
        }
    }

    @Override // defpackage.dw
    public boolean b(gs gsVar) {
        return this.a.a_(gsVar);
    }
}
