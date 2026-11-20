package com.jcraft.jorbis;

import com.jcraft.jogg.Buffer;

/* JADX INFO: loaded from: classes.dex */
abstract class FuncResidue {
    public static FuncResidue[] residue_P = {new Residue0(), new Residue1(), new Residue2()};

    abstract void free_info(Object obj);

    abstract void free_look(Object obj);

    abstract int inverse(Block block, Object obj, float[][] fArr, int[] iArr, int i);

    abstract Object look(DspState dspState, InfoMode infoMode, Object obj);

    abstract void pack(Object obj, Buffer buffer);

    abstract Object unpack(Info info, Buffer buffer);

    FuncResidue() {
    }
}
