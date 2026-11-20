package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class uj extends rw {
    private Class a;
    private boolean b;

    @Override // defpackage.uu
    public int b() {
        return -1;
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

    protected uj(int i, Class cls, boolean z) {
        super(i, ln.d);
        this.b = z;
        this.bm = 4;
        this.a = cls;
        a(0.25f, 0.0f, 0.25f, 0.75f, 1.0f, 0.75f);
    }

    @Override // defpackage.uu
    public eq f(fd fdVar, int i, int i2, int i3) {
        a((xp) fdVar, i, i2, i3);
        return super.f(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void a(xp xpVar, int i, int i2, int i3) {
        if (this.b) {
            return;
        }
        int iE = xpVar.e(i, i2, i3);
        a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
        if (iE == 2) {
            a(0.0f, 0.28125f, 0.875f, 1.0f, 0.78125f, 1.0f);
        }
        if (iE == 3) {
            a(0.0f, 0.28125f, 0.0f, 1.0f, 0.78125f, 0.125f);
        }
        if (iE == 4) {
            a(0.875f, 0.28125f, 0.0f, 1.0f, 0.78125f, 1.0f);
        }
        if (iE == 5) {
            a(0.0f, 0.28125f, 0.0f, 0.125f, 0.78125f, 1.0f);
        }
    }

    @Override // defpackage.rw
    protected ow a_() {
        try {
            return (ow) this.a.newInstance();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return gm.as.bf;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        boolean z = true;
        if (this.b) {
            if (fdVar.f(i, i2 - 1, i3).a()) {
                z = false;
            }
        } else {
            int iE = fdVar.e(i, i2, i3);
            if (iE == 2 && fdVar.f(i, i2, i3 + 1).a()) {
                z = false;
            }
            if (iE == 3 && fdVar.f(i, i2, i3 - 1).a()) {
                z = false;
            }
            if (iE == 4 && fdVar.f(i + 1, i2, i3).a()) {
                z = false;
            }
            if (iE == 5 && fdVar.f(i - 1, i2, i3).a()) {
                z = false;
            }
        }
        if (z) {
            g(fdVar, i, i2, i3, fdVar.e(i, i2, i3));
            fdVar.f(i, i2, i3, 0);
        }
        super.b(fdVar, i, i2, i3, i4);
    }
}
