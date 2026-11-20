package defpackage;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
class rs implements FilenameFilter {
    public static final Pattern a = Pattern.compile("c\\.(-?[0-9a-z]+)\\.(-?[0-9a-z]+)\\.dat");

    private rs() {
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return a.matcher(str).matches();
    }
}
