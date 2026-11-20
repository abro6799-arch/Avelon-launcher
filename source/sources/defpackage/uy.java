package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class uy extends ck {
    @Override // defpackage.gm
    public int b(int i) {
        return i | 8;
    }

    public uy(int i) {
        super(i);
        e(0);
        a(true);
    }

    @Override // defpackage.gm
    public int a(int i) {
        return uu.L.a(0, i);
    }

    @Override // defpackage.gm
    public int f(int i) {
        if ((i & 1) == 1) {
            return jh.a();
        }
        if ((i & 2) == 2) {
            return jh.b();
        }
        return jh.c();
    }
}
