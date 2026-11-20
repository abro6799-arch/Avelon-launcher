package defpackage;

import java.util.ArrayList;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ss extends uu {
    private uu a;

    @Override // defpackage.uu
    public int b() {
        return 10;
    }

    @Override // defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    protected ss(int i, uu uuVar) {
        super(i, uuVar.bm, uuVar.bA);
        this.a = uuVar;
        c(uuVar.bo);
        b(uuVar.bp / 3.0f);
        a(uuVar.by);
        g(255);
    }

    @Override // defpackage.uu
    public void a(xp xpVar, int i, int i2, int i3) {
        a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        return super.e(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public boolean b(xp xpVar, int i, int i2, int i3, int i4) {
        return super.b(xpVar, i, i2, i3, i4);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, eq eqVar, ArrayList arrayList) {
        int iE = fdVar.e(i, i2, i3);
        if (iE == 0) {
            a(0.0f, 0.0f, 0.0f, 0.5f, 0.5f, 1.0f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
            a(0.5f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
        } else if (iE == 1) {
            a(0.0f, 0.0f, 0.0f, 0.5f, 1.0f, 1.0f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
            a(0.5f, 0.0f, 0.0f, 1.0f, 0.5f, 1.0f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
        } else if (iE == 2) {
            a(0.0f, 0.0f, 0.0f, 1.0f, 0.5f, 0.5f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
            a(0.0f, 0.0f, 0.5f, 1.0f, 1.0f, 1.0f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
        } else if (iE == 3) {
            a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.5f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
            a(0.0f, 0.0f, 0.5f, 1.0f, 0.5f, 1.0f);
            super.a(fdVar, i, i2, i3, eqVar, arrayList);
        }
        a(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, Random random) {
        this.a.b(fdVar, i, i2, i3, random);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, gs gsVar) {
        this.a.b(fdVar, i, i2, i3, gsVar);
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3, int i4) {
        this.a.c(fdVar, i, i2, i3, i4);
    }

    @Override // defpackage.uu
    public float d(xp xpVar, int i, int i2, int i3) {
        return this.a.d(xpVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public float a(sn snVar) {
        return this.a.a(snVar);
    }

    @Override // defpackage.uu
    public int b_() {
        return this.a.b_();
    }

    @Override // defpackage.uu
    public int a(int i, Random random) {
        return this.a.a(i, random);
    }

    @Override // defpackage.uu
    public int a(Random random) {
        return this.a.a(random);
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        return this.a.a(i, i2);
    }

    @Override // defpackage.uu
    public int a(int i) {
        return this.a.a(i);
    }

    @Override // defpackage.uu
    public int a(xp xpVar, int i, int i2, int i3, int i4) {
        return this.a.a(xpVar, i, i2, i3, i4);
    }

    @Override // defpackage.uu
    public int e() {
        return this.a.e();
    }

    @Override // defpackage.uu
    public eq f(fd fdVar, int i, int i2, int i3) {
        return this.a.f(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, sn snVar, bt btVar) {
        this.a.a(fdVar, i, i2, i3, snVar, btVar);
    }

    @Override // defpackage.uu
    public boolean v_() {
        return this.a.v_();
    }

    @Override // defpackage.uu
    public boolean a(int i, boolean z) {
        return this.a.a(i, z);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        return this.a.a(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        b(fdVar, i, i2, i3, 0);
        this.a.c(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        this.a.b(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, int i4, float f) {
        this.a.a(fdVar, i, i2, i3, i4, f);
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, sn snVar) {
        this.a.b(fdVar, i, i2, i3, snVar);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, Random random) {
        this.a.a(fdVar, i, i2, i3, random);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        return this.a.a(fdVar, i, i2, i3, gsVar);
    }

    @Override // defpackage.uu
    public void d(fd fdVar, int i, int i2, int i3) {
        this.a.d(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, ls lsVar) {
        int iB = in.b(((double) ((lsVar.aS * 4.0f) / 360.0f)) + 0.5d) & 3;
        if (iB == 0) {
            fdVar.d(i, i2, i3, 2);
        }
        if (iB == 1) {
            fdVar.d(i, i2, i3, 1);
        }
        if (iB == 2) {
            fdVar.d(i, i2, i3, 3);
        }
        if (iB == 3) {
            fdVar.d(i, i2, i3, 0);
        }
    }
}
