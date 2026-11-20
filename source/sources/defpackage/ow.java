package defpackage;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ow {
    private static Map a = new HashMap();
    private static Map b = new HashMap();
    public fd d;
    public int e;
    public int f;
    public int g;
    protected boolean h;

    public void n_() {
    }

    static {
        a(sk.class, "Furnace");
        a(js.class, "Chest");
        a(eg.class, "RecordPlayer");
        a(az.class, "Trap");
        a(yk.class, "Sign");
        a(cy.class, "MobSpawner");
        a(tn.class, "Music");
        a(uk.class, "Piston");
    }

    private static void a(Class cls, String str) {
        if (b.containsKey(str)) {
            throw new IllegalArgumentException("Duplicate id: " + str);
        }
        a.put(str, cls);
        b.put(cls, str);
    }

    public void a(nu nuVar) {
        this.e = nuVar.e("x");
        this.f = nuVar.e("y");
        this.g = nuVar.e("z");
    }

    public void b(nu nuVar) {
        String str = (String) b.get(getClass());
        if (str == null) {
            throw new RuntimeException(getClass() + " is missing a mapping! This is a bug!");
        }
        nuVar.a("id", str);
        nuVar.a("x", this.e);
        nuVar.a("y", this.f);
        nuVar.a("z", this.g);
    }

    public static ow c(nu nuVar) {
        ow owVar = null;
        try {
            Class cls = (Class) a.get(nuVar.i("id"));
            if (cls != null) {
                owVar = (ow) cls.newInstance();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (owVar != null) {
            owVar.a(nuVar);
        } else {
            System.out.println("Skipping TileEntity with id " + nuVar.i("id"));
        }
        return owVar;
    }

    public int e() {
        return this.d.e(this.e, this.f, this.g);
    }

    public void y_() {
        fd fdVar = this.d;
        if (fdVar != null) {
            fdVar.b(this.e, this.f, this.g, this);
        }
    }

    public double a(double d, double d2, double d3) {
        double d4 = (((double) this.e) + 0.5d) - d;
        double d5 = (((double) this.f) + 0.5d) - d2;
        double d6 = (((double) this.g) + 0.5d) - d3;
        return (d4 * d4) + (d5 * d5) + (d6 * d6);
    }

    public uu f() {
        return uu.m[this.d.a(this.e, this.f, this.g)];
    }

    public boolean g() {
        return this.h;
    }

    public void i() {
        this.h = true;
    }

    public void j() {
        this.h = false;
    }
}
