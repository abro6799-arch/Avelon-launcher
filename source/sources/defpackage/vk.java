package defpackage;

/* JADX INFO: loaded from: classes.dex */
class vk extends Thread {
    final /* synthetic */ cj a;

    vk(cj cjVar) {
        this.a = cjVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            try {
                if (this.a.b == null) {
                    if (this.a.f.exists()) {
                        cj cjVar = this.a;
                        cjVar.b = cjVar.a(cjVar.f, this.a.h, this.a.j);
                    }
                } else {
                    cj cjVar2 = this.a;
                    cjVar2.a(cjVar2.b, this.a.f, this.a.h, this.a.j);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            this.a.a = false;
        }
    }
}
