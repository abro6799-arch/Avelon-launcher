package net.minecraft.client;

import defpackage.Cif;
import defpackage.MCPortHooks;
import defpackage.av;
import defpackage.br;
import defpackage.bt;
import defpackage.ce;
import defpackage.cg;
import defpackage.ch;
import defpackage.cl;
import defpackage.cv;
import defpackage.cx;
import defpackage.cz;
import defpackage.da;
import defpackage.dc;
import defpackage.dk;
import defpackage.dn;
import defpackage.ep;
import defpackage.eq;
import defpackage.fd;
import defpackage.fh;
import defpackage.fu;
import defpackage.gc;
import defpackage.ge;
import defpackage.gh;
import defpackage.gr;
import defpackage.gs;
import defpackage.hi;
import defpackage.hj;
import defpackage.hs;
import defpackage.ht;
import defpackage.hw;
import defpackage.ia;
import defpackage.ik;
import defpackage.in;
import defpackage.iz;
import defpackage.jg;
import defpackage.jh;
import defpackage.ji;
import defpackage.jl;
import defpackage.kg;
import defpackage.kh;
import defpackage.kj;
import defpackage.kn;
import defpackage.kp;
import defpackage.kq;
import defpackage.ku;
import defpackage.kv;
import defpackage.kx;
import defpackage.lr;
import defpackage.ls;
import defpackage.mh;
import defpackage.mk;
import defpackage.n;
import defpackage.nb;
import defpackage.nl;
import defpackage.nw;
import defpackage.ob;
import defpackage.oh;
import defpackage.oz;
import defpackage.pd;
import defpackage.pj;
import defpackage.px;
import defpackage.py;
import defpackage.qh;
import defpackage.qq;
import defpackage.ra;
import defpackage.sd;
import defpackage.sj;
import defpackage.sn;
import defpackage.th;
import defpackage.tk;
import defpackage.ue;
import defpackage.uq;
import defpackage.ur;
import defpackage.us;
import defpackage.uu;
import defpackage.vf;
import defpackage.vs;
import defpackage.vu;
import defpackage.vx;
import defpackage.vy;
import defpackage.x;
import defpackage.xa;
import defpackage.xi;
import defpackage.xx;
import defpackage.yo;
import java.io.File;
import mcshim.awt.BorderLayout;
import mcshim.awt.Canvas;
import mcshim.awt.Color;
import mcshim.awt.Component;
import mcshim.awt.Dimension;
import mcshim.awt.Frame;
import mcshim.awt.Graphics;
import org.lwjgl.LWJGLException;
import org.lwjgl.input.Controllers;
import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;
import org.lwjgl.opengl.Display;
import org.lwjgl.opengl.DisplayMode;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.glu.GLU;

/* JADX INFO: loaded from: classes.dex */
public abstract class Minecraft implements Runnable {
    public static int G;
    public static long H;
    private static Minecraft a;
    private static File af;
    protected MinecraftApplet A;
    public vy C;
    public ik D;
    public xi I;
    private boolean Q;
    private cx S;
    private cz U;
    private int X;
    private int Y;
    private File Z;
    private nl aa;
    private String ab;
    private int ac;
    public ob c;
    public int d;
    public int e;
    public fd f;
    public n g;
    public dc h;
    public ls i;
    public dn j;
    public String l;
    public Canvas m;
    public boolean n;
    public ji p;
    public sj q;
    public px t;
    public uq v;
    public kv z;
    public static byte[] b = new byte[10485760];
    public static long[] E = new long[512];
    public static long[] F = new long[512];
    private boolean R = false;
    private py T = new py(20.0f);
    public gr k = null;
    public volatile boolean o = false;
    public da r = null;
    public mk s = new mk(this);
    private int V = 0;
    private int W = 0;
    public vu u = new vu(this);
    public boolean w = false;
    public fh x = new fh(0.0f);
    public vf y = null;
    public yo B = new yo();
    private vs ad = new vs();
    private cg ae = new cg();
    public volatile boolean J = true;
    public String K = "";
    boolean L = false;
    long M = -1;
    public boolean N = false;
    private int ag = 0;
    public boolean O = false;
    long P = System.currentTimeMillis();
    private int ah = 0;

    public abstract void a(mh mhVar);

    public Minecraft(Component component, Canvas canvas, MinecraftApplet minecraftApplet, int i, int i2, boolean z) {
        this.Q = false;
        this.n = true;
        jl.a();
        this.Y = i2;
        this.Q = z;
        this.A = minecraftApplet;
        new kg(this, "Timer hack thread");
        this.m = canvas;
        this.d = i;
        this.e = i2;
        this.Q = z;
        if (minecraftApplet == null || "true".equals(minecraftApplet.getParameter("stand-alone"))) {
            this.n = false;
        }
        a = this;
    }

    public void b(mh mhVar) {
        this.R = true;
        a(mhVar);
    }

    public void a(String str, int i) {
        this.ab = str;
        this.ac = i;
    }

