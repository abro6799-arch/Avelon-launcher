package defpackage;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

/* JADX INFO: loaded from: classes.dex */
public final class hx {
    public qe a(Reader reader) throws IOException, xe {
        lt ltVar = new lt();
        new an().a(reader, ltVar);
        return ltVar.a();
    }

    public qe a(String str) {
        try {
            return a(new StringReader(str));
        } catch (IOException e) {
            throw new RuntimeException("Coding failure in Argo:  StringWriter gave an IOException", e);
        }
    }
}
