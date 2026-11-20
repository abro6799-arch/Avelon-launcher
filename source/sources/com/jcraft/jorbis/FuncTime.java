package com.jcraft.jorbis;

import com.jcraft.jogg.Buffer;

/* JADX INFO: loaded from: classes.dex */
abstract class FuncTime {
    public static FuncTime[] time_P = {new Time0()};

    abstract void free_info(Object obj);

    abstract void free_look(Object obj);

    abstract int inverse(Block block, Object obj, float[] fArr, float[] fArr2);

    abstract Object look(DspState dspState, InfoMode infoMode, Object obj);

    abstract void pack(Object obj, Buffer buffer);

    abstract Object unpack(Info info, Buffer buffer);

    FuncTime() {
    }
}