    public void a() throws LWJGLException {
        Canvas canvas = this.m;
        if (canvas != null) {
            Graphics graphics = canvas.getGraphics();
            if (graphics != null) {
                graphics.setColor(Color.BLACK);
                graphics.fillRect(0, 0, this.d, this.e);
                graphics.dispose();
            }
            Display.setParent(this.m);
        } else if (this.Q) {
            Display.setFullscreen(true);
            this.d = Display.getDisplayMode().getWidth();
            int height = Display.getDisplayMode().getHeight();
            this.e = height;
            if (this.d <= 0) {
                this.d = 1;
            }
            if (height <= 0) {
                this.e = 1;
            }
        } else {
            Display.setDisplayMode(new DisplayMode(this.d, this.e));
        }
        Display.setTitle("Minecraft Minecraft Beta 1.7.3");
        try {
            Display.create();
        } catch (LWJGLException e) {
            e.printStackTrace();
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException unused) {
            }
            Display.create();
        }
        this.Z = b();
        this.aa = new hi(new File(this.Z, "saves"));
        this.z = new kv(this, this.Z);
        this.D = new ik(this, this.Z);
        ji jiVar = new ji(this.D, this.z);
        this.p = jiVar;
        this.q = new sj(this.z, "/font/default.png", jiVar);
        hw.a(this.p.a("/misc/watercolor.png"));
        ia.a(this.p.a("/misc/grasscolor.png"));
        jh.a(this.p.a("/misc/foliagecolor.png"));
        this.t = new px(this);
        th.a.f = new ra(this);
        this.I = new xi(this.k, this.Z);
        ep.f.a(new kh(this));
        x();
        Keyboard.create();
        Mouse.create();
        this.C = new vy(this.m);
        try {
            Controllers.create();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        c("Pre startup");
        GL11.glEnable(3553);
        GL11.glShadeModel(7425);
        GL11.glClearDepth(1.0d);
        GL11.glEnable(2929);
        GL11.glDepthFunc(515);
        GL11.glEnable(3008);
        GL11.glAlphaFunc(516, 0.1f);
        GL11.glCullFace(1029);
        GL11.glMatrixMode(5889);
        GL11.glLoadIdentity();
        GL11.glMatrixMode(5888);
        c("Startup");
        this.S = new cx();
        this.B.a(this.z);
        this.p.a(this.ae);
        this.p.a(this.ad);
        this.p.a(new hs());
        this.p.a(new av(this));
        this.p.a(new ku(this));
        this.p.a(new oh());
        this.p.a(new Cif());
        this.p.a(new sd(0));
        this.p.a(new sd(1));
        this.g = new n(this, this.p);
        GL11.glViewport(0, 0, this.d, this.e);
        this.j = new dn(this.f, this.p);
        try {
            cz czVar = new cz(this.Z, this);
            this.U = czVar;
            czVar.start();
        } catch (Exception unused2) {
        }
        c("Post startup");
        this.v = new uq(this);
        String str = this.ab;
        if (str != null) {
            a(new vx(this, str, this.ac));
        } else {
            a(new fu());
        }
    }

    private void x() {
        qq qqVar = new qq(this.z, this.d, this.e);
        GL11.glClear(16640);
        GL11.glMatrixMode(5889);
        GL11.glLoadIdentity();
        GL11.glOrtho(0.0d, qqVar.a, qqVar.b, 0.0d, 1000.0d, 3000.0d);
        GL11.glMatrixMode(5888);
        GL11.glLoadIdentity();
        GL11.glTranslatef(0.0f, 0.0f, -2000.0f);
        GL11.glViewport(0, 0, this.d, this.e);
        GL11.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        nw nwVar = nw.a;
        GL11.glDisable(2896);
        GL11.glEnable(3553);
        GL11.glDisable(2912);
        GL11.glBindTexture(3553, this.p.b("/title/mojang.png"));
        nwVar.b();
        nwVar.b(16777215);
        nwVar.a(0.0d, this.e, 0.0d, 0.0d, 0.0d);
        nwVar.a(this.d, this.e, 0.0d, 0.0d, 0.0d);
        nwVar.a(this.d, 0.0d, 0.0d, 0.0d, 0.0d);
        nwVar.a(0.0d, 0.0d, 0.0d, 0.0d, 0.0d);
        nwVar.a();
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        nwVar.b(16777215);
        a((qqVar.a() - 256) / 2, (qqVar.b() - 256) / 2, 0, 0, Keyboard.KEYBOARD_SIZE, Keyboard.KEYBOARD_SIZE);
        GL11.glDisable(2896);
        GL11.glDisable(2912);
        GL11.glEnable(3008);
        GL11.glAlphaFunc(516, 0.1f);
        Display.swapBuffers();
    }

    public void a(int i, int i2, int i3, int i4, int i5, int i6) {
        nw nwVar = nw.a;
        nwVar.b();
        double d = i + 0;
        double d2 = i2 + i6;
        double d3 = (i3 + 0) * 0.00390625f;
        double d4 = (i4 + i6) * 0.00390625f;
        nwVar.a(d, d2, 0.0d, d3, d4);
        double d5 = i + i5;
        double d6 = (i3 + i5) * 0.00390625f;
        nwVar.a(d5, d2, 0.0d, d6, d4);
        double d7 = i2 + 0;
        double d8 = (i4 + 0) * 0.00390625f;
        nwVar.a(d5, d7, 0.0d, d6, d8);
        nwVar.a(d, d7, 0.0d, d3, d8);
        nwVar.a();
    }

    public static File b() {
        File fileDataDir = MCPortHooks.dataDir();
        if (fileDataDir != null) {
            return fileDataDir;
        }
        if (af == null) {
            af = a("minecraft");
        }
        return af;
    }

