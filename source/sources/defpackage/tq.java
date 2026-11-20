package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class tq implements nl {
    protected final File a;

    @Override // defpackage.nl
    public String a() {
        return "Old Format";
    }

    @Override // defpackage.nl
    public boolean a(String str) {
        return false;
    }

    @Override // defpackage.nl
    public boolean a(String str, yb ybVar) {
        return false;
    }

    @Override // defpackage.nl
    public void c() {
    }

    public tq(File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
        this.a = file;
    }

    @Override // defpackage.nl
    public List b() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < 5) {
            StringBuilder sb = new StringBuilder("World");
            i++;
            sb.append(i);
            String string = sb.toString();
            ei eiVarB = b(string);
            if (eiVarB != null) {
                arrayList.add(new vb(string, "", eiVarB.l(), eiVarB.g(), false));
            }
        }
        return arrayList;
    }

    @Override // defpackage.nl
    public ei b(String str) {
        File file = new File(this.a, str);
        if (!file.exists()) {
            return null;
        }
        File file2 = new File(file, "level.dat");
        if (file2.exists()) {
            try {
                return new ei(as.a(new FileInputStream(file2)).k("Data"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        File file3 = new File(file, "level.dat_old");
        if (file3.exists()) {
            try {
                return new ei(as.a(new FileInputStream(file3)).k("Data"));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    @Override // defpackage.nl
    public void a(String str, String str2) {
        File file = new File(this.a, str);
        if (file.exists()) {
            File file2 = new File(file, "level.dat");
            if (file2.exists()) {
                try {
                    nu nuVarA = as.a(new FileInputStream(file2));
                    nuVarA.k("Data").a("LevelName", str2);
                    as.a(nuVarA, new FileOutputStream(file2));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override // defpackage.nl
    public void c(String str) {
        File file = new File(this.a, str);
        if (file.exists()) {
            a(file.listFiles());
            file.delete();
        }
    }

    protected static void a(File[] fileArr) {
        for (int i = 0; i < fileArr.length; i++) {
            if (fileArr[i].isDirectory()) {
                a(fileArr[i].listFiles());
            }
            fileArr[i].delete();
        }
    }

    @Override // defpackage.nl
    public wt a(String str, boolean z) {
        return new fm(this.a, str, z);
    }
}
