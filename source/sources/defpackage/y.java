package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class y extends ArrayList {
    final /* synthetic */ Iterable a;

    y(Iterable iterable) {
        this.a = iterable;
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            add((gu) it.next());
        }
    }
}
