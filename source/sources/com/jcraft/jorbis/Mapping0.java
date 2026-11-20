package com.jcraft.jorbis;

import com.jcraft.jogg.Buffer;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
class Mapping0 extends FuncMapping {
    static int seq;
    float[][] pcmbundle = null;
    int[] zerobundle = null;
    int[] nonzero = null;
    Object[] floormemo = null;

    @Override // com.jcraft.jorbis.FuncMapping
    void free_info(Object obj) {
    }

    @Override // com.jcraft.jorbis.FuncMapping
    void free_look(Object obj) {
    }

    Mapping0() {
    }

    @Override // com.jcraft.jorbis.FuncMapping
    Object look(DspState dspState, InfoMode infoMode, Object obj) {
        Info info = dspState.vi;
        LookMapping0 lookMapping0 = new LookMapping0();
        InfoMapping0 infoMapping0 = (InfoMapping0) obj;
        lookMapping0.map = infoMapping0;
        lookMapping0.mode = infoMode;
        lookMapping0.time_look = new Object[infoMapping0.submaps];
        lookMapping0.floor_look = new Object[infoMapping0.submaps];
        lookMapping0.residue_look = new Object[infoMapping0.submaps];
        lookMapping0.time_func = new FuncTime[infoMapping0.submaps];
        lookMapping0.floor_func = new FuncFloor[infoMapping0.submaps];
        lookMapping0.residue_func = new FuncResidue[infoMapping0.submaps];
        for (int i = 0; i < infoMapping0.submaps; i++) {
            int i2 = infoMapping0.timesubmap[i];
            int i3 = infoMapping0.floorsubmap[i];
            int i4 = infoMapping0.residuesubmap[i];
            lookMapping0.time_func[i] = FuncTime.time_P[info.time_type[i2]];
            lookMapping0.time_look[i] = lookMapping0.time_func[i].look(dspState, infoMode, info.time_param[i2]);
            lookMapping0.floor_func[i] = FuncFloor.floor_P[info.floor_type[i3]];
            lookMapping0.floor_look[i] = lookMapping0.floor_func[i].look(dspState, infoMode, info.floor_param[i3]);
            lookMapping0.residue_func[i] = FuncResidue.residue_P[info.residue_type[i4]];
            lookMapping0.residue_look[i] = lookMapping0.residue_func[i].look(dspState, infoMode, info.residue_param[i4]);
        }
        if (info.psys != 0) {
            int i5 = dspState.analysisp;
        }
        lookMapping0.ch = info.channels;
        return lookMapping0;
    }

    @Override // com.jcraft.jorbis.FuncMapping
    void pack(Info info, Object obj, Buffer buffer) {
        InfoMapping0 infoMapping0 = (InfoMapping0) obj;
        if (infoMapping0.submaps > 1) {
            buffer.write(1, 1);
            buffer.write(infoMapping0.submaps - 1, 4);
        } else {
            buffer.write(0, 1);
        }
        if (infoMapping0.coupling_steps > 0) {
            buffer.write(1, 1);
            buffer.write(infoMapping0.coupling_steps - 1, 8);
            for (int i = 0; i < infoMapping0.coupling_steps; i++) {
                buffer.write(infoMapping0.coupling_mag[i], Util.ilog2(info.channels));
                buffer.write(infoMapping0.coupling_ang[i], Util.ilog2(info.channels));
            }
        } else {
            buffer.write(0, 1);
        }
        buffer.write(0, 2);
        if (infoMapping0.submaps > 1) {
            for (int i2 = 0; i2 < info.channels; i2++) {
                buffer.write(infoMapping0.chmuxlist[i2], 4);
            }
        }
        for (int i3 = 0; i3 < infoMapping0.submaps; i3++) {
            buffer.write(infoMapping0.timesubmap[i3], 8);
            buffer.write(infoMapping0.floorsubmap[i3], 8);
            buffer.write(infoMapping0.residuesubmap[i3], 8);
        }
    }

