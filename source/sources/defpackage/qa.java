package defpackage;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class qa extends gu implements Comparable {
    private final String a;

    qa(String str) {
        if (str == null) {
            throw new NullPointerException("Attempt to construct a JsonString with a null value.");
        }
        this.a = str;
    }

    @Override // defpackage.gu
    public at a() {
        return at.STRING;
    }

    @Override // defpackage.gu
    public String b() {
        return this.a;
    }

    @Override // defpackage.gu
    public Map c() {
        throw new IllegalStateException("Attempt to get fields on a JsonNode without fields.");
    }

    @Override // defpackage.gu
    public List d() {
        throw new IllegalStateException("Attempt to get elements on a JsonNode without elements.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((qa) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return "JsonStringNode value:[" + this.a + "]";
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(qa qaVar) {
        return this.a.compareTo(qaVar.a);
    }
}
