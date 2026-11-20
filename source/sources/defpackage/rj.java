package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class rj {
    private static final Map a = new HashMap();

    private rj() {
    }

    public static synchronized qj a(File file, int i, int i2) {
        qj qjVar;
        File file2 = new File(file, "region");
        File file3 = new File(file2, "r." + (i >> 5) + "." + (i2 >> 5) + ".mcr");
        Map map = a;
        Reference reference = (Reference) map.get(file3);
        if (reference != null && (qjVar = (qj) reference.get()) != null) {
            return qjVar;
        }
        if (!file2.exists()) {
            file2.mkdirs();
        }
        if (map.size() >= 256) {
            a();
        }
        qj qjVar2 = new qj(file3);
        map.put(file3, new SoftReference(qjVar2));
        return qjVar2;
    }

    public static synchronized void a() {
        Iterator it = a.values().iterator();
        while (it.hasNext()) {
            try {
                qj qjVar = (qj) ((Reference) it.next()).get();
                if (qjVar != null) {
                    qjVar.b();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        a.clear();
    }

    public static int b(File file, int i, int i2) {
        return a(file, i, i2).a();
    }

    public static DataInputStream c(File file, int i, int i2) {
        return a(file, i, i2).a(i & 31, i2 & 31);
    }

    public static DataOutputStream d(File file, int i, int i2) {
        return a(file, i, i2).b(i & 31, i2 & 31);
    }
}
