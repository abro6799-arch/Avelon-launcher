package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ha {
    private String[][] a = {new String[]{"XXX", " # ", " # "}, new String[]{"X", "#", "#"}, new String[]{"XX", "X#", " #"}, new String[]{"XX", " #", " #"}};
    private Object[][] b = {new Object[]{uu.y, uu.x, gm.m, gm.l, gm.n}, new Object[]{gm.r, gm.v, gm.e, gm.z, gm.G}, new Object[]{gm.q, gm.u, gm.d, gm.y, gm.F}, new Object[]{gm.s, gm.w, gm.f, gm.A, gm.H}, new Object[]{gm.L, gm.M, gm.N, gm.O, gm.P}};

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
                hkVar.a(new iz(gm.bc), " #", "# ", '#', gm.m);
                return;
            }
        }
    }
}
