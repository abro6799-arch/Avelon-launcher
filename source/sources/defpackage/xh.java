package defpackage;

/* JADX INFO: loaded from: classes.dex */
class xh extends Thread {
    final /* synthetic */ pf a;

    xh(pf pfVar) {
        this.a = pfVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            Thread.sleep(2000L);
            if (this.a.l) {
                this.a.r.interrupt();
                this.a.a("disconnect.closed", new Object[0]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
