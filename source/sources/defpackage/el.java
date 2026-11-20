package defpackage;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public final class el implements ml {
    @Override // defpackage.ml
    public String a(qe qeVar) {
        StringWriter stringWriter = new StringWriter();
        try {
            a(qeVar, (Writer) stringWriter);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new RuntimeException("Coding failure in Argo:  StringWriter gave an IOException", e);
        }
    }

    public void a(qe qeVar, Writer writer) throws IOException {
        a((gu) qeVar, writer);
    }

    private void a(gu guVar, Writer writer) throws IOException {
        boolean z = true;
        switch (kz.a[guVar.a().ordinal()]) {
            case 1:
                writer.append('[');
                for (gu guVar2 : guVar.d()) {
                    if (!z) {
                        writer.append(',');
                    }
                    a(guVar2, writer);
                    z = false;
                }
                writer.append(']');
                return;
            case 2:
                writer.append('{');
                for (qa qaVar : new TreeSet(guVar.c().keySet())) {
                    if (!z) {
                        writer.append(',');
                    }
                    a(qaVar, writer);
                    writer.append(':');
                    a((gu) guVar.c().get(qaVar), writer);
                    z = false;
                }
                writer.append('}');
                return;
            case 3:
                writer.append('\"').append((CharSequence) new yt(guVar.b()).toString()).append('\"');
                return;
            case 4:
                writer.append((CharSequence) guVar.b());
                return;
            case 5:
                writer.append("false");
                return;
            case 6:
                writer.append("true");
                return;
            case 7:
                writer.append("null");
                return;
            default:
                throw new RuntimeException("Coding failure in Argo:  Attempt to format a JsonNode of unknown type [" + guVar.a() + "];");
        }
    }
}
