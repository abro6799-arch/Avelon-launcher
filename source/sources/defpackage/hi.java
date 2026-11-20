package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes.dex */
public class hi extends tq {
    @Override // defpackage.tq, defpackage.nl
    public String a() {
        return "Scaevolus' McRegion";
    }

    public hi(File file) {
        super(file);
    }

    @Override // defpackage.tq, defpackage.nl
    public List b() {
        String name;
        ei eiVarB;
        ArrayList arrayList = new ArrayList();
        for (File file : this.a.listFiles()) {
            if (file.isDirectory() && (eiVarB = b((name = file.getName()))) != null) {
                boolean z = eiVarB.k() != 19132;
                String strJ = eiVarB.j();
                arrayList.add(new vb(name, (strJ == null || in.a(strJ)) ? name : strJ, eiVarB.l(), eiVarB.g(), z));
            }
        }
        return arrayList;
    }

    @Override // defpackage.tq, defpackage.nl
    public void c() {
        rj.a();
    }

    @Override // defpackage.tq, defpackage.nl
    public wt a(String str, boolean z) {
        return new mx(this.a, str, z);
    }

    @Override // defpackage.tq, defpackage.nl
    public boolean a(String str) {
        ei eiVarB = b(str);
        return eiVarB != null && eiVarB.k() == 0;
    }

    @Override // defpackage.tq, defpackage.nl
    public boolean a(String str, yb ybVar) {
        ybVar.a(0);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        File file = new File(this.a, str);
        File file2 = new File(file, "DIM-1");
        System.out.println("Scanning folders...");
        a(file, arrayList, arrayList2);
        if (file2.exists()) {
            a(file2, arrayList3, arrayList4);
        }
        int size = arrayList.size() + arrayList3.size() + arrayList2.size() + arrayList4.size();
        System.out.println("Total conversion count is " + size);
        a(file, arrayList, 0, size, ybVar);
        a(file2, arrayList3, arrayList.size(), size, ybVar);
        ei eiVarB = b(str);
        eiVarB.d(19132);
        a(str, false).a(eiVarB);
        a(arrayList2, arrayList.size() + arrayList3.size(), size, ybVar);
        if (!file2.exists()) {
            return true;
        }
        a(arrayList4, arrayList.size() + arrayList3.size() + arrayList2.size(), size, ybVar);
        return true;
    }

    private void a(File file, ArrayList arrayList, ArrayList arrayList2) {
        cm cmVar = new cm();
        rs rsVar = new rs();
        for (File file2 : file.listFiles(cmVar)) {
            arrayList2.add(file2);
            for (File file3 : file2.listFiles(cmVar)) {
                for (File file4 : file3.listFiles(rsVar)) {
                    arrayList.add(new dz(file4));
                }
            }
        }
    }

    private void a(File file, ArrayList arrayList, int i, int i2, yb ybVar) {
        Collections.sort(arrayList);
        byte[] bArr = new byte[4096];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            dz dzVar = (dz) it.next();
            int iB = dzVar.b();
            int iC = dzVar.c();
            qj qjVarA = rj.a(file, iB, iC);
            int i3 = iB & 31;
            int i4 = iC & 31;
            if (!qjVarA.c(i3, i4)) {
                try {
                    DataInputStream dataInputStream = new DataInputStream(new GZIPInputStream(new FileInputStream(dzVar.a())));
                    DataOutputStream dataOutputStreamB = qjVarA.b(i3, i4);
                    while (true) {
                        int i5 = dataInputStream.read(bArr);
                        if (i5 == -1) {
                            break;
                        } else {
                            dataOutputStreamB.write(bArr, 0, i5);
                        }
                    }
                    dataOutputStreamB.close();
                    dataInputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            i++;
            ybVar.a((int) Math.round((((double) i) * 100.0d) / ((double) i2)));
        }
        rj.a();
    }

    private void a(ArrayList arrayList, int i, int i2, yb ybVar) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            a(file.listFiles());
            file.delete();
            i++;
            ybVar.a((int) Math.round((((double) i) * 100.0d) / ((double) i2)));
        }
    }
}
