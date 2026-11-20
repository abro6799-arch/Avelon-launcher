package com.jcraft.jorbis;

import com.jcraft.jogg.Buffer;

/* JADX INFO: loaded from: classes.dex */
abstract class FuncMapping {
    public static FuncMapping[] mapping_P = {new Mapping0()};

    abstract void free_info(Object obj);

    abstract void free_look(Object obj);

    abstract int inverse(Block block, Object obj);

    abstract Object look(DspState dspState, InfoMode infoMode, Object obj);

    abstract void pack(Info info, Object obj, Buffer buffer);

    abstract Object unpack(Info info, Buffer buffer);

    FuncMapping() {
    }
}
