package defpackage;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class e extends rw {
    private Random a;

    protected e(int i) {
        super(i, ln.d);
        this.a = new Random();
        this.bm = 26;
    }

    @Override // defpackage.uu
    public int a(xp xpVar, int i, int i2, int i3, int i4) {
        if (i4 == 1 || i4 == 0) {
            int i5 = this.bm;
            return i5 - 1;
        }
        int i6 = i3 - 1;
        int iA = xpVar.a(i, i2, i6);
        int i7 = i3 + 1;
        int iA2 = xpVar.a(i, i2, i7);
        int i8 = i - 1;
        int iA3 = xpVar.a(i8, i2, i3);
        int i9 = i + 1;
        int iA4 = xpVar.a(i9, i2, i3);
        int i10 = 3;
        if (iA == this.bn || iA2 == this.bn) {
            if (i4 == 2 || i4 == 3) {
                return this.bm;
            }
            int i11 = iA != this.bn ? 0 : -1;
            int iA5 = xpVar.a(i8, i2, iA == this.bn ? i6 : i7);
            if (iA != this.bn) {
                i6 = i7;
            }
            int iA6 = xpVar.a(i9, i2, i6);
            if (i4 == 4) {
                i11 = (-1) - i11;
            }
            if ((uu.o[iA3] || uu.o[iA5]) && !uu.o[iA4]) {
                boolean z = uu.o[iA6];
            }
            int i12 = ((!uu.o[iA4] && !uu.o[iA6]) || uu.o[iA3] || uu.o[iA5]) ? 5 : 4;
            int i13 = this.bm;
            return (i4 == i12 ? i13 + 16 : i13 + 32) + i11;
        }
        if (iA3 != this.bn && iA4 != this.bn) {
            if (uu.o[iA]) {
                boolean z2 = uu.o[iA2];
            }
            if (uu.o[iA2] && !uu.o[iA]) {
                i10 = 2;
            }
            if (uu.o[iA3] && !uu.o[iA4]) {
                i10 = 5;
            }
            int i14 = (!uu.o[iA4] || uu.o[iA3]) ? i10 : 4;
            int i15 = this.bm;
            return i4 == i14 ? i15 + 1 : i15;
        }
        if (i4 == 4 || i4 == 5) {
            return this.bm;
        }
        int i16 = iA3 == this.bn ? -1 : 0;
        int iA7 = xpVar.a(iA3 == this.bn ? i8 : i9, i2, i6);
        if (iA3 != this.bn) {
            i8 = i9;
        }
        int iA8 = xpVar.a(i8, i2, i7);
        if (i4 == 3) {
            i16 = (-1) - i16;
        }
        if ((uu.o[iA] || uu.o[iA7]) && !uu.o[iA2]) {
            boolean z3 = uu.o[iA8];
        }
        if ((uu.o[iA2] || uu.o[iA8]) && !uu.o[iA] && !uu.o[iA7]) {
            i10 = 2;
        }
        int i17 = this.bm;
        return (i4 == i10 ? i17 + 16 : i17 + 32) + i16;
    }

    @Override // defpackage.uu
    public int a(int i) {
        if (i == 1) {
            return this.bm - 1;
        }
        if (i == 0) {
            return this.bm - 1;
        }
        if (i == 3) {
            return this.bm + 1;
        }
        return this.bm;
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3) {
        int i4 = i - 1;
        int i5 = fdVar.a(i4, i2, i3) == this.bn ? 1 : 0;
        int i6 = i + 1;
        if (fdVar.a(i6, i2, i3) == this.bn) {
            i5++;
        }
        int i7 = i3 - 1;
        if (fdVar.a(i, i2, i7) == this.bn) {
            i5++;
        }
        int i8 = i3 + 1;
        if (fdVar.a(i, i2, i8) == this.bn) {
            i5++;
        }
        return (i5 > 1 || h(fdVar, i4, i2, i3) || h(fdVar, i6, i2, i3) || h(fdVar, i, i2, i7) || h(fdVar, i, i2, i8)) ? false : true;
    }

    private boolean h(fd fdVar, int i, int i2, int i3) {
        if (fdVar.a(i, i2, i3) != this.bn) {
            return false;
        }
        return fdVar.a(i + (-1), i2, i3) == this.bn || fdVar.a(i + 1, i2, i3) == this.bn || fdVar.a(i, i2, i3 + (-1)) == this.bn || fdVar.a(i, i2, i3 + 1) == this.bn;
    }

    @Override // defpackage.rw, defpackage.uu
    public void b(fd fdVar, int i, int i2, int i3) {
        js jsVar = (js) fdVar.b(i, i2, i3);
        int i4 = 0;
        while (i4 < jsVar.a()) {
            iz izVarF_ = jsVar.f_(i4);
            if (izVarF_ != null) {
                float fNextFloat = (this.a.nextFloat() * 0.8f) + 0.1f;
                float fNextFloat2 = (this.a.nextFloat() * 0.8f) + 0.1f;
                float fNextFloat3 = (this.a.nextFloat() * 0.8f) + 0.1f;
                while (izVarF_.a > 0) {
                    int iNextInt = this.a.nextInt(21) + 10;
                    if (iNextInt > izVarF_.a) {
                        iNextInt = izVarF_.a;
                    }
                    izVarF_.a -= iNextInt;
                    hl hlVar = new hl(fdVar, i + fNextFloat, i2 + fNextFloat2, i3 + fNextFloat3, new iz(izVarF_.c, iNextInt, izVarF_.i()));
                    hlVar.aP = ((float) this.a.nextGaussian()) * 0.05f;
                    hlVar.aQ = (((float) this.a.nextGaussian()) * 0.05f) + 0.2f;
                    hlVar.aR = ((float) this.a.nextGaussian()) * 0.05f;
                    fdVar.b(hlVar);
                    jsVar = jsVar;
                    fNextFloat2 = fNextFloat2;
                    fNextFloat3 = fNextFloat3;
                    fNextFloat = fNextFloat;
                }
            }
            i4++;
            jsVar = jsVar;
        }
        super.b(fdVar, i, i2, i3);
    }

    @Override // defpackage.uu
    public boolean a(fd fdVar, int i, int i2, int i3, gs gsVar) {
        lw ogVar = (js) fdVar.b(i, i2, i3);
        int i4 = i2 + 1;
        if (fdVar.h(i, i4, i3)) {
            return true;
        }
        int i5 = i - 1;
        if (fdVar.a(i5, i2, i3) == this.bn && fdVar.h(i5, i4, i3)) {
            return true;
        }
        int i6 = i + 1;
        if (fdVar.a(i6, i2, i3) == this.bn && fdVar.h(i6, i4, i3)) {
            return true;
        }
        int i7 = i3 - 1;
        if (fdVar.a(i, i2, i7) == this.bn && fdVar.h(i, i4, i7)) {
            return true;
        }
        int i8 = i3 + 1;
        if (fdVar.a(i, i2, i8) == this.bn && fdVar.h(i, i4, i8)) {
            return true;
        }
        if (fdVar.a(i5, i2, i3) == this.bn) {
            ogVar = new og("Large chest", (js) fdVar.b(i5, i2, i3), ogVar);
        }
        if (fdVar.a(i6, i2, i3) == this.bn) {
            ogVar = new og("Large chest", ogVar, (js) fdVar.b(i6, i2, i3));
        }
        if (fdVar.a(i, i2, i7) == this.bn) {
            ogVar = new og("Large chest", (js) fdVar.b(i, i2, i7), ogVar);
        }
        if (fdVar.a(i, i2, i8) == this.bn) {
            ogVar = new og("Large chest", ogVar, (js) fdVar.b(i, i2, i8));
        }
        if (fdVar.B) {
            return true;
        }
        gsVar.a(ogVar);
        return true;
    }

    @Override // defpackage.rw
    protected ow a_() {
        return new js();
    }
}
