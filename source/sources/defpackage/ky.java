package defpackage;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class ky implements Comparator {
    final /* synthetic */ hk a;

    ky(hk hkVar) {
        this.a = hkVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(dt dtVar, dt dtVar2) {
        if ((dtVar instanceof tt) && (dtVar2 instanceof is)) {
            return 1;
        }
        if (!((dtVar2 instanceof tt) && (dtVar instanceof is)) && dtVar2.a() >= dtVar.a()) {
            return dtVar2.a() > dtVar.a() ? 1 : 0;
        }
        return -1;
    }
}
