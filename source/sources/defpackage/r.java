package defpackage;

import mcshim.awt.Canvas;
import net.minecraft.client.MinecraftApplet;

/* JADX INFO: loaded from: classes.dex */
public class r extends Canvas {
    final /* synthetic */ MinecraftApplet a;

    public r(MinecraftApplet minecraftApplet) {
        this.a = minecraftApplet;
    }

    @Override // mcshim.awt.Canvas
    public synchronized void addNotify() {
        super.addNotify();
        this.a.a();
    }

    @Override // mcshim.awt.Canvas
    public synchronized void removeNotify() {
        this.a.b();
        super.removeNotify();
    }
}
