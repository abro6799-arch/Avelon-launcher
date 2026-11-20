package defpackage;

import java.io.File;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class hr {
    private Random c = new Random();
    private Map d = new HashMap();
    private List e = new ArrayList();
    public int a = 0;
    public boolean b = true;

    public bh a(String str, File file) {
        try {
            String strSubstring = str.substring(0, str.indexOf("."));
            if (this.b) {
                while (Character.isDigit(strSubstring.charAt(strSubstring.length() - 1))) {
                    strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                }
            }
            String strReplaceAll = strSubstring.replaceAll("/", ".");
            if (!this.d.containsKey(strReplaceAll)) {
                this.d.put(strReplaceAll, new ArrayList());
            }
            bh bhVar = new bh(str, file.toURI().toURL());
            ((List) this.d.get(strReplaceAll)).add(bhVar);
            this.e.add(bhVar);
            this.a++;
            return bhVar;
        } catch (MalformedURLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public bh a(String str) {
        List list = (List) this.d.get(str);
        if (list == null) {
            return null;
        }
        return (bh) list.get(this.c.nextInt(list.size()));
    }

    public bh a() {
        if (this.e.size() == 0) {
            return null;
        }
        List list = this.e;
        return (bh) list.get(this.c.nextInt(list.size()));
    }
}
