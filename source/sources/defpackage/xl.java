package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class xl extends Thread {
    final /* synthetic */ pf a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    xl(pf pfVar, String str) {
        super(str);
        this.a = pfVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        synchronized (pf.a) {
            pf.c++;
        }
        while (this.a.l) {
            try {
                while (this.a.d()) {
                }
                try {
                    sleep(100L);
                } catch (InterruptedException unused) {
                }
                try {
                    if (this.a.k != null) {
                        this.a.k.flush();
                    }
                } catch (IOException e) {
                    if (!this.a.t) {
                        this.a.a(e);
                    }
                    e.printStackTrace();
                }
            } catch (Throwable th) {
                synchronized (pf.a) {
                    pf.c--;
                    throw th;
                }
            }
        }
        synchronized (pf.a) {
            pf.c--;
        }
    }
}
