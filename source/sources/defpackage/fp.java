package defpackage;

import java.io.BufferedReader;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class fp {
    public static final String a = a();
    public static final char[] b = {'/', '\n', '\r', '\t', 0, '\f', '`', '?', '*', '\\', '<', '>', '|', '\"', ':'};

    private static String a() {
        String str = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fp.class.getResourceAsStream("/font.txt"), "UTF-8"));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (!line.startsWith("#")) {
                    str = str + line;
                }
            }
            bufferedReader.close();
        } catch (Exception unused) {
        }
        return str;
    }
}
