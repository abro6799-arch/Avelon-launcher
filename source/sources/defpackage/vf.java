package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class vf {
    public jg a;
    public int b;
    public int c;
    public int d;
    public int e;
    public bt f;
    public sn g;

    public vf(int i, int i2, int i3, int i4, bt btVar) {
        this.a = jg.TILE;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = bt.b(btVar.a, btVar.b, btVar.c);
    }

    public vf(sn snVar) {
        this.a = jg.ENTITY;
        this.g = snVar;
        this.f = bt.b(snVar.aM, snVar.aN, snVar.aO);
    }
}
