package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class mq implements lw {
    private iz[] a;
    private int b;
    private dw c;

    @Override // defpackage.lw
    public boolean a_(gs gsVar) {
        return true;
    }

    @Override // defpackage.lw
    public String c() {
        return "Crafting";
    }

    @Override // defpackage.lw
    public int d() {
        return 64;
    }

    @Override // defpackage.lw
    public void y_() {
    }

    public mq(dw dwVar, int i, int i2) {
        this.a = new iz[i2 * i];
        this.c = dwVar;
        this.b = i;
    }

    @Override // defpackage.lw
    public int a() {
        return this.a.length;
    }

    @Override // defpackage.lw
    public iz f_(int i) {
        if (i >= a()) {
            return null;
        }
        return this.a[i];
    }

    public iz b(int i, int i2) {
        int i3;
        if (i < 0 || i >= (i3 = this.b)) {
            return null;
        }
        return f_(i + (i2 * i3));
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
            this.c.a(this);
            return izVar2;
        }
        iz izVarA = this.a[i].a(i2);
        if (this.a[i].a == 0) {
            this.a[i] = null;
        }
        this.c.a(this);
        return izVarA;
    }

    @Override // defpackage.lw
    public void a(int i, iz izVar) {
        this.a[i] = izVar;
        this.c.a(this);
    }
}
