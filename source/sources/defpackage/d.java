package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public final int a;
    public final int b;
    public final int c;
    float e;
    float f;
    float g;
    d h;
    private final int j;
    int d = -1;
    public boolean i = false;

    public static int a(int i, int i2, int i3) {
        return (i < 0 ? Integer.MIN_VALUE : 0) | (i2 & 255) | ((i & 32767) << 8) | ((i3 & 32767) << 24) | (i3 < 0 ? 32768 : 0);
    }

    public d(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.j = a(i, i2, i3);
    }

    public float a(d dVar) {
        float f = dVar.a - this.a;
        float f2 = dVar.b - this.b;
        float f3 = dVar.c - this.c;
        return in.c((f * f) + (f2 * f2) + (f3 * f3));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.j == dVar.j && this.a == dVar.a && this.b == dVar.b && this.c == dVar.c;
    }

    public int hashCode() {
        return this.j;
    }

    public boolean a() {
        return this.d >= 0;
    }

    public String toString() {
        return this.a + ", " + this.b + ", " + this.c;
    }
}
