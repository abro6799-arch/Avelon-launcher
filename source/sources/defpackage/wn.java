package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class wn extends ko {
    ps a;
    ps[] b = new ps[8];

    public wn() {
        ps psVar = new ps(0, 0);
        this.a = psVar;
        psVar.a(-6.0f, -8.0f, -6.0f, 12, 16, 12);
        this.a.b += 8;
        int i = 0;
        while (true) {
            ps[] psVarArr = this.b;
            if (i >= psVarArr.length) {
                return;
            }
            psVarArr[i] = new ps(48, 0);
            double d = ((double) i) * 3.141592653589793d;
            double length = (2.0d * d) / ((double) this.b.length);
            float fCos = ((float) Math.cos(length)) * 5.0f;
            float fSin = ((float) Math.sin(length)) * 5.0f;
            this.b[i].a(-1.0f, 0.0f, -1.0f, 2, 18, 2);
            this.b[i].a = fCos;
            this.b[i].c = fSin;
            this.b[i].b = 15;
            ps[] psVarArr2 = this.b;
            psVarArr2[i].e = (float) (((d * (-2.0d)) / ((double) psVarArr2.length)) + 1.5707963267948966d);
            i++;
        }
    }

    @Override // defpackage.ko
    public void b(float f, float f2, float f3, float f4, float f5, float f6) {
        int i = 0;
        while (true) {
            ps[] psVarArr = this.b;
            if (i >= psVarArr.length) {
                return;
            }
            psVarArr[i].d = f3;
            i++;
        }
    }

    @Override // defpackage.ko
    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        b(f, f2, f3, f4, f5, f6);
        this.a.a(f6);
        int i = 0;
        while (true) {
            ps[] psVarArr = this.b;
            if (i >= psVarArr.length) {
                return;
            }
            psVarArr[i].a(f6);
            i++;
        }
    }
}
