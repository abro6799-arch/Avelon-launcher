package defpackage;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class xi {
    private Map a = new HashMap();
    private Map b = new HashMap();
    private boolean c = false;
    private cj d;

    public void b() {
    }

    public xi(gr grVar, File file) {
        File file2 = new File(file, "stats");
        if (!file2.exists()) {
            file2.mkdir();
        }
        for (File file3 : file.listFiles()) {
            if (file3.getName().startsWith("stats_") && file3.getName().endsWith(".dat")) {
                File file4 = new File(file2, file3.getName());
                if (!file4.exists()) {
                    System.out.println("Relocating " + file3.getName());
                    file3.renameTo(file4);
                }
            }
        }
        this.d = new cj(grVar, this, file2);
    }

    public void a(vr vrVar, int i) {
        a(this.b, vrVar, i);
        a(this.a, vrVar, i);
        this.c = true;
    }

    private void a(Map map, vr vrVar, int i) {
        Integer num = (Integer) map.get(vrVar);
        map.put(vrVar, Integer.valueOf((num == null ? 0 : num.intValue()) + i));
    }

    public Map a() {
        return new HashMap(this.b);
    }

    public void a(Map map) {
        if (map == null) {
            return;
        }
        this.c = true;
        for (vr vrVar : map.keySet()) {
            a(this.b, vrVar, ((Integer) map.get(vrVar)).intValue());
            a(this.a, vrVar, ((Integer) map.get(vrVar)).intValue());
        }
    }

    public void b(Map map) {
        if (map == null) {
            return;
        }
        for (vr vrVar : map.keySet()) {
            Integer num = (Integer) this.b.get(vrVar);
            this.a.put(vrVar, Integer.valueOf(((Integer) map.get(vrVar)).intValue() + (num == null ? 0 : num.intValue())));
        }
    }

    public void c(Map map) {
        if (map == null) {
            return;
        }
        this.c = true;
        for (vr vrVar : map.keySet()) {
            a(this.b, vrVar, ((Integer) map.get(vrVar)).intValue());
        }
    }

    public static Map a(String str) {
        HashMap map = new HashMap();
        try {
            StringBuilder sb = new StringBuilder();
            qe qeVarA = new hx().a(str);
            Iterator it = qeVarA.b("stats-change").iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) ((gu) it.next()).c().entrySet().iterator().next();
                int i = Integer.parseInt(((qa) entry.getKey()).b());
                int i2 = Integer.parseInt(((gu) entry.getValue()).b());
                vr vrVarA = jl.a(i);
                if (vrVarA == null) {
                    System.out.println(i + " is not a valid stat");
                } else {
                    sb.append(jl.a(i).h);
                    sb.append(",");
                    sb.append(i2);
                    sb.append(",");
                    map.put(vrVarA, Integer.valueOf(i2));
                }
            }
            if (!new hf("local").a(sb.toString()).equals(qeVarA.a("checksum"))) {
                System.out.println("CHECKSUM MISMATCH");
                return null;
            }
        } catch (xe e) {
            e.printStackTrace();
        }
        return map;
    }

    public static String a(String str, String str2, Map map) {
        StringBuilder sb = new StringBuilder("{\r\n");
        StringBuilder sb2 = new StringBuilder();
        if (str != null && str2 != null) {
            sb.append("  \"user\":{\r\n    \"name\":\"");
            sb.append(str);
            sb.append("\",\r\n    \"sessionid\":\"");
            sb.append(str2);
            sb.append("\"\r\n  },\r\n");
        }
        sb.append("  \"stats-change\":[");
        boolean z = true;
        for (vr vrVar : map.keySet()) {
            if (z) {
                z = false;
            } else {
                sb.append("},");
            }
            sb.append("\r\n    {\"");
            sb.append(vrVar.e);
            sb.append("\":");
            sb.append(map.get(vrVar));
            sb2.append(vrVar.h);
            sb2.append(",");
            sb2.append(map.get(vrVar));
            sb2.append(",");
        }
        if (!z) {
            sb.append("}");
        }
        hf hfVar = new hf(str2);
        sb.append("\r\n  ],\r\n  \"checksum\":\"");
        sb.append(hfVar.a(sb2.toString()));
        sb.append("\"\r\n}");
        return sb.toString();
    }

    public boolean a(ny nyVar) {
        return this.a.containsKey(nyVar);
    }

    public boolean b(ny nyVar) {
        return nyVar.c == null || a(nyVar.c);
    }

    public int a(vr vrVar) {
        Integer num = (Integer) this.a.get(vrVar);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public void c() {
        this.d.b(a());
    }

    public void d() {
        if (this.c && this.d.b()) {
            this.d.a(a());
        }
        this.d.c();
    }
}
