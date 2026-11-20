package com.jcraft.jorbis;

/* JADX INFO: loaded from: classes.dex */
class Residue1 extends Residue0 {
    Residue1() {
    }

    @Override // com.jcraft.jorbis.Residue0, com.jcraft.jorbis.FuncResidue
    int inverse(Block block, Object obj, float[][] fArr, int[] iArr, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] != 0) {
                fArr[i2] = fArr[i3];
                i2++;
            }
        }
        if (i2 != 0) {
            return _01inverse(block, obj, fArr, i2, 1);
        }
        return 0;
    }
}
