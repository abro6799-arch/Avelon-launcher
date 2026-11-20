package com.jcraft.jorbis;

import com.jcraft.jogg.Buffer;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
class Residue0 extends FuncResidue {
    private static int[][][] _01inverse_partword = new int[2][][];
    static int[][] _2inverse_partword = null;

    @Override // com.jcraft.jorbis.FuncResidue
    void free_info(Object obj) {
    }

    @Override // com.jcraft.jorbis.FuncResidue
    void free_look(Object obj) {
    }

    Residue0() {
    }

    @Override // com.jcraft.jorbis.FuncResidue
    void pack(Object obj, Buffer buffer) {
        InfoResidue0 infoResidue0 = (InfoResidue0) obj;
        buffer.write(infoResidue0.begin, 24);
        buffer.write(infoResidue0.end, 24);
        buffer.write(infoResidue0.grouping - 1, 24);
        buffer.write(infoResidue0.partitions - 1, 6);
        buffer.write(infoResidue0.groupbook, 8);
        int iIcount = 0;
        for (int i = 0; i < infoResidue0.partitions; i++) {
            int i2 = infoResidue0.secondstages[i];
            if (Util.ilog(i2) > 3) {
                buffer.write(i2, 3);
                buffer.write(1, 1);
                buffer.write(i2 >>> 3, 5);
            } else {
                buffer.write(i2, 4);
            }
            iIcount += Util.icount(i2);
        }
        for (int i3 = 0; i3 < iIcount; i3++) {
            buffer.write(infoResidue0.booklist[i3], 8);
        }
    }

    @Override // com.jcraft.jorbis.FuncResidue
    Object unpack(Info info, Buffer buffer) {
        InfoResidue0 infoResidue0 = new InfoResidue0();
        infoResidue0.begin = buffer.read(24);
        infoResidue0.end = buffer.read(24);
        infoResidue0.grouping = buffer.read(24) + 1;
        infoResidue0.partitions = buffer.read(6) + 1;
        infoResidue0.groupbook = buffer.read(8);
        int iIcount = 0;
        for (int i = 0; i < infoResidue0.partitions; i++) {
            int i2 = buffer.read(3);
            if (buffer.read(1) != 0) {
                i2 |= buffer.read(5) << 3;
            }
            infoResidue0.secondstages[i] = i2;
            iIcount += Util.icount(i2);
        }
        for (int i3 = 0; i3 < iIcount; i3++) {
            infoResidue0.booklist[i3] = buffer.read(8);
        }
        if (infoResidue0.groupbook >= info.books) {
            free_info(infoResidue0);
            return null;
        }
        for (int i4 = 0; i4 < iIcount; i4++) {
            if (infoResidue0.booklist[i4] >= info.books) {
                free_info(infoResidue0);
                return null;
            }
        }
        return infoResidue0;
    }

