package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class tp {
    private Object[][] a = {new Object[]{uu.ai, new iz(gm.n, 9)}, new Object[]{uu.aj, new iz(gm.m, 9)}, new Object[]{uu.ay, new iz(gm.l, 9)}, new Object[]{uu.P, new iz(gm.aU, 9, 4)}};

    public void a(hk hkVar) {
        int i = 0;
        while (true) {
            Object[][] objArr = this.a;
            if (i >= objArr.length) {
                return;
            }
            Object[] objArr2 = objArr[i];
            uu uuVar = (uu) objArr2[0];
            iz izVar = (iz) objArr2[1];
            hkVar.a(new iz(uuVar), "###", "###", "###", '#', izVar);
            hkVar.a(izVar, "#", '#', uuVar);
            i++;
        }
    }
}
