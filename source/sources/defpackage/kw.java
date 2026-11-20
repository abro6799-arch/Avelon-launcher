package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class kw {
    private static Random s = new Random();
    public double a;
    public double b;
    public double c;
    public double d;
    public double e;
    public double f;
    public double g;
    public boolean h;
    public int i;
    public int j;
    public double k;
    public double l;
    public double m;
    public double n;
    public double o;
    public double p;
    public double q;
    public double r;

    public void a(du duVar) {
        double d = this.a;
        double d2 = this.e;
        this.a = d + d2;
        double d3 = this.b;
        double d4 = this.f;
        this.b = d3 + d4;
        double d5 = this.g;
        this.e = d2 * d5;
        this.f = (d4 * d5) + 0.1d;
        int i = this.i + 1;
        this.i = i;
        if (i > this.j) {
            b();
        }
        double d6 = 2.0d - ((((double) this.i) / ((double) this.j)) * 2.0d);
        this.n = d6;
        if (d6 > 1.0d) {
            this.n = 1.0d;
        }
        double d7 = this.n;
        this.n = d7 * d7 * 0.5d;
    }

    public void a() {
        this.o = this.k;
        this.p = this.l;
        this.q = this.m;
        this.r = this.n;
        this.c = this.a;
        this.d = this.b;
    }

    public void b() {
        this.h = true;
    }
}
