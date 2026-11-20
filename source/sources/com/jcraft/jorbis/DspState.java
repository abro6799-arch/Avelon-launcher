package com.jcraft.jorbis;

/* JADX INFO: loaded from: classes.dex */
public class DspState {
    static final float M_PI = 3.1415927f;
    static final int VI_TRANSFORMB = 1;
    static final int VI_WINDOWB = 1;
    int W;
    int analysisp;
    int centerW;
    int envelope_current;
    int envelope_storage;
    int eofflag;
    long floor_bits;
    CodeBook[] fullbooks;
    long glue_bits;
    long granulepos;
    byte[] header;
    byte[] header1;
    byte[] header2;
    int lW;
    Object[] mode;
    int modebits;
    float[] multipliers;
    int nW;
    float[][] pcm;
    int pcm_current;
    int pcm_returned;
    int pcm_storage;
    long res_bits;
    long sequence;
    long time_bits;
    Object[][] transform;
    Info vi;
    float[][][][][] window;

    public void clear() {
    }

    public DspState() {
        this.transform = new Object[2][];
        float[][][][][] fArr = {fArr, new float[][][][]{new float[2][][], new float[2][][]}};
        this.window = fArr;
        float[][][][] fArr2 = new float[2][][][];
        fArr2[0] = new float[2][][];
        float[][][][] fArr3 = fArr[0];
        fArr3[1] = new float[2][][];
        fArr3[0][0] = new float[2][];
        float[][][][] fArr4 = fArr[0];
        fArr4[0][1] = new float[2][];
        fArr4[1][0] = new float[2][];
        fArr[0][1][1] = new float[2][];
        float[][][][] fArr5 = fArr[1];
        fArr5[0][0] = new float[2][];
        fArr5[0][1] = new float[2][];
        float[][][] fArr6 = fArr[1][1];
        fArr6[0] = new float[2][];
        fArr6[1] = new float[2][];
    }

    static float[] window(int i, int i2, int i3, int i4) {
        double d;
        float[] fArr = new float[i2];
        if (i != 0) {
            return null;
        }
        int i5 = i2 / 4;
        int i6 = i5 - (i3 / 2);
        int i7 = (i2 - i5) - (i4 / 2);
        int i8 = 0;
        while (true) {
            d = 0.5d;
            if (i8 >= i3) {
                break;
            }
            int i9 = i6;
            float fSin = (float) Math.sin((float) ((((((double) i8) + 0.5d) / ((double) i3)) * 3.1415927410125732d) / 2.0d));
            fArr[i8 + i9] = (float) Math.sin((float) (((double) (fSin * fSin)) * 1.5707963705062866d));
            i8++;
            i6 = i9;
        }
        for (int i10 = i6 + i3; i10 < i7; i10++) {
            fArr[i10] = 1.0f;
        }
        int i11 = 0;
        while (i11 < i4) {
            float fSin2 = (float) Math.sin((float) ((((((double) (i4 - i11)) - d) / ((double) i4)) * 3.1415927410125732d) / 2.0d));
            fArr[i11 + i7] = (float) Math.sin((float) (((double) (fSin2 * fSin2)) * 1.5707963705062866d));
            i11++;
            d = 0.5d;
        }
        return fArr;
    }

    int init(Info info, boolean z) {
        this.vi = info;
        this.modebits = Util.ilog2(info.modes);
        Object[][] objArr = this.transform;
        objArr[0] = new Object[]{new Mdct()};
        objArr[1] = new Object[1];
        this.transform[1][0] = new Mdct();
        ((Mdct) this.transform[0][0]).init(info.blocksizes[0]);
        ((Mdct) this.transform[1][0]).init(info.blocksizes[1]);
        float[][][][][] fArr = this.window;
        fArr[0][0][0] = new float[1][];
        float[][][][] fArr2 = fArr[0];
        float[][][] fArr3 = fArr2[0];
        float[][] fArr4 = fArr3[0];
        fArr3[1] = fArr4;
        fArr2[1][0] = fArr4;
        float[][][][] fArr5 = fArr[0];
        fArr5[1][1] = fArr5[0][0];
        float[][][][] fArr6 = fArr[1];
        fArr6[0][0] = new float[1][];
        fArr6[0][1] = new float[1][];
        float[][][] fArr7 = fArr[1][1];
        fArr7[0] = new float[1][];
        fArr7[1] = new float[1][];
        fArr[0][0][0][0] = window(0, info.blocksizes[0], info.blocksizes[0] / 2, info.blocksizes[0] / 2);
        this.window[1][0][0][0] = window(0, info.blocksizes[1], info.blocksizes[0] / 2, info.blocksizes[0] / 2);
        this.window[1][0][1][0] = window(0, info.blocksizes[1], info.blocksizes[0] / 2, info.blocksizes[1] / 2);
        this.window[1][1][0][0] = window(0, info.blocksizes[1], info.blocksizes[1] / 2, info.blocksizes[0] / 2);
        this.window[1][1][1][0] = window(0, info.blocksizes[1], info.blocksizes[1] / 2, info.blocksizes[1] / 2);
        this.fullbooks = new CodeBook[info.books];
        for (int i = 0; i < info.books; i++) {
            this.fullbooks[i] = new CodeBook();
            this.fullbooks[i].init_decode(info.book_param[i]);
        }
        this.pcm_storage = 8192;
        this.pcm = new float[info.channels][];
        for (int i2 = 0; i2 < info.channels; i2++) {
            this.pcm[i2] = new float[this.pcm_storage];
        }
        this.lW = 0;
        this.W = 0;
        int i3 = info.blocksizes[1] / 2;
        this.centerW = i3;
        this.pcm_current = i3;
        this.mode = new Object[info.modes];
        for (int i4 = 0; i4 < info.modes; i4++) {
            int i5 = info.mode_param[i4].mapping;
            this.mode[i4] = FuncMapping.mapping_P[info.map_type[i5]].look(this, info.mode_param[i4], info.map_param[i5]);
        }
        return 0;
    }

