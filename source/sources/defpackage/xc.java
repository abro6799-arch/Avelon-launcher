package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class xc {
    private String[][] a = {new String[]{"X", "X", "#"}};
    private Object[][] b = {new Object[]{uu.y, uu.x, gm.m, gm.l, gm.n}, new Object[]{gm.p, gm.t, gm.o, gm.x, gm.E}};

    public void a(hk hkVar) {
        int i = 0;
        while (true) {
            Object[] objArr = this.b[0];
            if (i < objArr.length) {
                Object obj = objArr[i];
                int i2 = 0;
                while (true) {
                    Object[][] objArr2 = this.b;
                    if (i2 < objArr2.length - 1) {
                        int i3 = i2 + 1;
                        hkVar.a(new iz((gm) objArr2[i3][i]), this.a[i2], '#', gm.B, 'X', obj);
                        i2 = i3;
                    }
                }
                i++;
            } else {
                hkVar.a(new iz(gm.i, 1), " #X", "# X", " #X", 'X', gm.I, '#', gm.B);
                hkVar.a(new iz(gm.j, 4), "X", "#", "Y", 'Y', gm.J, 'X', gm.an, '#', gm.B);
                return;
            }
        }
    }
}
