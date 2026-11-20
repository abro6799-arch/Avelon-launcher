package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class fw {
    private xp a;
    private lf b = new lf();
    private jx c = new jx();
    private d[] d = new d[32];

    public fw(xp xpVar) {
        this.a = xpVar;
    }

    public dh a(sn snVar, sn snVar2, float f) {
        return a(snVar, snVar2.aM, snVar2.aW.b, snVar2.aO, f);
    }

    public dh a(sn snVar, int i, int i2, int i3, float f) {
        return a(snVar, i + 0.5f, i2 + 0.5f, i3 + 0.5f, f);
    }

    private dh a(sn snVar, double d, double d2, double d3, float f) {
        this.b.a();
        this.c.a();
        return a(snVar, a(in.b(snVar.aW.a), in.b(snVar.aW.b), in.b(snVar.aW.c)), a(in.b(d - ((double) (snVar.bg / 2.0f))), in.b(d2), in.b(d3 - ((double) (snVar.bg / 2.0f)))), new d(in.d(snVar.bg + 1.0f), in.d(snVar.bh + 1.0f), in.d(snVar.bg + 1.0f)), f);
    }

    private dh a(sn snVar, d dVar, d dVar2, d dVar3, float f) {
        dVar.e = 0.0f;
        dVar.f = dVar.a(dVar2);
        dVar.g = dVar.f;
        this.b.a();
        this.b.a(dVar);
        d dVar4 = dVar;
        while (!this.b.c()) {
            d dVarB = this.b.b();
            if (dVarB.equals(dVar2)) {
                return a(dVar, dVar2);
            }
            if (dVarB.a(dVar2) < dVar4.a(dVar2)) {
                dVar4 = dVarB;
            }
            dVarB.i = true;
            int iB = b(snVar, dVarB, dVar3, dVar2, f);
            for (int i = 0; i < iB; i++) {
                d dVar5 = this.d[i];
                float fA = dVarB.e + dVarB.a(dVar5);
                if (!dVar5.a() || fA < dVar5.e) {
                    dVar5.h = dVarB;
                    dVar5.e = fA;
                    dVar5.f = dVar5.a(dVar2);
                    if (dVar5.a()) {
                        this.b.a(dVar5, dVar5.e + dVar5.f);
                    } else {
                        dVar5.g = dVar5.e + dVar5.f;
                        this.b.a(dVar5);
                    }
                }
            }
        }
        if (dVar4 == dVar) {
            return null;
        }
        return a(dVar, dVar4);
    }

    private int b(sn snVar, d dVar, d dVar2, d dVar3, float f) {
        int i = 1;
        int i2 = a(snVar, dVar.a, dVar.b + 1, dVar.c, dVar2) == 1 ? 1 : 0;
        d dVarA = a(snVar, dVar.a, dVar.b, dVar.c + 1, dVar2, i2);
        d dVarA2 = a(snVar, dVar.a - 1, dVar.b, dVar.c, dVar2, i2);
        d dVarA3 = a(snVar, dVar.a + 1, dVar.b, dVar.c, dVar2, i2);
        d dVarA4 = a(snVar, dVar.a, dVar.b, dVar.c - 1, dVar2, i2);
        if (dVarA == null || dVarA.i || dVarA.a(dVar3) >= f) {
            i = 0;
        } else {
            this.d[0] = dVarA;
        }
        if (dVarA2 != null && !dVarA2.i && dVarA2.a(dVar3) < f) {
            this.d[i] = dVarA2;
            i++;
        }
        if (dVarA3 != null && !dVarA3.i && dVarA3.a(dVar3) < f) {
            this.d[i] = dVarA3;
            i++;
        }
        if (dVarA4 == null || dVarA4.i || dVarA4.a(dVar3) >= f) {
            return i;
        }
        int i3 = i + 1;
        this.d[i] = dVarA4;
        return i3;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0030  */
    private d a(sn snVar, int i, int i2, int i3, d dVar, int i4) {
        int i5;
        d dVarA = a(snVar, i, i2, i3, dVar) == 1 ? a(i, i2, i3) : null;
        if (dVarA != null || i4 <= 0) {
            i5 = i2;
        } else {
            i5 = i2 + i4;
            if (a(snVar, i, i5, i3, dVar) == 1) {
                dVarA = a(i, i5, i3);
            } else {
                i5 = i2;
            }
        }
        if (dVarA != null) {
            int iA = 0;
            int i6 = 0;
            while (i5 > 0) {
                iA = a(snVar, i, i5 - 1, i3, dVar);
                if (iA != 1) {
                    break;
                }
                i6++;
                if (i6 >= 4) {
                    return null;
                }
                i5--;
                if (i5 > 0) {
                    dVarA = a(i, i5, i3);
                }
            }
            if (iA == -2) {
                return null;
            }
        }
        return dVarA;
    }

    private final d a(int i, int i2, int i3) {
        int iA = d.a(i, i2, i3);
        d dVar = (d) this.c.a(iA);
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d(i, i2, i3);
        this.c.a(iA, dVar2);
        return dVar2;
    }

    private int a(sn snVar, int i, int i2, int i3, d dVar) {
        for (int i4 = i; i4 < dVar.a + i; i4++) {
            for (int i5 = i2; i5 < dVar.b + i2; i5++) {
                for (int i6 = i3; i6 < dVar.c + i3; i6++) {
                    int iA = this.a.a(i4, i5, i6);
                    if (iA > 0) {
                        if (iA == uu.aM.bn || iA == uu.aF.bn) {
                            if (!le.f(this.a.e(i4, i5, i6))) {
                                return 0;
                            }
                        } else {
                            ln lnVar = uu.m[iA].bA;
                            if (lnVar.c()) {
                                return 0;
                            }
                            if (lnVar == ln.g) {
                                return -1;
                            }
                            if (lnVar == ln.h) {
                                return -2;
                            }
                        }
                    }
                }
            }
        }
        return 1;
    }

    private dh a(d dVar, d dVar2) {
        int i = 1;
        for (d dVar3 = dVar2; dVar3.h != null; dVar3 = dVar3.h) {
            i++;
        }
        d[] dVarArr = new d[i];
        int i2 = i - 1;
        dVarArr[i2] = dVar2;
        while (dVar2.h != null) {
            dVar2 = dVar2.h;
            i2--;
            dVarArr[i2] = dVar2;
        }
        return new dh(dVarArr);
    }
}
