package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class qq {
    public double a;
    public double b;
    public int c;
    private int d;
    private int e;

    public qq(kv kvVar, int i, int i2) {
        int i3;
        this.d = i;
        this.e = i2;
        this.c = 1;
        int i4 = kvVar.I;
        i4 = i4 == 0 ? 1000 : i4;
        while (true) {
            i3 = this.c;
            if (i3 >= i4 || this.d / (i3 + 1) < 320 || this.e / (i3 + 1) < 240) {
                break;
            } else {
                this.c = i3 + 1;
            }
        }
        double d = ((double) this.d) / ((double) i3);
        this.a = d;
        this.b = ((double) this.e) / ((double) i3);
        this.d = (int) Math.ceil(d);
        this.e = (int) Math.ceil(this.b);
    }

    public int a() {
        return this.d;
    }

    public int b() {
        return this.e;
    }
}