    public static File a(String str) {
        File file;
        File file2;
        String property = System.getProperty("user.home", ".");
        int i = kn.a[y().ordinal()];
        if (i == 1 || i == 2) {
            file = new File(property, "." + str + '/');
        } else {
            if (i == 3) {
                String str2 = System.getenv("APPDATA");
                if (str2 != null) {
                    file2 = new File(str2, "." + str + '/');
                } else {
                    file = new File(property, "." + str + '/');
                }
            } else if (i == 4) {
                file2 = new File(property, "Library/Application Support/" + str);
            } else {
                file2 = new File(property, str + '/');
            }
            if (!file2.exists() || file2.mkdirs()) {
                return file2;
            }
            throw new RuntimeException("The working directory could not be created: " + file2);
        }
        file2 = file;
        if (file2.exists()) {
        }
        return file2;
    }

    private static pd y() {
        String lowerCase = System.getProperty("os.name").toLowerCase();
        if (lowerCase.contains("win")) {
            return pd.windows;
        }
        if (lowerCase.contains("mac")) {
            return pd.macos;
        }
        if (lowerCase.contains("solaris")) {
            return pd.solaris;
        }
        if (lowerCase.contains("sunos")) {
            return pd.solaris;
        }
        if (lowerCase.contains("linux")) {
            return pd.linux;
        }
        if (lowerCase.contains("unix")) {
            return pd.linux;
        }
        return pd.unknown;
    }

    public nl c() {
        return this.aa;
    }

    public void a(da daVar) {
        da daVar2 = this.r;
        if (daVar2 instanceof ce) {
            return;
        }
        if (daVar2 != null) {
            daVar2.h();
        }
        if (daVar instanceof fu) {
            this.I.b();
        }
        this.I.c();
        if (daVar == null && this.f == null) {
            daVar = new fu();
        } else if (daVar == null && this.h.Y <= 0) {
            daVar = new ch();
        }
        if (daVar instanceof fu) {
            this.v.b();
        }
        this.r = daVar;
        if (daVar != null) {
            h();
            qq qqVar = new qq(this.z, this.d, this.e);
            daVar.a(this, qqVar.a(), qqVar.b());
            this.w = false;
            return;
        }
        g();
    }

    private void c(String str) {
        int iGlGetError = GL11.glGetError();
        if (iGlGetError != 0) {
            String strGluErrorString = GLU.gluErrorString(iGlGetError);
            System.out.println("########## GL ERROR ##########");
            System.out.println("@ " + str);
            System.out.println(iGlGetError + ": " + strGluErrorString);
        }
    }

