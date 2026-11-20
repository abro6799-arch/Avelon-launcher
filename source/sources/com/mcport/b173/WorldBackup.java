package com.mcport.b173;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.TreeSet;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes.dex */
final class WorldBackup {
    private WorldBackup() {
    }

    static int export(File file, OutputStream outputStream) throws IOException {
        File[] fileArrListFiles = file.listFiles(new FileFilter() { // from class: com.mcport.b173.WorldBackup$$ExternalSyntheticLambda1
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                return file2.isDirectory();
            }
        });
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(outputStream));
        int i = 0;
        if (fileArrListFiles != null) {
            try {
                int length = fileArrListFiles.length;
                int i2 = 0;
                while (i < length) {
                    File file2 = fileArrListFiles[i];
                    add(zipOutputStream, file2, "saves/" + file2.getName() + "/");
                    i2++;
                    i++;
                }
                i = i2;
            } catch (Throwable th) {
                try {
                    zipOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        zipOutputStream.close();
        return i;
    }

    private static void add(ZipOutputStream zipOutputStream, File file, String str) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                add(zipOutputStream, file2, str + file2.getName() + "/");
            } else if (file2.getName().equals("session.lock")) {
                continue;
            } else {
                zipOutputStream.putNextEntry(new ZipEntry(str + file2.getName()));
                FileInputStream fileInputStream = new FileInputStream(file2);
                try {
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int i = fileInputStream.read(bArr);
                        if (i <= 0) {
                            break;
                        } else {
                            zipOutputStream.write(bArr, 0, i);
                        }
                    }
                    fileInputStream.close();
                    zipOutputStream.closeEntry();
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        }
    }

    static String restore(File file, InputStream inputStream) throws IOException {
        String strSubstring;
        int iIndexOf;
        TreeSet treeSet = new TreeSet();
        TreeSet treeSet2 = new TreeSet();
        String str = file.getCanonicalPath() + File.separator;
        HashSet hashSet = new HashSet();
        String[] list = file.list();
        if (list != null) {
            hashSet.addAll(Arrays.asList(list));
        }
        File file2 = new File(file.getParentFile(), "restore-tmp");
        deleteTree(file2);
        file2.mkdirs();
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(inputStream));
            int i = 0;
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        String strReplace = nextEntry.getName().replace('\\', '/');
                        if (strReplace.startsWith("saves/") && !nextEntry.isDirectory() && (iIndexOf = (strSubstring = strReplace.substring(6)).indexOf(47)) > 0) {
                            String strSubstring2 = strSubstring.substring(0, iIndexOf);
                            if (hashSet.contains(strSubstring2)) {
                                treeSet.add(strSubstring2);
                            } else {
                                File file3 = new File(file2, strSubstring);
                                if (!file3.getCanonicalPath().startsWith(file2.getCanonicalPath() + File.separator)) {
                                    throw new IOException("invalid path in backup: " + strReplace);
                                }
                                file3.getParentFile().mkdirs();
                                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                                try {
                                    byte[] bArr = new byte[65536];
                                    while (true) {
                                        int i2 = zipInputStream.read(bArr);
                                        if (i2 <= 0) {
                                            break;
                                        }
                                        fileOutputStream.write(bArr, 0, i2);
                                        try {
                                            zipInputStream.close();
                                        } catch (Throwable th) {
                                            th.addSuppressed(th);
                                        }
                                        throw th;
                                    }
                                    fileOutputStream.close();
                                    i++;
                                    treeSet2.add(strSubstring2);
                                } catch (Throwable th2) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (Throwable th3) {
                                        th2.addSuppressed(th3);
                                    }
                                    throw th2;
                                }
                            }
                        }
                    } else {
                        zipInputStream.close();
                        for (String str2 : new ArrayList(treeSet2)) {
                            File file4 = new File(file2, str2);
                            if (new File(file4, "level.dat").isFile()) {
                                File file5 = new File(file, str2);
                                if (!file5.getCanonicalPath().startsWith(str) || !file4.renameTo(file5)) {
                                    treeSet2.remove(str2);
                                    treeSet.add(str2);
                                }
                            } else {
                                treeSet2.remove(str2);
                                treeSet.add(str2 + " (no level.dat)");
                            }
                        }
                        deleteTree(file2);
                        if (i == 0 && treeSet.isEmpty()) {
                            throw new IOException("this file is not a world backup made by this app (no saves/ folder)");
                        }
                        StringBuilder sb = new StringBuilder("Restored: ");
                        sb.append(treeSet2.isEmpty() ? "none" : WorldBackup$$ExternalSyntheticBackport0.m(", ", treeSet2));
                        sb.append(treeSet.isEmpty() ? "" : "\nSkipped (a world with that folder name already exists, or incomplete): " + WorldBackup$$ExternalSyntheticBackport0.m(", ", treeSet));
                        return sb.toString();
                    }
                } catch (Throwable th4) {
                    zipInputStream.close();
                    throw th4;
                }
                deleteTree(file2);
                throw e;
            }
        } catch (IOException e) {
            deleteTree(file2);
            throw e;
        }
    }

    static void deleteTree(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                deleteTree(file2);
            }
        }
        file.delete();
    }
}
