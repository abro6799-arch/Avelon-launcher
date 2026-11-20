package defpackage;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class cj {
    private xi d;
    private File e;
    private File f;
    private File g;
    private File h;
    private File i;
    private File j;
    private gr k;
    private volatile boolean a = false;
    private volatile Map b = null;
    private volatile Map c = null;
    private int l = 0;
    private int m = 0;

    public cj(gr grVar, xi xiVar, File file) {
        this.e = new File(file, "stats_" + grVar.b.toLowerCase() + "_unsent.dat");
        this.f = new File(file, "stats_" + grVar.b.toLowerCase() + ".dat");
        this.i = new File(file, "stats_" + grVar.b.toLowerCase() + "_unsent.old");
        this.j = new File(file, "stats_" + grVar.b.toLowerCase() + ".old");
        this.g = new File(file, "stats_" + grVar.b.toLowerCase() + "_unsent.tmp");
        this.h = new File(file, "stats_" + grVar.b.toLowerCase() + ".tmp");
        if (!grVar.b.toLowerCase().equals(grVar.b)) {
            a(file, "stats_" + grVar.b + "_unsent.dat", this.e);
            a(file, "stats_" + grVar.b + ".dat", this.f);
            a(file, "stats_" + grVar.b + "_unsent.old", this.i);
            a(file, "stats_" + grVar.b + ".old", this.j);
            a(file, "stats_" + grVar.b + "_unsent.tmp", this.g);
            a(file, "stats_" + grVar.b + ".tmp", this.h);
        }
        this.d = xiVar;
        this.k = grVar;
        if (this.e.exists()) {
            xiVar.a(a(this.e, this.g, this.i));
        }
        a();
    }

    private void a(File file, String str, File file2) {
        File file3 = new File(file, str);
        if (!file3.exists() || file3.isDirectory() || file2.exists()) {
            return;
        }
        file3.renameTo(file2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map a(File file, File file2, File file3) {
        if (file.exists()) {
            return a(file);
        }
        if (file3.exists()) {
            return a(file3);
        }
        if (file2.exists()) {
            return a(file2);
        }
        return null;
    }

    private Map a(File file) throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new FileReader(file));
            try {
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                        th = th;
                        bufferedReader2 = bufferedReader;
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        throw th;
                    }
                    Map mapA = xi.a(sb.toString());
                    try {
                        bufferedReader.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    return mapA;
                } catch (Exception e3) {
                    e = e3;
                    e.printStackTrace();
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                bufferedReader2 = bufferedReader;
            }
        } catch (Exception e5) {
            e = e5;
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map map, File file, File file2, File file3) {
        PrintWriter printWriter = new PrintWriter(new FileWriter(file2, false));
        try {
            printWriter.print(xi.a(this.k.b, "local", map));
            printWriter.close();
            if (file3.exists()) {
                file3.delete();
            }
            if (file.exists()) {
                file.renameTo(file3);
            }
            file2.renameTo(file);
        } catch (Throwable th) {
            printWriter.close();
            throw th;
        }
    }

    public void a() {
        if (this.a) {
            throw new IllegalStateException("Can't get stats from server while StatsSyncher is busy!");
        }
        this.l = 100;
        this.a = true;
        new vk(this).start();
    }

    public void a(Map map) {
        if (this.a) {
            throw new IllegalStateException("Can't save stats while StatsSyncher is busy!");
        }
        this.l = 100;
        this.a = true;
        new vj(this, map).start();
    }

    public void b(Map map) {
        int i = 30;
        while (this.a && (i = i - 1) > 0) {
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        this.a = true;
        try {
            try {
                a(map, this.e, this.g, this.i);
            } finally {
                this.a = false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean b() {
        return this.l <= 0 && !this.a && this.c == null;
    }

    public void c() {
        int i = this.l;
        if (i > 0) {
            this.l = i - 1;
        }
        int i2 = this.m;
        if (i2 > 0) {
            this.m = i2 - 1;
        }
        if (this.c != null) {
            this.d.c(this.c);
            this.c = null;
        }
        if (this.b != null) {
            this.d.b(this.b);
            this.b = null;
        }
    }
}
