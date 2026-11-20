package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class jw extends uu {
    @Override // defpackage.uu
    public int b() {
        return 11;
    }

    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    public jw(int i, int i2) {
        super(i, i2, ln.d);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        int i4 = i2 - 1;
        if (fdVar.a(i, i4, i3) == this.bn) {
            return true;
        }
        if (fdVar.f(i, i4, i3).a()) {
            return super.a(fdVar, i, i2, i3);
        }
        return false;
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        return eq.b(i, i2, i3, i + 1, i2 + 1.5f, i3 + 1);
    }
}
