package defpackage;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public final class cq {
    private static Set b = new HashSet();
    protected static final Class[] a = {cn.class, uz.class, fr.class};

    protected static wf a(fd fdVar, int i, int i2) {
        return new wf(i + fdVar.r.nextInt(16), fdVar.r.nextInt(128), i2 + fdVar.r.nextInt(16));
    }

    /* JADX WARN: Code duplicated, block: B:64:0x01a1  */
    public static final int a(fd fdVar, boolean z, boolean z2) {
        lk[] lkVarArr;
        int i;
        int i2;
        lk lkVar;
        bj bjVar;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        bj bjVar2;
        fd fdVar2 = fdVar;
        int i11 = 0;
        if (!z && !z2) {
            return 0;
        }
        b.clear();
        for (int i12 = 0; i12 < fdVar2.d.size(); i12++) {
            gs gsVar = (gs) fdVar2.d.get(i12);
            int iB = in.b(gsVar.aM / 16.0d);
            int iB2 = in.b(gsVar.aO / 16.0d);
            for (int i13 = -8; i13 <= 8; i13++) {
                for (int i14 = -8; i14 <= 8; i14++) {
                    b.add(new yy(i13 + iB, i14 + iB2));
                }
            }
        }
        br brVarU = fdVar.u();
        lk[] lkVarArrValues = lk.values();
        int length = lkVarArrValues.length;
        int i15 = 0;
        int i16 = 0;
        while (i16 < length) {
            lk lkVar2 = lkVarArrValues[i16];
            if ((!lkVar2.d() || z2) && ((lkVar2.d() || z) && fdVar2.b(lkVar2.a()) <= (lkVar2.b() * b.size()) / Keyboard.KEYBOARD_SIZE)) {
                for (yy yyVar : b) {
                    List listA = fdVar.a().a(yyVar).a(lkVar2);
                    if (listA != null && !listA.isEmpty()) {
                        Iterator it = listA.iterator();
                        int i17 = i11;
                        while (it.hasNext()) {
                            i17 += ((bj) it.next()).b;
                        }
                        int iNextInt = fdVar2.r.nextInt(i17);
                        bj bjVar3 = (bj) listA.get(i11);
                        Iterator it2 = listA.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                bjVar = bjVar3;
                                break;
                            }
                            bj bjVar4 = (bj) it2.next();
                            iNextInt -= bjVar4.b;
                            if (iNextInt < 0) {
                                bjVar = bjVar4;
                                break;
                            }
                        }
                        wf wfVarA = a(fdVar2, yyVar.a * 16, yyVar.b * 16);
                        int i18 = wfVarA.a;
                        int i19 = wfVarA.b;
                        int i20 = wfVarA.c;
                        if (!fdVar2.h(i18, i19, i20) && fdVar2.f(i18, i19, i20) == lkVar2.c()) {
                            int i21 = i11;
                            int i22 = i21;
                            while (i22 < 3) {
                                int i23 = i15;
                                int i24 = i21;
                                int i25 = i19;
                                int i26 = i20;
                                int i27 = i18;
                                int i28 = i11;
                                while (true) {
                                    if (i28 < 4) {
                                        int i29 = i22;
                                        int i30 = i28;
                                        int iNextInt2 = (fdVar2.r.nextInt(6) - fdVar2.r.nextInt(6)) + i27;
                                        int iNextInt3 = i25 + (fdVar2.r.nextInt(1) - fdVar2.r.nextInt(1));
                                        int iNextInt4 = i26 + (fdVar2.r.nextInt(6) - fdVar2.r.nextInt(6));
                                        if (a(lkVar2, fdVar2, iNextInt2, iNextInt3, iNextInt4)) {
                                            float f = iNextInt2 + 0.5f;
                                            float f2 = iNextInt3;
                                            float f3 = iNextInt4 + 0.5f;
                                            bj bjVar5 = bjVar;
                                            double d = f;
                                            lkVarArr = lkVarArrValues;
                                            i = length;
                                            double d2 = f2;
                                            i2 = i16;
                                            lkVar = lkVar2;
                                            double d3 = f3;
                                            i6 = iNextInt2;
                                            i7 = i29;
                                            i9 = iNextInt3;
                                            i8 = i30;
                                            i10 = iNextInt4;
                                            i3 = i19;
                                            i4 = i20;
                                            bjVar2 = bjVar5;
                                            i5 = i18;
                                            if (fdVar.a(d, d2, d3, 24.0d) != null) {
                                                fdVar2 = fdVar;
                                            } else {
                                                float f4 = f - brVarU.a;
                                                float f5 = f2 - brVarU.b;
                                                float f6 = f3 - brVarU.c;
                                                if ((f4 * f4) + (f5 * f5) + (f6 * f6) < 576.0f) {
                                                    fdVar2 = fdVar;
                                                } else {
                                                    try {
                                                        ls lsVar = (ls) bjVar2.a.getConstructor(fd.class).newInstance(fdVar);
                                                        fdVar2 = fdVar;
                                                        lsVar.c(d, d2, d3, fdVar2.r.nextFloat() * 360.0f, 0.0f);
                                                        if (lsVar.d()) {
                                                            int i31 = i24 + 1;
                                                            fdVar2.b(lsVar);
                                                            a(lsVar, fdVar2, f, f2, f3);
                                                            if (i31 >= lsVar.l()) {
                                                                i11 = 0;
                                                                i15 = i23;
                                                                lkVarArrValues = lkVarArr;
                                                                length = i;
                                                                i16 = i2;
                                                                lkVar2 = lkVar;
                                                                break;
                                                            }
                                                            i24 = i31;
                                                        }
                                                        i23 += i24;
                                                    } catch (Exception e) {
                                                        e.printStackTrace();
                                                        return i23;
                                                    }
                                                }
                                            }
                                        } else {
                                            i3 = i19;
                                            i4 = i20;
                                            i5 = i18;
                                            i6 = iNextInt2;
                                            lkVarArr = lkVarArrValues;
                                            i = length;
                                            i2 = i16;
                                            lkVar = lkVar2;
                                            i7 = i29;
                                            i8 = i30;
                                            i9 = iNextInt3;
                                            i10 = iNextInt4;
                                            bjVar2 = bjVar;
                                        }
                                        i28 = i8 + 1;
                                        bjVar = bjVar2;
                                        i25 = i9;
                                        i26 = i10;
                                        i22 = i7;
                                        lkVarArrValues = lkVarArr;
                                        length = i;
                                        i16 = i2;
                                        lkVar2 = lkVar;
                                        i27 = i6;
                                        i19 = i3;
                                        i20 = i4;
                                        i18 = i5;
                                    } else {
                                        i22++;
                                        i11 = 0;
                                        i15 = i23;
                                        i21 = i24;
                                        i16 = i16;
                                    }
                                }
                            }
                        }
                    }
                    lkVarArr = lkVarArrValues;
                    i = length;
                    i2 = i16;
                    lkVar = lkVar2;
                    i11 = i11;
                    lkVarArrValues = lkVarArr;
                    length = i;
                    i16 = i2;
                    lkVar2 = lkVar;
                    break;
                }
            }
            i16++;
            i11 = i11;
            lkVarArrValues = lkVarArrValues;
            length = length;
        }
        return i15;
    }

    private static boolean a(lk lkVar, fd fdVar, int i, int i2, int i3) {
        if (lkVar.c() == ln.g) {
            return fdVar.f(i, i2, i3).d() && !fdVar.h(i, i2 + 1, i3);
        }
        return (!fdVar.h(i, i2 + (-1), i3) || fdVar.h(i, i2, i3) || fdVar.f(i, i2, i3).d() || fdVar.h(i, i2 + 1, i3)) ? false : true;
    }

    private static void a(ls lsVar, fd fdVar, float f, float f2, float f3) {
        if ((lsVar instanceof cn) && fdVar.r.nextInt(100) == 0) {
            fr frVar = new fr(fdVar);
            frVar.c(f, f2, f3, lsVar.aS, 0.0f);
            fdVar.b(frVar);
            frVar.i(lsVar);
            return;
        }
        if (lsVar instanceof dl) {
            ((dl) lsVar).e_(dl.a(fdVar.r));
        }
    }

    public static boolean a(fd fdVar, List list) {
        Iterator it;
        Class[] clsArr;
        int i;
        dh dhVarA;
        fw fwVar = new fw(fdVar);
        Iterator it2 = list.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            gs gsVar = (gs) it2.next();
            Class[] clsArr2 = a;
            if (clsArr2 != null && clsArr2.length != 0) {
                int i2 = 0;
                boolean z2 = false;
                while (i2 < 20 && !z2) {
                    int iB = (in.b(gsVar.aM) + fdVar.r.nextInt(32)) - fdVar.r.nextInt(32);
                    int iB2 = (in.b(gsVar.aO) + fdVar.r.nextInt(32)) - fdVar.r.nextInt(32);
                    int iB3 = (in.b(gsVar.aN) + fdVar.r.nextInt(16)) - fdVar.r.nextInt(16);
                    if (iB3 < 1) {
                        iB3 = 1;
                    } else if (iB3 > 128) {
                        iB3 = 128;
                    }
                    int iNextInt = fdVar.r.nextInt(clsArr2.length);
                    int i3 = iB3;
                    while (i3 > 2 && !fdVar.h(iB, i3 - 1, iB2)) {
                        i3--;
                    }
                    while (!a(lk.monster, fdVar, iB, i3, iB2) && i3 < iB3 + 16 && i3 < 128) {
                        i3++;
                    }
                    if (i3 >= iB3 + 16 || i3 >= 128) {
                        it = it2;
                        clsArr = clsArr2;
                        i = i2;
                    } else {
                        float f = iB + 0.5f;
                        float f2 = i3;
                        float f3 = iB2 + 0.5f;
                        try {
                            it = it2;
                            ls lsVar = (ls) clsArr2[iNextInt].getConstructor(fd.class).newInstance(fdVar);
                            i = i2;
                            clsArr = clsArr2;
                            lsVar.c(f, f2, f3, fdVar.r.nextFloat() * 360.0f, 0.0f);
                            if (lsVar.d() && (dhVarA = fwVar.a(lsVar, gsVar, 32.0f)) != null && dhVarA.a > 1) {
                                d dVarC = dhVarA.c();
                                if (Math.abs(((double) dVarC.a) - gsVar.aM) < 1.5d && Math.abs(((double) dVarC.c) - gsVar.aO) < 1.5d && Math.abs(((double) dVarC.b) - gsVar.aN) < 1.5d) {
                                    br brVarF = ve.f(fdVar, in.b(gsVar.aM), in.b(gsVar.aN), in.b(gsVar.aO), 1);
                                    if (brVarF == null) {
                                        brVarF = new br(iB, i3 + 1, iB2);
                                    }
                                    lsVar.c(brVarF.a + 0.5f, brVarF.b, brVarF.c + 0.5f, 0.0f, 0.0f);
                                    fdVar.b(lsVar);
                                    a(lsVar, fdVar, brVarF.a + 0.5f, brVarF.b, brVarF.c + 0.5f);
                                    gsVar.a(true, false, false);
                                    lsVar.T();
                                    z = true;
                                    z2 = true;
                                }
                            }
                            i2 = i + 1;
                            it2 = it;
                            clsArr2 = clsArr;
                        } catch (Exception e) {
                            e.printStackTrace();
                            return z;
                        }
                    }
                    i2 = i + 1;
                    it2 = it;
                    clsArr2 = clsArr;
                }
            }
            it2 = it2;
        }
        return z;
    }
}
