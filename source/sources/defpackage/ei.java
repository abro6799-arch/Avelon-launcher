package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ei {
    private long a;
    private int b;
    private int c;
    private int d;
    private long e;
    private long f;
    private long g;
    private nu h;
    private int i;
    private String j;
    private int k;
    private boolean l;
    private int m;
    private boolean n;
    private int o;

    public ei(nu nuVar) {
        this.a = nuVar.f("RandomSeed");
        this.b = nuVar.e("SpawnX");
        this.c = nuVar.e("SpawnY");
        this.d = nuVar.e("SpawnZ");
        this.e = nuVar.f("Time");
        this.f = nuVar.f("LastPlayed");
        this.g = nuVar.f("SizeOnDisk");
        this.j = nuVar.i("LevelName");
        this.k = nuVar.e("version");
        this.m = nuVar.e("rainTime");
        this.l = nuVar.m("raining");
        this.o = nuVar.e("thunderTime");
        this.n = nuVar.m("thundering");
        if (nuVar.b("Player")) {
            nu nuVarK = nuVar.k("Player");
            this.h = nuVarK;
            this.i = nuVarK.e("Dimension");
        }
    }

    public ei(long j, String str) {
        this.a = j;
        this.j = str;
    }

    public ei(ei eiVar) {
        this.a = eiVar.a;
        this.b = eiVar.b;
        this.c = eiVar.c;
        this.d = eiVar.d;
        this.e = eiVar.e;
        this.f = eiVar.f;
        this.g = eiVar.g;
        this.h = eiVar.h;
        this.i = eiVar.i;
        this.j = eiVar.j;
        this.k = eiVar.k;
        this.m = eiVar.m;
        this.l = eiVar.l;
        this.o = eiVar.o;
        this.n = eiVar.n;
    }

    public nu a() {
        nu nuVar = new nu();
        a(nuVar, this.h);
        return nuVar;
    }

    public nu a(List list) {
        nu nuVar = new nu();
        nu nuVar2 = null;
        gs gsVar = list.size() > 0 ? (gs) list.get(0) : null;
        if (gsVar != null) {
            nuVar2 = new nu();
            gsVar.d(nuVar2);
        }
        a(nuVar, nuVar2);
        return nuVar;
    }

    private void a(nu nuVar, nu nuVar2) {
        nuVar.a("RandomSeed", this.a);
        nuVar.a("SpawnX", this.b);
        nuVar.a("SpawnY", this.c);
        nuVar.a("SpawnZ", this.d);
        nuVar.a("Time", this.e);
        nuVar.a("SizeOnDisk", this.g);
        nuVar.a("LastPlayed", System.currentTimeMillis());
        nuVar.a("LevelName", this.j);
        nuVar.a("version", this.k);
        nuVar.a("rainTime", this.m);
        nuVar.a("raining", this.l);
        nuVar.a("thunderTime", this.o);
        nuVar.a("thundering", this.n);
        if (nuVar2 != null) {
            nuVar.a("Player", nuVar2);
        }
    }

    public long b() {
        return this.a;
    }

    public int c() {
        return this.b;
    }

    public int d() {
        return this.c;
    }

    public int e() {
        return this.d;
    }

    public long f() {
        return this.e;
    }

    public long g() {
        return this.g;
    }

    public nu h() {
        return this.h;
    }

    public int i() {
        return this.i;
    }

    public void a(int i) {
        this.b = i;
    }

    public void b(int i) {
        this.c = i;
    }

    public void c(int i) {
        this.d = i;
    }

    public void a(long j) {
        this.e = j;
    }

    public void b(long j) {
        this.g = j;
    }

    public void a(nu nuVar) {
        this.h = nuVar;
    }

    public void a(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public String j() {
        return this.j;
    }

    public void a(String str) {
        this.j = str;
    }

    public int k() {
        return this.k;
    }

    public void d(int i) {
        this.k = i;
    }

    public long l() {
        return this.f;
    }

    public boolean m() {
        return this.n;
    }

    public void a(boolean z) {
        this.n = z;
    }

    public int n() {
        return this.o;
    }

    public void e(int i) {
        this.o = i;
    }

    public boolean o() {
        return this.l;
    }

    public void b(boolean z) {
        this.l = z;
    }

    public int p() {
        return this.m;
    }

    public void f(int i) {
        this.m = i;
    }
}
