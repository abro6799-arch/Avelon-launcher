package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public abstract class ki {
    private static Map a = new HashMap();
    private static Map b = new HashMap();
    private static Set c = new HashSet();
    private static Set d = new HashSet();
    private static HashMap e;
    private static int f;
    public final long j = System.currentTimeMillis();
    public boolean k = false;

    public abstract int a();

    public abstract void a(DataInputStream dataInputStream);

    public abstract void a(DataOutputStream dataOutputStream);

    public abstract void a(ti tiVar);

    static {
        a(0, true, true, lz.class);
        a(1, true, true, nz.class);
        a(2, true, true, mp.class);
        a(3, true, true, pe.class);
        a(4, true, false, hg.class);
        a(5, true, false, s.class);
        a(6, true, false, rc.class);
        a(7, false, true, a.class);
        a(8, true, false, eu.class);
        a(9, true, true, ox.class);
        a(10, true, true, ig.class);
        a(11, true, true, af.class);
        a(12, true, true, vh.class);
        a(13, true, true, ev.class);
        a(14, false, true, jv.class);
        a(15, false, true, gx.class);
        a(16, false, true, ho.class);
        a(17, true, false, jz.class);
        a(18, true, true, nm.class);
        a(19, false, true, ts.class);
        a(20, true, false, mf.class);
        a(21, true, false, nd.class);
        a(22, true, false, di.class);
        a(23, true, false, so.class);
        a(24, true, false, jm.class);
        a(25, true, false, vt.class);
        a(27, false, true, ql.class);
        a(28, true, false, gj.class);
        a(29, true, false, rv.class);
        a(30, true, false, uh.class);
        a(31, true, false, sv.class);
        a(32, true, false, sb.class);
        a(33, true, false, pz.class);
        a(34, true, false, rg.class);
        a(38, true, false, jf.class);
        a(39, true, false, ns.class);
        a(40, true, false, ux.class);
        a(50, true, false, se.class);
        a(51, true, false, ef.class);
        a(52, true, false, wu.class);
        a(53, true, false, tv.class);
        a(54, true, false, vw.class);
        a(60, true, false, rm.class);
        a(61, true, false, fn.class);
        a(70, true, false, ca.class);
        a(71, true, false, fa.class);
        a(100, true, false, iw.class);
        a(101, true, true, mn.class);
        a(102, false, true, qs.class);
        a(103, true, false, hq.class);
        a(104, true, false, kb.class);
        a(105, true, false, mv.class);
        a(106, true, true, oj.class);
        a(130, true, true, ui.class);
        a(131, true, false, ai.class);
        a(Keyboard.KEY_UP, true, false, of.class);
        a(255, true, true, yr.class);
        e = new HashMap();
        f = 0;
    }

    static void a(int i, boolean z, boolean z2, Class cls) {
        if (a.containsKey(Integer.valueOf(i))) {
            throw new IllegalArgumentException("Duplicate packet id:" + i);
        }
        if (b.containsKey(cls)) {
            throw new IllegalArgumentException("Duplicate packet class:" + cls);
        }
        a.put(Integer.valueOf(i), cls);
        b.put(cls, Integer.valueOf(i));
        if (z) {
            c.add(Integer.valueOf(i));
        }
        if (z2) {
            d.add(Integer.valueOf(i));
        }
    }

    public static ki a(int i) {
        try {
            Class cls = (Class) a.get(Integer.valueOf(i));
            if (cls == null) {
                return null;
            }
            return (ki) cls.newInstance();
        } catch (Exception e2) {
            e2.printStackTrace();
            System.out.println("Skipping packet with id " + i);
            return null;
        }
    }

    public final int c() {
        return ((Integer) b.get(getClass())).intValue();
    }

    public static ki a(DataInputStream dataInputStream, boolean z) throws IOException {
        try {
            int i = dataInputStream.read();
            if (i == -1) {
                return null;
            }
            if ((z && !d.contains(Integer.valueOf(i))) || (!z && !c.contains(Integer.valueOf(i)))) {
                throw new IOException("Bad packet id " + i);
            }
            ki kiVarA = a(i);
            if (kiVarA == null) {
                throw new IOException("Bad packet id " + i);
            }
            kiVarA.a(dataInputStream);
            nv nvVar = (nv) e.get(Integer.valueOf(i));
            if (nvVar == null) {
                nvVar = new nv();
                e.put(Integer.valueOf(i), nvVar);
            }
            nvVar.a(kiVarA.a());
            int i2 = f + 1;
            f = i2;
            int i3 = i2 % 1000;
            return kiVarA;
        } catch (EOFException unused) {
            System.out.println("Reached end of stream");
            return null;
        }
    }

    public static void a(ki kiVar, DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.write(kiVar.c());
        kiVar.a(dataOutputStream);
    }

    public static void a(String str, DataOutputStream dataOutputStream) throws IOException {
        if (str.length() > 32767) {
            throw new IOException("String too big");
        }
        dataOutputStream.writeShort(str.length());
        dataOutputStream.writeChars(str);
    }

    public static String a(DataInputStream dataInputStream, int i) throws IOException {
        short s = dataInputStream.readShort();
        if (s > i) {
            throw new IOException("Received string length longer than maximum allowed (" + ((int) s) + " > " + i + ")");
        }
        if (s < 0) {
            throw new IOException("Received string length is less than zero! Weird string!");
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < s; i2++) {
            sb.append(dataInputStream.readChar());
        }
        return sb.toString();
    }
}
