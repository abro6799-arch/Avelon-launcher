package com.jcraft.jorbis;

import com.jcraft.jogg.Buffer;
import defpackage.in;

/* JADX INFO: loaded from: classes.dex */
class Floor0 extends FuncFloor {
    float[] lsp = null;

    @Override // com.jcraft.jorbis.FuncFloor
    int forward(Block block, Object obj, float[] fArr, float[] fArr2, Object obj2) {
        return 0;
    }

    @Override // com.jcraft.jorbis.FuncFloor
    void free_info(Object obj) {
    }

    @Override // com.jcraft.jorbis.FuncFloor
    void free_look(Object obj) {
    }

    @Override // com.jcraft.jorbis.FuncFloor
    void free_state(Object obj) {
    }

    Floor0() {
    }

    @Override // com.jcraft.jorbis.FuncFloor
    void pack(Object obj, Buffer buffer) {
        InfoFloor0 infoFloor0 = (InfoFloor0) obj;
        buffer.write(infoFloor0.order, 8);
        buffer.write(infoFloor0.rate, 16);
        buffer.write(infoFloor0.barkmap, 16);
        buffer.write(infoFloor0.ampbits, 6);
        buffer.write(infoFloor0.ampdB, 8);
        buffer.write(infoFloor0.numbooks - 1, 4);
        for (int i = 0; i < infoFloor0.numbooks; i++) {
            buffer.write(infoFloor0.books[i], 8);
        }
    }

    @Override // com.jcraft.jorbis.FuncFloor
    Object unpack(Info info, Buffer buffer) {
        InfoFloor0 infoFloor0 = new InfoFloor0();
        infoFloor0.order = buffer.read(8);
        infoFloor0.rate = buffer.read(16);
        infoFloor0.barkmap = buffer.read(16);
        infoFloor0.ampbits = buffer.read(6);
        infoFloor0.ampdB = buffer.read(8);
        infoFloor0.numbooks = buffer.read(4) + 1;
        if (infoFloor0.order < 1 || infoFloor0.rate < 1 || infoFloor0.barkmap < 1 || infoFloor0.numbooks < 1) {
            return null;
        }
        for (int i = 0; i < infoFloor0.numbooks; i++) {
            infoFloor0.books[i] = buffer.read(8);
            if (infoFloor0.books[i] < 0 || infoFloor0.books[i] >= info.books) {
                return null;
            }
        }
        return infoFloor0;
    }

    @Override // com.jcraft.jorbis.FuncFloor
    Object look(DspState dspState, InfoMode infoMode, Object obj) {
        Info info = dspState.vi;
        InfoFloor0 infoFloor0 = (InfoFloor0) obj;
        LookFloor0 lookFloor0 = new LookFloor0();
        lookFloor0.m = infoFloor0.order;
        lookFloor0.n = info.blocksizes[infoMode.blockflag] / 2;
        lookFloor0.ln = infoFloor0.barkmap;
        lookFloor0.vi = infoFloor0;
        lookFloor0.lpclook.init(lookFloor0.ln, lookFloor0.m);
        float bark = lookFloor0.ln / toBARK((float) (((double) infoFloor0.rate) / 2.0d));
        lookFloor0.linearmap = new int[lookFloor0.n];
        for (int i = 0; i < lookFloor0.n; i++) {
            int iD = in.d(toBARK((float) (((((double) infoFloor0.rate) / 2.0d) / ((double) lookFloor0.n)) * ((double) i))) * bark);
            if (iD >= lookFloor0.ln) {
                iD = lookFloor0.ln;
            }
            lookFloor0.linearmap[i] = iD;
        }
        return lookFloor0;
    }

    static float toBARK(float f) {
        double d = f;
        return (float) ((Math.atan(7.4E-4d * d) * 13.1d) + (Math.atan(((double) (f * f)) * 1.85E-8d) * 2.24d) + (d * 1.0E-4d));
    }

