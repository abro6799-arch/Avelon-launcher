package defpackage;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.lwjgl.input.Mouse;

/* JADX INFO: loaded from: classes.dex */
abstract class iv extends lg {
    protected int b;
    protected List c;
    protected Comparator d;
    protected int e;
    protected int f;
    final /* synthetic */ dv g;

    protected abstract String a(int i);

    @Override // defpackage.lg
    protected void a(int i, boolean z) {
    }

    @Override // defpackage.lg
    protected boolean c_(int i) {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected iv(dv dvVar) {
        super(dvVar.b, dvVar.c, dvVar.d, 32, dvVar.d - 64, 20);
        this.g = dvVar;
        this.b = -1;
        this.e = -1;
        this.f = 0;
        a(false);
        a(true, 20);
    }

    @Override // defpackage.lg
    protected void c() {
        this.g.i();
    }

    @Override // defpackage.lg
    protected void a(int i, int i2, nw nwVar) {
        int i3;
        if (!Mouse.isButtonDown(0)) {
            this.b = -1;
        }
        if (this.b == 0) {
            this.g.c((i + 115) - 18, i2 + 1, 0, 0);
        } else {
            this.g.c((i + 115) - 18, i2 + 1, 0, 18);
        }
        if (this.b == 1) {
            this.g.c((i + 165) - 18, i2 + 1, 0, 0);
        } else {
            this.g.c((i + 165) - 18, i2 + 1, 0, 18);
        }
        if (this.b == 2) {
            this.g.c((i + 215) - 18, i2 + 1, 0, 0);
        } else {
            this.g.c((i + 215) - 18, i2 + 1, 0, 18);
        }
        int i4 = this.e;
        if (i4 != -1) {
            if (i4 == 1) {
                i3 = 129;
            } else {
                i3 = i4 == 2 ? 179 : 79;
            }
            this.g.c(i + i3, i2 + 1, this.f == 1 ? 36 : 18, 0);
        }
    }

    @Override // defpackage.lg
    protected void a(int i, int i2) {
        this.b = -1;
        if (i >= 79 && i < 115) {
            this.b = 0;
        } else if (i >= 129 && i < 165) {
            this.b = 1;
        } else if (i >= 179 && i < 215) {
            this.b = 2;
        }
        int i3 = this.b;
        if (i3 >= 0) {
            c(i3);
            this.g.b.B.a("random.click", 1.0f, 1.0f);
        }
    }

    @Override // defpackage.lg
    protected final int a() {
        return this.c.size();
    }

    protected final tw b(int i) {
        return (tw) this.c.get(i);
    }

    protected void a(tw twVar, int i, int i2, boolean z) {
        if (twVar != null) {
            String strA = twVar.a(this.g.o.a(twVar));
            dv dvVar = this.g;
            dvVar.b(dvVar.g, strA, i - this.g.g.a(strA), i2 + 5, z ? 16777215 : 9474192);
        } else {
            dv dvVar2 = this.g;
            dvVar2.b(dvVar2.g, "-", i - this.g.g.a("-"), i2 + 5, z ? 16777215 : 9474192);
        }
    }

    @Override // defpackage.lg
    protected void b(int i, int i2) {
        String strA;
        if (i2 < this.h || i2 > this.i) {
            return;
        }
        int iC = c(i, i2);
        int i3 = ((this.g.c / 2) - 92) - 16;
        if (iC >= 0) {
            int i4 = i3 + 40;
            if (i < i4 || i > i4 + 20) {
                return;
            }
            a(b(iC), i, i2);
            return;
        }
        int i5 = i3 + 115;
        if (i < i5 - 18 || i > i5) {
            int i6 = i3 + 165;
            if (i < i6 - 18 || i > i6) {
                int i7 = i3 + 215;
                if (i < i7 - 18 || i > i7) {
                    return;
                } else {
                    strA = a(2);
                }
            } else {
                strA = a(1);
            }
        } else {
            strA = a(0);
        }
        String strTrim = ("" + nh.a().a(strA)).trim();
        if (strTrim.length() > 0) {
            int i8 = i + 12;
            int i9 = i2 - 12;
            this.g.a(i8 - 3, i9 - 3, this.g.g.a(strTrim) + i8 + 3, i9 + 8 + 3, -1073741824, -1073741824);
            this.g.g.a(strTrim, i8, i9, -1);
        }
    }

    protected void a(tw twVar, int i, int i2) {
        if (twVar == null) {
            return;
        }
        String strTrim = ("" + nh.a().b(gm.c[twVar.a()].a())).trim();
        if (strTrim.length() > 0) {
            int i3 = i + 12;
            int i4 = i2 - 12;
            this.g.a(i3 - 3, i4 - 3, this.g.g.a(strTrim) + i3 + 3, i4 + 8 + 3, -1073741824, -1073741824);
            this.g.g.a(strTrim, i3, i4, -1);
        }
    }

    protected void c(int i) {
        if (i != this.e) {
            this.e = i;
            this.f = -1;
        } else if (this.f == -1) {
            this.f = 1;
        } else {
            this.e = -1;
            this.f = 0;
        }
        Collections.sort(this.c, this.d);
    }
}
