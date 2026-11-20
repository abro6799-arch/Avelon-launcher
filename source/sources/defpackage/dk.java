package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class dk {
    private static nw D = nw.a;
    public static int b = 0;
    public boolean A;
    private int C;
    private List F;
    public fd a;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int q;
    public int r;
    public int s;
    public float t;
    public boolean u;
    public eq v;
    public int w;
    public boolean y;
    public int z;
    public boolean o = false;
    public boolean[] p = new boolean[2];
    public boolean x = true;
    private boolean E = false;
    public List B = new ArrayList();
    public int c = -999;

    public dk(fd fdVar, List list, int i, int i2, int i3, int i4, int i5) {
        this.C = -1;
        this.a = fdVar;
        this.F = list;
        this.h = i4;
        this.g = i4;
        this.f = i4;
        this.t = in.c(((i4 * i4) + (i4 * i4)) + (i4 * i4)) / 2.0f;
        this.C = i5;
        a(i, i2, i3);
        this.u = false;
    }

    public void a(int i, int i2, int i3) {
        if (i == this.c && i2 == this.d && i3 == this.e) {
            return;
        }
        b();
        this.c = i;
        this.d = i2;
        this.e = i3;
        int i4 = this.f;
        this.q = (i4 / 2) + i;
        int i5 = this.g;
        this.r = (i5 / 2) + i2;
        int i6 = this.h;
        this.s = (i6 / 2) + i3;
        int i7 = i & 1023;
        this.l = i7;
        this.m = i2;
        int i8 = i3 & 1023;
        this.n = i8;
        this.i = i - i7;
        this.j = i2 - i2;
        this.k = i3 - i8;
        this.v = eq.a(i - 6.0f, i2 - 6.0f, i3 - 6.0f, i + i4 + 6.0f, i2 + i5 + 6.0f, i3 + i6 + 6.0f);
        GL11.glNewList(this.C + 2, 4864);
        int i9 = this.l;
        int i10 = this.m;
        int i11 = this.n;
        bb.a(eq.b(i9 - 6.0f, i10 - 6.0f, i11 - 6.0f, i9 + this.f + 6.0f, i10 + this.g + 6.0f, i11 + this.h + 6.0f));
        GL11.glEndList();
        f();
    }

    private void g() {
        GL11.glTranslatef(this.l, this.m, this.n);
    }

    public void a() {
        int i;
        boolean z;
        int i2;
        if (this.u) {
            b++;
            int i3 = this.c;
            int i4 = this.d;
            int i5 = this.e;
            int i6 = this.f + i3;
            int i7 = this.g + i4;
            int i8 = this.h + i5;
            boolean z2 = false;
            int i9 = 0;
            while (true) {
                if (i9 >= 2) {
                    break;
                }
                this.p[i9] = true;
                i9++;
            }
            lm.a = false;
            HashSet hashSet = new HashSet();
            hashSet.addAll(this.B);
            this.B.clear();
            ew ewVar = new ew(this.a, i3 - 1, i4 - 1, i5 - 1, i6 + 1, i7 + 1, i8 + 1);
            cv cvVar = new cv(ewVar);
            int i10 = 0;
            for (i = 2; i10 < i; i = 2) {
                boolean z3 = z2;
                boolean zB = z3;
                boolean z4 = zB;
                for (int i11 = i4; i11 < i7; i11++) {
                    for (int i12 = i5; i12 < i8; i12++) {
                        int i13 = i3;
                        while (i13 < i6) {
                            int iA = ewVar.a(i13, i11, i12);
                            if (iA > 0) {
                                if (z3) {
                                    i2 = i4;
                                } else {
                                    GL11.glNewList(this.C + i10, 4864);
                                    GL11.glPushMatrix();
                                    g();
                                    int i14 = this.h;
                                    GL11.glTranslatef((-i14) / 2.0f, (-this.g) / 2.0f, (-i14) / 2.0f);
                                    GL11.glScalef(1.000001f, 1.000001f, 1.000001f);
                                    int i15 = this.h;
                                    GL11.glTranslatef(i15 / 2.0f, this.g / 2.0f, i15 / 2.0f);
                                    D.b();
                                    i2 = i4;
                                    D.b(-this.c, -this.d, -this.e);
                                    z3 = true;
                                }
                                if (i10 == 0 && uu.p[iA]) {
                                    ow owVarB = ewVar.b(i13, i11, i12);
                                    if (ll.a.a(owVarB)) {
                                        this.B.add(owVarB);
                                    }
                                }
                                uu uuVar = uu.m[iA];
                                int iB_ = uuVar.b_();
                                if (iB_ != i10) {
                                    z4 = true;
                                } else if (iB_ == i10) {
                                    zB |= cvVar.b(uuVar, i13, i11, i12);
                                }
                            } else {
                                i3 = i3;
                                i2 = i4;
                                i5 = i5;
                                i6 = i6;
                                i7 = i7;
                                i8 = i8;
                            }
                            i13++;
                            i5 = i5;
                            i3 = i3;
                            i6 = i6;
                            i7 = i7;
                            i8 = i8;
                            i4 = i2;
                        }
                    }
                }
                int i16 = i3;
                int i17 = i4;
                int i18 = i5;
                int i19 = i6;
                int i20 = i7;
                int i21 = i8;
                if (z3) {
                    D.a();
                    GL11.glPopMatrix();
                    GL11.glEndList();
                    D.b(0.0d, 0.0d, 0.0d);
                } else {
                    zB = false;
                }
                if (zB) {
                    z = false;
                    this.p[i10] = false;
                } else {
                    z = false;
                }
                if (!z4) {
                    break;
                }
                i10++;
                z2 = z;
                i5 = i18;
                i3 = i16;
                i6 = i19;
                i7 = i20;
                i8 = i21;
                i4 = i17;
            }
            HashSet hashSet2 = new HashSet();
            hashSet2.addAll(this.B);
            hashSet2.removeAll(hashSet);
            this.F.addAll(hashSet2);
            hashSet.removeAll(this.B);
            this.F.removeAll(hashSet);
            this.A = lm.a;
            this.E = true;
        }
    }

    public float a(sn snVar) {
        float f = (float) (snVar.aM - ((double) this.q));
        float f2 = (float) (snVar.aN - ((double) this.r));
        float f3 = (float) (snVar.aO - ((double) this.s));
        return (f * f) + (f2 * f2) + (f3 * f3);
    }

    public void b() {
        for (int i = 0; i < 2; i++) {
            this.p[i] = true;
        }
        this.o = false;
        this.E = false;
    }

    public void c() {
        b();
        this.a = null;
    }

    public int a(int i) {
        if (this.o && !this.p[i]) {
            return this.C + i;
        }
        return -1;
    }

    public void a(yn ynVar) {
        this.o = ynVar.a(this.v);
    }

    public void d() {
        GL11.glCallList(this.C + 2);
    }

    public boolean e() {
        if (!this.E) {
            return false;
        }
        boolean[] zArr = this.p;
        return zArr[0] && zArr[1];
    }

    public void f() {
        this.u = true;
    }
}
