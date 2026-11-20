package defpackage;

import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class pf {
    public static int b;
    public static int c;
    private Socket h;
    private final SocketAddress i;
    private DataInputStream j;
    private DataOutputStream k;
    private ti p;
    private Thread r;
    private Thread s;
    private Object[] v;
    public static final Object a = new Object();
    public static int[] d = new int[Keyboard.KEYBOARD_SIZE];
    public static int[] e = new int[Keyboard.KEYBOARD_SIZE];
    private Object g = new Object();
    private boolean l = true;
    private List m = Collections.synchronizedList(new ArrayList());
    private List n = Collections.synchronizedList(new ArrayList());
    private List o = Collections.synchronizedList(new ArrayList());
    private boolean q = false;
    private boolean t = false;
    private String u = "";
    private int w = 0;
    private int x = 0;
    public int f = 0;
    private int y = 50;

    public pf(Socket socket, String str, ti tiVar) {
        this.h = socket;
        this.i = socket.getRemoteSocketAddress();
        this.p = tiVar;
        try {
            socket.setSoTimeout(30000);
            socket.setTrafficClass(24);
        } catch (SocketException e2) {
            System.err.println(e2.getMessage());
        }
        this.j = new DataInputStream(socket.getInputStream());
        this.k = new DataOutputStream(new BufferedOutputStream(socket.getOutputStream(), 5120));
        this.s = new xj(this, str + " read thread");
        this.r = new xl(this, str + " write thread");
        this.s.start();
        this.r.start();
    }

    public void a(ki kiVar) {
        if (this.q) {
            return;
        }
        synchronized (this.g) {
            this.x += kiVar.a() + 1;
            if (kiVar.k) {
                this.o.add(kiVar);
            } else {
                this.n.add(kiVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        boolean z;
        ki kiVar;
        ki kiVar2;
        try {
            if (this.n.isEmpty() || (this.f != 0 && System.currentTimeMillis() - ((ki) this.n.get(0)).j < this.f)) {
                z = false;
            } else {
                synchronized (this.g) {
                    kiVar2 = (ki) this.n.remove(0);
                    this.x -= kiVar2.a() + 1;
                }
                ki.a(kiVar2, this.k);
                int[] iArr = e;
                int iC = kiVar2.c();
                iArr[iC] = iArr[iC] + kiVar2.a() + 1;
                z = true;
            }
            int i = this.y;
            this.y = i - 1;
            if (i > 0 || this.o.isEmpty() || (this.f != 0 && System.currentTimeMillis() - ((ki) this.o.get(0)).j < this.f)) {
                return z;
            }
            synchronized (this.g) {
                kiVar = (ki) this.o.remove(0);
                this.x -= kiVar.a() + 1;
            }
            ki.a(kiVar, this.k);
            int[] iArr2 = e;
            int iC2 = kiVar.c();
            iArr2[iC2] = iArr2[iC2] + kiVar.a() + 1;
            this.y = 0;
            return true;
        } catch (Exception e2) {
            if (!this.t) {
                a(e2);
            }
            return false;
        }
    }

    public void a() {
        this.s.interrupt();
        this.r.interrupt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        try {
            ki kiVarA = ki.a(this.j, this.p.c());
            if (kiVarA != null) {
                int[] iArr = d;
                int iC = kiVarA.c();
                iArr[iC] = iArr[iC] + kiVarA.a() + 1;
                this.m.add(kiVarA);
                return true;
            }
            a("disconnect.endOfStream", new Object[0]);
            return false;
        } catch (Exception e2) {
            if (!this.t) {
                a(e2);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Exception exc) {
        exc.printStackTrace();
        a("disconnect.genericReason", "Internal exception: " + exc.toString());
    }

    public void a(String str, Object... objArr) {
        if (this.l) {
            this.t = true;
            this.u = str;
            this.v = objArr;
            new xg(this).start();
            this.l = false;
            try {
                this.j.close();
                this.j = null;
            } catch (Throwable unused) {
            }
            try {
                this.k.close();
                this.k = null;
            } catch (Throwable unused2) {
            }
            try {
                this.h.close();
                this.h = null;
            } catch (Throwable unused3) {
            }
        }
    }

    public void b() {
        if (this.x > 1048576) {
            a("disconnect.overflow", new Object[0]);
        }
        if (this.m.isEmpty()) {
            int i = this.w;
            this.w = i + 1;
            if (i == 1200) {
                a("disconnect.timeout", new Object[0]);
            }
        } else {
            this.w = 0;
        }
        int i2 = 100;
        while (!this.m.isEmpty()) {
            int i3 = i2 - 1;
            if (i2 < 0) {
                break;
            }
            ((ki) this.m.remove(0)).a(this.p);
            i2 = i3;
        }
        a();
        if (this.t && this.m.isEmpty()) {
            this.p.a(this.u, this.v);
        }
    }

    public void c() {
        a();
        this.q = true;
        this.s.interrupt();
        new xh(this).start();
    }
}
