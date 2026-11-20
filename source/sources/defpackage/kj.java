package defpackage;

import mcshim.awt.event.WindowAdapter;
import mcshim.awt.event.WindowEvent;
import net.minecraft.client.Minecraft;

/* JADX INFO: loaded from: classes.dex */
public final class kj extends WindowAdapter {
    final /* synthetic */ Minecraft a;
    final /* synthetic */ Thread b;

    public kj(Minecraft minecraft, Thread thread) {
        this.a = minecraft;
        this.b = thread;
    }

    public void windowClosing(WindowEvent windowEvent) {
        this.a.f();
        try {
            this.b.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.exit(0);
    }
}
