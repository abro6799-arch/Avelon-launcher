package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class bt {
    private static List d = new ArrayList();
    private static int e = 0;
    public double a;
    public double b;
    public double c;

    public static bt a(double d2, double d3, double d4) {
        return new bt(d2, d3, d4);
    }

    public static void a() {
        d.clear();
        e = 0;
    }

    public static void b() {
        e = 0;
    }

    public static bt b(double d2, double d3, double d4) {
        if (e >= d.size()) {
            d.add(a(0.0d, 0.0d, 0.0d));
        }
        List list = d;
        int i = e;
        e = i + 1;
        return ((bt) list.get(i)).e(d2, d3, d4);
    }

    private bt(double d2, double d3, double d4) {
        d2 = d2 == -0.0d ? 0.0d : d2;
        d3 = d3 == -0.0d ? 0.0d : d3;
        d4 = d4 == -0.0d ? 0.0d : d4;
        this.a = d2;
        this.b = d3;
        this.c = d4;
    }

    private bt e(double d2, double d3, double d4) {
        this.a = d2;
        this.b = d3;
        this.c = d4;
        return this;
    }

    public bt a(bt btVar) {
        return b(btVar.a - this.a, btVar.b - this.b, btVar.c - this.c);
    }

    public bt c() {
        double d2 = this.a;
        double d3 = this.b;
        double d4 = (d2 * d2) + (d3 * d3);
        double d5 = this.c;
        double dA = in.a(d4 + (d5 * d5));
        if (dA < 1.0E-4d) {
            return b(0.0d, 0.0d, 0.0d);
        }
        return b(this.a / dA, this.b / dA, this.c / dA);
    }

    public bt b(bt btVar) {
        double d2 = this.b;
        double d3 = btVar.c;
        double d4 = this.c;
        double d5 = btVar.b;
        double d6 = (d2 * d3) - (d4 * d5);
        double d7 = btVar.a;
        double d8 = this.a;
        return b(d6, (d4 * d7) - (d3 * d8), (d8 * d5) - (d2 * d7));
    }

    public bt c(double d2, double d3, double d4) {
        return b(d2 + this.a, d3 + this.b, d4 + this.c);
    }

    public double c(bt btVar) {
        double d2 = btVar.a - this.a;
        double d3 = btVar.b - this.b;
        double d4 = btVar.c - this.c;
        return in.a((d2 * d2) + (d3 * d3) + (d4 * d4));
    }

    public double d(bt btVar) {
        double d2 = btVar.a - this.a;
        double d3 = btVar.b - this.b;
        double d4 = btVar.c - this.c;
        return (d2 * d2) + (d3 * d3) + (d4 * d4);
    }

    public double d(double d2, double d3, double d4) {
        double d5 = d2 - this.a;
        double d6 = d3 - this.b;
        double d7 = d4 - this.c;
        return (d5 * d5) + (d6 * d6) + (d7 * d7);
    }

    public double d() {
        double d2 = this.a;
        double d3 = this.b;
        double d4 = (d2 * d2) + (d3 * d3);
        double d5 = this.c;
        return in.a(d4 + (d5 * d5));
    }

    public bt a(bt btVar, double d2) {
        double d3 = btVar.a;
        double d4 = this.a;
        double d5 = d3 - d4;
        double d6 = btVar.b;
        double d7 = this.b;
        double d8 = d6 - d7;
        double d9 = btVar.c;
        double d10 = this.c;
        double d11 = d9 - d10;
        if (d5 * d5 < 1.0000000116860974E-7d) {
            return null;
        }
        double d12 = (d2 - d4) / d5;
        if (d12 < 0.0d || d12 > 1.0d) {
            return null;
        }
        return b(d4 + (d5 * d12), d7 + (d8 * d12), d10 + (d11 * d12));
    }

    public bt b(bt btVar, double d2) {
        double d3 = btVar.a;
        double d4 = this.a;
        double d5 = d3 - d4;
        double d6 = btVar.b;
        double d7 = this.b;
        double d8 = d6 - d7;
        double d9 = btVar.c;
        double d10 = this.c;
        double d11 = d9 - d10;
        if (d8 * d8 < 1.0000000116860974E-7d) {
            return null;
        }
        double d12 = (d2 - d7) / d8;
        if (d12 < 0.0d || d12 > 1.0d) {
            return null;
        }
        return b(d4 + (d5 * d12), d7 + (d8 * d12), d10 + (d11 * d12));
    }

    public bt c(bt btVar, double d2) {
        double d3 = btVar.a;
        double d4 = this.a;
        double d5 = d3 - d4;
        double d6 = btVar.b;
        double d7 = this.b;
        double d8 = d6 - d7;
        double d9 = btVar.c;
        double d10 = this.c;
        double d11 = d9 - d10;
        if (d11 * d11 < 1.0000000116860974E-7d) {
            return null;
        }
        double d12 = (d2 - d10) / d11;
        if (d12 < 0.0d || d12 > 1.0d) {
            return null;
        }
        return b(d4 + (d5 * d12), d7 + (d8 * d12), d10 + (d11 * d12));
    }

    public String toString() {
        return "(" + this.a + ", " + this.b + ", " + this.c + ")";
    }

    public void a(float f) {
        float fB = in.b(f);
        float fA = in.a(f);
        double d2 = this.a;
        double d3 = this.b;
        double d4 = fB;
        double d5 = this.c;
        double d6 = fA;
        this.a = d2;
        this.b = (d3 * d4) + (d5 * d6);
        this.c = (d5 * d4) - (d3 * d6);
    }

    public void b(float f) {
        float fB = in.b(f);
        float fA = in.a(f);
        double d2 = this.a;
        double d3 = fB;
        double d4 = this.c;
        double d5 = fA;
        double d6 = this.b;
        this.a = (d2 * d3) + (d4 * d5);
        this.b = d6;
        this.c = (d4 * d3) - (d2 * d5);
    }
}
