package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class no extends ko {
    ps a;
    ps b;
    ps c;
    ps d;

    @Override // defpackage.ko
    public void b(float f, float f2, float f3, float f4, float f5, float f6) {
    }

    public no(int i) {
        ps psVar = new ps(0, i);
        this.a = psVar;
        psVar.a(-4.0f, 16.0f, -4.0f, 8, 8, 8);
        if (i > 0) {
            ps psVar2 = new ps(0, i);
            this.a = psVar2;
            psVar2.a(-3.0f, 17.0f, -3.0f, 6, 6, 6);
            ps psVar3 = new ps(32, 0);
            this.b = psVar3;
            psVar3.a(-3.25f, 18.0f, -3.5f, 2, 2, 2);
            ps psVar4 = new ps(32, 4);
            this.c = psVar4;
            psVar4.a(1.25f, 18.0f, -3.5f, 2, 2, 2);
            ps psVar5 = new ps(32, 8);
            this.d = psVar5;
            psVar5.a(0.0f, 21.0f, -3.5f, 1, 1, 1);
        }
    }

    @Override // defpackage.ko
    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        b(f, f2, f3, f4, f5, f6);
        this.a.a(f6);
        ps psVar = this.b;
        if (psVar != null) {
            psVar.a(f6);
            this.c.a(f6);
            this.d.a(f6);
        }
    }
}
