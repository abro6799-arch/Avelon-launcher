package net.minecraft.isom;

import defpackage.bd;
import mcshim.applet.Applet;
import mcshim.awt.BorderLayout;

/* JADX INFO: loaded from: classes.dex */
public class IsomPreviewApplet extends Applet {
    private bd a = new bd();

    public IsomPreviewApplet() {
        setLayout(new BorderLayout());
        add(this.a, BorderLayout.CENTER);
    }

    @Override // mcshim.applet.Applet
    public void start() {
        this.a.b();
    }

    @Override // mcshim.applet.Applet
    public void stop() {
        this.a.c();
    }
}
