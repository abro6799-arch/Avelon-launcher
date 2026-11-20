package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class wd extends xa {
    @Override // defpackage.xa
    public float a(long j, float f) {
        return 0.5f;
    }

    @Override // defpackage.xa
    public boolean f() {
        return false;
    }

    @Override // defpackage.xa
    public void a() {
        this.b = new hd(kd.l, 1.0d, 0.0d);
        this.c = true;
        this.d = true;
        this.e = true;
        this.g = -1;
    }

    @Override // defpackage.xa
    public bt b(float f, float f2) {
        return bt.b(0.20000000298023224d, 0.029999999329447746d, 0.029999999329447746d);
    }

    @Override // defpackage.xa
    protected void e() {
        for (int i = 0; i <= 15; i++) {
            float f = 1.0f - (i / 15.0f);
            this.f[i] = (((1.0f - f) / ((f * 3.0f) + 1.0f)) * 0.9f) + 0.1f;
        }
    }

    @Override // defpackage.xa
    public cl b() {
        return new qn(this.a, this.a.s());
    }

    @Override // defpackage.xa
    public boolean a(int i, int i2) {
        int iA = this.a.a(i, i2);
        return (iA == uu.A.bn || iA == 0 || !uu.o[iA]) ? false : true;
    }
}
