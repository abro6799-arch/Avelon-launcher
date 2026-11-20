package defpackage;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import mcport.PortConfig;
import mcshim.awt.image.BufferedImage;
import mcshim.imageio.ImageIO;

/* JADX INFO: loaded from: classes.dex */
public final class MCPortHooks {
    public static File dataDir() {
        return PortConfig.dataDir;
    }

    public static int beforeExit(int i) {
        Runnable runnable = PortConfig.exitHandler;
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return i;
    }

    public static void installResources(cz czVar) {
        try {
            if (!czVar.a.exists()) {
                czVar.a.mkdirs();
            }
            czVar.a();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static Socket openSocket(InetAddress inetAddress, int i) throws IOException {
        Socket socket = new Socket();
        try {
            socket.connect(new InetSocketAddress(inetAddress, i), 15000);
            return socket;
        } catch (IOException e) {
            try {
                socket.close();
            } catch (IOException unused) {
            }
            throw e;
        }
    }

    public static boolean skinOverride(tj tjVar) {
        String str = tjVar.a;
        if (str == null) {
            return false;
        }
        boolean zStartsWith = str.startsWith("http://s3.amazonaws.com/MinecraftSkins/");
        boolean zStartsWith2 = str.startsWith("http://s3.amazonaws.com/MinecraftCloaks/");
        if (!zStartsWith && !zStartsWith2) {
            return false;
        }
        if (zStartsWith) {
            String strSubstring = str.substring(str.lastIndexOf(47) + 1);
            if (strSubstring.endsWith(".png")) {
                strSubstring = strSubstring.substring(0, strSubstring.length() - 4);
            }
            File file = PortConfig.localSkin;
            if (file != null && file.isFile() && strSubstring.equals(PortConfig.username)) {
                try {
                    BufferedImage bufferedImageA = ImageIO.read(file);
                    if (bufferedImageA != null) {
                        ek ekVar = tjVar.c;
                        if (tjVar.b != null) {
                            bufferedImageA = tjVar.b.a(bufferedImageA);
                        }
                        ekVar.a = bufferedImageA;
                    }
                } catch (Throwable th) {
                    System.out.println("mcport: could not load skin " + file + ": " + th);
                }
            }
        }
        return true;
    }
}
