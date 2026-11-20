package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class dh {
    public final int a;
    private final d[] b;
    private int c;

    public dh(d[] dVarArr) {
        this.b = dVarArr;
        this.a = dVarArr.length;
    }

    public void a() {
        this.c++;
    }

    public boolean b() {
        return this.c >= this.b.length;
    }

    public d c() {
        int i = this.a;
        if (i > 0) {
            return this.b[i - 1];
        }
        return null;
    }

    public bt a(sn snVar) {
        return bt.b(((double) this.b[this.c].a) + (((double) ((int) (snVar.bg + 1.0f))) * 0.5d), this.b[this.c].b, ((double) this.b[this.c].c) + (((double) ((int) (snVar.bg + 1.0f))) * 0.5d));
    }
}