    @Override // com.jcraft.jorbis.FuncResidue
    Object look(DspState dspState, InfoMode infoMode, Object obj) {
        InfoResidue0 infoResidue0 = (InfoResidue0) obj;
        LookResidue0 lookResidue0 = new LookResidue0();
        lookResidue0.info = infoResidue0;
        lookResidue0.map = infoMode.mapping;
        lookResidue0.parts = infoResidue0.partitions;
        lookResidue0.fullbooks = dspState.fullbooks;
        lookResidue0.phrasebook = dspState.fullbooks[infoResidue0.groupbook];
        int i = lookResidue0.phrasebook.dim;
        lookResidue0.partbooks = new int[lookResidue0.parts][];
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < lookResidue0.parts; i4++) {
            int i5 = infoResidue0.secondstages[i4];
            int iIlog = Util.ilog(i5);
            if (iIlog != 0) {
                if (iIlog > i2) {
                    i2 = iIlog;
                }
                lookResidue0.partbooks[i4] = new int[iIlog];
                for (int i6 = 0; i6 < iIlog; i6++) {
                    if (((1 << i6) & i5) != 0) {
                        lookResidue0.partbooks[i4][i6] = infoResidue0.booklist[i3];
                        i3++;
                    }
                }
            }
        }
        lookResidue0.partvals = (int) Math.rint(Math.pow(lookResidue0.parts, i));
        lookResidue0.stages = i2;
        lookResidue0.decodemap = new int[lookResidue0.partvals][];
        for (int i7 = 0; i7 < lookResidue0.partvals; i7++) {
            int i8 = lookResidue0.partvals / lookResidue0.parts;
            lookResidue0.decodemap[i7] = new int[i];
            int i9 = i7;
            for (int i10 = 0; i10 < i; i10++) {
                int i11 = i9 / i8;
                i9 -= i11 * i8;
                i8 /= lookResidue0.parts;
                lookResidue0.decodemap[i7][i10] = i11;
            }
        }
        return lookResidue0;
    }

    static {
    }

    static synchronized int _01inverse(Block block, Object obj, float[][] fArr, int i, int i2) {
        InfoResidue0 infoResidue0;
        int i3 = i;
        synchronized (Residue0.class) {
            LookResidue0 lookResidue0 = (LookResidue0) obj;
            InfoResidue0 infoResidue1 = lookResidue0.info;
            int i4 = infoResidue1.grouping;
            int i5 = lookResidue0.phrasebook.dim;
            int i6 = (infoResidue1.end - infoResidue1.begin) / i4;
            int i7 = ((i6 + i5) - 1) / i5;
            if (_01inverse_partword.length < i3) {
                _01inverse_partword = new int[i3][][];
            }
            for (int i8 = 0; i8 < i3; i8++) {
                int[][][] iArr = _01inverse_partword;
                int[][] iArr2 = iArr[i8];
                if (iArr2 == null || iArr2.length < i7) {
                    iArr[i8] = new int[i7][];
                }
            }
            int i9 = 0;
            while (true) {
                if (i9 >= lookResidue0.stages) {
                    return 0;
                }
                int i10 = 0;
                int i11 = 0;
                while (i10 < i6) {
                    int i12 = -1;
                    if (i9 == 0) {
                        int i13 = 0;
                        while (true) {
                            if (i13 >= i3) {
                                break;
                            }
                            int iDecode = lookResidue0.phrasebook.decode(block.opb);
                            if (iDecode == i12) {
                                return 0;
                            }
                            _01inverse_partword[i13][i11] = lookResidue0.decodemap[iDecode];
                            if (_01inverse_partword[i13][i11] == null) {
                                return 0;
                            }
                            i13++;
                            i12 = -1;
                        }
                    }
                    int i14 = 0;
                    while (i14 < i5 && i10 < i6) {
                        int i15 = 0;
                        while (i15 < i3) {
                            int i16 = infoResidue1.begin + (i10 * i4);
                            int i17 = _01inverse_partword[i15][i11][i14];
                            if ((infoResidue1.secondstages[i17] & (1 << i9)) != 0) {
                                infoResidue0 = infoResidue1;
                                CodeBook codeBook = lookResidue0.fullbooks[lookResidue0.partbooks[i17][i9]];
                                if (codeBook != null) {
                                    if (i2 == 0) {
                                        if (codeBook.decodevs_add(fArr[i15], i16, block.opb, i4) == -1) {
                                            return 0;
                                        }
                                    } else if (i2 == 1) {
                                        if (codeBook.decodev_add(fArr[i15], i16, block.opb, i4) == -1) {
                                            return 0;
                                        }
                                    }
                                }
                                i15++;
                                i3 = i;
                                infoResidue1 = infoResidue0;
                            } else {
                                infoResidue0 = infoResidue1;
                            }
                            i15++;
                            i3 = i;
                            infoResidue1 = infoResidue0;
                        }
                        i14++;
                        i10++;
                        i3 = i;
                        infoResidue1 = infoResidue1;
                    }
                    i11++;
                    i3 = i;
                    infoResidue1 = infoResidue1;
                }
                i9++;
                i3 = i;
            }
        }
    }

    static synchronized int _2inverse(Block block, Object obj, float[][] fArr, int i) {
        byte b;
        LookResidue0 lookResidue0 = (LookResidue0) obj;
        InfoResidue0 infoResidue0 = lookResidue0.info;
        int i2 = infoResidue0.grouping;
        int i3 = lookResidue0.phrasebook.dim;
        int i4 = (infoResidue0.end - infoResidue0.begin) / i2;
        int i5 = 1;
        int i6 = ((i4 + i3) - 1) / i3;
        int[][] iArr = _2inverse_partword;
        if (iArr == null || iArr.length < i6) {
            _2inverse_partword = new int[i6][];
        }
        int i7 = 0;
        while (true) {
            if (i7 >= lookResidue0.stages) {
                return 0;
            }
            int i8 = 0;
            int i9 = 0;
            while (i8 < i4) {
                byte b2 = -1;
                if (i7 == 0) {
                    int iDecode = lookResidue0.phrasebook.decode(block.opb);
                    if (iDecode == -1) {
                        return 0;
                    }
                    _2inverse_partword[i9] = lookResidue0.decodemap[iDecode];
                    if (_2inverse_partword[i9] == null) {
                        return 0;
                    }
                }
                int i10 = i8;
                int i11 = 0;
                while (i11 < i3 && i10 < i4) {
                    int i12 = infoResidue0.begin + (i10 * i2);
                    int i13 = _2inverse_partword[i9][i11];
                    if ((infoResidue0.secondstages[i13] & (i5 << i7)) != 0) {
                        CodeBook codeBook = lookResidue0.fullbooks[lookResidue0.partbooks[i13][i7]];
                        if (codeBook != null) {
                            b = -1;
                            if (codeBook.decodevv_add(fArr, i12, i, block.opb, i2) == -1) {
                                return 0;
                            }
                        } else {
                            b = -1;
                        }
                    } else {
                        b = b2;
                    }
                    i11++;
                    i10++;
                    b2 = b;
                    i5 = 1;
                }
                i9++;
                i8 = i10;
                i5 = 1;
            }
            i7++;
            i5 = 1;
        }
    }

    @Override // com.jcraft.jorbis.FuncResidue
    int inverse(Block block, Object obj, float[][] fArr, int[] iArr, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] != 0) {
                fArr[i2] = fArr[i3];
                i2++;
            }
        }
        if (i2 != 0) {
            return _01inverse(block, obj, fArr, i2, 0);
        }
        return 0;
    }

    class LookResidue0 {
        int[][] decodemap;
        int frames;
        CodeBook[] fullbooks;
        InfoResidue0 info;
        int map;
        int[][] partbooks;
        int parts;
        int partvals;
        int phrasebits;
        CodeBook phrasebook;
        int postbits;
        int stages;

        LookResidue0() {
        }
    }

    class InfoResidue0 {
        int begin;
        int end;
        int groupbook;
        int grouping;
        int partitions;
        int[] secondstages = new int[64];
        int[] booklist = new int[Keyboard.KEYBOARD_SIZE];
        float[] entmax = new float[64];
        float[] ampmax = new float[64];
        int[] subgrp = new int[64];
        int[] blimit = new int[64];

        InfoResidue0() {
        }
    }
}
