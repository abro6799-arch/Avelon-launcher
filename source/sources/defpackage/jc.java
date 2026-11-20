package defpackage;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class jc {
    private static Map a = new HashMap();
    private static Map b = new HashMap();
    private static Map c = new HashMap();
    private static Map d = new HashMap();

    static {
        a(sl.class, "Arrow", 10);
        a(by.class, "Snowball", 11);
        a(hl.class, "Item", 1);
        a(qv.class, "Painting", 9);
        a(ls.class, "Mob", 48);
        a(gz.class, "Monster", 49);
        a(gb.class, "Creeper", 50);
        a(fr.class, "Skeleton", 51);
        a(cn.class, "Spider", 52);
        a(nt.class, "Giant", 53);
        a(uz.class, "Zombie", 54);
        a(uw.class, "Slime", 55);
        a(bp.class, "Ghast", 56);
        a(ya.class, "PigZombie", 57);
        a(wh.class, "Pig", 90);
        a(dl.class, "Sheep", 91);
        a(bx.class, "Cow", 92);
        a(ww.class, "Chicken", 93);
        a(xt.class, "Squid", 94);
        a(gi.class, "Wolf", 95);
        a(qw.class, "PrimedTnt", 20);
        a(ju.class, "FallingSand", 21);
        a(yl.class, "Minecart", 40);
        a(fz.class, "Boat", 41);
    }

    private static void a(Class cls, String str, int i) {
        a.put(str, cls);
        b.put(cls, str);
        c.put(Integer.valueOf(i), cls);
        d.put(cls, Integer.valueOf(i));
    }

    public static sn a(String str, fd fdVar) {
        try {
            Class cls = (Class) a.get(str);
            if (cls != null) {
                return (sn) cls.getConstructor(fd.class).newInstance(fdVar);
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static sn a(nu nuVar, fd fdVar) {
        sn snVar = null;
        try {
            Class cls = (Class) a.get(nuVar.i("id"));
            if (cls != null) {
                snVar = (sn) cls.getConstructor(fd.class).newInstance(fdVar);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (snVar != null) {
            snVar.e(nuVar);
        } else {
            System.out.println("Skipping Entity with id " + nuVar.i("id"));
        }
        return snVar;
    }

    public static sn a(int i, fd fdVar) {
        sn snVar = null;
        try {
            Class cls = (Class) c.get(Integer.valueOf(i));
            if (cls != null) {
                snVar = (sn) cls.getConstructor(fd.class).newInstance(fdVar);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (snVar == null) {
            System.out.println("Skipping Entity with id " + i);
        }
        return snVar;
    }

    public static int a(sn snVar) {
        return ((Integer) d.get(snVar.getClass())).intValue();
    }

    public static String b(sn snVar) {
        return (String) b.get(snVar.getClass());
    }
}
