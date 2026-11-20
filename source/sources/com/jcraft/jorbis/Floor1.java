package com.jcraft.jorbis;

import com.jcraft.jogg.Buffer;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
class Floor1 extends FuncFloor {
    private static float[] FLOOR_fromdB_LOOKUP = {1.0649863E-7f, 1.1341951E-7f, 1.2079015E-7f, 1.2863978E-7f, 1.369995E-7f, 1.459025E-7f, 1.5538409E-7f, 1.6548181E-7f, 1.7623574E-7f, 1.8768856E-7f, 1.998856E-7f, 2.128753E-7f, 2.2670913E-7f, 2.4144197E-7f, 2.5713223E-7f, 2.7384212E-7f, 2.9163792E-7f, 3.1059022E-7f, 3.307741E-7f, 3.5226967E-7f, 3.7516213E-7f, 3.995423E-7f, 4.255068E-7f, 4.5315863E-7f, 4.8260745E-7f, 5.1397E-7f, 5.4737063E-7f, 5.829419E-7f, 6.208247E-7f, 6.611694E-7f, 7.041359E-7f, 7.4989464E-7f, 7.98627E-7f, 8.505263E-7f, 9.057983E-7f, 9.646621E-7f, 1.0273513E-6f, 1.0941144E-6f, 1.1652161E-6f, 1.2409384E-6f, 1.3215816E-6f, 1.4074654E-6f, 1.4989305E-6f, 1.5963394E-6f, 1.7000785E-6f, 1.8105592E-6f, 1.9282195E-6f, 2.053526E-6f, 2.1869757E-6f, 2.3290977E-6f, 2.4804558E-6f, 2.6416496E-6f, 2.813319E-6f, 2.9961443E-6f, 3.1908505E-6f, 3.39821E-6f, 3.619045E-6f, 3.8542307E-6f, 4.1047006E-6f, 4.371447E-6f, 4.6555283E-6f, 4.958071E-6f, 5.280274E-6f, 5.623416E-6f, 5.988857E-6f, 6.3780467E-6f, 6.7925284E-6f, 7.2339453E-6f, 7.704048E-6f, 8.2047E-6f, 8.737888E-6f, 9.305725E-6f, 9.910464E-6f, 1.0554501E-5f, 1.1240392E-5f, 1.1970856E-5f, 1.2748789E-5f, 1.3577278E-5f, 1.4459606E-5f, 1.5399271E-5f, 1.6400005E-5f, 1.7465769E-5f, 1.8600793E-5f, 1.9809577E-5f, 2.1096914E-5f, 2.2467912E-5f, 2.3928002E-5f, 2.5482977E-5f, 2.7139005E-5f, 2.890265E-5f, 3.078091E-5f, 3.2781227E-5f, 3.4911533E-5f, 3.718028E-5f, 3.9596467E-5f, 4.2169668E-5f, 4.491009E-5f, 4.7828602E-5f, 5.0936775E-5f, 5.424693E-5f, 5.7772202E-5f, 6.152657E-5f, 6.552491E-5f, 6.9783084E-5f, 7.4317984E-5f, 7.914758E-5f, 8.429104E-5f, 8.976875E-5f, 9.560242E-5f, 1.0181521E-4f, 1.0843174E-4f, 1.1547824E-4f, 1.2298267E-4f, 1.3097477E-4f, 1.3948625E-4f, 1.4855085E-4f, 1.5820454E-4f, 1.6848555E-4f, 1.7943469E-4f, 1.9109536E-4f, 2.0351382E-4f, 2.167393E-4f, 2.3082423E-4f, 2.4582449E-4f, 2.6179955E-4f, 2.7881275E-4f, 2.9693157E-4f, 3.1622787E-4f, 3.3677815E-4f, 3.5866388E-4f, 3.8197188E-4f, 4.0679457E-4f, 4.3323037E-4f, 4.613841E-4f, 4.913675E-4f, 5.2329927E-4f, 5.573062E-4f, 5.935231E-4f, 6.320936E-4f, 6.731706E-4f, 7.16917E-4f, 7.635063E-4f, 8.1312325E-4f, 8.6596457E-4f, 9.2223985E-4f, 9.821722E-4f, 0.0010459992f, 0.0011139743f, 0.0011863665f, 0.0012634633f, 0.0013455702f, 0.0014330129f, 0.0015261382f, 0.0016253153f, 0.0017309374f, 0.0018434235f, 0.0019632196f, 0.0020908006f, 0.0022266726f, 0.0023713743f, 0.0025254795f, 0.0026895993f, 0.0028643848f, 0.0030505287f, 0.003248769f, 0.0034598925f, 0.0036847359f, 0.0039241905f, 0.0041792067f, 0.004450795f, 0.004740033f, 0.005048067f, 0.0053761187f, 0.005725489f, 0.0060975635f, 0.0064938175f, 0.0069158226f, 0.0073652514f, 0.007843887f, 0.008353627f, 0.008896492f, 0.009474637f, 0.010090352f, 0.01074608f, 0.011444421f, 0.012188144f, 0.012980198f, 0.013823725f, 0.014722068f, 0.015678791f, 0.016697686f, 0.017782796f, 0.018938422f, 0.020169148f, 0.021479854f, 0.022875736f, 0.02436233f, 0.025945531f, 0.027631618f, 0.029427277f, 0.031339627f, 0.03337625f, 0.035545226f, 0.037855156f, 0.0403152f, 0.042935107f, 0.045725275f, 0.048696756f, 0.05186135f, 0.05523159f, 0.05882085f, 0.062643364f, 0.06671428f, 0.07104975f, 0.075666964f, 0.08058423f, 0.08582105f, 0.09139818f, 0.097337745f, 0.1036633f, 0.11039993f, 0.11757434f, 0.12521498f, 0.13335215f, 0.14201812f, 0.15124726f, 0.16107617f, 0.1715438f, 0.18269168f, 0.19456401f, 0.20720787f, 0.22067343f, 0.23501402f, 0.25028655f, 0.26655158f, 0.28387362f, 0.3023213f, 0.32196787f, 0.34289113f, 0.36517414f, 0.3889052f, 0.41417846f, 0.44109413f, 0.4697589f, 0.50028646f, 0.53279793f, 0.5674221f, 0.6042964f, 0.64356697f, 0.6853896f, 0.72993004f, 0.777365f, 0.8278826f, 0.88168305f, 0.9389798f, 1.0f};
    static final int VIF_POSIT = 63;
    static final int floor1_rangedb = 140;

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

