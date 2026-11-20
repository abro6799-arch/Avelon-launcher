package defpackage;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
class oy extends HashMap {
    final /* synthetic */ sx a;

    oy(sx sxVar) {
        this.a = sxVar;
        for (pn pnVar : sxVar.a) {
            put(pnVar.b(), pnVar.c());
        }
    }
}
