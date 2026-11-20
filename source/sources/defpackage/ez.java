package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ez extends ko {
    public ps[] a;

    @Override // defpackage.ko
    public void b(float f, float f2, float f3, float f4, float f5, float f6) {
    }

    public ez() {
        ps[] psVarArr = new ps[5];
        this.a = psVarArr;
        psVarArr[0] = new ps(0, 8);
        this.a[1] = new ps(0, 0);
        this.a[2] = new ps(0, 0);
        this.a[3] = new ps(0, 0);
        this.a[4] = new ps(0, 0);
        this.a[0].a(-12, -8, -3.0f, 24, 16, 4, 0.0f);
        float f = 4;
        this.a[0].a(0.0f, f, 0.0f);
        float f2 = -10;
        float f3 = -7;
        this.a[1].a(f2, f3, -1.0f, 20, 6, 2, 0.0f);
        this.a[1].a(-11, f, 0.0f);
        this.a[2].a(f2, f3, -1.0f, 20, 6, 2, 0.0f);
        this.a[2].a(11, f, 0.0f);
        this.a[3].a(f2, f3, -1.0f, 20, 6, 2, 0.0f);
        this.a[3].a(0.0f, f, -9);
        this.a[4].a(f2, f3, -1.0f, 20, 6, 2, 0.0f);
        this.a[4].a(0.0f, f, 9);
        this.a[0].d = 1.5707964f;
        this.a[1].e = 4.712389f;
        this.a[2].e = 1.5707964f;
        this.a[3].e = 3.1415927f;
    }

    @Override // defpackage.ko
    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        for (int i = 0; i < 5; i++) {
            this.a[i].a(f6);
        }
    }
}
