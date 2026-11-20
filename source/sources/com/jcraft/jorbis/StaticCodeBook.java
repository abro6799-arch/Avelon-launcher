package com.jcraft.jorbis;

import com.jcraft.jogg.Buffer;
import defpackage.in;

/* JADX INFO: loaded from: classes.dex */
class StaticCodeBook {
    static final int VQ_FEXP = 10;
    static final int VQ_FEXP_BIAS = 768;
    static final int VQ_FMAN = 21;
    int dim;
    int entries;
    int[] lengthlist;
    int maptype;
    int q_delta;
    int q_min;
    int q_quant;
    int q_sequencep;
    int[] quantlist;

    void clear() {
    }

    StaticCodeBook() {
    }

    int pack(Buffer buffer) {
        int i;
        int i2;
        int iMaptype1_quantvals;
        int i3;
        buffer.write(5653314, 24);
        buffer.write(this.dim, 16);
        buffer.write(this.entries, 24);
        int i4 = 1;
        while (true) {
            i = this.entries;
            if (i4 >= i) {
                break;
            }
            int[] iArr = this.lengthlist;
            if (iArr[i4] < iArr[i4 - 1]) {
                break;
            }
            i4++;
        }
        if (i4 == i) {
            buffer.write(1, 1);
            buffer.write(this.lengthlist[0] - 1, 5);
            int i5 = 1;
            int i6 = 0;
            while (true) {
                i3 = this.entries;
                if (i5 >= i3) {
                    break;
                }
                int[] iArr2 = this.lengthlist;
                int i7 = iArr2[i5];
                int i8 = iArr2[i5 - 1];
                if (i7 > i8) {
                    while (i8 < i7) {
                        buffer.write(i5 - i6, Util.ilog(this.entries - i6));
                        i8++;
                        i6 = i5;
                    }
                }
                i5++;
            }
            buffer.write(i5 - i6, Util.ilog(i3 - i6));
        } else {
            buffer.write(0, 1);
            int i9 = 0;
            while (true) {
                i2 = this.entries;
                if (i9 >= i2 || this.lengthlist[i9] == 0) {
                    break;
                }
                i9++;
            }
            if (i9 == i2) {
                buffer.write(0, 1);
                for (int i10 = 0; i10 < this.entries; i10++) {
                    buffer.write(this.lengthlist[i10] - 1, 5);
                }
            } else {
                buffer.write(1, 1);
                for (int i11 = 0; i11 < this.entries; i11++) {
                    if (this.lengthlist[i11] == 0) {
                        buffer.write(0, 1);
                    } else {
                        buffer.write(1, 1);
                        buffer.write(this.lengthlist[i11] - 1, 5);
                    }
                }
            }
        }
        buffer.write(this.maptype, 4);
        int i12 = this.maptype;
        if (i12 != 0) {
            if ((i12 != 1 && i12 != 2) || this.quantlist == null) {
                return -1;
            }
            buffer.write(this.q_min, 32);
            buffer.write(this.q_delta, 32);
            buffer.write(this.q_quant - 1, 4);
            buffer.write(this.q_sequencep, 1);
            int i13 = this.maptype;
            if (i13 == 1) {
                iMaptype1_quantvals = maptype1_quantvals();
            } else {
                iMaptype1_quantvals = i13 != 2 ? 0 : this.entries * this.dim;
            }
            for (int i14 = 0; i14 < iMaptype1_quantvals; i14++) {
                buffer.write(Math.abs(this.quantlist[i14]), this.q_quant);
            }
        }
        return 0;
    }

