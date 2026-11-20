package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ka {
    private ka() {
    }

    public static jt a(Object... objArr) {
        return a(objArr, new jt(new kk()));
    }

    public static jt b(Object... objArr) {
        return a(objArr, new jt(new kf()));
    }

    public static jt c(Object... objArr) {
        return a(objArr, new jt(new qf()));
    }

    public static jt a(String str) {
        return a(ol.a(str));
    }

    public static jt a(qa qaVar) {
        return new jt(new qi(qaVar));
    }

    public static jt b(String str) {
        return c(new Object[0]).a(a(str));
    }

    public static jt a(int i) {
        return new jt(new qg(i));
    }

    public static jt b(int i) {
        return b(new Object[0]).a(a(i));
    }

    private static jt a(Object[] objArr, jt jtVar) {
        for (int length = objArr.length - 1; length >= 0; length--) {
            Object obj = objArr[length];
            if (obj instanceof Integer) {
                jtVar = a(b(((Integer) obj).intValue()), jtVar);
            } else if (obj instanceof String) {
                jtVar = a(b((String) obj), jtVar);
            } else {
                throw new IllegalArgumentException("Element [" + objArr[length] + "] of path elements [" + Arrays.toString(objArr) + "] was of illegal type [" + objArr[length].getClass().getCanonicalName() + "]; only Integer and String are valid.");
            }
        }
        return jtVar;
    }

    private static jt a(jt jtVar, jt jtVar2) {
        return new jt(new j(jtVar, jtVar2));
    }
}