    public int synthesis_init(Info info) {
        init(info, false);
        int i = this.centerW;
        this.pcm_returned = i;
        this.centerW = i - ((info.blocksizes[this.W] / 4) + (info.blocksizes[this.lW] / 4));
        this.granulepos = -1L;
        this.sequence = -1L;
        return 0;
    }

    DspState(Info info) {
        this();
        init(info, false);
        int i = this.centerW;
        this.pcm_returned = i;
        this.centerW = i - ((info.blocksizes[this.W] / 4) + (info.blocksizes[this.lW] / 4));
        this.granulepos = -1L;
        this.sequence = -1L;
    }

    public int synthesis_blockin(Block block) {
        int i;
        int i2;
        if (this.centerW > this.vi.blocksizes[1] / 2 && this.pcm_returned > 8192) {
            int i3 = this.centerW - (this.vi.blocksizes[1] / 2);
            int i4 = this.pcm_returned;
            if (i4 < i3) {
                i3 = i4;
            }
            this.pcm_current -= i3;
            this.centerW -= i3;
            this.pcm_returned = i4 - i3;
            if (i3 != 0) {
                for (int i5 = 0; i5 < this.vi.channels; i5++) {
                    float[] fArr = this.pcm[i5];
                    System.arraycopy(fArr, i3, fArr, 0, this.pcm_current);
                }
            }
        }
        this.lW = this.W;
        this.W = block.W;
        this.nW = -1;
        this.glue_bits += (long) block.glue_bits;
        this.time_bits += (long) block.time_bits;
        this.floor_bits += (long) block.floor_bits;
        this.res_bits += (long) block.res_bits;
        if (this.sequence + 1 != block.sequence) {
            this.granulepos = -1L;
        }
        this.sequence = block.sequence;
        int i6 = this.vi.blocksizes[this.W];
        int i7 = this.centerW + (this.vi.blocksizes[this.lW] / 4) + (i6 / 4);
        int i8 = i7 - (i6 / 2);
        int i9 = i8 + i6;
        if (i9 > this.pcm_storage) {
            this.pcm_storage = this.vi.blocksizes[1] + i9;
            for (int i10 = 0; i10 < this.vi.channels; i10++) {
                float[] fArr2 = new float[this.pcm_storage];
                float[] fArr3 = this.pcm[i10];
                System.arraycopy(fArr3, 0, fArr2, 0, fArr3.length);
                this.pcm[i10] = fArr2;
            }
        }
        int i11 = this.W;
        if (i11 == 0) {
            i = this.vi.blocksizes[0] / 2;
            i2 = 0;
        } else if (i11 != 1) {
            i2 = 0;
            i = 0;
        } else {
            i2 = (this.vi.blocksizes[1] / 4) - (this.vi.blocksizes[this.lW] / 4);
            i = (this.vi.blocksizes[this.lW] / 2) + i2;
        }
        for (int i12 = 0; i12 < this.vi.channels; i12++) {
            int i13 = i2;
            while (i13 < i) {
                float[] fArr4 = this.pcm[i12];
                int i14 = i8 + i13;
                fArr4[i14] = fArr4[i14] + block.pcm[i12][i13];
                i13++;
            }
            while (i13 < i6) {
                this.pcm[i12][i8 + i13] = block.pcm[i12][i13];
                i13++;
            }
        }
        long j = this.granulepos;
        if (j == -1) {
            this.granulepos = block.granulepos;
        } else {
            this.granulepos = j + ((long) (i7 - this.centerW));
            if (block.granulepos != -1 && this.granulepos != block.granulepos) {
                if (this.granulepos > block.granulepos && block.eofflag != 0) {
                    i7 = (int) (((long) i7) - (this.granulepos - block.granulepos));
                }
                this.granulepos = block.granulepos;
            }
        }
        this.centerW = i7;
        this.pcm_current = i9;
        if (block.eofflag == 0) {
            return 0;
        }
        this.eofflag = 1;
        return 0;
    }

    public int synthesis_pcmout(float[][][] fArr, int[] iArr) {
        if (this.pcm_returned >= this.centerW) {
            return 0;
        }
        if (fArr != null) {
            for (int i = 0; i < this.vi.channels; i++) {
                iArr[i] = this.pcm_returned;
            }
            fArr[0] = this.pcm;
        }
        return this.centerW - this.pcm_returned;
    }

    public int synthesis_read(int i) {
        if (i != 0 && this.pcm_returned + i > this.centerW) {
            return -1;
        }
        this.pcm_returned += i;
        return 0;
    }
}
