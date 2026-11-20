package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ib {
    public bt a;
    public float b;
    public float c;

    public ib(float f, float f2, float f3, float f4, float f5) {
        this(bt.a(f, f2, f3), f4, f5);
    }

    public ib a(float f, float f2) {
        return new ib(this, f, f2);
    }

    public ib(ib ibVar, float f, float f2) {
        this.a = ibVar.a;
        this.b = f;
        this.c = f2;
    }

    public ib(bt btVar, float f, float f2) {
        this.a = btVar;
        this.b = f;
        this.c = f2;
    }
}
