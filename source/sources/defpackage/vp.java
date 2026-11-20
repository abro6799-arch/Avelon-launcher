package defpackage;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import mcshim.awt.image.BufferedImage;
import mcshim.imageio.ImageIO;
import net.minecraft.client.Minecraft;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class vp extends i {
    private ZipFile e;
    private int f = -1;
    private BufferedImage g;
    private File h;

    public vp(File file) {
        this.a = file.getName();
        this.h = file;
    }

    private String b(String str) {
        return (str == null || str.length() <= 34) ? str : str.substring(0, 34);
    }

    @Override // defpackage.i
    public void a(Minecraft minecraft) throws Throwable {
        ZipFile zipFile;
        InputStream inputStream = null;
        try {
            zipFile = new ZipFile(this.h);
            try {
                try {
                    inputStream = zipFile.getInputStream(zipFile.getEntry("pack.txt"));
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                    this.b = b(bufferedReader.readLine());
                    this.c = b(bufferedReader.readLine());
                    bufferedReader.close();
                    inputStream.close();
                } catch (Exception unused) {
                }
                try {
                    inputStream = zipFile.getInputStream(zipFile.getEntry("pack.png"));
                    this.g = ImageIO.read(inputStream);
                    inputStream.close();
                } catch (Exception unused2) {
                }
                try {
                    zipFile.close();
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                }
            } catch (Throwable th) {
                th = th;
                try {
                    inputStream.close();
                } catch (Exception unused3) {
                }
                try {
                    zipFile.close();
                    throw th;
                } catch (Exception unused4) {
                    throw th;
                }
            }
        } catch (Exception e2) {
            e = e2;
            zipFile = null;
        } catch (Throwable th2) {
            th = th2;
            zipFile = null;
            inputStream.close();
            zipFile.close();
            throw th;
        }
        try {
            inputStream.close();
        } catch (Exception unused5) {
        }
        try {
            zipFile.close();
        } catch (Exception unused6) {
        }
    }

    @Override // defpackage.i
    public void b(Minecraft minecraft) {
        if (this.g != null) {
            minecraft.p.a(this.f);
        }
        b();
    }

    @Override // defpackage.i
    public void c(Minecraft minecraft) {
        if (this.g != null && this.f < 0) {
            this.f = minecraft.p.a(this.g);
        }
        if (this.g != null) {
            minecraft.p.b(this.f);
        } else {
            GL11.glBindTexture(3553, minecraft.p.b("/gui/unknown_pack.png"));
        }
    }

    @Override // defpackage.i
    public void a() {
        try {
            this.e = new ZipFile(this.h);
        } catch (Exception unused) {
        }
    }

    @Override // defpackage.i
    public void b() {
        try {
            this.e.close();
        } catch (Exception unused) {
        }
        this.e = null;
    }

    @Override // defpackage.i
    public InputStream a(String str) {
        try {
            ZipEntry entry = this.e.getEntry(str.substring(1));
            if (entry != null) {
                return this.e.getInputStream(entry);
            }
        } catch (Exception unused) {
        }
        return i.class.getResourceAsStream(str);
    }
}
