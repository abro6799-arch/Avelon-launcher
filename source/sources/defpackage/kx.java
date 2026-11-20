package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class kx implements cl {
    int a;
    int b;
    private lm c;
    private cl d;
    private bf e;
    private lm[] f;
    private fd g;
    private lm h;
    private int i;
    private int j;

    @Override // defpackage.cl
    public boolean b() {
        return true;
    }

    public void d(int i, int i2) {
        this.i = i;
        this.j = i2;
    }

    public boolean e(int i, int i2) {
        int i3 = this.i;
        if (i >= i3 - 15) {
            int i4 = this.j;
            if (i2 >= i4 - 15 && i <= i3 + 15 && i2 <= i4 + 15) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.cl
    public boolean a(int i, int i2) {
        if (!e(i, i2)) {
            return false;
        }
        if (i == this.a && i2 == this.b && this.h != null) {
            return true;
        }
        lm lmVar = this.f[(i & 31) + ((i2 & 31) * 32)];
        if (lmVar != null) {
            return lmVar == this.c || lmVar.a(i, i2);
        }
        return false;
    }

    @Override // defpackage.cl
    public lm c(int i, int i2) {
        return b(i, i2);
    }

    @Override // defpackage.cl
    public lm b(int i, int i2) {
        lm lmVar;
        if (i == this.a && i2 == this.b && (lmVar = this.h) != null) {
            return lmVar;
        }
        if (!this.g.y && !e(i, i2)) {
            return this.c;
        }
        int i3 = (i & 31) + ((i2 & 31) * 32);
        if (!a(i, i2)) {
            lm lmVar2 = this.f[i3];
            if (lmVar2 != null) {
                lmVar2.f();
                b(this.f[i3]);
                a(this.f[i3]);
            }
            lm lmVarF = f(i, i2);
            if (lmVarF == null) {
                cl clVar = this.d;
                if (clVar == null) {
                    lmVarF = this.c;
                } else {
                    lmVarF = clVar.b(i, i2);
                    lmVarF.i();
                }
            }
            this.f[i3] = lmVarF;
            lmVarF.d();
            lm lmVar3 = this.f[i3];
            if (lmVar3 != null) {
                lmVar3.e();
            }
            if (!this.f[i3].n) {
                int i4 = i + 1;
                int i5 = i2 + 1;
                if (a(i4, i5) && a(i, i5) && a(i4, i2)) {
                    a(this, i, i2);
                }
            }
            int i6 = i - 1;
            if (a(i6, i2) && !b(i6, i2).n) {
                int i7 = i2 + 1;
                if (a(i6, i7) && a(i, i7) && a(i6, i2)) {
                    a(this, i6, i2);
                }
            }
            int i8 = i2 - 1;
            if (a(i, i8) && !b(i, i8).n) {
                int i9 = i + 1;
                if (a(i9, i8) && a(i, i8) && a(i9, i2)) {
                    a(this, i, i8);
                }
            }
            if (a(i6, i8) && !b(i6, i8).n && a(i6, i8) && a(i, i8) && a(i6, i2)) {
                a(this, i6, i8);
            }
        }
        this.a = i;
        this.b = i2;
        lm lmVar4 = this.f[i3];
        this.h = lmVar4;
        return lmVar4;
    }

    private lm f(int i, int i2) {
        bf bfVar = this.e;
        if (bfVar == null) {
            return this.c;
        }
        try {
            lm lmVarA = bfVar.a(this.g, i, i2);
            if (lmVarA != null) {
                lmVarA.r = this.g.t();
            }
            return lmVarA;
        } catch (Exception e) {
            e.printStackTrace();
            return this.c;
        }
    }

    private void a(lm lmVar) {
        bf bfVar = this.e;
        if (bfVar == null) {
            return;
        }
        try {
            bfVar.b(this.g, lmVar);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void b(lm lmVar) {
        if (this.e == null) {
            return;
        }
        try {
            lmVar.r = this.g.t();
            this.e.a(this.g, lmVar);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // defpackage.cl
    public void a(cl clVar, int i, int i2) {
        lm lmVarB = b(i, i2);
        if (lmVarB.n) {
            return;
        }
        lmVarB.n = true;
        cl clVar2 = this.d;
        if (clVar2 != null) {
            clVar2.a(clVar, i, i2);
            lmVarB.g();
        }
    }

    @Override // defpackage.cl
    public boolean a(boolean z, yb ybVar) {
        int i;
        bf bfVar;
        if (ybVar != null) {
            int i2 = 0;
            i = 0;
            while (true) {
                lm[] lmVarArr = this.f;
                if (i2 >= lmVarArr.length) {
                    break;
                }
                lm lmVar = lmVarArr[i2];
                if (lmVar != null && lmVar.a(z)) {
                    i++;
                }
                i2++;
            }
        } else {
            i = 0;
        }
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            lm[] lmVarArr2 = this.f;
            if (i3 >= lmVarArr2.length) {
                if (!z || (bfVar = this.e) == null) {
                    return true;
                }
                bfVar.b();
                return true;
            }
            lm lmVar2 = lmVarArr2[i3];
            if (lmVar2 != null) {
                if (z && !lmVar2.p) {
                    a(this.f[i3]);
                }
                if (this.f[i3].a(z)) {
                    b(this.f[i3]);
                    this.f[i3].o = false;
                    i4++;
                    if (i4 == 2 && !z) {
                        return false;
                    }
                    if (ybVar != null) {
                        i5++;
                        if (i5 % 10 == 0) {
                            ybVar.a((i5 * 100) / i);
                        }
                    }
                } else {
                    continue;
                }
            }
            i3++;
        }
    }

    @Override // defpackage.cl
    public boolean a() {
        bf bfVar = this.e;
        if (bfVar != null) {
            bfVar.a();
        }
        return this.d.a();
    }

    @Override // defpackage.cl
    public String c() {
        return "ChunkCache: " + this.f.length;
    }
}
