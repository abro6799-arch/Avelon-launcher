package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class cu {
    private float a;
    private float b;
    private float c;

    public float a(float f, float f2) {
        float f3 = this.a + f;
        this.a = f3;
        float f4 = this.b;
        float f5 = (f3 - f4) * f2;
        float f6 = this.c;
        float f7 = f6 + ((f5 - f6) * 0.5f);
        this.c = f7;
        if ((f5 > 0.0f && f5 > f7) || (f5 < 0.0f && f5 < f7)) {
            f5 = f7;
        }
        this.b = f4 + f5;
        return f5;
    }
}