    Floor1() {
    }

    @Override // com.jcraft.jorbis.FuncFloor
    void pack(Object obj, Buffer buffer) {
        InfoFloor1 infoFloor1 = (InfoFloor1) obj;
        int i = infoFloor1.postlist[1];
        buffer.write(infoFloor1.partitions, 5);
        int i2 = -1;
        for (int i3 = 0; i3 < infoFloor1.partitions; i3++) {
            buffer.write(infoFloor1.partitionclass[i3], 4);
            if (i2 < infoFloor1.partitionclass[i3]) {
                i2 = infoFloor1.partitionclass[i3];
            }
        }
        for (int i4 = 0; i4 < i2 + 1; i4++) {
            buffer.write(infoFloor1.class_dim[i4] - 1, 3);
            buffer.write(infoFloor1.class_subs[i4], 2);
            if (infoFloor1.class_subs[i4] != 0) {
                buffer.write(infoFloor1.class_book[i4], 8);
            }
            for (int i5 = 0; i5 < (1 << infoFloor1.class_subs[i4]); i5++) {
                buffer.write(infoFloor1.class_subbook[i4][i5] + 1, 8);
            }
        }
        buffer.write(infoFloor1.mult - 1, 2);
        buffer.write(Util.ilog2(i), 4);
        int iIlog2 = Util.ilog2(i);
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < infoFloor1.partitions; i8++) {
            i6 += infoFloor1.class_dim[infoFloor1.partitionclass[i8]];
            while (i7 < i6) {
                buffer.write(infoFloor1.postlist[i7 + 2], iIlog2);
                i7++;
            }
        }
    }

    @Override // com.jcraft.jorbis.FuncFloor
    Object unpack(Info info, Buffer buffer) {
        InfoFloor1 infoFloor1 = new InfoFloor1();
        infoFloor1.partitions = buffer.read(5);
        int i = -1;
        for (int i2 = 0; i2 < infoFloor1.partitions; i2++) {
            infoFloor1.partitionclass[i2] = buffer.read(4);
            if (i < infoFloor1.partitionclass[i2]) {
                i = infoFloor1.partitionclass[i2];
            }
        }
        for (int i3 = 0; i3 < i + 1; i3++) {
            infoFloor1.class_dim[i3] = buffer.read(3) + 1;
            infoFloor1.class_subs[i3] = buffer.read(2);
            if (infoFloor1.class_subs[i3] < 0) {
                infoFloor1.free();
                return null;
            }
            if (infoFloor1.class_subs[i3] != 0) {
                infoFloor1.class_book[i3] = buffer.read(8);
            }
            if (infoFloor1.class_book[i3] < 0 || infoFloor1.class_book[i3] >= info.books) {
                infoFloor1.free();
                return null;
            }
            for (int i4 = 0; i4 < (1 << infoFloor1.class_subs[i3]); i4++) {
                infoFloor1.class_subbook[i3][i4] = buffer.read(8) - 1;
                if (infoFloor1.class_subbook[i3][i4] < -1 || infoFloor1.class_subbook[i3][i4] >= info.books) {
                    infoFloor1.free();
                    return null;
                }
            }
        }
        infoFloor1.mult = buffer.read(2) + 1;
        int i5 = buffer.read(4);
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < infoFloor1.partitions; i8++) {
            i6 += infoFloor1.class_dim[infoFloor1.partitionclass[i8]];
            while (i7 < i6) {
                int i9 = buffer.read(i5);
                infoFloor1.postlist[i7 + 2] = i9;
                if (i9 < 0 || i9 >= (1 << i5)) {
                    infoFloor1.free();
                    return null;
                }
                i7++;
            }
        }
        infoFloor1.postlist[0] = 0;
        infoFloor1.postlist[1] = 1 << i5;
        return infoFloor1;
    }

    @Override // com.jcraft.jorbis.FuncFloor
    Object look(DspState dspState, InfoMode infoMode, Object obj) {
        int[] iArr = new int[65];
        InfoFloor1 infoFloor1 = (InfoFloor1) obj;
        LookFloor1 lookFloor1 = new LookFloor1();
        lookFloor1.vi = infoFloor1;
        lookFloor1.n = infoFloor1.postlist[1];
        int i = 0;
        for (int i2 = 0; i2 < infoFloor1.partitions; i2++) {
            i += infoFloor1.class_dim[infoFloor1.partitionclass[i2]];
        }
        int i3 = i + 2;
        lookFloor1.posts = i3;
        for (int i4 = 0; i4 < i3; i4++) {
            iArr[i4] = i4;
        }
        for (int i5 = 0; i5 < i3 - 1; i5++) {
            for (int i6 = i5; i6 < i3; i6++) {
                int i7 = infoFloor1.postlist[iArr[i5]];
                int[] iArr2 = infoFloor1.postlist;
                int i8 = iArr[i6];
                if (i7 > iArr2[i8]) {
                    iArr[i6] = iArr[i5];
                    iArr[i5] = i8;
                }
            }
        }
        for (int i9 = 0; i9 < i3; i9++) {
            lookFloor1.forward_index[i9] = iArr[i9];
        }
        for (int i10 = 0; i10 < i3; i10++) {
            lookFloor1.reverse_index[lookFloor1.forward_index[i10]] = i10;
        }
        for (int i11 = 0; i11 < i3; i11++) {
            lookFloor1.sorted_index[i11] = infoFloor1.postlist[lookFloor1.forward_index[i11]];
        }
        int i12 = infoFloor1.mult;
        if (i12 == 1) {
            lookFloor1.quant_q = Keyboard.KEYBOARD_SIZE;
        } else if (i12 == 2) {
            lookFloor1.quant_q = 128;
        } else if (i12 == 3) {
            lookFloor1.quant_q = 86;
        } else if (i12 == 4) {
            lookFloor1.quant_q = 64;
        } else {
            lookFloor1.quant_q = -1;
        }
        for (int i13 = 0; i13 < i3 - 2; i13++) {
            int i14 = lookFloor1.n;
            int i15 = i13 + 2;
            int i16 = infoFloor1.postlist[i15];
            int i17 = 0;
            int i18 = 0;
            int i19 = 1;
            for (int i20 = 0; i20 < i15; i20++) {
                int i21 = infoFloor1.postlist[i20];
                if (i21 > i18 && i21 < i16) {
                    i17 = i20;
                    i18 = i21;
                }
                if (i21 < i14 && i21 > i16) {
                    i19 = i20;
                    i14 = i21;
                }
            }
            lookFloor1.loneighbor[i13] = i17;
            lookFloor1.hineighbor[i13] = i19;
        }
        return lookFloor1;
    }

    @Override // com.jcraft.jorbis.FuncFloor
    Object inverse1(Block block, Object obj, Object obj2) {
        int iDecode;
        LookFloor1 lookFloor1 = (LookFloor1) obj;
        InfoFloor1 infoFloor1 = lookFloor1.vi;
        CodeBook[] codeBookArr = block.vd.fullbooks;
        int i = 1;
        Object obj3 = null;
        if (block.opb.read(1) != 1) {
            return null;
        }
        int[] iArr = obj2 instanceof int[] ? (int[]) obj2 : null;
        if (iArr == null || iArr.length < lookFloor1.posts) {
            iArr = new int[lookFloor1.posts];
        } else {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr[i2] = 0;
            }
        }
        iArr[0] = block.opb.read(Util.ilog(lookFloor1.quant_q - 1));
        iArr[1] = block.opb.read(Util.ilog(lookFloor1.quant_q - 1));
        int i3 = 0;
        int i4 = 2;
        while (i3 < infoFloor1.partitions) {
            int i5 = infoFloor1.partitionclass[i3];
            int i6 = infoFloor1.class_dim[i5];
            int i7 = infoFloor1.class_subs[i5];
            int i8 = i << i7;
            if (i7 != 0) {
                iDecode = codeBookArr[infoFloor1.class_book[i5]].decode(block.opb);
                if (iDecode == -1) {
                    return obj3;
                }
            } else {
                iDecode = 0;
            }
            for (int i9 = 0; i9 < i6; i9++) {
                int i10 = infoFloor1.class_subbook[i5][iDecode & (i8 - 1)];
                iDecode >>>= i7;
                if (i10 >= 0) {
                    int iDecode2 = codeBookArr[i10].decode(block.opb);
                    iArr[i4 + i9] = iDecode2;
                    if (iDecode2 == -1) {
                        return null;
                    }
                } else {
                    iArr[i4 + i9] = 0;
                }
            }
            i4 += i6;
            i3++;
            i = 1;
            obj3 = null;
        }
        for (int i11 = 2; i11 < lookFloor1.posts; i11++) {
            int i12 = i11 - 2;
            int iRender_point = render_point(infoFloor1.postlist[lookFloor1.loneighbor[i12]], infoFloor1.postlist[lookFloor1.hineighbor[i12]], iArr[lookFloor1.loneighbor[i12]], iArr[lookFloor1.hineighbor[i12]], infoFloor1.postlist[i11]);
            int i13 = lookFloor1.quant_q - iRender_point;
            int i14 = (i13 < iRender_point ? i13 : iRender_point) << 1;
            int i15 = iArr[i11];
            if (i15 != 0) {
                iArr[i11] = (i15 >= i14 ? i13 > iRender_point ? i15 - iRender_point : (-1) - (i15 - i13) : (i15 & 1) != 0 ? -((i15 + 1) >>> 1) : i15 >> 1) + iRender_point;
                int i16 = lookFloor1.loneighbor[i12];
                iArr[i16] = iArr[i16] & 32767;
                int i17 = lookFloor1.hineighbor[i12];
                iArr[i17] = iArr[i17] & 32767;
            } else {
                iArr[i11] = iRender_point | 32768;
            }
        }
        return iArr;
    }

    private static int render_point(int i, int i2, int i3, int i4, int i5) {
        int i6 = i3 & 32767;
        int i7 = (i4 & 32767) - i6;
        int iAbs = (Math.abs(i7) * (i5 - i)) / (i2 - i);
        return i7 < 0 ? i6 - iAbs : i6 + iAbs;
    }

    @Override // com.jcraft.jorbis.FuncFloor
    int inverse2(Block block, Object obj, Object obj2, float[] fArr) {
        LookFloor1 lookFloor1 = (LookFloor1) obj;
        InfoFloor1 infoFloor1 = lookFloor1.vi;
        int i = block.vd.vi.blocksizes[block.mode] / 2;
        int i2 = 0;
        if (obj2 == null) {
            for (int i3 = 0; i3 < i; i3++) {
                fArr[i3] = 0.0f;
            }
            return 0;
        }
        int[] iArr = (int[]) obj2;
        int i4 = iArr[0] * infoFloor1.mult;
        int i5 = 0;
        for (int i6 = 1; i6 < lookFloor1.posts; i6++) {
            int i7 = lookFloor1.forward_index[i6];
            int i8 = iArr[i7];
            int i9 = i8 & 32767;
            if (i9 == i8) {
                int i10 = i9 * infoFloor1.mult;
                i2 = infoFloor1.postlist[i7];
                render_line(i5, i2, i4, i10, fArr);
                i5 = i2;
                i4 = i10;
            }
        }
        while (i2 < i) {
            fArr[i2] = fArr[i2] * fArr[i2 - 1];
            i2++;
        }
        return 1;
    }

    private static void render_line(int i, int i2, int i3, int i4, float[] fArr) {
        int i5 = i4 - i3;
        int i6 = i2 - i;
        int iAbs = Math.abs(i5);
        int i7 = i5 / i6;
        int i8 = i5 < 0 ? i7 - 1 : i7 + 1;
        int iAbs2 = iAbs - Math.abs(i7 * i6);
        fArr[i] = fArr[i] * FLOOR_fromdB_LOOKUP[i3];
        int i9 = 0;
        while (true) {
            i++;
            if (i >= i2) {
                return;
            }
            i9 += iAbs2;
            if (i9 >= i6) {
                i9 -= i6;
                i3 += i8;
            } else {
                i3 += i7;
            }
            fArr[i] = fArr[i] * FLOOR_fromdB_LOOKUP[i3];
        }
    }

    class InfoFloor1 {
        static final int VIF_CLASS = 16;
        static final int VIF_PARTS = 31;
        static final int VIF_POSIT = 63;
        float maxerr;
        float maxover;
        float maxunder;
        int mult;
        int n;
        int partitions;
        float twofitatten;
        int twofitminsize;
        int twofitminused;
        int twofitweight;
        int unusedmin_n;
        int unusedminsize;
        int[] partitionclass = new int[31];
        int[] class_dim = new int[16];
        int[] class_subs = new int[16];
        int[] class_book = new int[16];
        int[][] class_subbook = new int[16][];
        int[] postlist = new int[65];

        InfoFloor1() {
            int i = 0;
            while (true) {
                int[][] iArr = this.class_subbook;
                if (i >= iArr.length) {
                    return;
                }
                iArr[i] = new int[8];
                i++;
            }
        }

        void free() {
            this.partitionclass = null;
            this.class_dim = null;
            this.class_subs = null;
            this.class_book = null;
            this.class_subbook = null;
            this.postlist = null;
        }

        Object copy_info() {
            InfoFloor1 infoFloor1 = Floor1.this.new InfoFloor1();
            infoFloor1.partitions = this.partitions;
            System.arraycopy(this.partitionclass, 0, infoFloor1.partitionclass, 0, 31);
            System.arraycopy(this.class_dim, 0, infoFloor1.class_dim, 0, 16);
            System.arraycopy(this.class_subs, 0, infoFloor1.class_subs, 0, 16);
            System.arraycopy(this.class_book, 0, infoFloor1.class_book, 0, 16);
            for (int i = 0; i < 16; i++) {
                System.arraycopy(this.class_subbook[i], 0, infoFloor1.class_subbook[i], 0, 8);
            }
            infoFloor1.mult = this.mult;
            System.arraycopy(this.postlist, 0, infoFloor1.postlist, 0, 65);
            infoFloor1.maxover = this.maxover;
            infoFloor1.maxunder = this.maxunder;
            infoFloor1.maxerr = this.maxerr;
            infoFloor1.twofitminsize = this.twofitminsize;
            infoFloor1.twofitminused = this.twofitminused;
            infoFloor1.twofitweight = this.twofitweight;
            infoFloor1.twofitatten = this.twofitatten;
            infoFloor1.unusedminsize = this.unusedminsize;
            infoFloor1.unusedmin_n = this.unusedmin_n;
            infoFloor1.n = this.n;
            return infoFloor1;
        }
    }

    class LookFloor1 {
        static final int VIF_POSIT = 63;
        int frames;
        int n;
        int phrasebits;
        int postbits;
        int posts;
        int quant_q;
        InfoFloor1 vi;
        int[] sorted_index = new int[65];
        int[] forward_index = new int[65];
        int[] reverse_index = new int[65];
        int[] hineighbor = new int[63];
        int[] loneighbor = new int[63];

        LookFloor1() {
        }

        void free() {
            this.sorted_index = null;
            this.forward_index = null;
            this.reverse_index = null;
            this.hineighbor = null;
            this.loneighbor = null;
        }
    }

    class Lsfit_acc {
        long an;
        long edgey0;
        long edgey1;
        long n;
        long un;
        long x0;
        long x1;
        long x2a;
        long xa;
        long xya;
        long y2a;
        long ya;

        Lsfit_acc() {
        }
    }

    class EchstateFloor1 {
        long codes;
        int[] codewords;
        float[] curve;
        long frameno;

        EchstateFloor1() {
        }
    }
}
