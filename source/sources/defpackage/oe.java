package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class oe extends qe {
    private final List a;

    oe(Iterable iterable) {
        this.a = a(iterable);
    }

    @Override // defpackage.gu
    public at a() {
        return at.ARRAY;
    }

    @Override // defpackage.gu
    public List d() {
        return new ArrayList(this.a);
    }

    @Override // defpackage.gu
    public String b() {
        throw new IllegalStateException("Attempt to get text on a JsonNode without text.");
    }

    @Override // defpackage.gu
    public Map c() {
        throw new IllegalStateException("Attempt to get fields on a JsonNode without fields.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((oe) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return "JsonArray elements:[" + this.a + "]";
    }

    private static List a(Iterable iterable) {
        return new y(iterable);
    }
}
