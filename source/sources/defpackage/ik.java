package defpackage;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.minecraft.client.Minecraft;

/* JADX INFO: loaded from: classes.dex */
public class ik {
    public i a;
    private List b = new ArrayList();
    private i c = new pa();
    private Map d = new HashMap();
    private Minecraft e;
    private File f;
    private String g;

    public ik(Minecraft minecraft, File file) {
        this.e = minecraft;
        File file2 = new File(file, "texturepacks");
        this.f = file2;
        if (!file2.exists()) {
            this.f.mkdirs();
        }
        this.g = minecraft.z.l;
        a();
        this.a.a();
    }

    public boolean a(i iVar) {
        i iVar2 = this.a;
        if (iVar == iVar2) {
            return false;
        }
        iVar2.b();
        this.g = iVar.a;
        this.a = iVar;
        this.e.z.l = this.g;
        this.e.z.b();
        this.a.a();
        return true;
    }

    public void a() {
        ArrayList arrayList = new ArrayList();
        this.a = null;
        arrayList.add(this.c);
        if (this.f.exists() && this.f.isDirectory()) {
            for (File file : this.f.listFiles()) {
                if (file.isFile() && file.getName().toLowerCase().endsWith(".zip")) {
                    String str = file.getName() + ":" + file.length() + ":" + file.lastModified();
                    try {
                        if (!this.d.containsKey(str)) {
                            vp vpVar = new vp(file);
                            vpVar.d = str;
                            this.d.put(str, vpVar);
                            vpVar.a(this.e);
                        }
                        i iVar = (i) this.d.get(str);
                        if (iVar.a.equals(this.g)) {
                            this.a = iVar;
                        }
                        arrayList.add(iVar);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        if (this.a == null) {
            this.a = this.c;
        }
        this.b.removeAll(arrayList);
        for (i iVar2 : this.b) {
            iVar2.b(this.e);
            this.d.remove(iVar2.d);
        }
        this.b = arrayList;
    }

    public List b() {
        return new ArrayList(this.b);
    }
}
