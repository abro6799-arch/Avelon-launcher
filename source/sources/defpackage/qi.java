package defpackage;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class qi extends ba {
    final /* synthetic */ qa a;

    qi(qa qaVar) {
        this.a = qaVar;
    }

    @Override // defpackage.yp
    public boolean a(Map map) {
        return map.containsKey(this.a);
    }

    @Override // defpackage.yp
    public String a() {
        return "\"" + this.a.b() + "\"";
    }

    @Override // defpackage.ba
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public gu c(Map map) {
        return (gu) map.get(this.a);
    }

    public String toString() {
        return "a field called [\"" + this.a.b() + "\"]";
    }
}
