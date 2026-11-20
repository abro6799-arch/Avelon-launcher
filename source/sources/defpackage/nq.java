package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class nq extends ko {
    public ps[] a;

    @Override // defpackage.ko
    public void b(float f, float f2, float f3, float f4, float f5, float f6) {
    }

    public nq() {
        ps[] psVarArr = new ps[7];
        this.a = psVarArr;
        psVarArr[0] = new ps(0, 10);
        this.a[1] = new ps(0, 0);
        this.a[2] = new ps(0, 0);
        this.a[3] = new ps(0, 0);
        this.a[4] = new ps(0, 0);
        this.a[5] = new ps(44, 10);
        this.a[0].a(-10, -8, -1.0f, 20, 16, 2, 0.0f);
        float f = 4;
        this.a[0].a(0.0f, f, 0.0f);
        float f2 = -9;
        float f3 = -7;
        this.a[5].a(f2, f3, -1.0f, 18, 14, 1, 0.0f);
        this.a[5].a(0.0f, f, 0.0f);
        float f4 = -8;
        float f5 = -9;
        this.a[1].a(f4, f5, -1.0f, 16, 8, 2, 0.0f);
        this.a[1].a(f2, f, 0.0f);
        this.a[2].a(f4, f5, -1.0f, 16, 8, 2, 0.0f);
        this.a[2].a(9, f, 0.0f);
        this.a[3].a(f4, f5, -1.0f, 16, 8, 2, 0.0f);
        this.a[3].a(0.0f, f, f3);
        this.a[4].a(f4, f5, -1.0f, 16, 8, 2, 0.0f);
        this.a[4].a(0.0f, f, 7);
        this.a[0].d = 1.5707964f;
        this.a[1].e = 4.712389f;
        this.a[2].e = 1.5707964f;
        this.a[3].e = 3.1415927f;
        this.a[5].d = -1.5707964f;
    }

    @Override // defpackage.ko
    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        this.a[5].b = 4.0f - f3;
        for (int i = 0; i < 6; i++) {
            this.a[i].a(f6);
        }
    }
}
