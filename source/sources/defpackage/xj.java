package defpackage;

/* JADX INFO: loaded from: classes.dex */
class xj extends Thread {
    final /* synthetic */ pf a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    xj(pf pfVar, String str) {
        super(str);
        this.a = pfVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        synchronized (pf.a) {
            pf.b++;
        }
        while (this.a.l && !this.a.q) {
            try {
                while (this.a.e()) {
                }
                try {
                    sleep(100L);
                } catch (InterruptedException unused) {
                }
            } catch (Throwable th) {
                synchronized (pf.a) {
                    pf.b--;
                    throw th;
                }
            }
        }
        synchronized (pf.a) {
            pf.b--;
        }
    }
}
