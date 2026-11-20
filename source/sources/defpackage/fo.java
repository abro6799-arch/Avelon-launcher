package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class fo extends rw {
    protected fo(int i, int i2) {
        super(i, i2, ln.d);
    }

    @Override // defpackage.uu
    public int a(int i) {
        return this.bm + (i != 1 ? 0 : 1);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        if (fdVar.e(i, i2, i3) == 0) {
            return false;
        }
        b_(fdVar, i, i2, i3);
        return true;
    }

    public void f(fd fdVar, int i, int i2, int i3, int i4) {
        if (fdVar.B) {
            return;
        }
        eg egVar = (eg) fdVar.b(i, i2, i3);
        egVar.a = i4;
        egVar.y_();
        fdVar.d(i, i2, i3, 1);
    }

    public void b_(fd fdVar, int i, int i2, int i3) {
        eg egVar;
        int i4;
        if (fdVar.B || (i4 = (egVar = (eg) fdVar.b(i, i2, i3)).a) == 0) {
            return;
        }
        fdVar.e(1005, i, i2, i3, 0);
        fdVar.a((String) null, i, i2, i3);
        egVar.a = 0;
        egVar.y_();
        fdVar.d(i, i2, i3, 0);
        double d = 0.3f;
        double d2 = 0.5d * d;
        hl hlVar = new hl(fdVar, ((double) i) + ((double) (fdVar.r.nextFloat() * 0.7f)) + d2, ((double) i2) + ((double) (fdVar.r.nextFloat() * 0.7f)) + (d * 0.2d) + 0.6d, ((double) (fdVar.r.nextFloat() * 0.7f)) + d2 + ((double) i3), new iz(i4, 1, 0));
        hlVar.c = 10;
        fdVar.b(hlVar);
    }

    @Override // defpackage.rw, defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        b_(fdVar, i, i2, i3);
        super.b(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, int i4, float f) {
        if (fdVar.B) {
            return;
        }
        super.a(fdVar, i, i2, i3, i4, f);
    }

    @Override // defpackage.rw
    protected ow a_() {
        return new eg();
    }
}
