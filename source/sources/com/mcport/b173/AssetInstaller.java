package com.mcport.b173;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
final class AssetInstaller {
    AssetInstaller() {
    }

    static void ensureInstalled(Context context, File file) throws IOException {
        File file2 = new File(file, "resources");
        file2.mkdirs();
        File file3 = new File(file2, ".installed-1");
        if (file3.exists()) {
            return;
        }
        copyDir(context.getAssets(), "resources", file2);
        new FileOutputStream(file3).close();
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private static void copyDir(AssetManager assetManager, String str, File file) throws IOException {
        String[] list = assetManager.list(str);
        if (list == null || list.length == 0) {
            if (!file.exists() || file.length() <= 0) {
                File file2 = new File(file.getPath() + ".part");
                file.getParentFile().mkdirs();
                InputStream inputStreamOpen = assetManager.open(str);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    try {
                        byte[] bArr = new byte[65536];
                        while (true) {
                            int i = inputStreamOpen.read(bArr);
                            if (i <= 0) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, i);
                            }
                            if (inputStreamOpen != null) {
                                try {
                                    inputStreamOpen.close();
                                } catch (Throwable th) {
                                    th.addSuppressed(th);
                                }
                            }
                            throw th;
                        }
                        fileOutputStream.close();
                        if (inputStreamOpen != null) {
                            inputStreamOpen.close();
                        }
                        if (file2.renameTo(file)) {
                            return;
                        }
                        throw new IOException("rename failed " + file);
                    } catch (Throwable th2) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                } catch (Throwable th4) {
                    if (inputStreamOpen != null) {
                        inputStreamOpen.close();
                    }
                    throw th4;
                }
            }
            return;
        }
        file.mkdirs();
        for (String str2 : list) {
            copyDir(assetManager, str + "/" + str2, new File(file, str2));
        }
    }
}
