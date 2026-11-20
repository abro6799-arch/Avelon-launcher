package defpackage;

import mcshim.awt.BorderLayout;
import mcshim.awt.Canvas;
import mcshim.awt.Component;
import net.minecraft.client.Minecraft;
import net.minecraft.client.MinecraftApplet;

/* JADX INFO: loaded from: classes.dex */
public class q extends Minecraft {
    final /* synthetic */ MinecraftApplet a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(MinecraftApplet minecraftApplet, Component component, Canvas canvas, MinecraftApplet minecraftApplet2, int i, int i2, boolean z) {
        super(component, canvas, minecraftApplet2, i, i2, z);
        this.a = minecraftApplet;
    }

    @Override // net.minecraft.client.Minecraft
    public void a(mh mhVar) {
        this.a.removeAll();
        this.a.setLayout(new BorderLayout());
        this.a.add(new cb(mhVar), BorderLayout.CENTER);
        this.a.validate();
    }
}