    @Override // com.jcraft.jorbis.FuncMapping
    Object unpack(Info info, Buffer buffer) {
        InfoMapping0 infoMapping0 = new InfoMapping0();
        if (buffer.read(1) != 0) {
            infoMapping0.submaps = buffer.read(4) + 1;
        } else {
            infoMapping0.submaps = 1;
        }
        if (buffer.read(1) != 0) {
            infoMapping0.coupling_steps = buffer.read(8) + 1;
            for (int i = 0; i < infoMapping0.coupling_steps; i++) {
                int[] iArr = infoMapping0.coupling_mag;
                int i2 = buffer.read(Util.ilog2(info.channels));
                iArr[i] = i2;
                int[] iArr2 = infoMapping0.coupling_ang;
                int i3 = buffer.read(Util.ilog2(info.channels));
                iArr2[i] = i3;
                if (i2 < 0 || i3 < 0 || i2 == i3 || i2 >= info.channels || i3 >= info.channels) {
                    infoMapping0.free();
                    return null;
                }
            }
        }
        if (buffer.read(2) > 0) {
            infoMapping0.free();
            return null;
        }
        if (infoMapping0.submaps > 1) {
            for (int i4 = 0; i4 < info.channels; i4++) {
                infoMapping0.chmuxlist[i4] = buffer.read(4);
                if (infoMapping0.chmuxlist[i4] >= infoMapping0.submaps) {
                    infoMapping0.free();
                    return null;
                }
            }
        }
        for (int i5 = 0; i5 < infoMapping0.submaps; i5++) {
            infoMapping0.timesubmap[i5] = buffer.read(8);
            if (infoMapping0.timesubmap[i5] >= info.times) {
                infoMapping0.free();
                return null;
            }
            infoMapping0.floorsubmap[i5] = buffer.read(8);
            if (infoMapping0.floorsubmap[i5] >= info.floors) {
                infoMapping0.free();
                return null;
            }
            infoMapping0.residuesubmap[i5] = buffer.read(8);
            if (infoMapping0.residuesubmap[i5] >= info.residues) {
                infoMapping0.free();
                return null;
            }
        }
        return infoMapping0;
    }

