package defpackage;

import mcshim.awt.BorderLayout;
import mcshim.awt.Canvas;
import mcshim.awt.Component;
import mcshim.awt.Frame;
import net.minecraft.client.Minecraft;
import net.minecraft.client.MinecraftApplet;

/* JADX INFO: loaded from: classes.dex */
public final class kq extends Minecraft {
    final /* synthetic */ Frame a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kq(Component component, Canvas canvas, MinecraftApplet minecraftApplet, int i, int i2, boolean z, Frame frame) {
        super(component, canvas, minecraftApplet, i, i2, z);
        this.a = frame;
    }

    @Override // net.minecraft.client.Minecraft
    public void a(mh mhVar) {
        this.a.removeAll();
        this.a.add(new cb(mhVar), BorderLayout.CENTER);
        this.a.validate();
    }
}
