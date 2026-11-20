package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ay extends xa {
    @Override // defpackage.xa
    public float a(long j, float f) {
        return 0.0f;
    }

    @Override // defpackage.xa
    public float[] a(float f, float f2) {
        return null;
    }

    @Override // defpackage.xa
    public boolean c() {
        return false;
    }

    @Override // defpackage.xa
    public float d() {
        return 8.0f;
    }

    @Override // defpackage.xa
    public void a() {
        this.b = new hd(kd.m, 0.5d, 0.0d);
        this.g = 1;
    }

    @Override // defpackage.xa
    public cl b() {
        return new jd(this.a, this.a.s());
    }

    @Override // defpackage.xa
    public bt b(float f, float f2) {
        float fB = (in.b(f * 3.1415927f * 2.0f) * 2.0f) + 0.5f;
        if (fB < 0.0f) {
            fB = 0.0f;
        }
        if (fB > 1.0f) {
            fB = 1.0f;
        }
        float f3 = (0.94f * fB) + 0.06f;
        return bt.b((128 / 255.0f) * f3, (128 / 255.0f) * f3, (160 / 255.0f) * ((fB * 0.91f) + 0.09f));
    }

    @Override // defpackage.xa
    public boolean a(int i, int i2) {
        int iA = this.a.a(i, i2);
        if (iA == 0) {
            return false;
        }
        return uu.m[iA].bA.c();
    }
}
