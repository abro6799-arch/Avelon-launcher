package defpackage;

import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class mz extends ad {
    final yp a;
    final List b;

    static ad a(yp ypVar) {
        return new mz(ypVar, new LinkedList());
    }

    static ad a(mz mzVar, jt jtVar) {
        LinkedList linkedList = new LinkedList(mzVar.b);
        linkedList.add(jtVar);
        return new mz(mzVar.a, linkedList);
    }

    static ad b(mz mzVar, jt jtVar) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(jtVar);
        return new mz(mzVar.a, linkedList);
    }

    private mz(yp ypVar, List list) {
        super("Failed to match any JSON node at [" + a(list) + "]");
        this.a = ypVar;
        this.b = list;
    }

    static String a(List list) {
        StringBuilder sb = new StringBuilder();
        for (int size = list.size() - 1; size >= 0; size--) {
            sb.append(((jt) list.get(size)).a());
            if (size != 0) {
                sb.append(".");
            }
        }
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "JsonNodeDoesNotMatchJsonNodeSelectorException{failedNode=" + this.a + ", failPath=" + this.b + '}';
    }
}
