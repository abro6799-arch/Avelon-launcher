package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ep {
    public static int a;
    public static int b;
    public static int c;
    public static int d;
    public static List e = new ArrayList();
    public static ny f = new ny(0, "openInventory", 0, 0, gm.aJ, (ny) null).h().g();
    public static ny g = new ny(1, "mineWood", 2, 1, uu.K, f).g();
    public static ny h = new ny(2, "buildWorkBench", 4, -1, uu.az, g).g();
    public static ny i = new ny(3, "buildPickaxe", 4, 2, gm.r, h).g();
    public static ny j = new ny(4, "buildFurnace", 3, 4, uu.aD, i).g();
    public static ny k = new ny(5, "acquireIron", 1, 4, gm.m, j).g();
    public static ny l = new ny(6, "buildHoe", 2, -3, gm.L, h).g();
    public static ny m = new ny(7, "makeBread", -1, -3, gm.S, l).g();
    public static ny n = new ny(8, "bakeCake", 0, -5, gm.aX, l).g();
    public static ny o = new ny(9, "buildBetterPickaxe", 6, 2, gm.v, i).g();
    public static ny p = new ny(10, "cookFish", 2, 6, gm.aT, j).g();
    public static ny q = new ny(11, "onARail", 2, 3, uu.aH, k).b().g();
    public static ny r = new ny(12, "buildSword", 6, -1, gm.p, h).g();
    public static ny s = new ny(13, "killEnemy", 8, -1, gm.aV, r).g();
    public static ny t = new ny(14, "killCow", 7, -3, gm.aD, r).g();
    public static ny u = new ny(15, "flyPig", 8, -4, gm.ay, t).b().g();

    public static void a() {
    }

    static {
        System.out.println(e.size() + " achievements");
    }
}
