package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class pt extends rw {
    public pt(int i) {
        super(i, 74, ln.d);
    }

    @Override // defpackage.uu
    public int a(int i) {
        return this.bm;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        if (i4 <= 0 || !uu.m[i4].f()) {
            return;
        }
        boolean zR = fdVar.r(i, i2, i3);
        tn tnVar = (tn) fdVar.b(i, i2, i3);
        if (tnVar.b != zR) {
            if (zR) {
                tnVar.a(fdVar, i, i2, i3);
            }
            tnVar.b = zR;
        }
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        if (fdVar.B) {
            return true;
        }
        tn tnVar = (tn) fdVar.b(i, i2, i3);
        tnVar.a();
        tnVar.a(fdVar, i, i2, i3);
        return true;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, gs gsVar) {
        if (fdVar.B) {
            return;
        }
        ((tn) fdVar.b(i, i2, i3)).a(fdVar, i, i2, i3);
    }

    @Override // defpackage.rw
    protected ow a_() {
        return new tn();
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, int i4, int i5) {
        float fPow = (float) Math.pow(2.0d, ((double) (i5 - 12)) / 12.0d);
        String str = i4 == 1 ? "bd" : "harp";
        if (i4 == 2) {
            str = "snare";
        }
        if (i4 == 3) {
            str = "hat";
        }
        if (i4 == 4) {
            str = "bassattack";
        }
        double d = ((double) i) + 0.5d;
        double d2 = i2;
        double d3 = ((double) i3) + 0.5d;
        fdVar.a(d, d2 + 0.5d, d3, "note.".concat(str), 3.0f, fPow);
        fdVar.a("note", d, d2 + 1.2d, d3, ((double) i5) / 24.0d, 0.0d, 0.0d);
    }
}
