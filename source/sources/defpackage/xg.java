package defpackage;

/* JADX INFO: loaded from: classes.dex */
class xg extends Thread {
    final /* synthetic */ pf a;

    xg(pf pfVar) {
        this.a = pfVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            Thread.sleep(5000L);
            if (this.a.s.isAlive()) {
                try {
                    this.a.s.stop();
                } catch (Throwable unused) {
                }
            }
            if (this.a.r.isAlive()) {
                try {
                    this.a.r.stop();
                } catch (Throwable unused2) {
                }
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
