package defpackage;

/* JADX INFO: loaded from: classes.dex */
public abstract class xa {
    public fd a;
    public xv b;
    public boolean c = false;
    public boolean d = false;
    public boolean e = false;
    public float[] f = new float[16];
    public int g = 0;
    private float[] h = new float[4];

    public boolean c() {
        return true;
    }

    public float d() {
        return 108.0f;
    }

    public boolean f() {
        return true;
    }

    public final void a(fd fdVar) {
        this.a = fdVar;
        a();
        e();
    }

    protected void e() {
        for (int i = 0; i <= 15; i++) {
            float f = 1.0f - (i / 15.0f);
            this.f[i] = (((1.0f - f) / ((f * 3.0f) + 1.0f)) * 0.95f) + 0.05f;
        }
    }

    protected void a() {
        this.b = new xv(this.a);
    }

    public cl b() {
        fd fdVar = this.a;
        return new yf(fdVar, fdVar.s());
    }

    public boolean a(int i, int i2) {
        return this.a.a(i, i2) == uu.F.bn;
    }

    public float a(long j, float f) {
        float f2 = ((((int) (j % 24000)) + f) / 24000.0f) - 0.25f;
        if (f2 < 0.0f) {
            f2 += 1.0f;
        }
        if (f2 > 1.0f) {
            f2 -= 1.0f;
        }
        return f2 + (((1.0f - ((float) ((Math.cos(((double) f2) * 3.141592653589793d) + 1.0d) / 2.0d))) - f2) / 3.0f);
    }

    public float[] a(float f, float f2) {
        float fB = in.b((f * 3.1415927f) * 2.0f) - 0.0f;
        if (fB < -0.4f || fB > 0.4f) {
            return null;
        }
        float f3 = (((fB - (-0.0f)) / 0.4f) * 0.5f) + 0.5f;
        float fA = 1.0f - ((1.0f - in.a(3.1415927f * f3)) * 0.99f);
        float[] fArr = this.h;
        fArr[0] = (0.3f * f3) + 0.7f;
        float f4 = f3 * f3;
        fArr[1] = (0.7f * f4) + 0.2f;
        fArr[2] = (f4 * 0.0f) + 0.2f;
        fArr[3] = fA * fA;
        return fArr;
    }

    public bt b(float f, float f2) {
        float fB = (in.b(f * 3.1415927f * 2.0f) * 2.0f) + 0.5f;
        if (fB < 0.0f) {
            fB = 0.0f;
        }
        if (fB > 1.0f) {
            fB = 1.0f;
        }
        float f3 = (0.94f * fB) + 0.06f;
        return bt.b(0.7529412f * f3, f3 * 0.84705883f, ((fB * 0.91f) + 0.09f) * 1.0f);
    }

    public static xa a(int i) {
        if (i == -1) {
            return new wd();
        }
        if (i == 0) {
            return new rh();
        }
        if (i == 1) {
            return new ay();
        }
        return null;
    }
}
