package defpackage;

/* JADX INFO: loaded from: classes.dex */
class tx extends Thread {
    final /* synthetic */ bd a;

    tx(bd bdVar) {
        this.a = bdVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (this.a.f) {
            this.a.d();
            try {
                Thread.sleep(1L);
            } catch (Exception unused) {
            }
        }
    }
}
