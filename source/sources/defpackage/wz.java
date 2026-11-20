package defpackage;

import java.net.ConnectException;
import java.net.UnknownHostException;
import net.minecraft.client.Minecraft;

/* JADX INFO: loaded from: classes.dex */
class wz extends Thread {
    final /* synthetic */ Minecraft a;
    final /* synthetic */ String b;
    final /* synthetic */ int c;
    final /* synthetic */ vx d;

    wz(vx vxVar, Minecraft minecraft, String str, int i) {
        this.d = vxVar;
        this.a = minecraft;
        this.b = str;
        this.c = i;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.d.a = new nb(this.a, this.b, this.c);
            if (this.d.i) {
                return;
            }
            this.d.a.b(new mp(this.a.k.b));
        } catch (ConnectException e) {
            if (this.d.i) {
                return;
            }
            this.a.a(new ex("connect.failed", "disconnect.genericReason", e.getMessage()));
        } catch (UnknownHostException unused) {
            if (this.d.i) {
                return;
            }
            this.a.a(new ex("connect.failed", "disconnect.genericReason", "Unknown host '" + this.b + "'"));
        } catch (Exception e2) {
            if (this.d.i) {
                return;
            }
            e2.printStackTrace();
            this.a.a(new ex("connect.failed", "disconnect.genericReason", e2.toString()));
        }
    }
}
