package com.jcraft.jorbis;

import com.jcraft.jogg.Buffer;

/* JADX INFO: loaded from: classes.dex */
abstract class FuncFloor {
    public static FuncFloor[] floor_P = {new Floor0(), new Floor1()};

    abstract int forward(Block block, Object obj, float[] fArr, float[] fArr2, Object obj2);

    abstract void free_info(Object obj);

    abstract void free_look(Object obj);

    abstract void free_state(Object obj);

    abstract Object inverse1(Block block, Object obj, Object obj2);

    abstract int inverse2(Block block, Object obj, Object obj2, float[] fArr);

    abstract Object look(DspState dspState, InfoMode infoMode, Object obj);

    abstract void pack(Object obj, Buffer buffer);

    abstract Object unpack(Info info, Buffer buffer);

    FuncFloor() {
    }
}
