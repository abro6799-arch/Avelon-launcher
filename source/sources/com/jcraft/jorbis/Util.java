package com.jcraft.jorbis;

/* JADX INFO: loaded from: classes.dex */
class Util {
    static int icount(int i) {
        int i2 = 0;
        while (i != 0) {
            i2 += i & 1;
            i >>>= 1;
        }
        return i2;
    }

    static int ilog(int i) {
        int i2 = 0;
        while (i != 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    static int ilog2(int i) {
        int i2 = 0;
        while (i > 1) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    Util() {
    }
}
