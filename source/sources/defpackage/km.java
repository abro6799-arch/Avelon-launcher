package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class km extends gm {
    public static final String[] a = {"black", "red", "green", "brown", "blue", "purple", "cyan", "silver", "gray", "pink", "lime", "yellow", "lightBlue", "magenta", "orange", "white"};
    public static final int[] bk = {1973019, 11743532, 3887386, 5320730, 2437522, 8073150, 2651799, 2651799, 4408131, 14188952, 4312372, 14602026, 6719955, 12801229, 15435844, 15790320};

    public km(int i) {
        super(i);
        a(true);
        e(0);
    }

    @Override // defpackage.gm
    public int a(int i) {
        return this.bh + ((i % 8) * 16) + (i / 8);
    }

    @Override // defpackage.gm
    public String a(iz izVar) {
        return super.a() + "." + a[izVar.i()];
    }

    @Override // defpackage.gm
    public boolean a(iz izVar, gs gsVar, fd fdVar, int i, int i2, int i3, int i4) {
        if (izVar.i() == 15) {
            int iA = fdVar.a(i, i2, i3);
            if (iA == uu.z.bn) {
                if (!fdVar.B) {
                    ((he) uu.z).c(fdVar, i, i2, i3, fdVar.r);
                    izVar.a--;
                }
                return true;
            }
            if (iA == uu.aA.bn) {
                if (!fdVar.B) {
                    ((ni) uu.aA).d_(fdVar, i, i2, i3);
                    izVar.a--;
                }
                return true;
            }
            if (iA == uu.v.bn) {
                if (!fdVar.B) {
                    izVar.a--;
                    for (int i5 = 0; i5 < 128; i5++) {
                        int iNextInt = i2 + 1;
                        int iNextInt2 = i;
                        int iNextInt3 = i3;
                        int i6 = 0;
                        while (true) {
                            if (i6 < i5 / 16) {
                                iNextInt2 += b.nextInt(3) - 1;
                                iNextInt += ((b.nextInt(3) - 1) * b.nextInt(3)) / 2;
                                iNextInt3 += b.nextInt(3) - 1;
                                if (fdVar.a(iNextInt2, iNextInt - 1, iNextInt3) != uu.v.bn || fdVar.h(iNextInt2, iNextInt, iNextInt3)) {
                                    break;
                                }
                                i6++;
                            } else {
                                if (fdVar.a(iNextInt2, iNextInt, iNextInt3) == 0) {
                                    if (b.nextInt(10) != 0) {
                                        fdVar.b(iNextInt2, iNextInt, iNextInt3, uu.Y.bn, 1);
                                        break;
                                    }
                                    if (b.nextInt(3) != 0) {
                                        fdVar.f(iNextInt2, iNextInt, iNextInt3, uu.ae.bn);
                                        break;
                                    }
                                    fdVar.f(iNextInt2, iNextInt, iNextInt3, uu.af.bn);
                                    break;
                                }
                                break;
                            }
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.gm
    public void a(iz izVar, ls lsVar) {
        if (lsVar instanceof dl) {
            dl dlVar = (dl) lsVar;
            int iD = ee.d(izVar.i());
            if (dlVar.s() || dlVar.r() == iD) {
                return;
            }
            dlVar.e_(iD);
            izVar.a--;
        }
    }
}
