package defpackage;

import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class sx implements lb {
    private final List a = new LinkedList();

    sx() {
    }

    public sx a(pn pnVar) {
        this.a.add(pnVar);
        return this;
    }

    @Override // defpackage.lb
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public qe b() {
        return ol.a(new oy(this));
    }
}
