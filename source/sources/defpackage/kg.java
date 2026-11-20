package defpackage;

import net.minecraft.client.Minecraft;

/* JADX INFO: loaded from: classes.dex */
public class kg extends Thread {
    final /* synthetic */ Minecraft a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kg(Minecraft minecraft, String str) {
        super(str);
        this.a = minecraft;
        setDaemon(true);
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (this.a.J) {
            try {
                Thread.sleep(2147483647L);
            } catch (InterruptedException unused) {
            }
        }
    }
}
