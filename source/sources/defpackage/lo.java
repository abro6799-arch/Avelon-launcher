package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class lo extends ko {
    ps a;
    ps[] b = new ps[9];

    public lo() {
        ps psVar = new ps(0, 0);
        this.a = psVar;
        psVar.a(-8.0f, -8.0f, -8.0f, 16, 16, 16);
        this.a.b += 8;
        Random random = new Random(1660L);
        int i = 0;
        while (true) {
            ps[] psVarArr = this.b;
            if (i >= psVarArr.length) {
                return;
            }
            psVarArr[i] = new ps(0, 0);
            int i2 = i / 3;
            this.b[i].a(-1.0f, 0.0f, -1.0f, 2, random.nextInt(7) + 8, 2);
            this.b[i].a = ((((((i % 3) - ((i2 % 2) * 0.5f)) + 0.25f) / 2.0f) * 2.0f) - 1.0f) * 5.0f;
            this.b[i].c = (((i2 / 2.0f) * 2.0f) - 1.0f) * 5.0f;
            this.b[i].b = 15;
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
            psVarArr[i].d = (in.a((0.3f * f3) + i) * 0.2f) + 0.4f;
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
