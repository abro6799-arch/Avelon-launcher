package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class dn {
    protected fd a;
    private ji c;
    private List[] b = new List[4];
    private Random d = new Random();

    public dn(fd fdVar, ji jiVar) {
        if (fdVar != null) {
            this.a = fdVar;
        }
        this.c = jiVar;
        for (int i = 0; i < 4; i++) {
            this.b[i] = new ArrayList();
        }
    }

    public void a(xw xwVar) {
        int iC_ = xwVar.c_();
        if (this.b[iC_].size() >= 4000) {
            this.b[iC_].remove(0);
        }
        this.b[iC_].add(xwVar);
    }

    public void a() {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (i2 < this.b[i].size()) {
                xw xwVar = (xw) this.b[i].get(i2);
                xwVar.w_();
                if (xwVar.be) {
                    this.b[i].remove(i2);
                    i2--;
                }
                i2++;
            }
        }
    }

    public void a(sn snVar, float f) {
        float fB = in.b((snVar.aS * 3.1415927f) / 180.0f);
        float fA = in.a((snVar.aS * 3.1415927f) / 180.0f);
        float fA2 = (-fA) * in.a((snVar.aT * 3.1415927f) / 180.0f);
        float fA3 = fB * in.a((snVar.aT * 3.1415927f) / 180.0f);
        float fB2 = in.b((snVar.aT * 3.1415927f) / 180.0f);
        double d = f;
        xw.l = snVar.bl + ((snVar.aM - snVar.bl) * d);
        xw.m = snVar.bm + ((snVar.aN - snVar.bm) * d);
        xw.n = snVar.bn + ((snVar.aO - snVar.bn) * d);
        int i = 0;
        while (i < 3) {
            if (this.b[i].size() != 0) {
                int iB = i == 0 ? this.c.b("/particles.png") : 0;
                if (i == 1) {
                    iB = this.c.b("/terrain.png");
                }
                if (i == 2) {
                    iB = this.c.b("/gui/items.png");
                }
                GL11.glBindTexture(3553, iB);
                nw nwVar = nw.a;
                nwVar.b();
                for (int i2 = 0; i2 < this.b[i].size(); i2++) {
                    ((xw) this.b[i].get(i2)).a(nwVar, f, fB, fB2, fA, fA2, fA3);
                }
                nwVar.a();
            }
            i++;
        }
    }

    public void b(sn snVar, float f) {
        if (this.b[3].size() == 0) {
            return;
        }
        nw nwVar = nw.a;
        for (int i = 0; i < this.b[3].size(); i++) {
            ((xw) this.b[3].get(i)).a(nwVar, f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    public void a(fd fdVar) {
        this.a = fdVar;
        for (int i = 0; i < 4; i++) {
            this.b[i].clear();
        }
    }

    public void a(int i, int i2, int i3, int i4, int i5) {
        dn dnVar = this;
        int i6 = i;
        int i7 = i2;
        if (i4 == 0) {
            return;
        }
        uu uuVar = uu.m[i4];
        int i8 = 0;
        while (true) {
            int i9 = 4;
            if (i8 >= 4) {
                return;
            }
            int i10 = 0;
            while (i10 < i9) {
                int i11 = 0;
                while (i11 < i9) {
                    double d = i6;
                    double d2 = i9;
                    double d3 = d + ((((double) i8) + 0.5d) / d2);
                    double d4 = i7;
                    double d5 = d4 + ((((double) i10) + 0.5d) / d2);
                    double d6 = i3;
                    double d7 = d6 + ((((double) i11) + 0.5d) / d2);
                    int i12 = i11;
                    qm qmVar = new qm(dnVar.a, d3, d5, d7, (d3 - d) - 0.5d, (d5 - d4) - 0.5d, (d7 - d6) - 0.5d, uuVar, dnVar.d.nextInt(6), i5);
                    i6 = i;
                    i7 = i2;
                    a(qmVar.a(i6, i7, i3));
                    i11 = i12 + 1;
                    dnVar = this;
                    i10 = i10;
                    i9 = 4;
                    i8 = i8;
                }
                i10++;
            }
            i8++;
        }
    }

    public void a(int i, int i2, int i3, int i4) {
        int iA = this.a.a(i, i2, i3);
        if (iA == 0) {
            return;
        }
        uu uuVar = uu.m[iA];
        double d = i;
        double d2 = 0.2f;
        double d3 = 0.1f;
        double dNextDouble = (this.d.nextDouble() * ((uuVar.bv - uuVar.bs) - d2)) + d + d3 + uuVar.bs;
        double d4 = i2;
        double dNextDouble2 = (this.d.nextDouble() * ((uuVar.bw - uuVar.bt) - d2)) + d4 + d3 + uuVar.bt;
        double d5 = i3;
        double dNextDouble3 = (this.d.nextDouble() * ((uuVar.bx - uuVar.bu) - d2)) + d5 + d3 + uuVar.bu;
        double d6 = i4 == 1 ? d4 + uuVar.bw + d3 : i4 == 0 ? (d4 + uuVar.bt) - d3 : dNextDouble2;
        if (i4 == 2) {
            dNextDouble3 = (uuVar.bu + d5) - d3;
        }
        double d7 = i4 == 3 ? d5 + uuVar.bx + d3 : dNextDouble3;
        double d8 = i4 == 4 ? (d + uuVar.bs) - d3 : dNextDouble;
        if (i4 == 5) {
            d8 = d + uuVar.bv + d3;
        }
        fd fdVar = this.a;
        a(new qm(fdVar, d8, d6, d7, 0.0d, 0.0d, 0.0d, uuVar, i4, fdVar.e(i, i2, i3)).a(i, i2, i3).c(0.2f).d(0.6f));
    }

    public String b() {
        return "" + (this.b[0].size() + this.b[1].size() + this.b[2].size());
    }
}
