package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class qg extends ba {
    final /* synthetic */ int a;

    qg(int i) {
        this.a = i;
    }

    @Override // defpackage.yp
    public boolean a(List list) {
        return list.size() > this.a;
    }

    @Override // defpackage.yp
    public String a() {
        return Integer.toString(this.a);
    }

    @Override // defpackage.ba
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public gu c(List list) {
        return (gu) list.get(this.a);
    }

    public String toString() {
        return "an element at index [" + this.a + "]";
    }
}
