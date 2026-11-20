package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class is implements dt {
    public final int a;
    private int b;
    private int c;
    private iz[] d;
    private iz e;

    public is(int i, int i2, iz[] izVarArr, iz izVar) {
        this.a = izVar.c;
        this.b = i;
        this.c = i2;
        this.d = izVarArr;
        this.e = izVar;
    }

    @Override // defpackage.dt
    public iz b() {
        return this.e;
    }

    @Override // defpackage.dt
    public boolean a(mq mqVar) {
        for (int i = 0; i <= 3 - this.b; i++) {
            for (int i2 = 0; i2 <= 3 - this.c; i2++) {
                if (a(mqVar, i, i2, true) || a(mqVar, i, i2, false)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean a(mq mqVar, int i, int i2, boolean z) {
        iz izVar;
        int i3;
        for (int i4 = 0; i4 < 3; i4++) {
            for (int i5 = 0; i5 < 3; i5++) {
                int i6 = i4 - i;
                int i7 = i5 - i2;
                if (i6 < 0 || i7 < 0 || i6 >= (i3 = this.b) || i7 >= this.c) {
                    izVar = null;
                } else if (z) {
                    izVar = this.d[((i3 - i6) - 1) + (i7 * i3)];
                } else {
                    izVar = this.d[i6 + (i7 * i3)];
                }
                iz izVarB = mqVar.b(i4, i5);
                if (izVarB != null || izVar != null) {
                    if ((izVarB == null && izVar != null) || ((izVarB != null && izVar == null) || izVar.c != izVarB.c)) {
                        return false;
                    }
                    if (izVar.i() != -1 && izVar.i() != izVarB.i()) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    @Override // defpackage.dt
    public iz b(mq mqVar) {
        return new iz(this.e.c, this.e.a, this.e.i());
    }

    @Override // defpackage.dt
    public int a() {
        return this.b * this.c;
    }
}
