package com.jcraft.jorbis;

/* JADX INFO: loaded from: classes.dex */
class Residue2 extends Residue0 {
    Residue2() {
    }

    @Override // com.jcraft.jorbis.Residue0, com.jcraft.jorbis.FuncResidue
    int inverse(Block block, Object obj, float[][] fArr, int[] iArr, int i) {
        int i2 = 0;
        while (i2 < i && iArr[i2] == 0) {
            i2++;
        }
        if (i2 == i) {
            return 0;
        }
        return _2inverse(block, obj, fArr, i);
    }
}
