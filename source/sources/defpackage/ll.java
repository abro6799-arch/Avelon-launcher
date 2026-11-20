package defpackage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class ll {
    public static ll a = new ll();
    public static double b;
    public static double c;
    public static double d;
    public ji e;
    public fd f;
    public ls g;
    public float h;
    public float i;
    public double j;
    public double k;
    public double l;
    private Map m;
    private sj n;

    private ll() {
        HashMap map = new HashMap();
        this.m = map;
        map.put(yk.class, new po());
        this.m.put(cy.class, new ag());
        this.m.put(uk.class, new hy());
        Iterator it = this.m.values().iterator();
        while (it.hasNext()) {
            ((je) it.next()).a(this);
        }
    }

    public je a(Class cls) {
        je jeVar = (je) this.m.get(cls);
        if (jeVar != null || cls == ow.class) {
            return jeVar;
        }
        je jeVarA = a(cls.getSuperclass());
        this.m.put(cls, jeVarA);
        return jeVarA;
    }

    public boolean a(ow owVar) {
        return b(owVar) != null;
    }

    public je b(ow owVar) {
        if (owVar == null) {
            return null;
        }
        return a(owVar.getClass());
    }

    public void a(fd fdVar, ji jiVar, sj sjVar, ls lsVar, float f) {
        if (this.f != fdVar) {
            a(fdVar);
        }
        this.e = jiVar;
        this.g = lsVar;
        this.n = sjVar;
        this.h = lsVar.aU + ((lsVar.aS - lsVar.aU) * f);
        this.i = lsVar.aV + ((lsVar.aT - lsVar.aV) * f);
        double d2 = f;
        this.j = lsVar.bl + ((lsVar.aM - lsVar.bl) * d2);
        this.k = lsVar.bm + ((lsVar.aN - lsVar.bm) * d2);
        this.l = lsVar.bn + ((lsVar.aO - lsVar.bn) * d2);
    }

    public void a(ow owVar, float f) {
        if (owVar.a(this.j, this.k, this.l) < 4096.0d) {
            float fC = this.f.c(owVar.e, owVar.f, owVar.g);
            GL11.glColor3f(fC, fC, fC);
            a(owVar, ((double) owVar.e) - b, ((double) owVar.f) - c, ((double) owVar.g) - d, f);
        }
    }

    public void a(ow owVar, double d2, double d3, double d4, float f) {
        je jeVarB = b(owVar);
        if (jeVarB != null) {
            jeVarB.a(owVar, d2, d3, d4, f);
        }
    }

    public void a(fd fdVar) {
        this.f = fdVar;
        for (je jeVar : this.m.values()) {
            if (jeVar != null) {
                jeVar.a(fdVar);
            }
        }
    }

    public sj a() {
        return this.n;
    }
}