    Object state(Object obj) {
        EchstateFloor0 echstateFloor0 = new EchstateFloor0();
        InfoFloor0 infoFloor0 = (InfoFloor0) obj;
        echstateFloor0.codewords = new int[infoFloor0.order];
        echstateFloor0.curve = new float[infoFloor0.barkmap];
        echstateFloor0.frameno = -1L;
        return echstateFloor0;
    }

    int inverse(Block block, Object obj, float[] fArr) {
        LookFloor0 lookFloor0 = (LookFloor0) obj;
        InfoFloor0 infoFloor0 = lookFloor0.vi;
        int i = block.opb.read(infoFloor0.ampbits);
        if (i > 0) {
            float f = (i / ((1 << infoFloor0.ampbits) - 1)) * infoFloor0.ampdB;
            int i2 = block.opb.read(Util.ilog(infoFloor0.numbooks));
            if (i2 != -1 && i2 < infoFloor0.numbooks) {
                synchronized (this) {
                    float[] fArr2 = this.lsp;
                    float f2 = 0.0f;
                    if (fArr2 == null || fArr2.length < lookFloor0.m) {
                        this.lsp = new float[lookFloor0.m];
                    } else {
                        for (int i3 = 0; i3 < lookFloor0.m; i3++) {
                            this.lsp[i3] = 0.0f;
                        }
                    }
                    CodeBook codeBook = block.vd.fullbooks[infoFloor0.books[i2]];
                    for (int i4 = 0; i4 < lookFloor0.m; i4++) {
                        fArr[i4] = 0.0f;
                    }
                    int i5 = 0;
                    while (true) {
                        if (i5 < lookFloor0.m) {
                            if (codeBook.decodevs(this.lsp, i5, block.opb, 1, -1) != -1) {
                                i5 += codeBook.dim;
                            } else {
                                for (int i6 = 0; i6 < lookFloor0.n; i6++) {
                                    fArr[i6] = 0.0f;
                                }
                                return 0;
                            }
                        } else {
                            int i7 = 0;
                            while (i7 < lookFloor0.m) {
                                int i8 = 0;
                                while (i8 < codeBook.dim) {
                                    float[] fArr3 = this.lsp;
                                    fArr3[i7] = fArr3[i7] + f2;
                                    i8++;
                                    i7++;
                                }
                                f2 = this.lsp[i7 - 1];
                            }
                            Lsp.lsp_to_curve(fArr, lookFloor0.linearmap, lookFloor0.n, lookFloor0.ln, this.lsp, lookFloor0.m, f, infoFloor0.ampdB);
                            return 1;
                        }
                    }
                }
            }
        }
        return 0;
    }

    @Override // com.jcraft.jorbis.FuncFloor
    Object inverse1(Block block, Object obj, Object obj2) {
        LookFloor0 lookFloor0 = (LookFloor0) obj;
        InfoFloor0 infoFloor0 = lookFloor0.vi;
        float[] fArr = obj2 instanceof float[] ? (float[]) obj2 : null;
        int i = block.opb.read(infoFloor0.ampbits);
        if (i > 0) {
            float f = (i / ((1 << infoFloor0.ampbits) - 1)) * infoFloor0.ampdB;
            int i2 = block.opb.read(Util.ilog(infoFloor0.numbooks));
            if (i2 != -1 && i2 < infoFloor0.numbooks) {
                CodeBook codeBook = block.vd.fullbooks[infoFloor0.books[i2]];
                float f2 = 0.0f;
                if (fArr == null || fArr.length < lookFloor0.m + 1) {
                    fArr = new float[lookFloor0.m + 1];
                } else {
                    for (int i3 = 0; i3 < fArr.length; i3++) {
                        fArr[i3] = 0.0f;
                    }
                }
                for (int i4 = 0; i4 < lookFloor0.m; i4 += codeBook.dim) {
                    if (codeBook.decodev_set(fArr, i4, block.opb, codeBook.dim) == -1) {
                        return null;
                    }
                }
                int i5 = 0;
                while (i5 < lookFloor0.m) {
                    int i6 = 0;
                    while (i6 < codeBook.dim) {
                        fArr[i5] = fArr[i5] + f2;
                        i6++;
                        i5++;
                    }
                    f2 = fArr[i5 - 1];
                }
                fArr[lookFloor0.m] = f;
                return fArr;
            }
        }
        return null;
    }