    int unpack(Buffer buffer) {
        int iMaptype1_quantvals;
        if (buffer.read(24) != 5653314) {
            clear();
            return -1;
        }
        this.dim = buffer.read(16);
        int i = buffer.read(24);
        this.entries = i;
        if (i == -1) {
            clear();
            return -1;
        }
        int i2 = buffer.read(1);
        if (i2 == 0) {
            this.lengthlist = new int[this.entries];
            if (buffer.read(1) != 0) {
                for (int i3 = 0; i3 < this.entries; i3++) {
                    if (buffer.read(1) != 0) {
                        int i4 = buffer.read(5);
                        if (i4 == -1) {
                            clear();
                            return -1;
                        }
                        this.lengthlist[i3] = i4 + 1;
                    } else {
                        this.lengthlist[i3] = 0;
                    }
                }
            } else {
                for (int i5 = 0; i5 < this.entries; i5++) {
                    int i6 = buffer.read(5);
                    if (i6 == -1) {
                        clear();
                        return -1;
                    }
                    this.lengthlist[i5] = i6 + 1;
                }
            }
        } else {
            if (i2 != 1) {
                return -1;
            }
            int i7 = buffer.read(5) + 1;
            this.lengthlist = new int[this.entries];
            int i8 = 0;
            while (true) {
                int i9 = this.entries;
                if (i8 >= i9) {
                    break;
                }
                int i10 = buffer.read(Util.ilog(i9 - i8));
                if (i10 == -1) {
                    clear();
                    return -1;
                }
                int i11 = 0;
                while (i11 < i10) {
                    this.lengthlist[i8] = i7;
                    i11++;
                    i8++;
                }
                i7++;
            }
        }
        int i12 = buffer.read(4);
        this.maptype = i12;
        if (i12 != 0) {
            if (i12 == 1 || i12 == 2) {
                this.q_min = buffer.read(32);
                this.q_delta = buffer.read(32);
                this.q_quant = buffer.read(4) + 1;
                this.q_sequencep = buffer.read(1);
                int i13 = this.maptype;
                if (i13 == 1) {
                    iMaptype1_quantvals = maptype1_quantvals();
                } else {
                    iMaptype1_quantvals = i13 != 2 ? 0 : this.entries * this.dim;
                }
                this.quantlist = new int[iMaptype1_quantvals];
                for (int i14 = 0; i14 < iMaptype1_quantvals; i14++) {
                    this.quantlist[i14] = buffer.read(this.q_quant);
                }
                if (this.quantlist[iMaptype1_quantvals - 1] == -1) {
                    clear();
                    return -1;
                }
            } else {
                clear();
                return -1;
            }
        }
        return 0;
    }

    private int maptype1_quantvals() {
        int iB = in.b(Math.pow(this.entries, 1.0d / ((double) this.dim)));
        while (true) {
            int i = 1;
            int i2 = 1;
            for (int i3 = 0; i3 < this.dim; i3++) {
                i *= iB;
                i2 *= iB + 1;
            }
            int i4 = this.entries;
            if (i <= i4 && i2 > i4) {
                return iB;
            }
            iB = i > i4 ? iB - 1 : iB + 1;
        }
    }

    float[] unquantize() {
        int i = this.maptype;
        if (i != 1 && i != 2) {
            return null;
        }
        float fFloat32_unpack = float32_unpack(this.q_min);
        float fFloat32_unpack2 = float32_unpack(this.q_delta);
        float[] fArr = new float[this.entries * this.dim];
        int i2 = this.maptype;
        if (i2 == 1) {
            int iMaptype1_quantvals = maptype1_quantvals();
            for (int i3 = 0; i3 < this.entries; i3++) {
                int i4 = 1;
                float f = 0.0f;
                for (int i5 = 0; i5 < this.dim; i5++) {
                    float fAbs = (Math.abs(this.quantlist[(i3 / i4) % iMaptype1_quantvals]) * fFloat32_unpack2) + fFloat32_unpack + f;
                    if (this.q_sequencep != 0) {
                        f = fAbs;
                    }
                    fArr[(this.dim * i3) + i5] = fAbs;
                    i4 *= iMaptype1_quantvals;
                }
            }
        } else if (i2 == 2) {
            for (int i6 = 0; i6 < this.entries; i6++) {
                float f2 = 0.0f;
                int i7 = 0;
                while (true) {
                    int i8 = this.dim;
                    if (i7 < i8) {
                        float fAbs2 = (Math.abs(this.quantlist[(i8 * i6) + i7]) * fFloat32_unpack2) + fFloat32_unpack + f2;
                        if (this.q_sequencep != 0) {
                            f2 = fAbs2;
                        }
                        fArr[(this.dim * i6) + i7] = fAbs2;
                        i7++;
                    }
                }
            }
        }
        return fArr;
    }

    static long float32_pack(float f) {
        int i;
        if (f < 0.0f) {
            f = -f;
            i = Integer.MIN_VALUE;
        } else {
            i = 0;
        }
        double d = f;
        int iB = in.b(Math.log(d) / Math.log(2.0d));
        return ((iB + VQ_FEXP_BIAS) << 21) | i | ((int) Math.rint(Math.pow(d, 20 - iB)));
    }

    static float float32_unpack(int i) {
        float f = 2097151 & i;
        float f2 = (2145386496 & i) >>> 21;
        if ((i & Integer.MIN_VALUE) != 0) {
            f = -f;
        }
        return ldexp(f, (((int) f2) - 20) - 768);
    }

    static float ldexp(float f, int i) {
        return (float) (((double) f) * Math.pow(2.0d, i));
    }
}
