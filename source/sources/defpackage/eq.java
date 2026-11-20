package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class eq {
    private static List g = new ArrayList();
    private static int h = 0;
    public double a;
    public double b;
    public double c;
    public double d;
    public double e;
    public double f;

    public static eq a(double d, double d2, double d3, double d4, double d5, double d6) {
        return new eq(d, d2, d3, d4, d5, d6);
    }

    public static void a() {
        g.clear();
        h = 0;
    }

    public static void b() {
        h = 0;
    }

    public static eq b(double d, double d2, double d3, double d4, double d5, double d6) {
        if (h >= g.size()) {
            g.add(a(0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d));
        }
        List list = g;
        int i = h;
        h = i + 1;
        return ((eq) list.get(i)).c(d, d2, d3, d4, d5, d6);
    }

    private eq(double d, double d2, double d3, double d4, double d5, double d6) {
        this.a = d;
        this.b = d2;
        this.c = d3;
        this.d = d4;
        this.e = d5;
        this.f = d6;
    }

    public eq c(double d, double d2, double d3, double d4, double d5, double d6) {
        this.a = d;
        this.b = d2;
        this.c = d3;
        this.d = d4;
        this.e = d5;
        this.f = d6;
        return this;
    }

    public eq a(double d, double d2, double d3) {
        double d4 = this.a;
        double d5 = this.b;
        double d6 = this.c;
        double d7 = this.d;
        double d8 = this.e;
        double d9 = this.f;
        if (d < 0.0d) {
            d4 += d;
        }
        double d10 = d4;
        if (d > 0.0d) {
            d7 += d;
        }
        double d11 = d7;
        if (d2 < 0.0d) {
            d5 += d2;
        }
        double d12 = d5;
        if (d2 > 0.0d) {
            d8 += d2;
        }
        double d13 = d8;
        if (d3 < 0.0d) {
            d6 += d3;
        }
        double d14 = d6;
        if (d3 > 0.0d) {
            d9 += d3;
        }
        return b(d10, d12, d14, d11, d13, d9);
    }

    public eq b(double d, double d2, double d3) {
        return b(this.a - d, this.b - d2, this.c - d3, this.d + d, this.e + d2, this.f + d3);
    }

    public eq c(double d, double d2, double d3) {
        return b(this.a + d, this.b + d2, this.c + d3, this.d + d, this.e + d2, this.f + d3);
    }

    public double a(eq eqVar, double d) {
        if (eqVar.e <= this.b || eqVar.b >= this.e || eqVar.f <= this.c || eqVar.c >= this.f) {
            return d;
        }
        if (d > 0.0d) {
            double d2 = eqVar.d;
            double d3 = this.a;
            if (d2 <= d3) {
                double d4 = d3 - d2;
                if (d4 < d) {
                    d = d4;
                }
            }
        }
        if (d >= 0.0d) {
            return d;
        }
        double d5 = eqVar.a;
        double d6 = this.d;
        if (d5 < d6) {
            return d;
        }
        double d7 = d6 - d5;
        return d7 > d ? d7 : d;
    }

    public double b(eq eqVar, double d) {
        if (eqVar.d <= this.a || eqVar.a >= this.d || eqVar.f <= this.c || eqVar.c >= this.f) {
            return d;
        }
        if (d > 0.0d) {
            double d2 = eqVar.e;
            double d3 = this.b;
            if (d2 <= d3) {
                double d4 = d3 - d2;
                if (d4 < d) {
                    d = d4;
                }
            }
        }
        if (d >= 0.0d) {
            return d;
        }
        double d5 = eqVar.b;
        double d6 = this.e;
        if (d5 < d6) {
            return d;
        }
        double d7 = d6 - d5;
        return d7 > d ? d7 : d;
    }

    public double c(eq eqVar, double d) {
        if (eqVar.d <= this.a || eqVar.a >= this.d || eqVar.e <= this.b || eqVar.b >= this.e) {
            return d;
        }
        if (d > 0.0d) {
            double d2 = eqVar.f;
            double d3 = this.c;
            if (d2 <= d3) {
                double d4 = d3 - d2;
                if (d4 < d) {
                    d = d4;
                }
            }
        }
        if (d >= 0.0d) {
            return d;
        }
        double d5 = eqVar.c;
        double d6 = this.f;
        if (d5 < d6) {
            return d;
        }
        double d7 = d6 - d5;
        return d7 > d ? d7 : d;
    }

    public boolean a(eq eqVar) {
        return eqVar.d > this.a && eqVar.a < this.d && eqVar.e > this.b && eqVar.b < this.e && eqVar.f > this.c && eqVar.c < this.f;
    }

    public eq d(double d, double d2, double d3) {
        this.a += d;
        this.b += d2;
        this.c += d3;
        this.d += d;
        this.e += d2;
        this.f += d3;
        return this;
    }

    public boolean a(bt btVar) {
        return btVar.a > this.a && btVar.a < this.d && btVar.b > this.b && btVar.b < this.e && btVar.c > this.c && btVar.c < this.f;
    }

    public double c() {
        return (((this.d - this.a) + (this.e - this.b)) + (this.f - this.c)) / 3.0d;
    }

    public eq e(double d, double d2, double d3) {
        return b(this.a + d, this.b + d2, this.c + d3, this.d - d, this.e - d2, this.f - d3);
    }

    public eq d() {
        return b(this.a, this.b, this.c, this.d, this.e, this.f);
    }

    public vf a(bt btVar, bt btVar2) {
        bt btVarA = btVar.a(btVar2, this.a);
        bt btVarA2 = btVar.a(btVar2, this.d);
        bt btVarB = btVar.b(btVar2, this.b);
        bt btVarB2 = btVar.b(btVar2, this.e);
        bt btVarC = btVar.c(btVar2, this.c);
        bt btVarC2 = btVar.c(btVar2, this.f);
        if (!b(btVarA)) {
            btVarA = null;
        }
        if (!b(btVarA2)) {
            btVarA2 = null;
        }
        if (!c(btVarB)) {
            btVarB = null;
        }
        if (!c(btVarB2)) {
            btVarB2 = null;
        }
        if (!d(btVarC)) {
            btVarC = null;
        }
        if (!d(btVarC2)) {
            btVarC2 = null;
        }
        bt btVar3 = btVarA != null ? btVarA : null;
        if (btVarA2 != null && (btVar3 == null || btVar.d(btVarA2) < btVar.d(btVar3))) {
            btVar3 = btVarA2;
        }
        if (btVarB != null && (btVar3 == null || btVar.d(btVarB) < btVar.d(btVar3))) {
            btVar3 = btVarB;
        }
        if (btVarB2 != null && (btVar3 == null || btVar.d(btVarB2) < btVar.d(btVar3))) {
            btVar3 = btVarB2;
        }
        if (btVarC != null && (btVar3 == null || btVar.d(btVarC) < btVar.d(btVar3))) {
            btVar3 = btVarC;
        }
        bt btVar4 = (btVarC2 == null || (btVar3 != null && btVar.d(btVarC2) >= btVar.d(btVar3))) ? btVar3 : btVarC2;
        if (btVar4 == null) {
            return null;
        }
        int i = btVar4 == btVarA ? 4 : -1;
        if (btVar4 == btVarA2) {
            i = 5;
        }
        if (btVar4 == btVarB) {
            i = 0;
        }
        if (btVar4 == btVarB2) {
            i = 1;
        }
        if (btVar4 == btVarC) {
            i = 2;
        }
        if (btVar4 == btVarC2) {
            i = 3;
        }
        return new vf(0, 0, 0, i, btVar4);
    }

    private boolean b(bt btVar) {
        return btVar != null && btVar.b >= this.b && btVar.b <= this.e && btVar.c >= this.c && btVar.c <= this.f;
    }

    private boolean c(bt btVar) {
        return btVar != null && btVar.a >= this.a && btVar.a <= this.d && btVar.c >= this.c && btVar.c <= this.f;
    }

    private boolean d(bt btVar) {
        return btVar != null && btVar.a >= this.a && btVar.a <= this.d && btVar.b >= this.b && btVar.b <= this.e;
    }

    public void b(eq eqVar) {
        this.a = eqVar.a;
        this.b = eqVar.b;
        this.c = eqVar.c;
        this.d = eqVar.d;
        this.e = eqVar.e;
        this.f = eqVar.f;
    }

    public String toString() {
        return "box[" + this.a + ", " + this.b + ", " + this.c + " -> " + this.d + ", " + this.e + ", " + this.f + "]";
    }
}
