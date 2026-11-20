package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class lf {
    private d[] a = new d[1024];
    private int b = 0;

    public d a(d dVar) {
        if (dVar.d >= 0) {
            throw new IllegalStateException("OW KNOWS!");
        }
        int i = this.b;
        d[] dVarArr = this.a;
        if (i == dVarArr.length) {
            d[] dVarArr2 = new d[i << 1];
            System.arraycopy(dVarArr, 0, dVarArr2, 0, i);
            this.a = dVarArr2;
        }
        d[] dVarArr3 = this.a;
        int i2 = this.b;
        dVarArr3[i2] = dVar;
        dVar.d = i2;
        int i3 = this.b;
        this.b = i3 + 1;
        a(i3);
        return dVar;
    }

    public void a() {
        this.b = 0;
    }

    public d b() {
        d[] dVarArr = this.a;
        d dVar = dVarArr[0];
        int i = this.b - 1;
        this.b = i;
        dVarArr[0] = dVarArr[i];
        dVarArr[i] = null;
        if (i > 0) {
            b(0);
        }
        dVar.d = -1;
        return dVar;
    }

    public void a(d dVar, float f) {
        float f2 = dVar.g;
        dVar.g = f;
        if (f < f2) {
            a(dVar.d);
        } else {
            b(dVar.d);
        }
    }

    private void a(int i) {
        d dVar = this.a[i];
        float f = dVar.g;
        while (i > 0) {
            int i2 = (i - 1) >> 1;
            d dVar2 = this.a[i2];
            if (f >= dVar2.g) {
                break;
            }
            this.a[i] = dVar2;
            dVar2.d = i;
            i = i2;
        }
        this.a[i] = dVar;
        dVar.d = i;
    }

    private void b(int i) {
        d dVar;
        float f;
        d dVar2 = this.a[i];
        float f2 = dVar2.g;
        while (true) {
            int i2 = (i << 1) + 1;
            int i3 = i2 + 1;
            if (i2 < this.b) {
                d dVar3 = this.a[i2];
                float f3 = dVar3.g;
                if (i3 >= this.b) {
                    dVar = null;
                    f = Float.POSITIVE_INFINITY;
                } else {
                    dVar = this.a[i3];
                    f = dVar.g;
                }
                if (f3 >= f) {
                    if (f >= f2) {
                        break;
                    }
                    this.a[i] = dVar;
                    dVar.d = i;
                    i = i3;
                } else {
                    if (f3 >= f2) {
                        break;
                    }
                    this.a[i] = dVar3;
                    dVar3.d = i;
                    i = i2;
                }
            } else {
                break;
            }
        }
        this.a[i] = dVar2;
        dVar2.d = i;
    }

    public boolean c() {
        return this.b == 0;
    }
}
