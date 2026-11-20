package com.mcport.b173;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class FirstRun {
    FirstRun() {
    }

    static void ensureOptions(File file) {
        File file2 = new File(file, "options.txt");
        if (file2.exists()) {
            return;
        }
        try {
            PrintWriter printWriter = new PrintWriter(new FileWriter(file2));
            try {
                printWriter.println("viewDistance:1");
                printWriter.close();
            } catch (Throwable th) {
                try {
                    printWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
        }
    }

    static String readOption(File file, String str) {
        String line;
        File file2 = new File(file, "options.txt");
        if (!file2.exists()) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file2));
            do {
                try {
                    line = bufferedReader.readLine();
                    if (line == null) {
                        bufferedReader.close();
                        return null;
                    }
                    return null;
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } while (!line.startsWith(str + ":"));
            String strSubstring = line.substring(str.length() + 1);
            bufferedReader.close();
            return strSubstring;
        } catch (IOException unused) {
        }
    }

    static void writeOption(File file, String str, String str2) throws IOException {
        File file2 = new File(file, "options.txt");
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        if (file2.exists()) {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file2));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (line.startsWith(str + ":")) {
                        line = str + ":" + str2;
                        z = true;
                    }
                    arrayList.add(line);
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            bufferedReader.close();
        }
        if (!z) {
            arrayList.add(str + ":" + str2);
        }
        File file3 = new File(file, "options.txt.tmp");
        PrintWriter printWriter = new PrintWriter(new FileWriter(file3));
        try {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                printWriter.println((String) it.next());
            }
            printWriter.close();
            if (file3.renameTo(file2)) {
                return;
            }
            file2.delete();
            if (!file3.renameTo(file2)) {
                throw new IOException("could not write options.txt");
            }
        } catch (Throwable th3) {
            try {
                printWriter.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }
}
