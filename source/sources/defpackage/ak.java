package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class ak extends jp {
    @Override // defpackage.uu
    public int a(Random random) {
        return 0;
    }

    @Override // defpackage.uu
    public int b_() {
        return 1;
    }

    @Override // defpackage.jp, defpackage.uu
    public boolean c() {
        return false;
    }

    @Override // defpackage.uu
    public boolean d() {
        return false;
    }

    @Override // defpackage.uu
    public eq e(fd fdVar, int i, int i2, int i3) {
        return null;
    }

    public ak(int i, int i2) {
        super(i, i2, ln.y, false);
    }

    @Override // defpackage.uu
    public void a(xp xpVar, int i, int i2, int i3) {
        if (xpVar.a(i - 1, i2, i3) == this.bn || xpVar.a(i + 1, i2, i3) == this.bn) {
            a(0.0f, 0.0f, 0.375f, 1.0f, 1.0f, 0.625f);
        } else {
            a(0.375f, 0.0f, 0.0f, 0.625f, 1.0f, 1.0f);
        }
    }

    public boolean a_(fd fdVar, int i, int i2, int i3) {
        int i4 = i;
        int i5 = i3;
        int i6 = (fdVar.a(i4 + (-1), i2, i5) == uu.aq.bn || fdVar.a(i4 + 1, i2, i5) == uu.aq.bn) ? 1 : 0;
        int i7 = (fdVar.a(i4, i2, i5 + (-1)) == uu.aq.bn || fdVar.a(i4, i2, i5 + 1) == uu.aq.bn) ? 1 : 0;
        if (i6 == i7) {
            return false;
        }
        int i8 = i4 - i6;
        int i9 = i5 - i7;
        if (fdVar.a(i8, i2, i9) == 0) {
            i4 = i8;
            i5 = i9;
        }
        int i10 = -1;
        int i11 = -1;
        while (i11 <= 2) {
            int i12 = i10;
            while (i12 <= 3) {
                boolean z = i11 == i10 || i11 == 2 || i12 == i10 || i12 == 3;
                if ((i11 != i10 && i11 != 2) || (i12 != i10 && i12 != 3)) {
                    int iA = fdVar.a((i6 * i11) + i4, i2 + i12, i5 + (i7 * i11));
                    if (z) {
                        if (iA != uu.aq.bn) {
                            return false;
                        }
                    } else if (iA != 0 && iA != uu.as.bn) {
                        return false;
                    }
                }
                i12++;
                i10 = -1;
            }
            i11++;
            i10 = -1;
        }
        fdVar.o = true;
        for (int i13 = 0; i13 < 2; i13++) {
            for (int i14 = 0; i14 < 3; i14++) {
                fdVar.f((i6 * i13) + i4, i2 + i14, (i7 * i13) + i5, uu.bf.bn);
            }
        }
        fdVar.o = false;
        return true;
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8 = i - 1;
        boolean z = true;
        if (fdVar.a(i8, i2, i3) == this.bn || fdVar.a(i + 1, i2, i3) == this.bn) {
            i5 = 0;
            i6 = 1;
        } else {
            i6 = 0;
            i5 = 1;
        }
        int i9 = i2;
        while (true) {
            i7 = i9 - 1;
            if (fdVar.a(i, i7, i3) != this.bn) {
                break;
            } else {
                i9--;
            }
        }
        if (fdVar.a(i, i7, i3) != uu.aq.bn) {
            fdVar.f(i, i2, i3, 0);
            return;
        }
        int i10 = 1;
        while (i10 < 4 && fdVar.a(i, i9 + i10, i3) == this.bn) {
            i10++;
        }
        if (i10 != 3 || fdVar.a(i, i9 + i10, i3) != uu.aq.bn) {
            fdVar.f(i, i2, i3, 0);
            return;
        }
        boolean z2 = fdVar.a(i8, i2, i3) == this.bn || fdVar.a(i + 1, i2, i3) == this.bn;
        if (fdVar.a(i, i2, i3 - 1) != this.bn && fdVar.a(i, i2, i3 + 1) != this.bn) {
            z = false;
        }
        if (z2 && z) {
            fdVar.f(i, i2, i3, 0);
            return;
        }
        int i11 = i + i6;
        int i12 = i3 + i5;
        if (fdVar.a(i11, i2, i12) == uu.aq.bn && fdVar.a(i - i6, i2, i3 - i5) == this.bn) {
            return;
        }
        if (fdVar.a(i - i6, i2, i3 - i5) == uu.aq.bn && fdVar.a(i11, i2, i12) == this.bn) {
            return;
        }
        fdVar.f(i, i2, i3, 0);
    }

    @Override // defpackage.jp, defpackage.uu
    public boolean b(xp xpVar, int i, int i2, int i3, int i4) {
        if (xpVar.a(i, i2, i3) == this.bn) {
            return false;
        }
        boolean z = xpVar.a(i + (-1), i2, i3) == this.bn && xpVar.a(i + (-2), i2, i3) != this.bn;
        boolean z2 = xpVar.a(i + 1, i2, i3) == this.bn && xpVar.a(i + 2, i2, i3) != this.bn;
        boolean z3 = xpVar.a(i, i2, i3 + (-1)) == this.bn && xpVar.a(i, i2, i3 + (-2)) != this.bn;
        boolean z4 = xpVar.a(i, i2, i3 + 1) == this.bn && xpVar.a(i, i2, i3 + 2) != this.bn;
        boolean z5 = z || z2;
        boolean z6 = z3 || z4;
        if (z5 && i4 == 4) {
            return true;
        }
        if (z5 && i4 == 5) {
            return true;
        }
        if (z6 && i4 == 2) {
            return true;
        }
        return z6 && i4 == 3;
    }

    @Override // defpackage.uu
    public void a(fd fdVar, int i, int i2, int i3, sn snVar) {
        if (snVar.aH == null && snVar.aG == null) {
            snVar.S();
        }
    }

    @Override // defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3, Random random) {
        double d;
        double dNextFloat;
        double d2;
        int i4 = i;
        int i5 = i2;
        int i6 = i3;
        Random random2 = random;
        if (random2.nextInt(100) == 0) {
            fdVar.a(((double) i4) + 0.5d, ((double) i5) + 0.5d, ((double) i6) + 0.5d, "portal.portal", 1.0f, 0.8f + (random.nextFloat() * 0.4f));
        }
        int i7 = 0;
        while (i7 < 4) {
            double dNextFloat2 = i4 + random.nextFloat();
            double dNextFloat3 = i5 + random.nextFloat();
            double dNextFloat4 = i6 + random.nextFloat();
            int iNextInt = (random2.nextInt(2) * 2) - 1;
            double dNextFloat5 = (((double) random.nextFloat()) - 0.5d) * 0.5d;
            double dNextFloat6 = (((double) random.nextFloat()) - 0.5d) * 0.5d;
            double dNextFloat7 = (((double) random.nextFloat()) - 0.5d) * 0.5d;
            if (fdVar.a(i4 - 1, i5, i6) == this.bn || fdVar.a(i4 + 1, i5, i6) == this.bn) {
                d = ((double) i6) + 0.5d + (((double) iNextInt) * 0.25d);
                dNextFloat = random.nextFloat() * 2.0f * iNextInt;
                d2 = dNextFloat2;
            } else {
                dNextFloat = dNextFloat7;
                dNextFloat5 = random.nextFloat() * 2.0f * iNextInt;
                d = dNextFloat4;
                d2 = ((double) i4) + 0.5d + (((double) iNextInt) * 0.25d);
            }
            fdVar.a("portal", d2, dNextFloat3, d, dNextFloat5, dNextFloat6, dNextFloat);
            i7++;
            i4 = i;
            i5 = i2;
            i6 = i3;
            random2 = random;
        }
    }
}