    @Override // com.jcraft.jorbis.FuncFloor
    int inverse2(Block block, Object obj, Object obj2, float[] fArr) {
        LookFloor0 lookFloor0 = (LookFloor0) obj;
        InfoFloor0 infoFloor0 = lookFloor0.vi;
        if (obj2 != null) {
            float[] fArr2 = (float[]) obj2;
            Lsp.lsp_to_curve(fArr, lookFloor0.linearmap, lookFloor0.n, lookFloor0.ln, fArr2, lookFloor0.m, fArr2[lookFloor0.m], infoFloor0.ampdB);
            return 1;
        }
        for (int i = 0; i < lookFloor0.n; i++) {
            fArr[i] = 0.0f;
        }
        return 0;
    }

    static float fromdB(float f) {
        return (float) Math.exp(((double) f) * 0.11512925d);
    }

    static void lsp_to_lpc(float[] fArr, float[] fArr2, int i) {
        int i2 = i / 2;
        float[] fArr3 = new float[i2];
        float[] fArr4 = new float[i2];
        int i3 = i2 + 1;
        float[] fArr5 = new float[i3];
        float[] fArr6 = new float[i3];
        float[] fArr7 = new float[i2];
        float[] fArr8 = new float[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i4 * 2;
            fArr3[i4] = (float) (Math.cos(fArr[i5]) * (-2.0d));
            fArr4[i4] = (float) (Math.cos(fArr[i5 + 1]) * (-2.0d));
        }
        int i6 = 0;
        while (i6 < i2) {
            fArr5[i6] = 0.0f;
            fArr6[i6] = 1.0f;
            fArr7[i6] = 0.0f;
            fArr8[i6] = 1.0f;
            i6++;
        }
        fArr6[i6] = 1.0f;
        fArr5[i6] = 1.0f;
        for (int i7 = 1; i7 < i + 1; i7++) {
            int i8 = 0;
            float f = 0.0f;
            float f2 = 0.0f;
            while (i8 < i2) {
                float f3 = fArr3[i8];
                float f4 = fArr6[i8];
                float f5 = (f3 * f4) + fArr5[i8];
                fArr5[i8] = f4;
                fArr6[i8] = f;
                f += f5;
                float f6 = fArr4[i8];
                float f7 = fArr8[i8];
                float f8 = (f6 * f7) + fArr7[i8];
                fArr7[i8] = f7;
                fArr8[i8] = f2;
                f2 += f8;
                i8++;
            }
            fArr2[i7 - 1] = (((fArr6[i8] + f) + f2) - fArr5[i8]) / 2.0f;
            fArr6[i8] = f;
            fArr5[i8] = f2;
        }
    }

    static void lpc_to_curve(float[] fArr, float[] fArr2, float f, LookFloor0 lookFloor0, String str, int i) {
        float[] fArr3 = new float[Math.max(lookFloor0.ln * 2, (lookFloor0.m * 2) + 2)];
        int i2 = 0;
        if (f == 0.0f) {
            while (i2 < lookFloor0.n) {
                fArr[i2] = 0.0f;
                i2++;
            }
        } else {
            lookFloor0.lpclook.lpc_to_curve(fArr3, fArr2, f);
            while (i2 < lookFloor0.n) {
                fArr[i2] = fArr3[lookFloor0.linearmap[i2]];
                i2++;
            }
        }
    }

    class InfoFloor0 {
        int ampbits;
        int ampdB;
        int barkmap;
        int[] books = new int[16];
        int numbooks;
        int order;
        int rate;

        InfoFloor0() {
        }
    }

    class LookFloor0 {
        int[] linearmap;
        int ln;
        Lpc lpclook = new Lpc();
        int m;
        int n;
        InfoFloor0 vi;

        LookFloor0() {
        }
    }

    class EchstateFloor0 {
        long codes;
        int[] codewords;
        float[] curve;
        long frameno;

        EchstateFloor0() {
        }
    }
}
