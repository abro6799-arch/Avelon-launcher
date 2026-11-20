package defpackage;

import java.io.File;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes.dex */
class dz implements Comparable {
    private final File a;
    private final int b;
    private final int c;

    public dz(File file) {
        this.a = file;
        Matcher matcher = rs.a.matcher(file.getName());
        if (matcher.matches()) {
            this.b = Integer.parseInt(matcher.group(1), 36);
            this.c = Integer.parseInt(matcher.group(2), 36);
        } else {
            this.b = 0;
            this.c = 0;
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(dz dzVar) {
        int i = this.b >> 5;
        int i2 = dzVar.b >> 5;
        return i == i2 ? (this.c >> 5) - (dzVar.c >> 5) : i - i2;
    }

    public File a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }
}
