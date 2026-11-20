package defpackage;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class vn extends gu {
    static final vn a = new vn(at.NULL);
    static final vn b = new vn(at.TRUE);
    static final vn c = new vn(at.FALSE);
    private final at d;

    private vn(at atVar) {
        this.d = atVar;
    }

    @Override // defpackage.gu
    public at a() {
        return this.d;
    }

    @Override // defpackage.gu
    public String b() {
        throw new IllegalStateException("Attempt to get text on a JsonNode without text.");
    }

    @Override // defpackage.gu
    public Map c() {
        throw new IllegalStateException("Attempt to get fields on a JsonNode without fields.");
    }

    @Override // defpackage.gu
    public List d() {
        throw new IllegalStateException("Attempt to get elements on a JsonNode without elements.");
    }
}
