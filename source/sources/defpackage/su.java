package defpackage;

/* JADX INFO: loaded from: classes.dex */
class su extends lg {
    final /* synthetic */ dv a;

    @Override // defpackage.lg
    protected void a(int i, boolean z) {
    }

    @Override // defpackage.lg
    protected boolean c_(int i) {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public su(dv dvVar) {
        super(dvVar.b, dvVar.c, dvVar.d, 32, dvVar.d - 64, 10);
        this.a = dvVar;
        a(false);
    }

    @Override // defpackage.lg
    protected int a() {
        return jl.c.size();
    }

    @Override // defpackage.lg
    protected int b() {
        return a() * 10;
    }

    @Override // defpackage.lg
    protected void c() {
        this.a.i();
    }

    @Override // defpackage.lg
    protected void a(int i, int i2, int i3, int i4, nw nwVar) {
        vr vrVar = (vr) jl.c.get(i);
        dv dvVar = this.a;
        int i5 = i2 + 2;
        int i6 = i3 + 1;
        int i7 = i % 2;
        dvVar.b(dvVar.g, vrVar.f, i5, i6, i7 == 0 ? 16777215 : 9474192);
        String strA = vrVar.a(this.a.o.a(vrVar));
        dv dvVar2 = this.a;
        dvVar2.b(dvVar2.g, strA, (i5 + 213) - this.a.g.a(strA), i6, i7 == 0 ? 16777215 : 9474192);
    }
}
