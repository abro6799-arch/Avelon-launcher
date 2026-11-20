package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class tt implements dt {
    private final iz a;
    private final List b;

    public tt(iz izVar, List list) {
        this.a = izVar;
        this.b = list;
    }

    @Override // defpackage.dt
    public iz b() {
        return this.a;
    }

    @Override // defpackage.dt
    public boolean a(mq mqVar) {
        boolean z;
        ArrayList arrayList = new ArrayList(this.b);
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                iz izVarB = mqVar.b(i2, i);
                if (izVarB != null) {
                    Iterator it = arrayList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        iz izVar = (iz) it.next();
                        if (izVarB.c == izVar.c && (izVar.i() == -1 || izVarB.i() == izVar.i())) {
                            arrayList.remove(izVar);
                            z = true;
                            break;
                        }
                    }
                    if (!z) {
                        return false;
                    }
                }
            }
        }
        return arrayList.isEmpty();
    }

    @Override // defpackage.dt
    public iz b(mq mqVar) {
        return this.a.k();
    }

    @Override // defpackage.dt
    public int a() {
        return this.b.size();
    }
}
