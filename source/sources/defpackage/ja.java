package defpackage;

import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class ja extends gu {
    private static final Pattern a = Pattern.compile("(-?)(0|([1-9]([0-9]*)))(\\.[0-9]+)?((e|E)(\\+|-)?[0-9]+)?");
    private final String b;

    ja(String str) {
        if (str == null) {
            throw new NullPointerException("Attempt to construct a JsonNumber with a null value.");
        }
        if (!a.matcher(str).matches()) {
            throw new IllegalArgumentException("Attempt to construct a JsonNumber with a String [" + str + "] that does not match the JSON number specification.");
        }
        this.b = str;
    }

    @Override // defpackage.gu
    public at a() {
        return at.NUMBER;
    }

    @Override // defpackage.gu
    public String b() {
        return this.b;
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
        return this.b.equals(((ja) obj).b);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        return "JsonNumberNode value:[" + this.b + "]";
    }
}
