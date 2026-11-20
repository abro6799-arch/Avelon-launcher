package defpackage;

import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class wr extends cp {
    protected wr(int i) {
        super(i);
        d(1);
    }

    public static iu a(short s, fd fdVar) {
        iu iuVar = (iu) fdVar.a(iu.class, "map_" + ((int) s));
        if (iuVar != null) {
            return iuVar;
        }
        String str = "map_" + fdVar.b("map");
        iu iuVar2 = new iu(str);
        fdVar.a(str, iuVar2);
        return iuVar2;
    }

    public iu a(iz izVar, fd fdVar) {
        izVar.i();
        iu iuVar = (iu) fdVar.a(iu.class, "map_" + izVar.i());
        if (iuVar != null) {
            return iuVar;
        }
        izVar.b(fdVar.b("map"));
        String str = "map_" + izVar.i();
        iu iuVar2 = new iu(str);
        iuVar2.b = fdVar.x().c();
        iuVar2.c = fdVar.x().e();
        iuVar2.e = (byte) 3;
        iuVar2.d = (byte) fdVar.t.g;
        iuVar2.a();
        fdVar.a(str, iuVar2);
        return iuVar2;
    }

    /* JADX WARN: Code duplicated, block: B:136:0x0130 A[EDGE_INSN: B:136:0x0130->B:54:0x0130 BREAK  A[LOOP:5: B:40:0x00fa->B:66:0x0161], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x0124  */
    /* JADX WARN: Code duplicated, block: B:66:0x0161 A[LOOP:5: B:40:0x00fa->B:66:0x0161, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:98:0x0227  */
    public void a(fd fdVar, sn snVar, iu iuVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        double d;
        int i12;
        int i13;
        int iA;
        boolean z;
        int i14;
        fd fdVar2 = fdVar;
        if (fdVar2.t.g != iuVar.d) {
            return;
        }
        int i15 = 1;
        int i16 = 1 << iuVar.e;
        int i17 = iuVar.b;
        int i18 = iuVar.c;
        int iB = (in.b(snVar.aM - ((double) i17)) / i16) + 64;
        int iB2 = (in.b(snVar.aO - ((double) i18)) / i16) + 64;
        int i19 = 128;
        int i20 = 128 / i16;
        if (fdVar2.t.e) {
            i20 /= 2;
        }
        iuVar.g++;
        int i21 = (iB - i20) + 1;
        while (i21 < iB + i20) {
            if ((i21 & 15) != (iuVar.g & 15)) {
                i = iB2;
                i5 = i15;
                i2 = i17;
                i3 = i18;
                i4 = iB;
            } else {
                int i22 = (iB2 - i20) - i15;
                int i23 = 255;
                int i24 = 0;
                double d2 = 0.0d;
                while (i22 < iB2 + i20) {
                    if (i21 < 0 || i22 < -1 || i21 >= i19 || i22 >= i19) {
                        i6 = iB;
                        i7 = i24;
                        i8 = i15;
                    } else {
                        int i25 = i21 - iB;
                        int i26 = i22 - iB2;
                        int i27 = (i25 * i25) + (i26 * i26);
                        int i28 = i20 - 2;
                        int i29 = i27 > i28 * i28 ? i15 : 0;
                        int i30 = (((i17 / i16) + i21) - 64) * i16;
                        int i31 = (((i18 / i16) + i22) - 64) * i16;
                        int[] iArr = new int[Keyboard.KEYBOARD_SIZE];
                        lm lmVarB = fdVar2.b(i30, i31);
                        int i32 = i30 & 15;
                        int i33 = i31 & 15;
                        if (fdVar2.t.e) {
                            int i34 = i30 + (i31 * 231871);
                            if ((((((i34 * i34) * 31287121) + (i34 * 11)) >> 20) & 1) == 0) {
                                int i35 = uu.w.bn;
                                iArr[i35] = iArr[i35] + 10;
                            } else {
                                int i36 = uu.u.bn;
                                iArr[i36] = iArr[i36] + 10;
                            }
                            d = 100.0d;
                            i6 = iB;
                            i10 = i24;
                            i11 = i23;
                            i9 = 0;
                        } else {
                            i9 = 0;
                            double d3 = 0.0d;
                            for (int i37 = 0; i37 < i16; i37++) {
                                int i38 = 0;
                                while (i38 < i16) {
                                    int i39 = i37 + i32;
                                    int i40 = i9;
                                    int i41 = i38 + i33;
                                    int i42 = iB;
                                    int i43 = i24;
                                    int iB3 = lmVarB.b(i39, i41) + 1;
                                    if (iB3 > 1) {
                                        while (true) {
                                            int iA2 = lmVarB.a(i39, iB3 - 1, i41);
                                            if (iA2 == 0) {
                                                iA = iA2;
                                                i12 = i23;
                                            } else {
                                                if (iB3 <= 0 || iA2 <= 0) {
                                                    iA = iA2;
                                                    i12 = i23;
                                                } else {
                                                    i12 = i23;
                                                    iA = iA2;
                                                    if (uu.m[iA2].bA.C == dx.b) {
                                                    }
                                                    if (!z) {
                                                        iB3--;
                                                        iA = lmVarB.a(i39, iB3 - 1, i41);
                                                    }
                                                    if (z) {
                                                        break;
                                                    } else {
                                                        i23 = i12;
                                                    }
                                                }
                                                z = true;
                                                if (!z) {
                                                    iB3--;
                                                    iA = lmVarB.a(i39, iB3 - 1, i41);
                                                }
                                                if (z) {
                                                    break;
                                                    break;
                                                }
                                                i23 = i12;
                                            }
                                            z = false;
                                            if (!z) {
                                                iB3--;
                                                iA = lmVarB.a(i39, iB3 - 1, i41);
                                            }
                                            if (z) {
                                                break;
                                                break;
                                            }
                                            i23 = i12;
                                        }
                                        if (iA != 0 && uu.m[iA].bA.d()) {
                                            int i44 = iB3 - 1;
                                            while (true) {
                                                int i45 = i44 - 1;
                                                int iA3 = lmVarB.a(i39, i44, i41);
                                                i40++;
                                                if (i45 <= 0 || iA3 == 0 || !uu.m[iA3].bA.d()) {
                                                    break;
                                                } else {
                                                    i44 = i45;
                                                }
                                            }
                                        }
                                        i13 = i40;
                                    } else {
                                        i12 = i23;
                                        i13 = i40;
                                        iA = 0;
                                    }
                                    d3 += ((double) iB3) / ((double) (i16 * i16));
                                    iArr[iA] = iArr[iA] + 1;
                                    i38++;
                                    i9 = i13;
                                    iB = i42;
                                    i24 = i43;
                                    i23 = i12;
                                    lmVarB = lmVarB;
                                }
                            }
                            i6 = iB;
                            i10 = i24;
                            i11 = i23;
                            d = d3;
                        }
                        int i46 = i16 * i16;
                        int i47 = i9 / i46;
                        int i48 = 0 / i46;
                        int i49 = 0;
                        int i50 = 0;
                        for (int i51 = 0; i51 < 256; i51++) {
                            int i52 = iArr[i51];
                            if (i52 > i49) {
                                i50 = i51;
                                i49 = i52;
                            }
                        }
                        i8 = 1;
                        int i53 = (i21 + i22) & 1;
                        double d4 = i53;
                        double d5 = (((d - d2) * 4.0d) / ((double) (i16 + 4))) + ((d4 - 0.5d) * 0.4d);
                        int i54 = d5 > 0.6d ? 2 : 1;
                        if (d5 < -0.6d) {
                            i54 = 0;
                        }
                        if (i50 > 0) {
                            dx dxVar = uu.m[i50].bA.C;
                            if (dxVar == dx.n) {
                                double d6 = (((double) i47) * 0.1d) + (d4 * 0.2d);
                                i54 = d6 > 0.9d ? 0 : d6 >= 0.5d ? 1 : 2;
                            }
                            i14 = dxVar.q;
                        } else {
                            i14 = 0;
                        }
                        if (i22 >= 0 && i27 < i20 * i20 && (i29 == 0 || i53 != 0)) {
                            int i55 = (i22 * 128) + i21;
                            byte b = (byte) ((i14 * 4) + i54);
                            if (iuVar.f[i55] != b) {
                                i23 = i11;
                                if (i23 > i22) {
                                    i23 = i22;
                                }
                                i7 = i10;
                                if (i7 < i22) {
                                    i7 = i22;
                                }
                                iuVar.f[i55] = b;
                            } else {
                                i7 = i10;
                                i23 = i11;
                            }
                        } else {
                            i7 = i10;
                            i23 = i11;
                        }
                        d2 = d;
                    }
                    i22++;
                    fdVar2 = fdVar;
                    i15 = i8;
                    i24 = i7;
                    iB2 = iB2;
                    i17 = i17;
                    i18 = i18;
                    iB = i6;
                    i19 = 128;
                }
                i = iB2;
                i2 = i17;
                i3 = i18;
                i4 = iB;
                int i56 = i24;
                i5 = i15;
                if (i23 <= i56) {
                    iuVar.a(i21, i23, i56);
                }
            }
            i21++;
            fdVar2 = fdVar;
            i15 = i5;
            iB2 = i;
            i17 = i2;
            i18 = i3;
            iB = i4;
            i19 = 128;
        }
    }

    @Override // defpackage.gm
    public void a(iz izVar, fd fdVar, sn snVar, int i, boolean z) {
        if (fdVar.B) {
            return;
        }
        iu iuVarA = a(izVar, fdVar);
        if (snVar instanceof gs) {
            iuVarA.a((gs) snVar, izVar);
        }
        if (z) {
            a(fdVar, snVar, iuVarA);
        }
    }

    @Override // defpackage.gm
    public void b(iz izVar, fd fdVar, gs gsVar) {
        izVar.b(fdVar.b("map"));
        String str = "map_" + izVar.i();
        iu iuVar = new iu(str);
        fdVar.a(str, iuVar);
        iuVar.b = in.b(gsVar.aM);
        iuVar.c = in.b(gsVar.aO);
        iuVar.e = (byte) 3;
        iuVar.d = (byte) fdVar.t.g;
        iuVar.a();
    }
}
