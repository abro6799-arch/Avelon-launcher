package net.minecraft.client;

import defpackage.gr;
import defpackage.q;
import defpackage.r;
import mcshim.applet.Applet;
import mcshim.awt.BorderLayout;
import mcshim.awt.Canvas;

/* JADX INFO: loaded from: classes.dex */
public class MinecraftApplet extends Applet {
    private Canvas a;
    private Minecraft b;
    private Thread c = null;

    @Override // mcshim.applet.Applet
    public void init() {
        this.a = new r(this);
        q qVar = new q(this, this, this.a, this, getWidth(), getHeight(), getParameter("fullscreen") != null ? getParameter("fullscreen").equalsIgnoreCase("true") : false);
        this.b = qVar;
        qVar.l = getDocumentBase().getHost();
        if (getDocumentBase().getPort() > 0) {
            StringBuilder sb = new StringBuilder();
            Minecraft minecraft = this.b;
            sb.append(minecraft.l);
            sb.append(":");
            sb.append(getDocumentBase().getPort());
            minecraft.l = sb.toString();
        }
        if (getParameter("username") != null && getParameter("sessionid") != null) {
            this.b.k = new gr(getParameter("username"), getParameter("sessionid"));
            System.out.println("Setting user: " + this.b.k.b + ", " + this.b.k.c);
            if (getParameter("mppass") != null) {
                this.b.k.d = getParameter("mppass");
            }
        } else {
            this.b.k = new gr("Player", "");
        }
        if (getParameter("server") != null && getParameter("port") != null) {
            this.b.a(getParameter("server"), Integer.parseInt(getParameter("port")));
        }
        this.b.n = true;
        setLayout(new BorderLayout());
        add(this.a, BorderLayout.CENTER);
        this.a.setFocusable(true);
        validate();
    }

    public void a() {
        if (this.c != null) {
            return;
        }
        Thread thread = new Thread(this.b, "Minecraft main thread");
        this.c = thread;
        thread.start();
    }

    @Override // mcshim.applet.Applet
    public void start() {
        Minecraft minecraft = this.b;
        if (minecraft != null) {
            minecraft.o = false;
        }
    }

    @Override // mcshim.applet.Applet
    public void stop() {
        Minecraft minecraft = this.b;
        if (minecraft != null) {
            minecraft.o = true;
        }
    }

    @Override // mcshim.applet.Applet
    public void destroy() {
        b();
    }

    public void b() {
        if (this.c == null) {
            return;
        }
        this.b.f();
        try {
            try {
                this.c.join(10000L);
            } catch (InterruptedException unused) {
                this.b.d();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.c = null;
    }

    public void c() {
        this.a = null;
        this.b = null;
        this.c = null;
        try {
            removeAll();
            validate();
        } catch (Exception unused) {
        }
    }
}
