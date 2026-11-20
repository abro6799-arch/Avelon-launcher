package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ao extends ad {
    private static final ml a = new el();

    static ao a(mz mzVar, Object[] objArr, qe qeVar) {
        return new ao(mzVar, objArr, qeVar);
    }

    private ao(mz mzVar, Object[] objArr, qe qeVar) {
        super(b(mzVar, objArr, qeVar));
    }

    private static String b(mz mzVar, Object[] objArr, qe qeVar) {
        return "Failed to find " + mzVar.a.toString() + " at [" + mz.a(mzVar.b) + "] while resolving [" + a(objArr) + "] in " + a.a(qeVar) + ".";
    }

    private static String a(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        int length = objArr.length;
        boolean z = true;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            if (!z) {
                sb.append(".");
            }
            if (obj instanceof String) {
                sb.append("\"");
                sb.append(obj);
                sb.append("\"");
            } else {
                sb.append(obj);
            }
            i++;
            z = false;
        }
        return sb.toString();
    }
}
