package defpackage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class th {
    public static th a = new th();
    public static double b;
    public static double c;
    public static double d;
    public ji e;
    public ra f;
    public fd g;
    public ls h;
    public float i;
    public float j;
    public kv k;
    public double l;
    public double m;
    public double n;
    private Map o;
    private sj p;

    private th() {
        HashMap map = new HashMap();
        this.o = map;
        map.put(cn.class, new yx());
        this.o.put(wh.class, new me(new eh(), new eh(0.5f), 0.7f));
        this.o.put(dl.class, new xy(new mw(), new ea(), 0.7f));
        this.o.put(bx.class, new va(new hh(), 0.7f));
        this.o.put(gi.class, new we(new o(), 0.5f));
        this.o.put(ww.class, new ip(new td(), 0.3f));
        this.o.put(gb.class, new m());
        this.o.put(fr.class, new v(new lc(), 0.5f));
        this.o.put(uz.class, new v(new ej(), 0.5f));
        this.o.put(uw.class, new mj(new no(16), new no(0), 0.25f));
        this.o.put(gs.class, new ds());
        this.o.put(nt.class, new yg(new ej(), 0.5f, 6.0f));
        this.o.put(bp.class, new pq());
        this.o.put(xt.class, new es(new wn(), 0.7f));
        this.o.put(ls.class, new gv(new fh(), 0.5f));
        this.o.put(sn.class, new mb());
        this.o.put(qv.class, new dy());
        this.o.put(sl.class, new mc());
        this.o.put(by.class, new dg(gm.aB.a(0)));
        this.o.put(vv.class, new dg(gm.aN.a(0)));
        this.o.put(cf.class, new kl());
        this.o.put(hl.class, new bb());
        this.o.put(qw.class, new on());
        this.o.put(ju.class, new gn());
        this.o.put(yl.class, new tb());
        this.o.put(fz.class, new fe());
        this.o.put(lx.class, new pl());
        this.o.put(c.class, new pi());
        Iterator it = this.o.values().iterator();
        while (it.hasNext()) {
            ((bw) it.next()).a(this);
        }
    }

    public bw a(Class cls) {
        bw bwVar = (bw) this.o.get(cls);
        if (bwVar != null || cls == sn.class) {
            return bwVar;
        }
        bw bwVarA = a(cls.getSuperclass());
        this.o.put(cls, bwVarA);
        return bwVarA;
    }

    public bw a(sn snVar) {
        return a(snVar.getClass());
    }

    public void a(fd fdVar, ji jiVar, sj sjVar, ls lsVar, kv kvVar, float f) {
        this.g = fdVar;
        this.e = jiVar;
        this.k = kvVar;
        this.h = lsVar;
        this.p = sjVar;
        if (lsVar.N()) {
            if (fdVar.a(in.b(lsVar.aM), in.b(lsVar.aN), in.b(lsVar.aO)) == uu.T.bn) {
                this.i = ((fdVar.e(in.b(lsVar.aM), in.b(lsVar.aN), in.b(lsVar.aO)) & 3) * 90) + 180;
                this.j = 0.0f;
            }
        } else {
            this.i = lsVar.aU + ((lsVar.aS - lsVar.aU) * f);
            this.j = lsVar.aV + ((lsVar.aT - lsVar.aV) * f);
        }
        double d2 = f;
        this.l = lsVar.bl + ((lsVar.aM - lsVar.bl) * d2);
        this.m = lsVar.bm + ((lsVar.aN - lsVar.bm) * d2);
        this.n = lsVar.bn + ((lsVar.aO - lsVar.bn) * d2);
    }

    public void a(sn snVar, float f) {
        double d2 = f;
        double d3 = snVar.bl + ((snVar.aM - snVar.bl) * d2);
        double d4 = snVar.bm + ((snVar.aN - snVar.bm) * d2);
        double d5 = snVar.bn + ((snVar.aO - snVar.bn) * d2);
        float f2 = snVar.aU + ((snVar.aS - snVar.aU) * f);
        float fA = snVar.a(f);
        GL11.glColor3f(fA, fA, fA);
        a(snVar, d3 - b, d4 - c, d5 - d, f2, f);
    }

    public void a(sn snVar, double d2, double d3, double d4, float f, float f2) {
        bw bwVarA = a(snVar);
        if (bwVarA != null) {
            bwVarA.a(snVar, d2, d3, d4, f, f2);
            bwVarA.b(snVar, d2, d3, d4, f, f2);
        }
    }

    public void a(fd fdVar) {
        this.g = fdVar;
    }

    public double a(double d2, double d3, double d4) {
        double d5 = d2 - this.l;
        double d6 = d3 - this.m;
        double d7 = d4 - this.n;
        return (d5 * d5) + (d6 * d6) + (d7 * d7);
    }

    public sj a() {
        return this.p;
    }
}
