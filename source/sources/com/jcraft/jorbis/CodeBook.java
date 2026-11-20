package com.jcraft.jorbis;

import com.jcraft.jogg.Buffer;

/* JADX INFO: loaded from: classes.dex */
class CodeBook {
    int[] codelist;
    DecodeAux decode_tree;
    int dim;
    int entries;
    float[] valuelist;
    StaticCodeBook c = new StaticCodeBook();
    private int[] t = new int[15];

    void clear() {
    }

    CodeBook() {
    }

    int encode(int i, Buffer buffer) {
        buffer.write(this.codelist[i], this.c.lengthlist[i]);
        return this.c.lengthlist[i];
    }

    int errorv(float[] fArr) {
        int iBest = best(fArr, 1);
        int i = 0;
        while (true) {
            int i2 = this.dim;
            if (i >= i2) {
                return iBest;
            }
            fArr[i] = this.valuelist[(i2 * iBest) + i];
            i++;
        }
    }

    int encodev(int i, float[] fArr, Buffer buffer) {
        int i2 = 0;
        while (true) {
            int i3 = this.dim;
            if (i2 < i3) {
                fArr[i2] = this.valuelist[(i3 * i) + i2];
                i2++;
            } else {
                return encode(i, buffer);
            }
        }
    }

    int encodevs(float[] fArr, Buffer buffer, int i, int i2) {
        return encode(besterror(fArr, i, i2), buffer);
    }

    synchronized int decodevs_add(float[] fArr, int i, Buffer buffer, int i2) {
        int i3 = i2 / this.dim;
        if (this.t.length < i3) {
            this.t = new int[i3];
        }
        int i4 = 0;
        while (true) {
            if (i4 < i3) {
                int iDecode = decode(buffer);
                if (iDecode == -1) {
                    return -1;
                }
                this.t[i4] = iDecode * this.dim;
                i4++;
            } else {
                int i5 = 0;
                int i6 = 0;
                while (i5 < this.dim) {
                    for (int i7 = 0; i7 < i3; i7++) {
                        int i8 = i + i6 + i7;
                        fArr[i8] = fArr[i8] + this.valuelist[this.t[i7] + i5];
                    }
                    i5++;
                    i6 += i3;
                }
                return 0;
            }
        }
    }