    @Override // com.jcraft.jorbis.FuncMapping
    synchronized int inverse(Block block, Object obj) {
        DspState dspState = block.vd;
        Info info = dspState.vi;
        LookMapping0 lookMapping0 = (LookMapping0) obj;
        InfoMapping0 infoMapping0 = lookMapping0.map;
        InfoMode infoMode = lookMapping0.mode;
        int i = info.blocksizes[block.W];
        block.pcmend = i;
        float[] fArr = dspState.window[block.W][block.lW][block.nW][infoMode.windowtype];
        float[][] fArr2 = this.pcmbundle;
        if (fArr2 == null || fArr2.length < info.channels) {
            this.pcmbundle = new float[info.channels][];
            this.nonzero = new int[info.channels];
            this.zerobundle = new int[info.channels];
            this.floormemo = new Object[info.channels];
        }
        for (int i2 = 0; i2 < info.channels; i2++) {
            float[] fArr3 = block.pcm[i2];
            int i3 = infoMapping0.chmuxlist[i2];
            this.floormemo[i2] = lookMapping0.floor_func[i3].inverse1(block, lookMapping0.floor_look[i3], this.floormemo[i2]);
            if (this.floormemo[i2] != null) {
                this.nonzero[i2] = 1;
            } else {
                this.nonzero[i2] = 0;
            }
            for (int i4 = 0; i4 < i / 2; i4++) {
                fArr3[i4] = 0.0f;
            }
        }
        for (int i5 = 0; i5 < infoMapping0.coupling_steps; i5++) {
            if (this.nonzero[infoMapping0.coupling_mag[i5]] != 0 || this.nonzero[infoMapping0.coupling_ang[i5]] != 0) {
                this.nonzero[infoMapping0.coupling_mag[i5]] = 1;
                this.nonzero[infoMapping0.coupling_ang[i5]] = 1;
            }
        }
        for (int i6 = 0; i6 < infoMapping0.submaps; i6++) {
            int i7 = 0;
            for (int i8 = 0; i8 < info.channels; i8++) {
                if (infoMapping0.chmuxlist[i8] == i6) {
                    if (this.nonzero[i8] != 0) {
                        this.zerobundle[i7] = 1;
                    } else {
                        this.zerobundle[i7] = 0;
                    }
                    this.pcmbundle[i7] = block.pcm[i8];
                    i7++;
                }
            }
            lookMapping0.residue_func[i6].inverse(block, lookMapping0.residue_look[i6], this.pcmbundle, this.zerobundle, i7);
        }
        for (int i9 = infoMapping0.coupling_steps - 1; i9 >= 0; i9--) {
            float[] fArr4 = block.pcm[infoMapping0.coupling_mag[i9]];
            float[] fArr5 = block.pcm[infoMapping0.coupling_ang[i9]];
            for (int i10 = 0; i10 < i / 2; i10++) {
                float f = fArr4[i10];
                float f2 = fArr5[i10];
                if (f > 0.0f) {
                    if (f2 > 0.0f) {
                        fArr4[i10] = f;
                        fArr5[i10] = f - f2;
                    } else {
                        fArr5[i10] = f;
                        fArr4[i10] = f + f2;
                    }
                } else if (f2 > 0.0f) {
                    fArr4[i10] = f;
                    fArr5[i10] = f + f2;
                } else {
                    fArr5[i10] = f;
                    fArr4[i10] = f - f2;
                }
            }
        }
        for (int i11 = 0; i11 < info.channels; i11++) {
            float[] fArr6 = block.pcm[i11];
            int i12 = infoMapping0.chmuxlist[i11];
            lookMapping0.floor_func[i12].inverse2(block, lookMapping0.floor_look[i12], this.floormemo[i11], fArr6);
        }
        for (int i13 = 0; i13 < info.channels; i13++) {
            float[] fArr7 = block.pcm[i13];
            ((Mdct) dspState.transform[block.W][0]).backward(fArr7, fArr7);
        }
        for (int i14 = 0; i14 < info.channels; i14++) {
            float[] fArr8 = block.pcm[i14];
            if (this.nonzero[i14] != 0) {
                for (int i15 = 0; i15 < i; i15++) {
                    fArr8[i15] = fArr8[i15] * fArr[i15];
                }
            } else {
                for (int i16 = 0; i16 < i; i16++) {
                    fArr8[i16] = 0.0f;
                }
            }
        }
        return 0;
    }

    class InfoMapping0 {
        int coupling_steps;
        int submaps;
        int[] chmuxlist = new int[Keyboard.KEYBOARD_SIZE];
        int[] timesubmap = new int[16];
        int[] floorsubmap = new int[16];
        int[] residuesubmap = new int[16];
        int[] psysubmap = new int[16];
        int[] coupling_mag = new int[Keyboard.KEYBOARD_SIZE];
        int[] coupling_ang = new int[Keyboard.KEYBOARD_SIZE];

        InfoMapping0() {
        }

        void free() {
            this.chmuxlist = null;
            this.timesubmap = null;
            this.floorsubmap = null;
            this.residuesubmap = null;
            this.psysubmap = null;
            this.coupling_mag = null;
            this.coupling_ang = null;
        }
    }

    class LookMapping0 {
        int ch;
        float[][] decay;
        FuncFloor[] floor_func;
        Object[] floor_look;
        Object[] floor_state;
        int lastframe;
        InfoMapping0 map;
        InfoMode mode;
        PsyLook[] psy_look;
        FuncResidue[] residue_func;
        Object[] residue_look;
        FuncTime[] time_func;
        Object[] time_look;

        LookMapping0() {
        }
    }
}
