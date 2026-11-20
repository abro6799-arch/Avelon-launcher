package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import mcshim.awt.Color;

/* JADX INFO: loaded from: classes.dex */
public class kd {
    public static final kd a = new yj().b(588342).a("Rainforest").a(2094168);
    public static final kd b = new tf().b(522674).a("Swampland").a(9154376);
    public static final kd c = new kd().b(10215459).a("Seasonal Forest");
    public static final kd d = new rb().b(353825).a("Forest").a(5159473);
    public static final kd e = new fs().b(14278691).a("Savanna");
    public static final kd f = new kd().b(10595616).a("Shrubland");
    public static final kd g = new g().b(3060051).a("Taiga").b().a(8107825);
    public static final kd h = new fs().b(16421912).a("Desert").e();
    public static final kd i = new fs().b(16767248).a("Plains");
    public static final kd j = new fs().b(16772499).a("Ice Desert").b().e().a(12899129);
    public static final kd k = new kd().b(5762041).a("Tundra").b().a(12899129);
    public static final kd l = new t().b(16711680).a("Hell").e();
    public static final kd m = new ry().b(8421631).a("Sky").e();
    private static kd[] x = new kd[4096];
    public String n;
    public int o;
    private boolean v;
    public byte p = (byte) uu.v.bn;
    public byte q = (byte) uu.w.bn;
    public int r = 5169201;
    protected List s = new ArrayList();
    protected List t = new ArrayList();
    protected List u = new ArrayList();
    private boolean w = true;

    static {
        a();
    }

    protected kd() {
        this.s.add(new bj(cn.class, 10));
        this.s.add(new bj(uz.class, 10));
        this.s.add(new bj(fr.class, 10));
        this.s.add(new bj(gb.class, 10));
        this.s.add(new bj(uw.class, 10));
        this.t.add(new bj(dl.class, 12));
        this.t.add(new bj(wh.class, 10));
        this.t.add(new bj(ww.class, 10));
        this.t.add(new bj(bx.class, 8));
        this.u.add(new bj(xt.class, 10));
    }

    private kd e() {
        this.w = false;
        return this;
    }

    public static void a() {
        for (int i2 = 0; i2 < 64; i2++) {
            for (int i3 = 0; i3 < 64; i3++) {
                x[(i3 * 64) + i2] = a(i2 / 63.0f, i3 / 63.0f);
            }
        }
        kd kdVar = h;
        byte b2 = (byte) uu.F.bn;
        kdVar.q = b2;
        kdVar.p = b2;
        kd kdVar2 = j;
        byte b3 = (byte) uu.F.bn;
        kdVar2.q = b3;
        kdVar2.p = b3;
    }

    public pg a(Random random) {
        if (random.nextInt(10) == 0) {
            return new ih();
        }
        return new yh();
    }

    protected kd b() {
        this.v = true;
        return this;
    }

    protected kd a(String str) {
        this.n = str;
        return this;
    }

    protected kd a(int i2) {
        this.r = i2;
        return this;
    }

    protected kd b(int i2) {
        this.o = i2;
        return this;
    }

    public static kd a(double d2, double d3) {
        return x[((int) (d2 * 63.0d)) + (((int) (d3 * 63.0d)) * 64)];
    }

    public static kd a(float f2, float f3) {
        float f4 = f3 * f2;
        if (f2 < 0.1f) {
            return k;
        }
        if (f4 < 0.2f) {
            if (f2 < 0.5f) {
                return k;
            }
            if (f2 < 0.95f) {
                return e;
            }
            return h;
        }
        if (f4 > 0.5f && f2 < 0.7f) {
            return b;
        }
        if (f2 < 0.5f) {
            return g;
        }
        if (f2 < 0.97f) {
            if (f4 < 0.35f) {
                return f;
            }
            return d;
        }
        if (f4 < 0.45f) {
            return i;
        }
        if (f4 < 0.9f) {
            return c;
        }
        return a;
    }

    public int a(float f2) {
        float f3 = f2 / 3.0f;
        if (f3 < -1.0f) {
            f3 = -1.0f;
        }
        if (f3 > 1.0f) {
            f3 = 1.0f;
        }
        return Color.getHSBColor(0.62222224f - (0.05f * f3), (f3 * 0.1f) + 0.5f, 1.0f).getRGB();
    }

    public List a(lk lkVar) {
        if (lkVar == lk.monster) {
            return this.s;
        }
        if (lkVar == lk.creature) {
            return this.t;
        }
        if (lkVar == lk.waterCreature) {
            return this.u;
        }
        return null;
    }

    public boolean c() {
        return this.v;
    }

    public boolean d() {
        if (this.v) {
            return false;
        }
        return this.w;
    }
}
