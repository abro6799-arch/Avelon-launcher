package defpackage;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class vj extends Thread {
    final /* synthetic */ Map a;
    final /* synthetic */ cj b;

    vj(cj cjVar, Map map) {
        this.b = cjVar;
        this.a = map;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            try {
                cj cjVar = this.b;
                cjVar.a(this.a, cjVar.e, this.b.g, this.b.i);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            this.b.a = false;
        }
    }
}
