package defpackage;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static b a = new b();
    private Map b = new HashMap();

    private b() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(b.class.getResourceAsStream("/achievement/map.txt")));
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    String[] strArrSplit = line.split(",");
                    this.b.put(Integer.valueOf(Integer.parseInt(strArrSplit[0])), strArrSplit[1]);
                } else {
                    bufferedReader.close();
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String a(int i) {
        return (String) a.b.get(Integer.valueOf(i));
    }
}
