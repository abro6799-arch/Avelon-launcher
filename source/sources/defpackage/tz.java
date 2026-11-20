package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class tz {
    public ib[] a;
    public int b;
    private boolean c;

    public tz(ib[] ibVarArr) {
        this.b = 0;
        this.c = false;
        this.a = ibVarArr;
        this.b = ibVarArr.length;
    }

    public tz(ib[] ibVarArr, int i, int i2, int i3, int i4) {
        this(ibVarArr);
        float f = (i3 / 64.0f) - 0.0015625f;
        float f2 = (i2 / 32.0f) + 0.003125f;
        ibVarArr[0] = ibVarArr[0].a(f, f2);
        float f3 = (i / 64.0f) + 0.0015625f;
        ibVarArr[1] = ibVarArr[1].a(f3, f2);
        float f4 = (i4 / 32.0f) - 0.003125f;
        ibVarArr[2] = ibVarArr[2].a(f3, f4);
        ibVarArr[3] = ibVarArr[3].a(f, f4);
    }

    public void a() {
        ib[] ibVarArr = new ib[this.a.length];
        int i = 0;
        while (true) {
            ib[] ibVarArr2 = this.a;
            if (i < ibVarArr2.length) {
                ibVarArr[i] = ibVarArr2[(ibVarArr2.length - i) - 1];
                i++;
            } else {
                this.a = ibVarArr;
                return;
            }
        }
    }

    public void a(nw nwVar, float f) {
        bt btVarC = this.a[1].a.a(this.a[2].a).b(this.a[1].a.a(this.a[0].a)).c();
        nwVar.b();
        if (this.c) {
            nwVar.b(-((float) btVarC.a), -((float) btVarC.b), -((float) btVarC.c));
        } else {
            nwVar.b((float) btVarC.a, (float) btVarC.b, (float) btVarC.c);
        }
        for (int i = 0; i < 4; i++) {
            ib ibVar = this.a[i];
            nwVar.a(((float) ibVar.a.a) * f, ((float) ibVar.a.b) * f, ((float) ibVar.a.c) * f, ibVar.b, ibVar.c);
        }
        nwVar.a();
    }
}
