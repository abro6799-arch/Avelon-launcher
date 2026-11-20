package defpackage;

import java.io.IOException;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public class nh {
    private static nh a = new nh();
    private Properties b;

    private nh() {
        Properties properties = new Properties();
        this.b = properties;
        try {
            properties.load(nh.class.getResourceAsStream("/lang/en_US.lang"));
            this.b.load(nh.class.getResourceAsStream("/lang/stats_US.lang"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static nh a() {
        return a;
    }

    public String a(String str) {
        return this.b.getProperty(str, str);
    }

    public String a(String str, Object... objArr) {
        return String.format(this.b.getProperty(str, str), objArr);
    }

    public String b(String str) {
        return this.b.getProperty(str + ".name", "");
    }
}
