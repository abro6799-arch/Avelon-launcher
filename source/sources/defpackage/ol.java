package defpackage;

import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ol {
    private ol() {
    }

    public static gu a() {
        return vn.a;
    }

    public static gu b() {
        return vn.b;
    }

    public static gu c() {
        return vn.c;
    }

    public static qa a(String str) {
        return new qa(str);
    }

    public static gu b(String str) {
        return new ja(str);
    }

    public static qe a(Iterable iterable) {
        return new oe(iterable);
    }

    public static qe a(gu... guVarArr) {
        return a(Arrays.asList(guVarArr));
    }

    public static qe a(Map map) {
        return new kr(map);
    }
}