    public void d() {
        try {
            this.I.b();
            this.I.c();
            MinecraftApplet minecraftApplet = this.A;
            if (minecraftApplet != null) {
                minecraftApplet.c();
            }
            try {
                cz czVar = this.U;
                if (czVar != null) {
                    czVar.b();
                }
            } catch (Exception unused) {
            }
            System.out.println("Stopping!");
            try {
                a((fd) null);
            } catch (Throwable unused2) {
            }
            try {
                ge.a();
            } catch (Throwable unused3) {
            }
            this.B.b();
            Mouse.destroy();
            Keyboard.destroy();
            Display.destroy();
            if (!this.R) {
                System.exit(MCPortHooks.beforeExit(0));
            }
            System.gc();
        } catch (Throwable th) {
            Display.destroy();
            if (!this.R) {
                System.exit(0);
            }
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        da daVar;
        this.J = true;
        try {
            a();
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                int i = 0;
                while (this.J) {
                    try {
                        try {
                            MinecraftApplet minecraftApplet = this.A;
                            if (minecraftApplet != null && !minecraftApplet.isActive()) {
                                break;
                            }
                            eq.b();
                            bt.b();
                            if (this.m == null && Display.isCloseRequested()) {
                                f();
                            }
                            if (this.o && this.f != null) {
                                float f = this.T.c;
                                this.T.a();
                                this.T.c = f;
                            } else {
                                this.T.a();
                            }
                            long jNanoTime = System.nanoTime();
                            for (int i2 = 0; i2 < this.T.b; i2++) {
                                this.V++;
                                try {
                                    k();
                                } catch (us unused) {
                                    this.f = null;
                                    a((fd) null);
                                    a(new qh());
                                }
                            }
                            long jNanoTime2 = System.nanoTime() - jNanoTime;
                            c("Pre render");
                            cv.a = this.z.j;
                            this.B.a(this.h, this.T.c);
                            GL11.glEnable(3553);
                            fd fdVar = this.f;
                            if (fdVar != null) {
                                fdVar.j();
                            }
                            if (!Keyboard.isKeyDown(65)) {
                                Display.update();
                            }
                            dc dcVar = this.h;
                            if (dcVar != null && dcVar.L()) {
                                this.z.A = false;
                            }
                            if (!this.w) {
                                ob obVar = this.c;
                                if (obVar != null) {
                                    obVar.a(this.T.c);
                                }
                                this.t.b(this.T.c);
                            }
                            if (!Display.isActive()) {
                                if (this.Q) {
                                    j();
                                }
                                Thread.sleep(10L);
                            }
                            if (this.z.B) {
                                a(jNanoTime2);
                            } else {
                                this.M = System.nanoTime();
                            }
                            this.u.a();
                            Thread.yield();
                            if (Keyboard.isKeyDown(65)) {
                                Display.update();
                            }
                            z();
                            Canvas canvas = this.m;
                            if (canvas != null && !this.Q && (canvas.getWidth() != this.d || this.m.getHeight() != this.e)) {
                                this.d = this.m.getWidth();
                                int height = this.m.getHeight();
                                this.e = height;
                                if (this.d <= 0) {
                                    this.d = 1;
                                }
                                if (height <= 0) {
                                    this.e = 1;
                                }
                                a(this.d, this.e);
                            }
                            c("Post render");
                            i++;
                            this.o = (l() || (daVar = this.r) == null || !daVar.c()) ? false : true;
                            while (true) {
                                long j = 1000 + jCurrentTimeMillis;
                                if (System.currentTimeMillis() >= j) {
                                    this.K = i + " fps, " + dk.b + " chunk updates";
                                    dk.b = 0;
                                    i = 0;
                                    jCurrentTimeMillis = j;
                                }
                            }
                        } catch (us unused2) {
                            this.f = null;
                            a((fd) null);
                            a(new qh());
                        }
                    } catch (OutOfMemoryError unused3) {
                        e();
                        a(new x());
                        System.gc();
                    }
                }
            } catch (xx unused4) {
            } catch (Throwable th) {
                try {
                    e();
                    th.printStackTrace();
                    b(new mh("Unexpected error", th));
                } finally {
                    d();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            b(new mh("Failed to start game", e));
        }
    }

    public void e() {
        try {
            b = new byte[0];
            this.g.f();
        } catch (Throwable unused) {
        }
        try {
            System.gc();
            eq.a();
            bt.a();
        } catch (Throwable unused2) {
        }
        try {
            System.gc();
            a((fd) null);
        } catch (Throwable unused3) {
        }
        System.gc();
    }

    private void z() {
        if (Keyboard.isKeyDown(60)) {
            if (this.L) {
                return;
            }
            this.L = true;
            this.v.a(hj.a(af, this.d, this.e));
            return;
        }
        this.L = false;
    }

    private void a(long j) {
        long[] jArr;
        if (this.M == -1) {
            this.M = System.nanoTime();
        }
        long jNanoTime = System.nanoTime();
        long[] jArr2 = F;
        int i = G;
        long[] jArr3 = E;
        jArr2[(jArr3.length - 1) & i] = j;
        G = i + 1;
        jArr3[(jArr3.length - 1) & i] = jNanoTime - this.M;
        this.M = jNanoTime;
        GL11.glClear(Keyboard.KEYBOARD_SIZE);
        GL11.glMatrixMode(5889);
        GL11.glLoadIdentity();
        GL11.glOrtho(0.0d, this.d, this.e, 0.0d, 1000.0d, 3000.0d);
        GL11.glMatrixMode(5888);
        GL11.glLoadIdentity();
        GL11.glTranslatef(0.0f, 0.0f, -2000.0f);
        GL11.glLineWidth(1.0f);
        GL11.glDisable(3553);
        nw nwVar = nw.a;
        nwVar.a(7);
        int i2 = (int) 83;
        nwVar.b(536870912);
        nwVar.a(0.0d, this.e - i2, 0.0d);
        nwVar.a(0.0d, this.e, 0.0d);
        nwVar.a(E.length, this.e, 0.0d);
        nwVar.a(E.length, this.e - i2, 0.0d);
        nwVar.b(538968064);
        int i3 = i2 * 2;
        nwVar.a(0.0d, this.e - i3, 0.0d);
        nwVar.a(0.0d, this.e - i2, 0.0d);
        nwVar.a(E.length, this.e - i2, 0.0d);
        nwVar.a(E.length, this.e - i3, 0.0d);
        nwVar.a();
        int i4 = 0;
        long j2 = 0;
        int i5 = 0;
        while (true) {
            jArr = E;
            if (i5 >= jArr.length) {
                break;
            }
            j2 += jArr[i5];
            i5++;
        }
        int length = (int) ((j2 / 200000) / ((long) jArr.length));
        nwVar.a(7);
        nwVar.b(541065216);
        nwVar.a(0.0d, this.e - length, 0.0d);
        nwVar.a(0.0d, this.e, 0.0d);
        nwVar.a(E.length, this.e, 0.0d);
        nwVar.a(E.length, this.e - length, 0.0d);
        nwVar.a();
        nwVar.a(1);
        while (true) {
            long[] jArr4 = E;
            if (i4 < jArr4.length) {
                int length2 = (((i4 - G) & (jArr4.length - 1)) * 255) / jArr4.length;
                int i6 = (length2 * length2) / 255;
                int i7 = (i6 * i6) / 255;
                int i8 = (i7 * i7) / 255;
                int i9 = (i8 * i8) / 255;
                if (jArr4[i4] > 16666666) {
                    nwVar.b((i7 * 65536) - 16777216);
                } else {
                    nwVar.b((i7 * Keyboard.KEYBOARD_SIZE) - 16777216);
                }
                long j3 = E[i4] / 200000;
                long j4 = F[i4] / 200000;
                double d = i4 + 0.5f;
                nwVar.a(d, (((long) this.e) - j3) + 0.5f, 0.0d);
                nwVar.a(d, this.e + 0.5f, 0.0d);
                nwVar.b(((65536 * i7) - 16777216) + (i7 * Keyboard.KEYBOARD_SIZE) + (i7 * 1));
                nwVar.a(d, (((long) this.e) - j3) + 0.5f, 0.0d);
                nwVar.a(d, (((long) this.e) - (j3 - j4)) + 0.5f, 0.0d);
                i4++;
            } else {
                nwVar.a();
                GL11.glEnable(3553);
                return;
            }
        }
    }

    public void f() {
        this.J = false;
    }

    public void g() {
        if (Display.isActive() && !this.N) {
            this.N = true;
            this.C.a();
            a((da) null);
            this.W = 10000;
            this.ag = this.V + 10000;
        }
    }

    public void h() {
        if (this.N) {
            dc dcVar = this.h;
            if (dcVar != null) {
                dcVar.o_();
            }
            this.N = false;
            this.C.b();
        }
    }

    public void i() {
        if (this.r != null) {
            return;
        }
        a(new oz());
    }

    private void a(int i, boolean z) {
        vf vfVar;
        if (this.c.b) {
            return;
        }
        if (!z) {
            this.W = 0;
        }
        if (i != 0 || this.W <= 0) {
            if (z && (vfVar = this.y) != null && vfVar.a == jg.TILE && i == 0) {
                int i2 = this.y.b;
                int i3 = this.y.c;
                int i4 = this.y.d;
                this.c.c(i2, i3, i4, this.y.e);
                this.j.a(i2, i3, i4, this.y.e);
                return;
            }
            this.c.a();
        }
    }

    private void a(int i) {
        boolean z;
        iz izVarB;
        if (i != 0 || this.W <= 0) {
            if (i == 0) {
                this.h.J();
            }
            vf vfVar = this.y;
            if (vfVar == null) {
                if (i == 0 && !(this.c instanceof pj)) {
                    this.W = 10;
                }
            } else {
                if (vfVar.a != jg.ENTITY) {
                    if (this.y.a == jg.TILE) {
                        int i2 = this.y.b;
                        int i3 = this.y.c;
                        int i4 = this.y.d;
                        int i5 = this.y.e;
                        if (i == 0) {
                            this.c.a(i2, i3, i4, this.y.e);
                        } else {
                            iz izVarB2 = this.h.c.b();
                            z = false;
                            int i6 = izVarB2 != null ? izVarB2.a : 0;
                            if (this.c.a(this.h, this.f, izVarB2, i2, i3, i4, i5)) {
                                this.h.J();
                            } else {
                                z = true;
                            }
                            if (izVarB2 == null) {
                                return;
                            }
                            if (izVarB2.a == 0) {
                                this.h.c.a[this.h.c.c] = null;
                            } else if (izVarB2.a != i6) {
                                this.t.c.b();
                            }
                        }
                    }
                    if (z || i != 1 || (izVarB = this.h.c.b()) == null || !this.c.a(this.h, this.f, izVarB)) {
                        return;
                    }
                    this.t.c.c();
                    return;
                }
                if (i == 0) {
                    this.c.b(this.h, this.y.g);
                }
                if (i == 1) {
                    this.c.a(this.h, this.y.g);
                }
            }
            z = true;
            if (z) {
            }
        }
    }

    public void j() {
        try {
            boolean z = !this.Q;
            this.Q = z;
            if (z) {
                Display.setDisplayMode(Display.getDesktopDisplayMode());
                this.d = Display.getDisplayMode().getWidth();
                int height = Display.getDisplayMode().getHeight();
                this.e = height;
                if (this.d <= 0) {
                    this.d = 1;
                }
                if (height <= 0) {
                    this.e = 1;
                }
            } else {
                Canvas canvas = this.m;
                if (canvas != null) {
                    this.d = canvas.getWidth();
                    this.e = this.m.getHeight();
                } else {
                    this.d = this.X;
                    this.e = this.Y;
                }
                if (this.d <= 0) {
                    this.d = 1;
                }
                if (this.e <= 0) {
                    this.e = 1;
                }
            }
            if (this.r != null) {
                a(this.d, this.e);
            }
            Display.setFullscreen(this.Q);
            Display.update();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void a(int i, int i2) {
        if (i <= 0) {
            i = 1;
        }
        if (i2 <= 0) {
            i2 = 1;
        }
        this.d = i;
        this.e = i2;
        if (this.r != null) {
            qq qqVar = new qq(this.z, i, i2);
            this.r.a(this, qqVar.a(), qqVar.b());
        }
    }

    private void A() {
        vf vfVar = this.y;
        if (vfVar != null) {
            int iA = this.f.a(vfVar.b, this.y.c, this.y.d);
            if (iA == uu.v.bn) {
                iA = uu.w.bn;
            }
            if (iA == uu.ak.bn) {
                iA = uu.al.bn;
            }
            if (iA == uu.A.bn) {
                iA = uu.u.bn;
            }
            this.h.c.a(iA, this.c instanceof pj);
        }
    }

    private void B() {
        new kp(this).start();
    }

    public void k() {
        fd fdVar;
        dc dcVar;
        fd fdVar2;
        if (this.V == 6000) {
            B();
        }
        this.I.d();
        this.v.a();
        this.t.a(1.0f);
        if (this.h != null) {
            cl clVarW = this.f.w();
            if (clVarW instanceof kx) {
                ((kx) clVarW).d(in.d((int) this.h.aM) >> 4, in.d((int) this.h.aO) >> 4);
            }
        }
        if (!this.o && this.f != null) {
            this.c.c();
        }
        GL11.glBindTexture(3553, this.p.b("/terrain.png"));
        if (!this.o) {
            this.p.a();
        }
        da daVar = this.r;
        if (daVar == null && (dcVar = this.h) != null) {
            if (dcVar.Y <= 0) {
                a((da) null);
            } else if (this.h.N() && (fdVar2 = this.f) != null && fdVar2.B) {
                a(new gh());
            }
        } else if (daVar != null && (daVar instanceof gh) && !this.h.N()) {
            a((da) null);
        }
        da daVar2 = this.r;
        if (daVar2 != null) {
            this.W = 10000;
            this.ag = this.V + 10000;
        }
        if (daVar2 != null) {
            daVar2.e();
            da daVar3 = this.r;
            if (daVar3 != null) {
                daVar3.h.a();
                this.r.a();
            }
        }
        da daVar4 = this.r;
        if (daVar4 == null || daVar4.f) {
            while (true) {
                if (!Mouse.next()) {
                    break;
                }
                if (System.currentTimeMillis() - this.P <= 200) {
                    int eventDWheel = Mouse.getEventDWheel();
                    if (eventDWheel != 0) {
                        this.h.c.b(eventDWheel);
                        if (this.z.D) {
                            if (eventDWheel > 0) {
                                eventDWheel = 1;
                            }
                            int i = eventDWheel >= 0 ? eventDWheel : -1;
                            this.z.G += i * 0.25f;
                        }
                    }
                    da daVar5 = this.r;
                    if (daVar5 == null) {
                        if (!this.N && Mouse.getEventButtonState()) {
                            g();
                        } else {
                            if (Mouse.getEventButton() == 0 && Mouse.getEventButtonState()) {
                                a(0);
                                this.ag = this.V;
                            }
                            if (Mouse.getEventButton() == 1 && Mouse.getEventButtonState()) {
                                a(1);
                                this.ag = this.V;
                            }
                            if (Mouse.getEventButton() == 2 && Mouse.getEventButtonState()) {
                                A();
                            }
                        }
                    } else if (daVar5 != null) {
                        daVar5.f();
                    }
                }
            }
            int i2 = this.W;
            if (i2 > 0) {
                this.W = i2 - 1;
            }
            while (Keyboard.next()) {
                this.h.a(Keyboard.getEventKey(), Keyboard.getEventKeyState());
                if (Keyboard.getEventKeyState()) {
                    if (Keyboard.getEventKey() == 87) {
                        j();
                    } else {
                        da daVar6 = this.r;
                        if (daVar6 != null) {
                            daVar6.g();
                        } else {
                            if (Keyboard.getEventKey() == 1) {
                                i();
                            }
                            if (Keyboard.getEventKey() == 31 && Keyboard.isKeyDown(61)) {
                                C();
                            }
                            if (Keyboard.getEventKey() == 59) {
                                kv kvVar = this.z;
                                kvVar.z = !kvVar.z;
                            }
                            if (Keyboard.getEventKey() == 61) {
                                kv kvVar2 = this.z;
                                kvVar2.B = !kvVar2.B;
                            }
                            if (Keyboard.getEventKey() == 63) {
                                kv kvVar3 = this.z;
                                kvVar3.A = !kvVar3.A;
                            }
                            if (Keyboard.getEventKey() == 66) {
                                kv kvVar4 = this.z;
                                kvVar4.E = !kvVar4.E;
                            }
                            if (Keyboard.getEventKey() == this.z.r.b) {
                                a(new ue(this.h));
                            }
                            if (Keyboard.getEventKey() == this.z.s.b) {
                                this.h.D();
                            }
                            if (l() && Keyboard.getEventKey() == this.z.t.b) {
                                a(new gc());
                            }
                        }
                        for (int i3 = 0; i3 < 9; i3++) {
                            if (Keyboard.getEventKey() == i3 + 2) {
                                this.h.c.c = i3;
                            }
                        }
                        if (Keyboard.getEventKey() == this.z.u.b) {
                            this.z.a(ht.RENDER_DISTANCE, (Keyboard.isKeyDown(42) || Keyboard.isKeyDown(54)) ? -1 : 1);
                        }
                    }
                }
            }
            if (this.r == null) {
                if (Mouse.isButtonDown(0) && this.V - this.ag >= this.T.a / 4.0f && this.N) {
                    a(0);
                    this.ag = this.V;
                }
                if (Mouse.isButtonDown(1) && this.V - this.ag >= this.T.a / 4.0f && this.N) {
                    a(1);
                    this.ag = this.V;
                }
            }
            a(0, this.r == null && Mouse.isButtonDown(0) && this.N);
        }
        fd fdVar3 = this.f;
        if (fdVar3 != null) {
            dc dcVar2 = this.h;
            if (dcVar2 != null) {
                int i4 = this.ah + 1;
                this.ah = i4;
                if (i4 == 30) {
                    this.ah = 0;
                    fdVar3.g(dcVar2);
                }
            }
            this.f.q = this.z.y;
            if (this.f.B) {
                this.f.q = 3;
            }
            if (!this.o) {
                this.t.a();
            }
            if (!this.o) {
                this.g.d();
            }
            if (!this.o) {
                if (this.f.n > 0) {
                    this.f.n--;
                }
                this.f.g();
            }
            if (!this.o || l()) {
                this.f.a(this.z.y > 0, true);
                this.f.l();
            }
            if (!this.o && (fdVar = this.f) != null) {
                fdVar.q(in.b(this.h.aM), in.b(this.h.aN), in.b(this.h.aO));
            }
            if (!this.o) {
                this.j.a();
            }
        }
        this.P = System.currentTimeMillis();
    }

    private void C() {
        System.out.println("FORCING RELOAD!");
        yo yoVar = new yo();
        this.B = yoVar;
        yoVar.a(this.z);
        this.U.a();
    }

    public boolean l() {
        fd fdVar = this.f;
        return fdVar != null && fdVar.B;
    }

    public void a(String str, String str2, long j) {
        a((fd) null);
        System.gc();
        if (this.aa.a(str)) {
            b(str, str2);
            return;
        }
        fd fdVar = new fd(this.aa.a(str, false), str2, j);
        if (fdVar.s) {
            this.I.a(jl.g, 1);
            this.I.a(jl.f, 1);
            a(fdVar, "Generating level");
        } else {
            this.I.a(jl.h, 1);
            this.I.a(jl.f, 1);
            a(fdVar, "Loading level");
        }
    }

    public void m() {
        double d;
        double d2;
        System.out.println("Toggling dimension!!");
        if (this.h.m == -1) {
            this.h.m = 0;
        } else {
            this.h.m = -1;
        }
        this.f.e(this.h);
        this.h.be = false;
        double d3 = this.h.aM;
        double d4 = this.h.aO;
        if (this.h.m == -1) {
            d = d3 / 8.0d;
            d2 = d4 / 8.0d;
            dc dcVar = this.h;
            dcVar.c(d, dcVar.aN, d2, this.h.aS, this.h.aT);
            if (this.h.W()) {
                this.f.a((sn) this.h, false);
            }
            a(new fd(this.f, xa.a(-1)), "Entering the Nether", this.h);
        } else {
            d = d3 * 8.0d;
            d2 = d4 * 8.0d;
            dc dcVar2 = this.h;
            dcVar2.c(d, dcVar2.aN, d2, this.h.aS, this.h.aT);
            if (this.h.W()) {
                this.f.a((sn) this.h, false);
            }
            a(new fd(this.f, xa.a(0)), "Leaving the Nether", this.h);
        }
        double d5 = d;
        double d6 = d2;
        this.h.aI = this.f;
        if (this.h.W()) {
            dc dcVar3 = this.h;
            dcVar3.c(d5, dcVar3.aN, d6, this.h.aS, this.h.aT);
            this.f.a((sn) this.h, false);
            new ur().a(this.f, this.h);
        }
    }

    public void a(fd fdVar) {
        a(fdVar, "");
    }

    public void a(fd fdVar, String str) {
        a(fdVar, str, (gs) null);
    }

    public void a(fd fdVar, String str, gs gsVar) {
        this.I.b();
        this.I.c();
        this.i = null;
        this.s.a(str);
        this.s.d("");
        this.B.a(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
        fd fdVar2 = this.f;
        if (fdVar2 != null) {
            fdVar2.a(this.s);
        }
        this.f = fdVar;
        if (fdVar != null) {
            this.c.a(fdVar);
            if (l()) {
                dc dcVar = this.h;
                if (dcVar != null) {
                    dcVar.t_();
                    if (fdVar != null) {
                        fdVar.b(this.h);
                    }
                }
            } else if (gsVar == null) {
                this.h = (dc) fdVar.a(dc.class);
            }
            if (!fdVar.B) {
                d(str);
            }
            if (this.h == null) {
                dc dcVar2 = (dc) this.c.b(fdVar);
                this.h = dcVar2;
                dcVar2.t_();
                this.c.a(this.h);
            }
            this.h.a = new lr(this.z);
            n nVar = this.g;
            if (nVar != null) {
                nVar.a(fdVar);
            }
            dn dnVar = this.j;
            if (dnVar != null) {
                dnVar.a(fdVar);
            }
            this.c.b(this.h);
            if (gsVar != null) {
                fdVar.e();
            }
            cl clVarW = fdVar.w();
            if (clVarW instanceof kx) {
                ((kx) clVarW).d(in.d((int) this.h.aM) >> 4, in.d((int) this.h.aO) >> 4);
            }
            fdVar.a((gs) this.h);
            if (fdVar.s) {
                fdVar.a(this.s);
            }
            this.i = this.h;
        } else {
            this.h = null;
        }
        System.gc();
        this.P = 0L;
    }

    private void b(String str, String str2) {
        this.s.a("Converting World to " + this.aa.a());
        this.s.d("This may take a while :)");
        this.aa.a(str, this.s);
        a(str, str2, 0L);
    }

    private void d(String str) {
        this.s.a(str);
        this.s.d("Building terrain");
        cl clVarW = this.f.w();
        br brVarU = this.f.u();
        dc dcVar = this.h;
        if (dcVar != null) {
            brVarU.a = (int) dcVar.aM;
            brVarU.c = (int) this.h.aO;
        }
        if (clVarW instanceof kx) {
            ((kx) clVarW).d(brVarU.a >> 4, brVarU.c >> 4);
        }
        int i = 0;
        for (int i2 = -128; i2 <= 128; i2 += 16) {
            int i3 = -128;
            while (i3 <= 128) {
                int i4 = i + 1;
                this.s.a((i * 100) / 289);
                this.f.a(brVarU.a + i2, 64, brVarU.c + i3);
                while (this.f.j()) {
                }
                i3 += 16;
                i = i4;
            }
        }
        this.s.d("Simulating world for a bit");
        this.f.p();
    }

    public void a(String str, File file) {
        int iIndexOf = str.indexOf("/");
        String strSubstring = str.substring(0, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        if (strSubstring.equalsIgnoreCase("sound")) {
            this.B.a(strSubstring2, file);
            return;
        }
        if (strSubstring.equalsIgnoreCase("newsound")) {
            this.B.a(strSubstring2, file);
            return;
        }
        if (strSubstring.equalsIgnoreCase("streaming")) {
            this.B.b(strSubstring2, file);
        } else if (strSubstring.equalsIgnoreCase("music")) {
            this.B.c(strSubstring2, file);
        } else if (strSubstring.equalsIgnoreCase("newmusic")) {
            this.B.c(strSubstring2, file);
        }
    }

    public cx n() {
        return this.S;
    }

    public String o() {
        return this.g.b();
    }

    public String p() {
        return this.g.c();
    }

    public String q() {
        return this.f.i();
    }

    public String r() {
        return "P: " + this.j.b() + ". T: " + this.f.h();
    }

    public void a(boolean z, int i) {
        br brVarQ;
        br brVarU;
        boolean z2;
        if (!this.f.B && !this.f.t.f()) {
            m();
        }
        dc dcVar = this.h;
        if (dcVar == null || z) {
            brVarQ = null;
            brVarU = null;
        } else {
            brVarQ = dcVar.Q();
            if (brVarQ != null) {
                brVarU = gs.a(this.f, brVarQ);
                if (brVarU == null) {
                    this.h.b("tile.bed.notValid");
                }
            } else {
                brVarU = null;
            }
        }
        int i2 = 0;
        if (brVarU == null) {
            brVarU = this.f.u();
            z2 = false;
        } else {
            z2 = true;
        }
        cl clVarW = this.f.w();
        if (clVarW instanceof kx) {
            ((kx) clVarW).d(brVarU.a >> 4, brVarU.c >> 4);
        }
        this.f.d();
        this.f.v();
        dc dcVar2 = this.h;
        if (dcVar2 != null) {
            i2 = dcVar2.aD;
            this.f.e(this.h);
        }
        this.i = null;
        dc dcVar3 = (dc) this.c.b(this.f);
        this.h = dcVar3;
        dcVar3.m = i;
        dc dcVar4 = this.h;
        this.i = dcVar4;
        dcVar4.t_();
        if (z2) {
            this.h.a(brVarQ);
            this.h.c(brVarU.a + 0.5f, brVarU.b + 0.1f, brVarU.c + 0.5f, 0.0f, 0.0f);
        }
        this.c.a(this.h);
        this.f.a((gs) this.h);
        this.h.a = new lr(this.z);
        this.h.aD = i2;
        this.h.v();
        this.c.b(this.h);
        d("Respawning");
        if (this.r instanceof ch) {
            a((da) null);
        }
    }

    public static void a(String str, String str2) {
        a(str, str2, (String) null);
    }

    public static void a(String str, String str2, String str3) {
        Frame frame = new Frame("Minecraft");
        Canvas canvas = new Canvas();
        frame.setLayout(new BorderLayout());
        frame.add(canvas, BorderLayout.CENTER);
        canvas.setPreferredSize(new Dimension(854, 480));
        frame.pack();
        frame.setLocationRelativeTo(null);
        kq kqVar = new kq(frame, canvas, null, 854, 480, false, frame);
        Thread thread = new Thread(kqVar, "Minecraft main thread");
        thread.setPriority(10);
        kqVar.l = "www.minecraft.net";
        if (str != null && str2 != null) {
            kqVar.k = new gr(str, str2);
        } else {
            kqVar.k = new gr("Player" + (System.currentTimeMillis() % 1000), "");
        }
        if (str3 != null) {
            String[] strArrSplit = str3.split(":");
            kqVar.a(strArrSplit[0], Integer.parseInt(strArrSplit[1]));
        }
        frame.setVisible(true);
        frame.addWindowListener(new kj(kqVar, thread));
        thread.start();
    }

    public nb s() {
        dc dcVar = this.h;
        if (dcVar instanceof tk) {
            return ((tk) dcVar).bN;
        }
        return null;
    }

    public static void main(String[] strArr) {
        String str = "Player" + (System.currentTimeMillis() % 1000);
        if (strArr.length > 0) {
            str = strArr[0];
        }
        a(str, strArr.length > 1 ? strArr[1] : "-");
    }

    public static boolean t() {
        Minecraft minecraft = a;
        return minecraft == null || !minecraft.z.z;
    }

    public static boolean u() {
        Minecraft minecraft = a;
        return minecraft != null && minecraft.z.j;
    }

    public static boolean v() {
        Minecraft minecraft = a;
        return minecraft != null && minecraft.z.k;
    }

    public static boolean w() {
        Minecraft minecraft = a;
        return minecraft != null && minecraft.z.B;
    }

    public boolean b(String str) {
        str.startsWith("/");
        return false;
    }
}
