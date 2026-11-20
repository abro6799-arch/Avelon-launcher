package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class z {
    private String[][] a = {new String[]{"XXX", "X X"}, new String[]{"X X", "XXX", "XXX"}, new String[]{"XXX", "X X", "X X"}, new String[]{"X X", "X X"}};
    private Object[][] b = {new Object[]{gm.aD, uu.as, gm.m, gm.l, gm.n}, new Object[]{gm.T, gm.X, gm.ab, gm.af, gm.aj}, new Object[]{gm.U, gm.Y, gm.ac, gm.ag, gm.ak}, new Object[]{gm.V, gm.Z, gm.ad, gm.ah, gm.al}, new Object[]{gm.W, gm.aa, gm.ae, gm.ai, gm.am}};

    public void a(hk hkVar) {
        int i = 0;
        while (true) {
            Object[] objArr = this.b[0];
            if (i >= objArr.length) {
                return;
            }
            Object obj = objArr[i];
            int i2 = 0;
            while (true) {
                Object[][] objArr2 = this.b;
                if (i2 < objArr2.length - 1) {
                    int i3 = i2 + 1;
                    hkVar.a(new iz((gm) objArr2[i3][i]), this.a[i2], 'X', obj);
                    i2 = i3;
                }
            }
            i++;
        }
    }
}
