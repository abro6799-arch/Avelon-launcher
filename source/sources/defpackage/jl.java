package defpackage;

import android.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class jl {
    public static vr[] D;
    public static vr[] E;
    public static vr[] F;
    private static boolean G;
    private static boolean H;
    protected static Map a = new HashMap();
    public static List b = new ArrayList();
    public static List c = new ArrayList();
    public static List d = new ArrayList();
    public static List e = new ArrayList();
    public static vr f = new yd(1000, Cdo.a("stat.startGame")).h().g();
    public static vr g = new yd(1001, Cdo.a("stat.createWorld")).h().g();
    public static vr h = new yd(1002, Cdo.a("stat.loadWorld")).h().g();
    public static vr i = new yd(1003, Cdo.a("stat.joinMultiplayer")).h().g();
    public static vr j = new yd(1004, Cdo.a("stat.leaveGame")).h().g();
    public static vr k = new yd(1100, Cdo.a("stat.playOneMinute"), vr.j).h().g();
    public static vr l = new yd(2000, Cdo.a("stat.walkOneCm"), vr.k).h().g();
    public static vr m = new yd(2001, Cdo.a("stat.swimOneCm"), vr.k).h().g();
    public static vr n = new yd(2002, Cdo.a("stat.fallOneCm"), vr.k).h().g();
    public static vr o = new yd(2003, Cdo.a("stat.climbOneCm"), vr.k).h().g();
    public static vr p = new yd(2004, Cdo.a("stat.flyOneCm"), vr.k).h().g();
    public static vr q = new yd(2005, Cdo.a("stat.diveOneCm"), vr.k).h().g();
    public static vr r = new yd(2006, Cdo.a("stat.minecartOneCm"), vr.k).h().g();
    public static vr s = new yd(2007, Cdo.a("stat.boatOneCm"), vr.k).h().g();
    public static vr t = new yd(2008, Cdo.a("stat.pigOneCm"), vr.k).h().g();
    public static vr u = new yd(2010, Cdo.a("stat.jump")).h().g();
    public static vr v = new yd(2011, Cdo.a("stat.drop")).h().g();
    public static vr w = new yd(2020, Cdo.a("stat.damageDealt")).g();
    public static vr x = new yd(2021, Cdo.a("stat.damageTaken")).g();
    public static vr y = new yd(2022, Cdo.a("stat.deaths")).g();
    public static vr z = new yd(2023, Cdo.a("stat.mobKills")).g();
    public static vr A = new yd(2024, Cdo.a("stat.playerKills")).g();
    public static vr B = new yd(2025, Cdo.a("stat.fishCaught")).g();
    public static vr[] C = a("stat.mineBlock", 16777216);

    public static void a() {
    }

    static {
        ep.a();
        G = false;
        H = false;
    }

    public static void b() {
        E = a(E, "stat.useItem", R.id.background, 0, uu.m.length);
        F = b(F, "stat.breakItem", R.style.Animation, 0, uu.m.length);
        G = true;
        d();
    }

    public static void c() {
        E = a(E, "stat.useItem", R.id.background, uu.m.length, 32000);
        F = b(F, "stat.breakItem", R.style.Animation, uu.m.length, 32000);
        H = true;
        d();
    }

    public static void d() {
        if (G && H) {
            HashSet<Integer> hashSet = new HashSet();
            Iterator it = hk.a().b().iterator();
            while (it.hasNext()) {
                hashSet.add(Integer.valueOf(((dt) it.next()).b().c));
            }
            Iterator it2 = ey.a().b().values().iterator();
            while (it2.hasNext()) {
                hashSet.add(Integer.valueOf(((iz) it2.next()).c));
            }
            D = new vr[32000];
            for (Integer num : hashSet) {
                if (gm.c[num.intValue()] != null) {
                    D[num.intValue()] = new tw(num.intValue() + R.attr.theme, Cdo.a("stat.craftItem", gm.c[num.intValue()].k()), num.intValue()).g();
                }
            }
            a(D);
        }
    }

    private static vr[] a(String str, int i2) {
        vr[] vrVarArr = new vr[Keyboard.KEYBOARD_SIZE];
        for (int i3 = 0; i3 < 256; i3++) {
            if (uu.m[i3] != null && uu.m[i3].p()) {
                vr vrVarG = new tw(i2 + i3, Cdo.a(str, uu.m[i3].n()), i3).g();
                vrVarArr[i3] = vrVarG;
                e.add((tw) vrVarG);
            }
        }
        a(vrVarArr);
        return vrVarArr;
    }

    private static vr[] a(vr[] vrVarArr, String str, int i2, int i3, int i4) {
        if (vrVarArr == null) {
            vrVarArr = new vr[32000];
        }
        while (i3 < i4) {
            if (gm.c[i3] != null) {
                vrVarArr[i3] = new tw(i2 + i3, Cdo.a(str, gm.c[i3].k()), i3).g();
                if (i3 >= uu.m.length) {
                    d.add((tw) vrVarArr[i3]);
                }
            }
            i3++;
        }
        a(vrVarArr);
        return vrVarArr;
    }

    private static vr[] b(vr[] vrVarArr, String str, int i2, int i3, int i4) {
        if (vrVarArr == null) {
            vrVarArr = new vr[32000];
        }
        while (i3 < i4) {
            if (gm.c[i3] != null && gm.c[i3].g()) {
                vrVarArr[i3] = new tw(i2 + i3, Cdo.a(str, gm.c[i3].k()), i3).g();
            }
            i3++;
        }
        a(vrVarArr);
        return vrVarArr;
    }

    private static void a(vr[] vrVarArr) {
        a(vrVarArr, uu.C.bn, uu.B.bn);
        a(vrVarArr, uu.E.bn, uu.E.bn);
        a(vrVarArr, uu.bg.bn, uu.bb.bn);
        a(vrVarArr, uu.aD.bn, uu.aC.bn);
        a(vrVarArr, uu.aP.bn, uu.aO.bn);
        a(vrVarArr, uu.bj.bn, uu.bi.bn);
        a(vrVarArr, uu.aR.bn, uu.aQ.bn);
        a(vrVarArr, uu.ah.bn, uu.ag.bn);
        a(vrVarArr, uu.ak.bn, uu.al.bn);
        a(vrVarArr, uu.v.bn, uu.w.bn);
        a(vrVarArr, uu.aB.bn, uu.w.bn);
    }

    private static void a(vr[] vrVarArr, int i2, int i3) {
        vr vrVar = vrVarArr[i2];
        if (vrVar != null && vrVarArr[i3] == null) {
            vrVarArr[i3] = vrVar;
            return;
        }
        b.remove(vrVar);
        e.remove(vrVarArr[i2]);
        c.remove(vrVarArr[i2]);
        vrVarArr[i2] = vrVarArr[i3];
    }

    public static vr a(int i2) {
        return (vr) a.get(Integer.valueOf(i2));
    }
}
