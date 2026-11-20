package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class qv extends sn {
    public int a;
    public int b;
    public int c;
    public int d;
    public iq e;
    private int f;

    private float c(int i) {
        return (i == 32 || i == 64) ? 0.5f : 0.0f;
    }

    @Override // defpackage.sn
    protected void b() {
    }

    @Override // defpackage.sn
    public boolean h_() {
        return true;
    }

    public qv(fd fdVar) {
        super(fdVar);
        this.f = 0;
        this.a = 0;
        this.bf = 0.0f;
        b(0.5f, 0.5f);
    }

    public qv(fd fdVar, int i, int i2, int i3, int i4) {
        this(fdVar);
        this.b = i;
        this.c = i2;
        this.d = i3;
        ArrayList arrayList = new ArrayList();
        for (iq iqVar : iq.values()) {
            this.e = iqVar;
            b(i4);
            if (k()) {
                arrayList.add(iqVar);
            }
        }
        if (arrayList.size() > 0) {
            this.e = (iq) arrayList.get(this.bs.nextInt(arrayList.size()));
        }
        b(i4);
    }

    public qv(fd fdVar, int i, int i2, int i3, int i4, String str) {
        this(fdVar);
        this.b = i;
        this.c = i2;
        this.d = i3;
        for (iq iqVar : iq.values()) {
            if (iqVar.A.equals(str)) {
                this.e = iqVar;
                break;
            }
        }
        b(i4);
    }

    public void b(int i) {
        this.a = i;
        float f = i * 90;
        this.aS = f;
        this.aU = f;
        float f2 = this.e.B;
        float f3 = this.e.C;
        float f4 = this.e.B;
        if (i == 0 || i == 2) {
            f4 = 0.5f;
        } else {
            f2 = 0.5f;
        }
        float f5 = f2 / 32.0f;
        float f6 = f3 / 32.0f;
        float f7 = f4 / 32.0f;
        float fC = this.b + 0.5f;
        float f8 = this.c + 0.5f;
        float fC2 = this.d + 0.5f;
        if (i == 0) {
            fC2 -= 0.5625f;
        }
        if (i == 1) {
            fC -= 0.5625f;
        }
        if (i == 2) {
            fC2 += 0.5625f;
        }
        if (i == 3) {
            fC += 0.5625f;
        }
        if (i == 0) {
            fC -= c(this.e.B);
        }
        if (i == 1) {
            fC2 += c(this.e.B);
        }
        if (i == 2) {
            fC += c(this.e.B);
        }
        float f9 = fC;
        if (i == 3) {
            fC2 -= c(this.e.B);
        }
        float f10 = fC2;
        float fC3 = f8 + c(this.e.C);
        e(f9, fC3, f10);
        this.aW.c((f9 - f5) - (-0.00625f), (fC3 - f6) - (-0.00625f), (f10 - f7) - (-0.00625f), (f9 + f5) - 0.00625f, (fC3 + f6) - 0.00625f, (f10 + f7) - 0.00625f);
    }

    @Override // defpackage.sn
    public void w_() {
        int i = this.f;
        this.f = i + 1;
        if (i != 100 || this.aI.B) {
            return;
        }
        this.f = 0;
        if (k()) {
            return;
        }
        K();
        this.aI.b(new hl(this.aI, this.aM, this.aN, this.aO, new iz(gm.aq)));
    }

    public boolean k() {
        ln lnVarF;
        if (this.aI.a(this, this.aW).size() > 0) {
            return false;
        }
        int i = this.e.B / 16;
        int i2 = this.e.C / 16;
        int iB = this.b;
        int iB2 = this.d;
        if (this.a == 0) {
            iB = in.b(this.aM - ((double) (this.e.B / 32.0f)));
        }
        if (this.a == 1) {
            iB2 = in.b(this.aO - ((double) (this.e.B / 32.0f)));
        }
        if (this.a == 2) {
            iB = in.b(this.aM - ((double) (this.e.B / 32.0f)));
        }
        if (this.a == 3) {
            iB2 = in.b(this.aO - ((double) (this.e.B / 32.0f)));
        }
        int iB3 = in.b(this.aN - ((double) (this.e.C / 32.0f)));
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = this.a;
                if (i5 == 0 || i5 == 2) {
                    lnVarF = this.aI.f(iB + i3, iB3 + i4, this.d);
                } else {
                    lnVarF = this.aI.f(this.b, iB3 + i4, iB2 + i3);
                }
                if (!lnVarF.a()) {
                    return false;
                }
            }
        }
        List listB = this.aI.b(this, this.aW);
        for (int i6 = 0; i6 < listB.size(); i6++) {
            if (listB.get(i6) instanceof qv) {
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.sn
    public boolean a(sn snVar, int i) {
        if (this.be || this.aI.B) {
            return true;
        }
        K();
        ai();
        this.aI.b(new hl(this.aI, this.aM, this.aN, this.aO, new iz(gm.aq)));
        return true;
    }

    @Override // defpackage.sn
    public void b(nu nuVar) {
        nuVar.a("Dir", (byte) this.a);
        nuVar.a("Motive", this.e.A);
        nuVar.a("TileX", this.b);
        nuVar.a("TileY", this.c);
        nuVar.a("TileZ", this.d);
    }

    @Override // defpackage.sn
    public void a(nu nuVar) {
        this.a = nuVar.c("Dir");
        this.b = nuVar.e("TileX");
        this.c = nuVar.e("TileY");
        this.d = nuVar.e("TileZ");
        String strI = nuVar.i("Motive");
        for (iq iqVar : iq.values()) {
            if (iqVar.A.equals(strI)) {
                this.e = iqVar;
            }
        }
        if (this.e == null) {
            this.e = iq.Kebab;
        }
        b(this.a);
    }

    @Override // defpackage.sn
    public void b(double d, double d2, double d3) {
        if (this.aI.B || (d * d) + (d2 * d2) + (d3 * d3) <= 0.0d) {
            return;
        }
        K();
        this.aI.b(new hl(this.aI, this.aM, this.aN, this.aO, new iz(gm.aq)));
    }

    @Override // defpackage.sn
    public void d(double d, double d2, double d3) {
        if (this.aI.B || (d * d) + (d2 * d2) + (d3 * d3) <= 0.0d) {
            return;
        }
        K();
        this.aI.b(new hl(this.aI, this.aM, this.aN, this.aO, new iz(gm.aq)));
    }
}
