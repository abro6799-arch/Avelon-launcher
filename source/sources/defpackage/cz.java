package defpackage;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import net.minecraft.client.Minecraft;

/* JADX INFO: loaded from: classes.dex */
public class cz extends Thread {
    public File a;
    private Minecraft b;
    private boolean c = false;

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        MCPortHooks.installResources(this);
    }

    public cz(File file, Minecraft minecraft) {
        this.b = minecraft;
        setName("Resource download thread");
        setDaemon(true);
        File file2 = new File(file, "resources/");
        this.a = file2;
        if (file2.exists() || this.a.mkdirs()) {
            return;
        }
        throw new RuntimeException("The working directory could not be created: " + this.a);
    }

    public void a() {
        a(this.a, "");
    }

    private void a(File file, String str) {
        File[] fileArrListFiles = file.listFiles();
        for (int i = 0; i < fileArrListFiles.length; i++) {
            if (fileArrListFiles[i].isDirectory()) {
                a(fileArrListFiles[i], str + fileArrListFiles[i].getName() + "/");
            } else {
                try {
                    this.b.a(str + fileArrListFiles[i].getName(), fileArrListFiles[i]);
                } catch (Exception unused) {
                    System.out.println("Failed to add " + str + fileArrListFiles[i].getName());
                }
            }
        }
    }

    private void a(URL url, String str, long j, int i) {
        try {
            String strSubstring = str.substring(0, str.indexOf("/"));
            if (strSubstring.equals("sound") || strSubstring.equals("newsound")) {
                if (i != 0) {
                    return;
                }
            } else if (i != 1) {
                return;
            }
            File file = new File(this.a, str);
            if (!file.exists() || file.length() != j) {
                file.getParentFile().mkdirs();
                a(new URL(url, str.replaceAll(" ", "%20")), file, j);
                if (this.c) {
                    return;
                }
            }
            this.b.a(str, file);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void a(URL url, File file, long j) throws IOException {
        byte[] bArr = new byte[4096];
        DataInputStream dataInputStream = new DataInputStream(url.openStream());
        DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
        do {
            int i = dataInputStream.read(bArr);
            if (i >= 0) {
                dataOutputStream.write(bArr, 0, i);
            } else {
                dataInputStream.close();
                dataOutputStream.close();
                return;
            }
        } while (!this.c);
    }

    public void b() {
        this.c = true;
    }
}
