package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class wb extends uu {
    @Override // defpackage.uu
    public int b() {
        return 1;
    }

    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        return null;
    }

    protected wb(int i, int i2) {
        super(i, ln.j);
        this.bm = i2;
        b(true);
        a(0.3f, 0.0f, 0.3f, 0.7f, 0.6f, 0.7f);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        return super.a(fdVar, i, i2, i3) && d(fdVar.a(i, i2 - 1, i3));
    }

    protected boolean d(int i) {
        return i == uu.v.bn || i == uu.w.bn || i == uu.aB.bn;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        super.b(fdVar, i, i2, i3, i4);
        h(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        h(fdVar, i, i2, i3);
    }

    protected final void h(fd fdVar, int i, int i2, int i3) {
        if (g(fdVar, i, i2, i3)) {
            return;
        }
        g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
        fdVar.f(i, i2, i3, 0);
    }

    @Override // defpackage.uu
    public boolean g(fd fdVar, int i, int i2, int i3) {
        return (fdVar.m(i, i2, i3) >= 8 || fdVar.l(i, i2, i3)) && d(fdVar.a(i, i2 - 1, i3));
    }
}
