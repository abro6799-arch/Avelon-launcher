package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class fc extends uu {
    private boolean a;

    protected fc(int i, int i2, boolean z) {
        super(i, ln.x);
        this.bm = i2;
        b(true);
        this.a = z;
    }

    @Override // defpackage.uu
    public int a(int i, int i2) {
        if (i == 1) {
            return this.bm;
        }
        if (i == 0) {
            return this.bm;
        }
        int i3 = this.bm + 1 + 16;
        if (this.a) {
            i3++;
        }
        if (i2 == 2 && i == 2) {
            return i3;
        }
        if (i2 == 3 && i == 5) {
            return i3;
        }
        if (i2 == 0 && i == 3) {
            return i3;
        }
        return (i2 == 1 && i == 4) ? i3 : this.bm + 16;
    }

    @Override // defpackage.uu
    public int a(int i) {
        int i2;
        if (i == 1) {
            return this.bm;
        }
        if (i == 0) {
            return this.bm;
        }
        if (i == 3) {
            i2 = this.bm + 1;
        } else {
            i2 = this.bm;
        }
        return i2 + 16;
    }

    @Override // defpackage.uu
    public void c(fd fdVar, int i, int i2, int i3) {
        super.c(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        int iA = fdVar.a(i, i2, i3);
        return (iA == 0 || uu.m[iA].bA.g()) && fdVar.h(i, i2 - 1, i3);
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, ls lsVar) {
        fdVar.d(i, i2, i3, in.b(((double) ((lsVar.aS * 4.0f) / 360.0f)) + 2.5d) & 3);
    }
}
