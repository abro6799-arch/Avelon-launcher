package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class qo implements lw {
    private String a;
    private int b;
    private iz[] c;
    private List d;

    @Override // defpackage.lw
    public boolean a_(gs gsVar) {
        return true;
    }

    @Override // defpackage.lw
    public int d() {
        return 64;
    }

    public qo(String str, int i) {
        this.a = str;
        this.b = i;
        this.c = new iz[i];
    }

    @Override // defpackage.lw
    public iz f_(int i) {
        return this.c[i];
    }

    @Override // defpackage.lw
    public iz a(int i, int i2) {
        iz izVar = this.c[i];
        if (izVar == null) {
            return null;
        }
        if (izVar.a <= i2) {
            iz[] izVarArr = this.c;
            iz izVar2 = izVarArr[i];
            izVarArr[i] = null;
            y_();
            return izVar2;
        }
        iz izVarA = this.c[i].a(i2);
        if (this.c[i].a == 0) {
            this.c[i] = null;
        }
        y_();
        return izVarA;
    }

    @Override // defpackage.lw
    public void a(int i, iz izVar) {
        this.c[i] = izVar;
        if (izVar != null && izVar.a > d()) {
            izVar.a = d();
        }
        y_();
    }

    @Override // defpackage.lw
    public int a() {
        return this.b;
    }

    @Override // defpackage.lw
    public String c() {
        return this.a;
    }

    @Override // defpackage.lw
    public void y_() {
        if (this.d != null) {
            for (int i = 0; i < this.d.size(); i++) {
                ((hv) this.d.get(i)).a(this);
            }
        }
    }
}
