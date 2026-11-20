package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class qx {
    public double b;
    public double c;
    public double d;
    public sn e;
    public float f;
    private fd i;
    public boolean a = false;
    private Random h = new Random();
    public Set g = new HashSet();

    public qx(fd fdVar, sn snVar, double d, double d2, double d3, float f) {
        this.i = fdVar;
        this.e = snVar;
        this.f = f;
        this.b = d;
        this.c = d2;
        this.d = d3;
    }

    public void a() {
        float f;
        float f2 = this.f;
        int i = 0;
        while (true) {
            float f3 = 2.0f;
            int i2 = 16;
            if (i >= 16) {
                break;
            }
            int i3 = 0;
            while (i3 < i2) {
                int i4 = 0;
                while (i4 < i2) {
                    if (i == 0 || i == 15 || i3 == 0 || i3 == 15 || i4 == 0 || i4 == 15) {
                        float f4 = i2 - 1.0f;
                        double d = ((i / f4) * f3) - 1.0f;
                        double d2 = ((i3 / f4) * f3) - 1.0f;
                        double d3 = ((i4 / f4) * f3) - 1.0f;
                        double dSqrt = Math.sqrt((d * d) + (d2 * d2) + (d3 * d3));
                        double d4 = d / dSqrt;
                        double d5 = d2 / dSqrt;
                        double d6 = d3 / dSqrt;
                        float fNextFloat = this.f * ((this.i.r.nextFloat() * 0.6f) + 0.7f);
                        double d7 = this.b;
                        double d8 = this.c;
                        double d9 = d7;
                        double d10 = this.d;
                        while (fNextFloat > 0.0f) {
                            int iB = in.b(d9);
                            float f5 = f2;
                            int iB2 = in.b(d8);
                            int i5 = i3;
                            int iB3 = in.b(d10);
                            int i6 = i4;
                            int iA = this.i.a(iB, iB2, iB3);
                            double d11 = d10;
                            if (iA > 0) {
                                fNextFloat -= (uu.m[iA].a(this.e) + 0.3f) * 0.3f;
                            }
                            if (fNextFloat > 0.0f) {
                                this.g.add(new wf(iB, iB2, iB3));
                            }
                            double d12 = 0.3f;
                            d9 += d4 * d12;
                            d8 += d5 * d12;
                            d10 = d11 + (d12 * d6);
                            fNextFloat -= 0.22500001f;
                            f2 = f5;
                            i3 = i5;
                            i4 = i6;
                        }
                        f = f2;
                    } else {
                        f = f2;
                    }
                    i4++;
                    i = i;
                    f2 = f;
                    i3 = i3;
                    f3 = 2.0f;
                    i2 = 16;
                }
                i3++;
                f3 = 2.0f;
                i2 = 16;
            }
            i++;
        }
        float f6 = f2;
        float f7 = this.f * 2.0f;
        this.f = f7;
        int iB4 = in.b((this.b - ((double) f7)) - 1.0d);
        int iB5 = in.b(this.b + ((double) this.f) + 1.0d);
        List listB = this.i.b(this.e, eq.b(iB4, in.b((this.c - ((double) this.f)) - 1.0d), in.b((this.d - ((double) this.f)) - 1.0d), iB5, in.b(this.c + ((double) this.f) + 1.0d), in.b(this.d + ((double) this.f) + 1.0d)));
        bt btVarB = bt.b(this.b, this.c, this.d);
        int i7 = 0;
        while (i7 < listB.size()) {
            sn snVar = (sn) listB.get(i7);
            double dH = snVar.h(this.b, this.c, this.d) / ((double) this.f);
            if (dH <= 1.0d) {
                double d13 = snVar.aM - this.b;
                double d14 = snVar.aN - this.c;
                double d15 = snVar.aO - this.d;
                double dA = in.a((d13 * d13) + (d14 * d14) + (d15 * d15));
                double dA2 = (1.0d - dH) * ((double) this.i.a(btVarB, snVar.aW));
                snVar.a(this.e, (int) (((((dA2 * dA2) + dA2) / 2.0d) * 8.0d * ((double) this.f)) + 1.0d));
                snVar.aP += (d13 / dA) * dA2;
                snVar.aQ += (d14 / dA) * dA2;
                snVar.aR += (d15 / dA) * dA2;
            }
            i7++;
            listB = listB;
            btVarB = btVarB;
        }
        this.f = f6;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.g);
        if (this.a) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                wf wfVar = (wf) arrayList.get(size);
                int i8 = wfVar.a;
                int i9 = wfVar.b;
                int i10 = wfVar.c;
                int iA2 = this.i.a(i8, i9, i10);
                int iA3 = this.i.a(i8, i9 - 1, i10);
                if (iA2 == 0 && uu.o[iA3] && this.h.nextInt(3) == 0) {
                    this.i.f(i8, i9, i10, uu.as.bn);
                }
            }
        }
    }

    public void a(boolean z) {
        fd fdVar = this.i;
        fdVar.a(this.b, this.c, this.d, "random.explode", 4.0f, (((fdVar.r.nextFloat() - this.i.r.nextFloat()) * 0.2f) + 1.0f) * 0.7f);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.g);
        int size = arrayList.size() - 1;
        while (size >= 0) {
            wf wfVar = (wf) arrayList.get(size);
            int i = wfVar.a;
            int i2 = wfVar.b;
            int i3 = wfVar.c;
            int iA = this.i.a(i, i2, i3);
            if (z) {
                double dNextFloat = i + this.i.r.nextFloat();
                double dNextFloat2 = i2 + this.i.r.nextFloat();
                double dNextFloat3 = i3 + this.i.r.nextFloat();
                double d = dNextFloat - this.b;
                double d2 = dNextFloat2 - this.c;
                double d3 = dNextFloat3 - this.d;
                double dA = in.a((d * d) + (d2 * d2) + (d3 * d3));
                double dNextFloat4 = (0.5d / ((dA / ((double) this.f)) + 0.1d)) * ((double) ((this.i.r.nextFloat() * this.i.r.nextFloat()) + 0.3f));
                double d4 = (d / dA) * dNextFloat4;
                double d5 = (d2 / dA) * dNextFloat4;
                double d6 = (d3 / dA) * dNextFloat4;
                this.i.a("explode", ((this.b * 1.0d) + dNextFloat) / 2.0d, ((this.c * 1.0d) + dNextFloat2) / 2.0d, (dNextFloat3 + (this.d * 1.0d)) / 2.0d, d4, d5, d6);
                this.i.a("smoke", dNextFloat, dNextFloat2, dNextFloat3, d4, d5, d6);
            }
            if (iA > 0) {
                uu uuVar = uu.m[iA];
                fd fdVar2 = this.i;
                uuVar.a(fdVar2, i, i2, i3, fdVar2.e(i, i2, i3), 0.3f);
                this.i.f(i, i2, i3, 0);
                uu.m[iA].d(this.i, i, i2, i3);
            }
            size--;
            arrayList = arrayList;
        }
    }
}