    int decodev_add(float[] fArr, int i, Buffer buffer, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        if (this.dim <= 8) {
            int i10 = 0;
            while (i10 < i2) {
                int iDecode = decode(buffer);
                if (iDecode == -1) {
                    return -1;
                }
                int i11 = this.dim;
                int i12 = iDecode * i11;
                switch (i11) {
                    case 1:
                        i3 = 0;
                        int i13 = i10 + 1;
                        int i14 = i10 + i;
                        fArr[i14] = fArr[i14] + this.valuelist[i12 + i3];
                        i10 = i13;
                        break;
                    case 2:
                        i4 = 0;
                        int i15 = i10 + 1;
                        int i16 = i10 + i;
                        i3 = i4 + 1;
                        fArr[i16] = fArr[i16] + this.valuelist[i4 + i12];
                        i10 = i15;
                        int i17 = i10 + 1;
                        int i18 = i10 + i;
                        fArr[i18] = fArr[i18] + this.valuelist[i12 + i3];
                        i10 = i17;
                        break;
                    case 3:
                        i5 = 0;
                        int i19 = i10 + 1;
                        int i20 = i10 + i;
                        i4 = i5 + 1;
                        fArr[i20] = fArr[i20] + this.valuelist[i5 + i12];
                        i10 = i19;
                        int i110 = i10 + 1;
                        int i111 = i10 + i;
                        i3 = i4 + 1;
                        fArr[i111] = fArr[i111] + this.valuelist[i4 + i12];
                        i10 = i110;
                        int i112 = i10 + 1;
                        int i113 = i10 + i;
                        fArr[i113] = fArr[i113] + this.valuelist[i12 + i3];
                        i10 = i112;
                        break;
                    case 4:
                        i6 = 0;
                        int i21 = i10 + 1;
                        int i22 = i10 + i;
                        i5 = i6 + 1;
                        fArr[i22] = fArr[i22] + this.valuelist[i6 + i12];
                        i10 = i21;
                        int i114 = i10 + 1;
                        int i23 = i10 + i;
                        i4 = i5 + 1;
                        fArr[i23] = fArr[i23] + this.valuelist[i5 + i12];
                        i10 = i114;
                        int i115 = i10 + 1;
                        int i116 = i10 + i;
                        i3 = i4 + 1;
                        fArr[i116] = fArr[i116] + this.valuelist[i4 + i12];
                        i10 = i115;
                        int i117 = i10 + 1;
                        int i118 = i10 + i;
                        fArr[i118] = fArr[i118] + this.valuelist[i12 + i3];
                        i10 = i117;
                        break;
                    case 5:
                        i7 = 0;
                        int i24 = i10 + 1;
                        int i25 = i10 + i;
                        i6 = i7 + 1;
                        fArr[i25] = fArr[i25] + this.valuelist[i7 + i12];
                        i10 = i24;
                        int i26 = i10 + 1;
                        int i27 = i10 + i;
                        i5 = i6 + 1;
                        fArr[i27] = fArr[i27] + this.valuelist[i6 + i12];
                        i10 = i26;
                        int i119 = i10 + 1;
                        int i28 = i10 + i;
                        i4 = i5 + 1;
                        fArr[i28] = fArr[i28] + this.valuelist[i5 + i12];
                        i10 = i119;
                        int i1110 = i10 + 1;
                        int i1111 = i10 + i;
                        i3 = i4 + 1;
                        fArr[i1111] = fArr[i1111] + this.valuelist[i4 + i12];
                        i10 = i1110;
                        int i1112 = i10 + 1;
                        int i1113 = i10 + i;
                        fArr[i1113] = fArr[i1113] + this.valuelist[i12 + i3];
                        i10 = i1112;
                        break;
                    case 6:
                        i8 = 0;
                        int i29 = i10 + 1;
                        int i30 = i10 + i;
                        i7 = i8 + 1;
                        fArr[i30] = fArr[i30] + this.valuelist[i8 + i12];
                        i10 = i29;
                        int i210 = i10 + 1;
                        int i211 = i10 + i;
                        i6 = i7 + 1;
                        fArr[i211] = fArr[i211] + this.valuelist[i7 + i12];
                        i10 = i210;
                        int i212 = i10 + 1;
                        int i213 = i10 + i;
                        i5 = i6 + 1;
                        fArr[i213] = fArr[i213] + this.valuelist[i6 + i12];
                        i10 = i212;
                        int i1114 = i10 + 1;
                        int i214 = i10 + i;
                        i4 = i5 + 1;
                        fArr[i214] = fArr[i214] + this.valuelist[i5 + i12];
                        i10 = i1114;
                        int i1115 = i10 + 1;
                        int i1116 = i10 + i;
                        i3 = i4 + 1;
                        fArr[i1116] = fArr[i1116] + this.valuelist[i4 + i12];
                        i10 = i1115;
                        int i1117 = i10 + 1;
                        int i1118 = i10 + i;
                        fArr[i1118] = fArr[i1118] + this.valuelist[i12 + i3];
                        i10 = i1117;
                        break;
                    case 7:
                        i9 = 0;
                        int i31 = i10 + 1;
                        int i32 = i10 + i;
                        i8 = i9 + 1;
                        fArr[i32] = fArr[i32] + this.valuelist[i9 + i12];
                        i10 = i31;
                        int i215 = i10 + 1;
                        int i33 = i10 + i;
                        i7 = i8 + 1;
                        fArr[i33] = fArr[i33] + this.valuelist[i8 + i12];
                        i10 = i215;
                        int i216 = i10 + 1;
                        int i217 = i10 + i;
                        i6 = i7 + 1;
                        fArr[i217] = fArr[i217] + this.valuelist[i7 + i12];
                        i10 = i216;
                        int i218 = i10 + 1;
                        int i219 = i10 + i;
                        i5 = i6 + 1;
                        fArr[i219] = fArr[i219] + this.valuelist[i6 + i12];
                        i10 = i218;
                        int i1119 = i10 + 1;
                        int i2110 = i10 + i;
                        i4 = i5 + 1;
                        fArr[i2110] = fArr[i2110] + this.valuelist[i5 + i12];
                        i10 = i1119;
                        int i11110 = i10 + 1;
                        int i11111 = i10 + i;
                        i3 = i4 + 1;
                        fArr[i11111] = fArr[i11111] + this.valuelist[i4 + i12];
                        i10 = i11110;
                        int i11112 = i10 + 1;
                        int i11113 = i10 + i;
                        fArr[i11113] = fArr[i11113] + this.valuelist[i12 + i3];
                        i10 = i11112;
                        break;
                    case 8:
                        int i34 = i10 + 1;
                        int i35 = i10 + i;
                        fArr[i35] = fArr[i35] + this.valuelist[i12 + 0];
                        i9 = 1;
                        i10 = i34;
                        int i36 = i10 + 1;
                        int i37 = i10 + i;
                        i8 = i9 + 1;
                        fArr[i37] = fArr[i37] + this.valuelist[i9 + i12];
                        i10 = i36;
                        int i2111 = i10 + 1;
                        int i38 = i10 + i;
                        i7 = i8 + 1;
                        fArr[i38] = fArr[i38] + this.valuelist[i8 + i12];
                        i10 = i2111;
                        int i2112 = i10 + 1;
                        int i2113 = i10 + i;
                        i6 = i7 + 1;
                        fArr[i2113] = fArr[i2113] + this.valuelist[i7 + i12];
                        i10 = i2112;
                        int i2114 = i10 + 1;
                        int i2115 = i10 + i;
                        i5 = i6 + 1;
                        fArr[i2115] = fArr[i2115] + this.valuelist[i6 + i12];
                        i10 = i2114;
                        int i11114 = i10 + 1;
                        int i2116 = i10 + i;
                        i4 = i5 + 1;
                        fArr[i2116] = fArr[i2116] + this.valuelist[i5 + i12];
                        i10 = i11114;
                        int i11115 = i10 + 1;
                        int i11116 = i10 + i;
                        i3 = i4 + 1;
                        fArr[i11116] = fArr[i11116] + this.valuelist[i4 + i12];
                        i10 = i11115;
                        int i11117 = i10 + 1;
                        int i11118 = i10 + i;
                        fArr[i11118] = fArr[i11118] + this.valuelist[i12 + i3];
                        i10 = i11117;
                        break;
                }
            }
        } else {
            int i39 = 0;
            while (i39 < i2) {
                int iDecode2 = decode(buffer);
                if (iDecode2 == -1) {
                    return -1;
                }
                int i40 = iDecode2 * this.dim;
                for (int i41 = 0; i41 < this.dim; i41++) {
                    int i42 = i39 + 1;
                    int i43 = i39 + i;
                    fArr[i43] = fArr[i43] + this.valuelist[i41 + i40];
                    i39 = i42;
                }
            }
        }
        return 0;
    }

