package defpackage;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class hc {
    private wt a;
    private Map b = new HashMap();
    private List c = new ArrayList();
    private Map d = new HashMap();

    public hc(wt wtVar) {
        this.a = wtVar;
        b();
    }

    public hm a(Class cls, String str) {
        hm hmVar = (hm) this.b.get(str);
        if (hmVar != null) {
            return hmVar;
        }
        wt wtVar = this.a;
        if (wtVar != null) {
            try {
                File fileA = wtVar.a(str);
                if (fileA != null && fileA.exists()) {
                    try {
                        hm hmVar2 = (hm) cls.getConstructor(String.class).newInstance(str);
                        try {
                            FileInputStream fileInputStream = new FileInputStream(fileA);
                            nu nuVarA = as.a(fileInputStream);
                            fileInputStream.close();
                            hmVar2.a(nuVarA.k("data"));
                            hmVar = hmVar2;
                        } catch (Exception e) {
                            e = e;
                            hmVar = hmVar2;
                            e.printStackTrace();
                        }
                    } catch (Exception e2) {
                        throw new RuntimeException("Failed to instantiate " + cls.toString(), e2);
                    }
                }
            } catch (Exception e3) {
                e = e3;
            }
        }
        if (hmVar != null) {
            this.b.put(str, hmVar);
            this.c.add(hmVar);
        }
        return hmVar;
    }

    public void a(String str, hm hmVar) {
        if (hmVar == null) {
            throw new RuntimeException("Can't set null data");
        }
        if (this.b.containsKey(str)) {
            this.c.remove(this.b.remove(str));
        }
        this.b.put(str, hmVar);
        this.c.add(hmVar);
    }

    public void a() {
        for (int i = 0; i < this.c.size(); i++) {
            hm hmVar = (hm) this.c.get(i);
            if (hmVar.b()) {
                a(hmVar);
                hmVar.a(false);
            }
        }
    }

    private void a(hm hmVar) {
        wt wtVar = this.a;
        if (wtVar == null) {
            return;
        }
        try {
            File fileA = wtVar.a(hmVar.a);
            if (fileA != null) {
                nu nuVar = new nu();
                hmVar.b(nuVar);
                nu nuVar2 = new nu();
                nuVar2.a("data", nuVar);
                FileOutputStream fileOutputStream = new FileOutputStream(fileA);
                as.a(nuVar2, fileOutputStream);
                fileOutputStream.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void b() {
        File fileA;
        try {
            this.d.clear();
            wt wtVar = this.a;
            if (wtVar == null || (fileA = wtVar.a("idcounts")) == null || !fileA.exists()) {
                return;
            }
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(fileA));
            nu nuVarA = as.a((DataInput) dataInputStream);
            dataInputStream.close();
            for (ij ijVar : nuVarA.c()) {
                if (ijVar instanceof ul) {
                    ul ulVar = (ul) ijVar;
                    this.d.put(ulVar.b(), Short.valueOf(ulVar.a));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int a(String str) {
        Short shValueOf;
        Short sh = (Short) this.d.get(str);
        if (sh == null) {
            shValueOf = (short) 0;
        } else {
            shValueOf = Short.valueOf((short) (sh.shortValue() + 1));
        }
        this.d.put(str, shValueOf);
        wt wtVar = this.a;
        if (wtVar == null) {
            return shValueOf.shortValue();
        }
        try {
            File fileA = wtVar.a("idcounts");
            if (fileA != null) {
                nu nuVar = new nu();
                for (String str2 : this.d.keySet()) {
                    nuVar.a(str2, ((Short) this.d.get(str2)).shortValue());
                }
                DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(fileA));
                as.a(nuVar, (DataOutput) dataOutputStream);
                dataOutputStream.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return shValueOf.shortValue();
    }
}
