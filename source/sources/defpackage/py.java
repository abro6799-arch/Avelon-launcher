package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class py {
    public float a;
    public int b;
    public float c;
    private double f;
    private long i;
    public float d = 1.0f;
    public float e = 0.0f;
    private double j = 1.0d;
    private long g = System.currentTimeMillis();
    private long h = System.nanoTime() / 1000000;

    public py(float f) {
        this.a = f;
    }

    public void a() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.g;
        long jNanoTime = System.nanoTime() / 1000000;
        double d = jNanoTime / 1000.0d;
        if (j > 1000 || j < 0) {
            this.f = d;
        } else {
            long j2 = this.i + j;
            this.i = j2;
            if (j2 > 1000) {
                double d2 = j2 / (jNanoTime - this.h);
                double d3 = this.j;
                this.j = d3 + ((d2 - d3) * 0.20000000298023224d);
                this.h = jNanoTime;
                this.i = 0L;
            }
            if (this.i < 0) {
                this.h = jNanoTime;
            }
        }
        this.g = jCurrentTimeMillis;
        double d4 = (d - this.f) * this.j;
        this.f = d;
        if (d4 < 0.0d) {
            d4 = 0.0d;
        }
        if (d4 > 1.0d) {
            d4 = 1.0d;
        }
        float f = (float) (((double) this.e) + (d4 * ((double) this.d) * ((double) this.a)));
        int i = (int) f;
        this.b = i;
        float f2 = f - i;
        this.e = f2;
        if (i > 10) {
            this.b = 10;
        }
        this.c = f2;
    }
}