    int decodev_set(float[] fArr, int i, Buffer buffer, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int iDecode = decode(buffer);
            if (iDecode == -1) {
                return -1;
            }
            int i4 = iDecode * this.dim;
            for (int i5 = 0; i5 < this.dim; i5++) {
                fArr[i3 + i] = this.valuelist[i5 + i4];
                i3++;
            }
        }
        return 0;
    }

    int decodevv_add(float[][] fArr, int i, int i2, Buffer buffer, int i3) {
        int i4 = i / i2;
        int i5 = 0;
        while (i4 < (i + i3) / i2) {
            int iDecode = decode(buffer);
            if (iDecode == -1) {
                return -1;
            }
            int i6 = iDecode * this.dim;
            for (int i7 = 0; i7 < this.dim; i7++) {
                int i8 = i5 + 1;
                float[] fArr2 = fArr[i5];
                fArr2[i4] = fArr2[i4] + this.valuelist[i6 + i7];
                if (i8 == i2) {
                    i4++;
                    i5 = 0;
                } else {
                    i5 = i8;
                }
            }
        }
        return 0;
    }

    int decode(Buffer buffer) {
        int i;
        int i2;
        DecodeAux decodeAux = this.decode_tree;
        int iLook = buffer.look(decodeAux.tabn);
        if (iLook >= 0) {
            i = decodeAux.tab[iLook];
            buffer.adv(decodeAux.tabl[iLook]);
            if (i <= 0) {
                return -i;
            }
        } else {
            i = 0;
        }
        do {
            int i3 = buffer.read1();
            if (i3 == 0) {
                i2 = decodeAux.ptr0[i];
            } else {
                if (i3 != 1) {
                    return -1;
                }
                i2 = decodeAux.ptr1[i];
            }
            i = i2;
        } while (i > 0);
        return -i;
    }

    int decodevs(float[] fArr, int i, Buffer buffer, int i2, int i3) {
        int iDecode = decode(buffer);
        if (iDecode == -1) {
            return -1;
        }
        int i4 = 0;
        if (i3 == -1) {
            int i5 = 0;
            while (true) {
                int i6 = this.dim;
                if (i4 >= i6) {
                    break;
                }
                fArr[i + i5] = this.valuelist[(i6 * iDecode) + i4];
                i4++;
                i5 += i2;
            }
        } else if (i3 == 0) {
            int i7 = 0;
            while (true) {
                int i8 = this.dim;
                if (i4 >= i8) {
                    break;
                }
                int i9 = i + i7;
                fArr[i9] = fArr[i9] + this.valuelist[(i8 * iDecode) + i4];
                i4++;
                i7 += i2;
            }
        } else if (i3 == 1) {
            int i10 = 0;
            while (true) {
                int i11 = this.dim;
                if (i4 >= i11) {
                    break;
                }
                int i12 = i + i10;
                fArr[i12] = fArr[i12] * this.valuelist[(i11 * iDecode) + i4];
                i4++;
                i10 += i2;
            }
        }
        return iDecode;
    }

    int best(float[] fArr, int i) {
        float f = 0.0f;
        int i2 = -1;
        int i3 = 0;
        for (int i4 = 0; i4 < this.entries; i4++) {
            if (this.c.lengthlist[i4] > 0) {
                float fDist = dist(this.dim, this.valuelist, i3, fArr, i);
                if (i2 == -1 || fDist < f) {
                    i2 = i4;
                    f = fDist;
                }
            }
            i3 += this.dim;
        }
        return i2;
    }

    int besterror(float[] fArr, int i, int i2) {
        int iBest = best(fArr, i);
        int i3 = 0;
        if (i2 == 0) {
            int i4 = 0;
            while (true) {
                int i5 = this.dim;
                if (i3 >= i5) {
                    break;
                }
                fArr[i4] = fArr[i4] - this.valuelist[(i5 * iBest) + i3];
                i3++;
                i4 += i;
            }
        } else if (i2 == 1) {
            int i6 = 0;
            while (true) {
                int i7 = this.dim;
                if (i3 >= i7) {
                    break;
                }
                float f = this.valuelist[(i7 * iBest) + i3];
                if (f == 0.0f) {
                    fArr[i6] = 0.0f;
                } else {
                    fArr[i6] = fArr[i6] / f;
                }
                i3++;
                i6 += i;
            }
        }
        return iBest;
    }

    private static float dist(int i, float[] fArr, int i2, float[] fArr2, int i3) {
        float f = 0.0f;
        for (int i4 = 0; i4 < i; i4++) {
            float f2 = fArr[i2 + i4] - fArr2[i4 * i3];
            f += f2 * f2;
        }
        return f;
    }

    int init_decode(StaticCodeBook staticCodeBook) {
        this.c = staticCodeBook;
        this.entries = staticCodeBook.entries;
        this.dim = staticCodeBook.dim;
        this.valuelist = staticCodeBook.unquantize();
        DecodeAux decodeAuxMake_decode_tree = make_decode_tree();
        this.decode_tree = decodeAuxMake_decode_tree;
        if (decodeAuxMake_decode_tree != null) {
            return 0;
        }
        clear();
        return -1;
    }

    static int[] make_words(int[] iArr, int i) {
        int[] iArr2 = new int[33];
        int[] iArr3 = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            if (i3 > 0) {
                int i4 = iArr2[i3];
                if (i3 < 32 && (i4 >>> i3) != 0) {
                    return null;
                }
                iArr3[i2] = i4;
                for (int i5 = i3; i5 > 0; i5--) {
                    int i6 = iArr2[i5];
                    if ((i6 & 1) != 0) {
                        if (i5 != 1) {
                            iArr2[i5] = iArr2[i5 - 1] << 1;
                            break;
                        }
                        iArr2[1] = iArr2[1] + 1;
                        break;
                    }
                    iArr2[i5] = i6 + 1;
                }
                int i7 = i3 + 1;
                while (i7 < 33) {
                    int i8 = iArr2[i7];
                    if ((i8 >>> 1) != i4) {
                        break;
                    }
                    iArr2[i7] = iArr2[i7 - 1] << 1;
                    i7++;
                    i4 = i8;
                }
            }
        }
        for (int i9 = 0; i9 < i; i9++) {
            int i10 = 0;
            for (int i11 = 0; i11 < iArr[i9]; i11++) {
                i10 = (i10 << 1) | ((iArr3[i9] >>> i11) & 1);
            }
            iArr3[i9] = i10;
        }
        return iArr3;
    }

    DecodeAux make_decode_tree() {
        int i;
        DecodeAux decodeAux = new DecodeAux();
        int[] iArr = new int[this.entries * 2];
        decodeAux.ptr0 = iArr;
        int[] iArr2 = new int[this.entries * 2];
        decodeAux.ptr1 = iArr2;
        int[] iArrMake_words = make_words(this.c.lengthlist, this.c.entries);
        if (iArrMake_words == null) {
            return null;
        }
        decodeAux.aux = this.entries * 2;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.entries;
            if (i2 >= i) {
                break;
            }
            if (this.c.lengthlist[i2] > 0) {
                int i4 = 0;
                int i5 = 0;
                while (i4 < this.c.lengthlist[i2] - 1) {
                    if (((iArrMake_words[i2] >>> i4) & 1) == 0) {
                        if (iArr[i5] == 0) {
                            i3++;
                            iArr[i5] = i3;
                        }
                        i5 = iArr[i5];
                    } else {
                        if (iArr2[i5] == 0) {
                            i3++;
                            iArr2[i5] = i3;
                        }
                        i5 = iArr2[i5];
                    }
                    i4++;
                }
                if (((iArrMake_words[i2] >>> i4) & 1) == 0) {
                    iArr[i5] = -i2;
                } else {
                    iArr2[i5] = -i2;
                }
            }
            i2++;
        }
        decodeAux.tabn = Util.ilog(i) - 4;
        if (decodeAux.tabn < 5) {
            decodeAux.tabn = 5;
        }
        int i6 = 1 << decodeAux.tabn;
        decodeAux.tab = new int[i6];
        decodeAux.tabl = new int[i6];
        for (int i7 = 0; i7 < i6; i7++) {
            int i8 = 0;
            int i9 = 0;
            while (i8 < decodeAux.tabn && (i9 > 0 || i8 == 0)) {
                if (((1 << i8) & i7) != 0) {
                    i9 = iArr2[i9];
                } else {
                    i9 = iArr[i9];
                }
                i8++;
            }
            decodeAux.tab[i7] = i9;
            decodeAux.tabl[i7] = i8;
        }
        return decodeAux;
    }

    class DecodeAux {
        int aux;
        int[] ptr0;
        int[] ptr1;
        int[] tab;
        int[] tabl;
        int tabn;

        DecodeAux() {
        }
    }
}
