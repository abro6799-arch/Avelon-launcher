package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class bi extends ck {
    @Override // defpackage.gm
    public int b(int i) {
        return i;
    }

    public bi(int i) {
        super(i);
        e(0);
        a(true);
    }

    @Override // defpackage.gm
    public int a(int i) {
        return uu.ac.a(2, ee.d(i));
    }

    @Override // defpackage.ck, defpackage.gm
    public String a(iz izVar) {
        return super.a() + "." + km.a[ee.d(izVar.i())];
    }
}
