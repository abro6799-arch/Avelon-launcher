package defpackage;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ed implements lb {
    private final List a = new LinkedList();

    ed() {
    }

    public ed a(lb lbVar) {
        this.a.add(lbVar);
        return this;
    }

    @Override // defpackage.lb
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public qe b() {
        LinkedList linkedList = new LinkedList();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            linkedList.add(((lb) it.next()).b());
        }
        return ol.a(linkedList);
    }
}
