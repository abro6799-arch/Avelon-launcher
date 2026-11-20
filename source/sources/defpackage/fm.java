package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public class fm implements wt {
    private static final Logger a = Logger.getLogger("Minecraft");
    private final File b;
    private final File c;
    private final File d;
    private final long e = System.currentTimeMillis();

    public fm(File file, String str, boolean z) {
        File file2 = new File(file, str);
        this.b = file2;
        file2.mkdirs();
        File file3 = new File(file2, "players");
        this.c = file3;
        File file4 = new File(file2, "data");
        this.d = file4;
        file4.mkdirs();
        if (z) {
            file3.mkdirs();
        }
        d();
    }

    private void d() {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(this.b, "session.lock")));
            try {
                dataOutputStream.writeLong(this.e);
            } finally {
                dataOutputStream.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to check session lock, aborting");
        }
    }

    protected File a() {
        return this.b;
    }

    @Override // defpackage.wt
    public void b() {
        try {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(new File(this.b, "session.lock")));
            try {
                if (dataInputStream.readLong() != this.e) {
                    throw new us("The save is being accessed from another location, aborting");
                }
                dataInputStream.close();
            } catch (Throwable th) {
                dataInputStream.close();
                throw th;
            }
        } catch (IOException unused) {
            throw new us("Failed to check session lock, aborting");
        }
    }

    @Override // defpackage.wt
    public bf a(xa xaVar) {
        if (xaVar instanceof wd) {
            File file = new File(this.b, "DIM-1");
            file.mkdirs();
            return new to(file, true);
        }
        return new to(this.b, true);
    }

    @Override // defpackage.wt
    public ei c() {
        File file = new File(this.b, "level.dat");
        if (file.exists()) {
            try {
                return new ei(as.a(new FileInputStream(file)).k("Data"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        File file2 = new File(this.b, "level.dat_old");
        if (!file2.exists()) {
            return null;
        }
        try {
            return new ei(as.a(new FileInputStream(file2)).k("Data"));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // defpackage.wt
    public void a(ei eiVar, List list) {
        nu nuVarA = eiVar.a(list);
        nu nuVar = new nu();
        nuVar.a("Data", (ij) nuVarA);
        try {
            File file = new File(this.b, "level.dat_new");
            File file2 = new File(this.b, "level.dat_old");
            File file3 = new File(this.b, "level.dat");
            as.a(nuVar, new FileOutputStream(file));
            if (file2.exists()) {
                file2.delete();
            }
            file3.renameTo(file2);
            if (file3.exists()) {
                file3.delete();
            }
            file.renameTo(file3);
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // defpackage.wt
    public void a(ei eiVar) {
        nu nuVarA = eiVar.a();
        nu nuVar = new nu();
        nuVar.a("Data", (ij) nuVarA);
        try {
            File file = new File(this.b, "level.dat_new");
            File file2 = new File(this.b, "level.dat_old");
            File file3 = new File(this.b, "level.dat");
            as.a(nuVar, new FileOutputStream(file));
            if (file2.exists()) {
                file2.delete();
            }
            file3.renameTo(file2);
            if (file3.exists()) {
                file3.delete();
            }
            file.renameTo(file3);
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // defpackage.wt
    public File a(String str) {
        return new File(this.d, str + ".dat");
    }
}
