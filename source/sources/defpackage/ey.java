package defpackage;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ey {
    private static final ey a = new ey();
    private Map b = new HashMap();

    public static final ey a() {
        return a;
    }

    private ey() {
        a(uu.I.bn, new iz(gm.m));
        a(uu.H.bn, new iz(gm.n));
        a(uu.ax.bn, new iz(gm.l));
        a(uu.F.bn, new iz(uu.N));
        a(gm.ao.bf, new iz(gm.ap));
        a(gm.aS.bf, new iz(gm.aT));
        a(uu.x.bn, new iz(uu.u));
        a(gm.aG.bf, new iz(gm.aF));
        a(uu.aW.bn, new iz(gm.aU, 1, 2));
        a(uu.K.bn, new iz(gm.k, 1, 1));
    }

    public void a(int i, iz izVar) {
        this.b.put(Integer.valueOf(i), izVar);
    }

    public iz a(int i) {
        return (iz) this.b.get(Integer.valueOf(i));
    }

    public Map b() {
        return this.b;
    }
}
