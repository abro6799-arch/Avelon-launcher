package defpackage;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class gu {
    public abstract at a();

    public abstract String b();

    public abstract Map c();

    public abstract List d();

    gu() {
    }

    public final String a(Object... objArr) {
        return (String) a(ka.a(objArr), this, objArr);
    }

    public final List b(Object... objArr) {
        return (List) a(ka.b(objArr), this, objArr);
    }

    private Object a(jt jtVar, gu guVar, Object[] objArr) {
        try {
            return jtVar.b(guVar);
        } catch (mz e) {
            throw ao.a(e, objArr, ol.a(guVar));
        }
    }
}
