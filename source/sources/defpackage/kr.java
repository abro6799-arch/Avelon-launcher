package defpackage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class kr extends qe {
    private final Map a;

    kr(Map map) {
        this.a = new HashMap(map);
    }

    @Override // defpackage.gu
    public Map c() {
        return new HashMap(this.a);
    }

    @Override // defpackage.gu
    public at a() {
        return at.OBJECT;
    }

    @Override // defpackage.gu
    public String b() {
        throw new IllegalStateException("Attempt to get text on a JsonNode without text.");
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
        return this.a.equals(((kr) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return "JsonObject fields:[" + this.a + "]";
    }
}
