package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class fd implements xp {
    static int A;
    public boolean B;
    private List C;
    private List D;
    private TreeSet E;
    private Set F;
    private List G;
    private long H;
    private long I;
    private boolean J;
    private ArrayList K;
    private boolean L;
    private int M;
    private boolean N;
    private boolean O;
    private Set P;
    private int Q;
    private List R;
    public boolean a;
    public List b;
    public List c;
    public List d;
    public List e;
    public int f;
    protected int g;
    public int gb;
    protected final int h;
    protected float i;
    protected float j;
    protected float k;
    protected float l;
    protected int m;
    public int n;
    public boolean o;
    protected int p;
    public int q;
    public Random r;
    public boolean s;
    public final xa t;
    protected List u;
    protected cl v;
    protected final wt w;
    protected ei x;
    public boolean y;
    public hc z;

    public sn a(Class cls) {
        return null;
    }

    public void a(sn snVar, byte b) {
    }

    public boolean a(gs gsVar, int i, int i2, int i3) {
        return true;
    }

    public void e() {
    }

    public void q() {
    }

    @Override // defpackage.xp
    public xv a() {
        return this.t.b;
    }

    public fd(wt wtVar, String str, xa xaVar, long j) {
        this.a = false;
        this.C = new ArrayList();
        this.b = new ArrayList();
        this.D = new ArrayList();
        this.E = new TreeSet();
        this.F = new HashSet();
        this.c = new ArrayList();
        this.G = new ArrayList();
        this.d = new ArrayList();
        this.e = new ArrayList();
        this.H = 16777215L;
        this.f = 0;
        this.g = new Random().nextInt();
        this.h = 1013904223;
        this.m = 0;
        this.n = 0;
        this.o = false;
        this.I = System.currentTimeMillis();
        this.p = Keyboard.KEY_UP;
        this.r = new Random();
        this.s = false;
        this.u = new ArrayList();
        this.K = new ArrayList();
        this.M = 0;
        this.N = true;
        this.O = true;
        this.P = new HashSet();
        this.Q = this.r.nextInt(12000);
        this.R = new ArrayList();
        this.B = false;
        this.w = wtVar;
        this.x = new ei(j, str);
        this.t = xaVar;
        this.z = new hc(wtVar);
        xaVar.a(this);
        this.v = b();
        k();
        E();
    }

    public fd(fd fdVar, xa xaVar) {
        this.a = false;
        this.C = new ArrayList();
        this.b = new ArrayList();
        this.D = new ArrayList();
        this.E = new TreeSet();
        this.F = new HashSet();
        this.c = new ArrayList();
        this.G = new ArrayList();
        this.d = new ArrayList();
        this.e = new ArrayList();
        this.H = 16777215L;
        this.f = 0;
        this.g = new Random().nextInt();
        this.h = 1013904223;
        this.m = 0;
        this.n = 0;
        this.o = false;
        this.I = System.currentTimeMillis();
        this.p = Keyboard.KEY_UP;
        this.r = new Random();
        this.s = false;
        this.u = new ArrayList();
        this.K = new ArrayList();
        this.M = 0;
        this.N = true;
        this.O = true;
        this.P = new HashSet();
        this.Q = this.r.nextInt(12000);
        this.R = new ArrayList();
        this.B = false;
        this.I = fdVar.I;
        wt wtVar = fdVar.w;
        this.w = wtVar;
        this.x = new ei(fdVar.x);
        this.z = new hc(wtVar);
        this.t = xaVar;
        xaVar.a(this);
        this.v = b();
        k();
        E();
    }

    public fd(wt wtVar, String str, long j) {
        this(wtVar, str, j, (xa) null);
    }

    public fd(wt wtVar, String str, long j, xa xaVar) {
        boolean z = false;
        this.a = false;
        this.C = new ArrayList();
        this.b = new ArrayList();
        this.D = new ArrayList();
        this.E = new TreeSet();
        this.F = new HashSet();
        this.c = new ArrayList();
        this.G = new ArrayList();
        this.d = new ArrayList();
        this.e = new ArrayList();
        this.H = 16777215L;
        this.f = 0;
        this.g = new Random().nextInt();
        this.h = 1013904223;
        this.m = 0;
        this.n = 0;
        this.o = false;
        this.I = System.currentTimeMillis();
        this.p = Keyboard.KEY_UP;
        this.r = new Random();
        this.s = false;
        this.u = new ArrayList();
        this.K = new ArrayList();
        this.M = 0;
        this.N = true;
        this.O = true;
        this.P = new HashSet();
        this.Q = this.r.nextInt(12000);
        this.R = new ArrayList();
        this.B = false;
        this.w = wtVar;
        this.z = new hc(wtVar);
        ei eiVarC = wtVar.c();
        this.x = eiVarC;
        this.s = eiVarC == null;
        if (xaVar != null) {
            this.t = xaVar;
        } else if (eiVarC != null && eiVarC.i() == -1) {
            this.t = xa.a(-1);
        } else {
            this.t = xa.a(0);
        }
        ei eiVar = this.x;
        if (eiVar == null) {
            this.x = new ei(j, str);
            z = true;
        } else {
            eiVar.a(str);
        }
        this.t.a(this);
        this.v = b();
        if (z) {
            c();
        }
        k();
        E();
    }

    protected cl b() {
        return new ok(this, this.w.a(this.t), this.t.b());
    }

    protected void c() {
        this.y = true;
        int iNextInt = 0;
        int iNextInt2 = 0;
        while (!this.t.a(iNextInt, iNextInt2)) {
            iNextInt += this.r.nextInt(64) - this.r.nextInt(64);
            iNextInt2 += this.r.nextInt(64) - this.r.nextInt(64);
        }
        this.x.a(iNextInt, 64, iNextInt2);
        this.y = false;
    }

    public void d() {
        if (this.x.d() <= 0) {
            this.x.b(64);
        }
        int iC = this.x.c();
        int iE = this.x.e();
        while (a(iC, iE) == 0) {
            iC += this.r.nextInt(8) - this.r.nextInt(8);
            iE += this.r.nextInt(8) - this.r.nextInt(8);
        }
        this.x.a(iC);
        this.x.c(iE);
    }

    public int a(int i, int i2) {
        int i3 = 63;
        while (true) {
            int i4 = i3 + 1;
            if (d(i, i4, i2)) {
                return a(i, i3, i2);
            }
            i3 = i4;
        }
    }

    public void a(gs gsVar) {
        try {
            nu nuVarH = this.x.h();
            if (nuVarH != null) {
                gsVar.e(nuVarH);
                this.x.a((nu) null);
            }
            cl clVar = this.v;
            if (clVar instanceof kx) {
                ((kx) clVar).d(in.d((int) gsVar.aM) >> 4, in.d((int) gsVar.aO) >> 4);
            }
            b(gsVar);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(boolean z, yb ybVar) {
        if (this.v.b()) {
            if (ybVar != null) {
                ybVar.b("Saving level");
            }
            D();
            if (ybVar != null) {
                ybVar.d("Saving chunks");
            }
            this.v.a(z, ybVar);
        }
    }

    private void D() {
        r();
        this.w.a(this.x, this.d);
        this.z.a();
    }

    public boolean a(int i) {
        if (!this.v.b()) {
            return true;
        }
        if (i == 0) {
            D();
        }
        return this.v.a(false, (yb) null);
    }

    @Override // defpackage.xp
    public int a(int i, int i2, int i3) {
        if (i < -32000000 || i3 < -32000000 || i >= 32000000 || i3 > 32000000 || i2 < 0 || i2 >= 128) {
            return 0;
        }
        return c(i >> 4, i3 >> 4).a(i & 15, i2, i3 & 15);
    }

    public boolean d(int i, int i2, int i3) {
        return a(i, i2, i3) == 0;
    }

    public boolean i(int i, int i2, int i3) {
        if (i2 < 0 || i2 >= 128) {
            return false;
        }
        return f(i >> 4, i3 >> 4);
    }

    public boolean b(int i, int i2, int i3, int i4) {
        return a(i - i4, i2 - i4, i3 - i4, i + i4, i2 + i4, i3 + i4);
    }

    public boolean a(int i, int i2, int i3, int i4, int i5, int i6) {
        if (i5 < 0 || i2 >= 128) {
            return false;
        }
        int i7 = i3 >> 4;
        int i8 = i4 >> 4;
        int i9 = i6 >> 4;
        for (int i10 = i >> 4; i10 <= i8; i10++) {
            for (int i11 = i7; i11 <= i9; i11++) {
                if (!f(i10, i11)) {
                    return false;
                }
            }
        }
        return true;
    }

    private boolean f(int i, int i2) {
        return this.v.a(i, i2);
    }

    public lm b(int i, int i2) {
        return c(i >> 4, i2 >> 4);
    }

    public lm c(int i, int i2) {
        return this.v.b(i, i2);
    }

    public boolean a(int i, int i2, int i3, int i4, int i5) {
        if (i < -32000000 || i3 < -32000000 || i >= 32000000 || i3 > 32000000 || i2 < 0 || i2 >= 128) {
            return false;
        }
        return c(i >> 4, i3 >> 4).a(i & 15, i2, i3 & 15, i4, i5);
    }

    public boolean c(int i, int i2, int i3, int i4) {
        if (i < -32000000 || i3 < -32000000 || i >= 32000000 || i3 > 32000000 || i2 < 0 || i2 >= 128) {
            return false;
        }
        return c(i >> 4, i3 >> 4).a(i & 15, i2, i3 & 15, i4);
    }

    @Override // defpackage.xp
    public ln f(int i, int i2, int i3) {
        int iA = a(i, i2, i3);
        if (iA == 0) {
            return ln.a;
        }
        return uu.m[iA].bA;
    }

    @Override // defpackage.xp
    public int e(int i, int i2, int i3) {
        if (i < -32000000 || i3 < -32000000 || i >= 32000000 || i3 > 32000000 || i2 < 0 || i2 >= 128) {
            return 0;
        }
        return c(i >> 4, i3 >> 4).b(i & 15, i2, i3 & 15);
    }

    public void d(int i, int i2, int i3, int i4) {
        if (e(i, i2, i3, i4)) {
            int iA = a(i, i2, i3);
            if (uu.t[iA & 255]) {
                g(i, i2, i3, iA);
            } else {
                i(i, i2, i3, iA);
            }
        }
    }

    public boolean e(int i, int i2, int i3, int i4) {
        if (i < -32000000 || i3 < -32000000 || i >= 32000000 || i3 > 32000000 || i2 < 0 || i2 >= 128) {
            return false;
        }
        c(i >> 4, i3 >> 4).b(i & 15, i2, i3 & 15, i4);
        return true;
    }

    public boolean f(int i, int i2, int i3, int i4) {
        if (!c(i, i2, i3, i4)) {
            return false;
        }
        g(i, i2, i3, i4);
        return true;
    }

    public boolean b(int i, int i2, int i3, int i4, int i5) {
        if (!a(i, i2, i3, i4, i5)) {
            return false;
        }
        g(i, i2, i3, i4);
        return true;
    }

    public void j(int i, int i2, int i3) {
        for (int i4 = 0; i4 < this.u.size(); i4++) {
            ((pm) this.u.get(i4)).a(i, i2, i3);
        }
    }

    protected void g(int i, int i2, int i3, int i4) {
        j(i, i2, i3);
        i(i, i2, i3, i4);
    }

    public void h(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (i3 > i4) {
            i6 = i3;
            i5 = i4;
        } else {
            i5 = i3;
            i6 = i4;
        }
        b(i, i5, i2, i, i6, i2);
    }

    public void k(int i, int i2, int i3) {
        for (int i4 = 0; i4 < this.u.size(); i4++) {
            ((pm) this.u.get(i4)).b(i, i2, i3, i, i2, i3);
        }
    }

    public void b(int i, int i2, int i3, int i4, int i5, int i6) {
        for (int i7 = 0; i7 < this.u.size(); i7++) {
            ((pm) this.u.get(i7)).b(i, i2, i3, i4, i5, i6);
        }
    }

    public void i(int i, int i2, int i3, int i4) {
        l(i - 1, i2, i3, i4);
        l(i + 1, i2, i3, i4);
        l(i, i2 - 1, i3, i4);
        l(i, i2 + 1, i3, i4);
        l(i, i2, i3 - 1, i4);
        l(i, i2, i3 + 1, i4);
    }

    private void l(int i, int i2, int i3, int i4) {
        uu uuVar;
        if (this.o || this.B || (uuVar = uu.m[a(i, i2, i3)]) == null) {
            return;
        }
        uuVar.b(this, i, i2, i3, i4);
    }

    public boolean l(int i, int i2, int i3) {
        return c(i >> 4, i3 >> 4).c(i & 15, i2, i3 & 15);
    }

    public int m(int i, int i2, int i3) {
        if (i2 < 0) {
            return 0;
        }
        if (i2 >= 128) {
            i2 = 127;
        }
        return c(i >> 4, i3 >> 4).c(i & 15, i2, i3 & 15, 0);
    }

    public int n(int i, int i2, int i3) {
        return a(i, i2, i3, true);
    }

    public int a(int i, int i2, int i3, boolean z) {
        int iA;
        if (i < -32000000 || i3 < -32000000 || i >= 32000000 || i3 > 32000000) {
            return 15;
        }
        if (!z || ((iA = a(i, i2, i3)) != uu.al.bn && iA != uu.aB.bn && iA != uu.aI.bn && iA != uu.au.bn)) {
            if (i2 < 0) {
                return 0;
            }
            if (i2 >= 128) {
                i2 = 127;
            }
            return c(i >> 4, i3 >> 4).c(i & 15, i2, i3 & 15, this.f);
        }
        int iA2 = a(i, i2 + 1, i3, false);
        int iA3 = a(i + 1, i2, i3, false);
        int iA4 = a(i - 1, i2, i3, false);
        int iA5 = a(i, i2, i3 + 1, false);
        int iA6 = a(i, i2, i3 - 1, false);
        if (iA3 > iA2) {
            iA2 = iA3;
        }
        if (iA4 <= iA2) {
            iA4 = iA2;
        }
        if (iA5 <= iA4) {
            iA5 = iA4;
        }
        return iA6 > iA5 ? iA6 : iA5;
    }

    public boolean o(int i, int i2, int i3) {
        if (i < -32000000 || i3 < -32000000 || i >= 32000000 || i3 > 32000000 || i2 < 0) {
            return false;
        }
        if (i2 >= 128) {
            return true;
        }
        int i4 = i >> 4;
        int i5 = i3 >> 4;
        if (f(i4, i5)) {
            return c(i4, i5).c(i & 15, i2, i3 & 15);
        }
        return false;
    }

    public int d(int i, int i2) {
        if (i < -32000000 || i2 < -32000000 || i >= 32000000 || i2 > 32000000) {
            return 0;
        }
        int i3 = i >> 4;
        int i4 = i2 >> 4;
        if (f(i3, i4)) {
            return c(i3, i4).b(i & 15, i2 & 15);
        }
        return 0;
    }

    public void a(eb ebVar, int i, int i2, int i3, int i4) {
        if (!(this.t.e && ebVar == eb.Sky) && i(i, i2, i3)) {
            if (ebVar == eb.Sky) {
                if (o(i, i2, i3)) {
                    i4 = 15;
                }
            } else if (ebVar == eb.Block) {
                int iA = a(i, i2, i3);
                if (uu.s[iA] > i4) {
                    i4 = uu.s[iA];
                }
            }
            if (a(ebVar, i, i2, i3) != i4) {
                a(ebVar, i, i2, i3, i, i2, i3);
            }
        }
    }

    public int a(eb ebVar, int i, int i2, int i3) {
        if (i2 < 0) {
            i2 = 0;
        }
        if (i2 >= 128) {
            i2 = 127;
        }
        if (i2 < 0 || i2 >= 128 || i < -32000000 || i3 < -32000000 || i >= 32000000 || i3 > 32000000) {
            return ebVar.c;
        }
        int i4 = i >> 4;
        int i5 = i3 >> 4;
        if (f(i4, i5)) {
            return c(i4, i5).a(ebVar, i & 15, i2, i3 & 15);
        }
        return 0;
    }

    public void b(eb ebVar, int i, int i2, int i3, int i4) {
        if (i < -32000000 || i3 < -32000000 || i >= 32000000 || i3 > 32000000 || i2 < 0 || i2 >= 128) {
            return;
        }
        int i5 = i >> 4;
        int i6 = i3 >> 4;
        if (f(i5, i6)) {
            c(i5, i6).a(ebVar, i & 15, i2, i3 & 15, i4);
            for (int i7 = 0; i7 < this.u.size(); i7++) {
                ((pm) this.u.get(i7)).a(i, i2, i3);
            }
        }
    }

    @Override // defpackage.xp
    public float a(int i, int i2, int i3, int i4) {
        int iN = n(i, i2, i3);
        if (iN >= i4) {
            i4 = iN;
        }
        return this.t.f[i4];
    }

    @Override // defpackage.xp
    public float c(int i, int i2, int i3) {
        return this.t.f[n(i, i2, i3)];
    }

    public boolean f() {
        return this.f < 4;
    }

    public vf a(bt btVar, bt btVar2) {
        return a(btVar, btVar2, false, false);
    }

    public vf a(bt btVar, bt btVar2, boolean z) {
        return a(btVar, btVar2, z, false);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:104:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:107:0x0203 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:111:0x020c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:114:0x0216  */
    /* JADX WARN: Code duplicated, block: B:118:0x022a A[PHI: r13
      0x022a: PHI (r13v11 boolean) = (r13v8 boolean), (r13v12 boolean) binds: [B:113:0x0214, B:117:0x0228] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:133:0x0227 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:135:0x022b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:60:0x00fd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:62:0x0105  */
    /* JADX WARN: Code duplicated, block: B:65:0x0122  */
    /* JADX WARN: Code duplicated, block: B:66:0x0128  */
    /* JADX WARN: Code duplicated, block: B:69:0x012e  */
    /* JADX WARN: Code duplicated, block: B:70:0x0134  */
    /* JADX WARN: Code duplicated, block: B:73:0x013a  */
    /* JADX WARN: Code duplicated, block: B:76:0x0145  */
    /* JADX WARN: Code duplicated, block: B:83:0x0161  */
    /* JADX WARN: Code duplicated, block: B:85:0x0167  */
    /* JADX WARN: Code duplicated, block: B:87:0x016d  */
    /* JADX WARN: Code duplicated, block: B:88:0x016f  */
    /* JADX WARN: Code duplicated, block: B:91:0x0184  */
    /* JADX WARN: Code duplicated, block: B:93:0x018c  */
    /* JADX WARN: Code duplicated, block: B:94:0x018f  */
    /* JADX WARN: Code duplicated, block: B:98:0x01bf  */
    public vf a(bt btVar, bt btVar2, boolean z, boolean z2) {
        double d;
        boolean z3;
        int i;
        double d2;
        boolean z4;
        double d3;
        boolean z5;
        int i2;
        int i3;
        double d4;
        double d5;
        double d6;
        double d7;
        double d8;
        double d9;
        int i4;
        double d10;
        int i5;
        int i6;
        int i7;
        char c;
        char c2;
        bt btVarB;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int iE;
        uu uuVar;
        boolean z6;
        vf vfVarA;
        fd fdVar = this;
        bt btVar3 = btVar2;
        vf vfVar = null;
        if (Double.isNaN(btVar.a) || Double.isNaN(btVar.b) || Double.isNaN(btVar.c)) {
            return null;
        }
        if (Double.isNaN(btVar3.a) || Double.isNaN(btVar3.b) || Double.isNaN(btVar3.c)) {
            return null;
        }
        int iB = in.b(btVar3.a);
        int iB2 = in.b(btVar3.b);
        int iB3 = in.b(btVar3.c);
        int iB4 = in.b(btVar.a);
        int iB5 = in.b(btVar.b);
        int iB6 = in.b(btVar.c);
        int iA = fdVar.a(iB4, iB5, iB6);
        int iE2 = fdVar.e(iB4, iB5, iB6);
        uu uuVar2 = uu.m[iA];
        if ((!z2 || uuVar2 == null || uuVar2.e(fdVar, iB4, iB5, iB6) != null) && iA > 0 && uuVar2.a(iE2, z)) {
            vf vfVarA2 = uuVar2.a(this, iB4, iB5, iB6, btVar, btVar2);
            if (vfVarA2 != null) {
                return vfVarA2;
            }
        }
        int i13 = Keyboard.KEY_UP;
        int i14 = iB6;
        int i15 = iB5;
        while (true) {
            int i16 = i13 - 1;
            if (i13 < 0) {
                return vfVar;
            }
            if (Double.isNaN(btVar.a) || Double.isNaN(btVar.b) || Double.isNaN(btVar.c)) {
                return vfVar;
            }
            if (iB4 == iB && i15 == iB2 && i14 == iB3) {
                return vfVar;
            }
            if (iB > iB4) {
                d = ((double) iB4) + 1.0d;
            } else {
                if (iB < iB4) {
                    d = ((double) iB4) + 0.0d;
                } else {
                    d = 999.0d;
                    z3 = false;
                }
                if (iB2 > i15) {
                    i = iB;
                    d2 = ((double) i15) + 1.0d;
                } else {
                    i = iB;
                    if (iB2 < i15) {
                        d2 = ((double) i15) + 0.0d;
                    } else {
                        d2 = 999.0d;
                        z4 = false;
                    }
                    if (iB3 > i14) {
                        d3 = ((double) i14) + 1.0d;
                    } else {
                        if (iB3 < i14) {
                            d3 = 0.0d + ((double) i14);
                        } else {
                            i15 = i15;
                            i14 = i14;
                            d3 = 999.0d;
                            z5 = false;
                        }
                        i2 = iB2;
                        i3 = iB3;
                        d4 = btVar3.a - btVar.a;
                        d5 = d3;
                        d6 = btVar3.b - btVar.b;
                        d7 = btVar3.c - btVar.c;
                        if (z3) {
                            d8 = (d - btVar.a) / d4;
                        } else {
                            d8 = 999.0d;
                        }
                        if (z4) {
                            d9 = (d2 - btVar.b) / d6;
                        } else {
                            d9 = 999.0d;
                        }
                        i4 = i14;
                        d10 = z5 ? (d5 - btVar.c) / d7 : 999.0d;
                        if (d8 >= d9 && d8 < d10) {
                            i5 = i;
                            c = i5 > iB4 ? (char) 4 : (char) 5;
                            btVar.a = d;
                            btVar.b += d6 * d8;
                            btVar.c += d7 * d8;
                            i6 = i2;
                        } else {
                            i5 = i;
                            if (d9 < d10) {
                                i6 = i2;
                                if (i6 > i15) {
                                    c2 = 0;
                                } else {
                                    c2 = 1;
                                }
                                btVar.a += d4 * d9;
                                btVar.b = d2;
                                btVar.c += d7 * d9;
                                c = c2;
                            } else {
                                i6 = i2;
                                i7 = i3;
                                if (i7 > i4) {
                                    c = 2;
                                } else {
                                    c = 3;
                                }
                                btVar.a += d4 * d10;
                                btVar.b += d6 * d10;
                                btVar.c = d5;
                            }
                            btVarB = bt.b(btVar.a, btVar.b, btVar.c);
                            double dB = in.b(btVar.a);
                            btVarB.a = dB;
                            i8 = (int) dB;
                            if (c == 5) {
                                i8--;
                                btVarB.a += 1.0d;
                            }
                            iB4 = i8;
                            double dB2 = in.b(btVar.b);
                            btVarB.b = dB2;
                            i9 = (int) dB2;
                            if (c == 1) {
                                i9--;
                                btVarB.b += 1.0d;
                            }
                            i10 = i9;
                            double dB3 = in.b(btVar.c);
                            btVarB.c = dB3;
                            i11 = (int) dB3;
                            if (c == 3) {
                                i11--;
                                btVarB.c += 1.0d;
                            }
                            i12 = i11;
                            int iA2 = a(iB4, i10, i12);
                            iE = e(iB4, i10, i12);
                            uuVar = uu.m[iA2];
                            if ((z2 || uuVar == null || uuVar.e(this, iB4, i10, i12) != null) && iA2 > 0) {
                                z6 = z;
                                if (uuVar.a(iE, z6)) {
                                    vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                                    if (vfVarA != null) {
                                        return vfVarA;
                                    }
                                }
                                i14 = i12;
                                i15 = i10;
                                fdVar = this;
                                iB = i5;
                                i13 = i16;
                                vfVar = null;
                                iB3 = i7;
                                iB2 = i6;
                                btVar3 = btVar2;
                            } else {
                                z6 = z;
                            }
                            i14 = i12;
                            i15 = i10;
                            fdVar = this;
                            iB = i5;
                            i13 = i16;
                            vfVar = null;
                            iB3 = i7;
                            iB2 = i6;
                            btVar3 = btVar2;
                        }
                        i7 = i3;
                        btVarB = bt.b(btVar.a, btVar.b, btVar.c);
                        double dB4 = in.b(btVar.a);
                        btVarB.a = dB4;
                        i8 = (int) dB4;
                        if (c == 5) {
                            i8--;
                            btVarB.a += 1.0d;
                        }
                        iB4 = i8;
                        double dB5 = in.b(btVar.b);
                        btVarB.b = dB5;
                        i9 = (int) dB5;
                        if (c == 1) {
                            i9--;
                            btVarB.b += 1.0d;
                        }
                        i10 = i9;
                        double dB6 = in.b(btVar.c);
                        btVarB.c = dB6;
                        i11 = (int) dB6;
                        if (c == 3) {
                            i11--;
                            btVarB.c += 1.0d;
                        }
                        i12 = i11;
                        int iA3 = a(iB4, i10, i12);
                        iE = e(iB4, i10, i12);
                        uuVar = uu.m[iA3];
                        if (z2) {
                            z6 = z;
                            if (uuVar.a(iE, z6)) {
                                vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                                if (vfVarA != null) {
                                    return vfVarA;
                                }
                            }
                        } else {
                            z6 = z;
                            if (uuVar.a(iE, z6)) {
                                vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                                if (vfVarA != null) {
                                    return vfVarA;
                                }
                            }
                        }
                        i14 = i12;
                        i15 = i10;
                        fdVar = this;
                        iB = i5;
                        i13 = i16;
                        vfVar = null;
                        iB3 = i7;
                        iB2 = i6;
                        btVar3 = btVar2;
                    }
                    z5 = true;
                    i2 = iB2;
                    i3 = iB3;
                    d4 = btVar3.a - btVar.a;
                    d5 = d3;
                    d6 = btVar3.b - btVar.b;
                    d7 = btVar3.c - btVar.c;
                    if (z3) {
                        d8 = (d - btVar.a) / d4;
                    } else {
                        d8 = 999.0d;
                    }
                    if (z4) {
                        d9 = (d2 - btVar.b) / d6;
                    } else {
                        d9 = 999.0d;
                    }
                    i4 = i14;
                    if (z5) {
                    }
                    if (d8 >= d9) {
                        i5 = i;
                        if (d9 < d10) {
                            i6 = i2;
                            if (i6 > i15) {
                                c2 = 0;
                            } else {
                                c2 = 1;
                            }
                            btVar.a += d4 * d9;
                            btVar.b = d2;
                            btVar.c += d7 * d9;
                            c = c2;
                            i7 = i3;
                        } else {
                            i6 = i2;
                            i7 = i3;
                            if (i7 > i4) {
                                c = 2;
                            } else {
                                c = 3;
                            }
                            btVar.a += d4 * d10;
                            btVar.b += d6 * d10;
                            btVar.c = d5;
                        }
                    } else {
                        i5 = i;
                        if (d9 < d10) {
                            i6 = i2;
                            if (i6 > i15) {
                                c2 = 0;
                            } else {
                                c2 = 1;
                            }
                            btVar.a += d4 * d9;
                            btVar.b = d2;
                            btVar.c += d7 * d9;
                            c = c2;
                            i7 = i3;
                        } else {
                            i6 = i2;
                            i7 = i3;
                            if (i7 > i4) {
                                c = 2;
                            } else {
                                c = 3;
                            }
                            btVar.a += d4 * d10;
                            btVar.b += d6 * d10;
                            btVar.c = d5;
                        }
                    }
                    btVarB = bt.b(btVar.a, btVar.b, btVar.c);
                    double dB7 = in.b(btVar.a);
                    btVarB.a = dB7;
                    i8 = (int) dB7;
                    if (c == 5) {
                        i8--;
                        btVarB.a += 1.0d;
                    }
                    iB4 = i8;
                    double dB8 = in.b(btVar.b);
                    btVarB.b = dB8;
                    i9 = (int) dB8;
                    if (c == 1) {
                        i9--;
                        btVarB.b += 1.0d;
                    }
                    i10 = i9;
                    double dB9 = in.b(btVar.c);
                    btVarB.c = dB9;
                    i11 = (int) dB9;
                    if (c == 3) {
                        i11--;
                        btVarB.c += 1.0d;
                    }
                    i12 = i11;
                    int iA4 = a(iB4, i10, i12);
                    iE = e(iB4, i10, i12);
                    uuVar = uu.m[iA4];
                    if (z2) {
                        z6 = z;
                        if (uuVar.a(iE, z6)) {
                            vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                            if (vfVarA != null) {
                                return vfVarA;
                            }
                        }
                    } else {
                        z6 = z;
                        if (uuVar.a(iE, z6)) {
                            vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                            if (vfVarA != null) {
                                return vfVarA;
                            }
                        }
                    }
                    i14 = i12;
                    i15 = i10;
                    fdVar = this;
                    iB = i5;
                    i13 = i16;
                    vfVar = null;
                    iB3 = i7;
                    iB2 = i6;
                    btVar3 = btVar2;
                }
                z4 = true;
                if (iB3 > i14) {
                    d3 = ((double) i14) + 1.0d;
                } else {
                    if (iB3 < i14) {
                        d3 = 0.0d + ((double) i14);
                    } else {
                        i15 = i15;
                        i14 = i14;
                        d3 = 999.0d;
                        z5 = false;
                    }
                    i2 = iB2;
                    i3 = iB3;
                    d4 = btVar3.a - btVar.a;
                    d5 = d3;
                    d6 = btVar3.b - btVar.b;
                    d7 = btVar3.c - btVar.c;
                    if (z3) {
                        d8 = (d - btVar.a) / d4;
                    } else {
                        d8 = 999.0d;
                    }
                    if (z4) {
                        d9 = (d2 - btVar.b) / d6;
                    } else {
                        d9 = 999.0d;
                    }
                    i4 = i14;
                    if (z5) {
                    }
                    if (d8 >= d9) {
                        i5 = i;
                        if (d9 < d10) {
                            i6 = i2;
                            if (i6 > i15) {
                                c2 = 0;
                            } else {
                                c2 = 1;
                            }
                            btVar.a += d4 * d9;
                            btVar.b = d2;
                            btVar.c += d7 * d9;
                            c = c2;
                            i7 = i3;
                        } else {
                            i6 = i2;
                            i7 = i3;
                            if (i7 > i4) {
                                c = 2;
                            } else {
                                c = 3;
                            }
                            btVar.a += d4 * d10;
                            btVar.b += d6 * d10;
                            btVar.c = d5;
                        }
                    } else {
                        i5 = i;
                        if (d9 < d10) {
                            i6 = i2;
                            if (i6 > i15) {
                                c2 = 0;
                            } else {
                                c2 = 1;
                            }
                            btVar.a += d4 * d9;
                            btVar.b = d2;
                            btVar.c += d7 * d9;
                            c = c2;
                            i7 = i3;
                        } else {
                            i6 = i2;
                            i7 = i3;
                            if (i7 > i4) {
                                c = 2;
                            } else {
                                c = 3;
                            }
                            btVar.a += d4 * d10;
                            btVar.b += d6 * d10;
                            btVar.c = d5;
                        }
                    }
                    btVarB = bt.b(btVar.a, btVar.b, btVar.c);
                    double dB10 = in.b(btVar.a);
                    btVarB.a = dB10;
                    i8 = (int) dB10;
                    if (c == 5) {
                        i8--;
                        btVarB.a += 1.0d;
                    }
                    iB4 = i8;
                    double dB11 = in.b(btVar.b);
                    btVarB.b = dB11;
                    i9 = (int) dB11;
                    if (c == 1) {
                        i9--;
                        btVarB.b += 1.0d;
                    }
                    i10 = i9;
                    double dB12 = in.b(btVar.c);
                    btVarB.c = dB12;
                    i11 = (int) dB12;
                    if (c == 3) {
                        i11--;
                        btVarB.c += 1.0d;
                    }
                    i12 = i11;
                    int iA5 = a(iB4, i10, i12);
                    iE = e(iB4, i10, i12);
                    uuVar = uu.m[iA5];
                    if (z2) {
                        z6 = z;
                        if (uuVar.a(iE, z6)) {
                            vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                            if (vfVarA != null) {
                                return vfVarA;
                            }
                        }
                    } else {
                        z6 = z;
                        if (uuVar.a(iE, z6)) {
                            vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                            if (vfVarA != null) {
                                return vfVarA;
                            }
                        }
                    }
                    i14 = i12;
                    i15 = i10;
                    fdVar = this;
                    iB = i5;
                    i13 = i16;
                    vfVar = null;
                    iB3 = i7;
                    iB2 = i6;
                    btVar3 = btVar2;
                }
                z5 = true;
                i2 = iB2;
                i3 = iB3;
                d4 = btVar3.a - btVar.a;
                d5 = d3;
                d6 = btVar3.b - btVar.b;
                d7 = btVar3.c - btVar.c;
                if (z3) {
                    d8 = (d - btVar.a) / d4;
                } else {
                    d8 = 999.0d;
                }
                if (z4) {
                    d9 = (d2 - btVar.b) / d6;
                } else {
                    d9 = 999.0d;
                }
                i4 = i14;
                if (z5) {
                }
                if (d8 >= d9) {
                    i5 = i;
                    if (d9 < d10) {
                        i6 = i2;
                        if (i6 > i15) {
                            c2 = 0;
                        } else {
                            c2 = 1;
                        }
                        btVar.a += d4 * d9;
                        btVar.b = d2;
                        btVar.c += d7 * d9;
                        c = c2;
                        i7 = i3;
                    } else {
                        i6 = i2;
                        i7 = i3;
                        if (i7 > i4) {
                            c = 2;
                        } else {
                            c = 3;
                        }
                        btVar.a += d4 * d10;
                        btVar.b += d6 * d10;
                        btVar.c = d5;
                    }
                } else {
                    i5 = i;
                    if (d9 < d10) {
                        i6 = i2;
                        if (i6 > i15) {
                            c2 = 0;
                        } else {
                            c2 = 1;
                        }
                        btVar.a += d4 * d9;
                        btVar.b = d2;
                        btVar.c += d7 * d9;
                        c = c2;
                        i7 = i3;
                    } else {
                        i6 = i2;
                        i7 = i3;
                        if (i7 > i4) {
                            c = 2;
                        } else {
                            c = 3;
                        }
                        btVar.a += d4 * d10;
                        btVar.b += d6 * d10;
                        btVar.c = d5;
                    }
                }
                btVarB = bt.b(btVar.a, btVar.b, btVar.c);
                double dB13 = in.b(btVar.a);
                btVarB.a = dB13;
                i8 = (int) dB13;
                if (c == 5) {
                    i8--;
                    btVarB.a += 1.0d;
                }
                iB4 = i8;
                double dB14 = in.b(btVar.b);
                btVarB.b = dB14;
                i9 = (int) dB14;
                if (c == 1) {
                    i9--;
                    btVarB.b += 1.0d;
                }
                i10 = i9;
                double dB15 = in.b(btVar.c);
                btVarB.c = dB15;
                i11 = (int) dB15;
                if (c == 3) {
                    i11--;
                    btVarB.c += 1.0d;
                }
                i12 = i11;
                int iA6 = a(iB4, i10, i12);
                iE = e(iB4, i10, i12);
                uuVar = uu.m[iA6];
                if (z2) {
                    z6 = z;
                    if (uuVar.a(iE, z6)) {
                        vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                        if (vfVarA != null) {
                            return vfVarA;
                        }
                    }
                } else {
                    z6 = z;
                    if (uuVar.a(iE, z6)) {
                        vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                        if (vfVarA != null) {
                            return vfVarA;
                        }
                    }
                }
                i14 = i12;
                i15 = i10;
                fdVar = this;
                iB = i5;
                i13 = i16;
                vfVar = null;
                iB3 = i7;
                iB2 = i6;
                btVar3 = btVar2;
            }
            z3 = true;
            if (iB2 > i15) {
                i = iB;
                d2 = ((double) i15) + 1.0d;
            } else {
                i = iB;
                if (iB2 < i15) {
                    d2 = ((double) i15) + 0.0d;
                } else {
                    d2 = 999.0d;
                    z4 = false;
                }
                if (iB3 > i14) {
                    d3 = ((double) i14) + 1.0d;
                } else {
                    if (iB3 < i14) {
                        d3 = 0.0d + ((double) i14);
                    } else {
                        i15 = i15;
                        i14 = i14;
                        d3 = 999.0d;
                        z5 = false;
                    }
                    i2 = iB2;
                    i3 = iB3;
                    d4 = btVar3.a - btVar.a;
                    d5 = d3;
                    d6 = btVar3.b - btVar.b;
                    d7 = btVar3.c - btVar.c;
                    if (z3) {
                        d8 = (d - btVar.a) / d4;
                    } else {
                        d8 = 999.0d;
                    }
                    if (z4) {
                        d9 = (d2 - btVar.b) / d6;
                    } else {
                        d9 = 999.0d;
                    }
                    i4 = i14;
                    if (z5) {
                    }
                    if (d8 >= d9) {
                        i5 = i;
                        if (d9 < d10) {
                            i6 = i2;
                            if (i6 > i15) {
                                c2 = 0;
                            } else {
                                c2 = 1;
                            }
                            btVar.a += d4 * d9;
                            btVar.b = d2;
                            btVar.c += d7 * d9;
                            c = c2;
                            i7 = i3;
                        } else {
                            i6 = i2;
                            i7 = i3;
                            if (i7 > i4) {
                                c = 2;
                            } else {
                                c = 3;
                            }
                            btVar.a += d4 * d10;
                            btVar.b += d6 * d10;
                            btVar.c = d5;
                        }
                    } else {
                        i5 = i;
                        if (d9 < d10) {
                            i6 = i2;
                            if (i6 > i15) {
                                c2 = 0;
                            } else {
                                c2 = 1;
                            }
                            btVar.a += d4 * d9;
                            btVar.b = d2;
                            btVar.c += d7 * d9;
                            c = c2;
                            i7 = i3;
                        } else {
                            i6 = i2;
                            i7 = i3;
                            if (i7 > i4) {
                                c = 2;
                            } else {
                                c = 3;
                            }
                            btVar.a += d4 * d10;
                            btVar.b += d6 * d10;
                            btVar.c = d5;
                        }
                    }
                    btVarB = bt.b(btVar.a, btVar.b, btVar.c);
                    double dB16 = in.b(btVar.a);
                    btVarB.a = dB16;
                    i8 = (int) dB16;
                    if (c == 5) {
                        i8--;
                        btVarB.a += 1.0d;
                    }
                    iB4 = i8;
                    double dB17 = in.b(btVar.b);
                    btVarB.b = dB17;
                    i9 = (int) dB17;
                    if (c == 1) {
                        i9--;
                        btVarB.b += 1.0d;
                    }
                    i10 = i9;
                    double dB18 = in.b(btVar.c);
                    btVarB.c = dB18;
                    i11 = (int) dB18;
                    if (c == 3) {
                        i11--;
                        btVarB.c += 1.0d;
                    }
                    i12 = i11;
                    int iA7 = a(iB4, i10, i12);
                    iE = e(iB4, i10, i12);
                    uuVar = uu.m[iA7];
                    if (z2) {
                        z6 = z;
                        if (uuVar.a(iE, z6)) {
                            vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                            if (vfVarA != null) {
                                return vfVarA;
                            }
                        }
                    } else {
                        z6 = z;
                        if (uuVar.a(iE, z6)) {
                            vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                            if (vfVarA != null) {
                                return vfVarA;
                            }
                        }
                    }
                    i14 = i12;
                    i15 = i10;
                    fdVar = this;
                    iB = i5;
                    i13 = i16;
                    vfVar = null;
                    iB3 = i7;
                    iB2 = i6;
                    btVar3 = btVar2;
                }
                z5 = true;
                i2 = iB2;
                i3 = iB3;
                d4 = btVar3.a - btVar.a;
                d5 = d3;
                d6 = btVar3.b - btVar.b;
                d7 = btVar3.c - btVar.c;
                if (z3) {
                    d8 = (d - btVar.a) / d4;
                } else {
                    d8 = 999.0d;
                }
                if (z4) {
                    d9 = (d2 - btVar.b) / d6;
                } else {
                    d9 = 999.0d;
                }
                i4 = i14;
                if (z5) {
                }
                if (d8 >= d9) {
                    i5 = i;
                    if (d9 < d10) {
                        i6 = i2;
                        if (i6 > i15) {
                            c2 = 0;
                        } else {
                            c2 = 1;
                        }
                        btVar.a += d4 * d9;
                        btVar.b = d2;
                        btVar.c += d7 * d9;
                        c = c2;
                        i7 = i3;
                    } else {
                        i6 = i2;
                        i7 = i3;
                        if (i7 > i4) {
                            c = 2;
                        } else {
                            c = 3;
                        }
                        btVar.a += d4 * d10;
                        btVar.b += d6 * d10;
                        btVar.c = d5;
                    }
                } else {
                    i5 = i;
                    if (d9 < d10) {
                        i6 = i2;
                        if (i6 > i15) {
                            c2 = 0;
                        } else {
                            c2 = 1;
                        }
                        btVar.a += d4 * d9;
                        btVar.b = d2;
                        btVar.c += d7 * d9;
                        c = c2;
                        i7 = i3;
                    } else {
                        i6 = i2;
                        i7 = i3;
                        if (i7 > i4) {
                            c = 2;
                        } else {
                            c = 3;
                        }
                        btVar.a += d4 * d10;
                        btVar.b += d6 * d10;
                        btVar.c = d5;
                    }
                }
                btVarB = bt.b(btVar.a, btVar.b, btVar.c);
                double dB19 = in.b(btVar.a);
                btVarB.a = dB19;
                i8 = (int) dB19;
                if (c == 5) {
                    i8--;
                    btVarB.a += 1.0d;
                }
                iB4 = i8;
                double dB110 = in.b(btVar.b);
                btVarB.b = dB110;
                i9 = (int) dB110;
                if (c == 1) {
                    i9--;
                    btVarB.b += 1.0d;
                }
                i10 = i9;
                double dB111 = in.b(btVar.c);
                btVarB.c = dB111;
                i11 = (int) dB111;
                if (c == 3) {
                    i11--;
                    btVarB.c += 1.0d;
                }
                i12 = i11;
                int iA8 = a(iB4, i10, i12);
                iE = e(iB4, i10, i12);
                uuVar = uu.m[iA8];
                if (z2) {
                    z6 = z;
                    if (uuVar.a(iE, z6)) {
                        vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                        if (vfVarA != null) {
                            return vfVarA;
                        }
                    }
                } else {
                    z6 = z;
                    if (uuVar.a(iE, z6)) {
                        vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                        if (vfVarA != null) {
                            return vfVarA;
                        }
                    }
                }
                i14 = i12;
                i15 = i10;
                fdVar = this;
                iB = i5;
                i13 = i16;
                vfVar = null;
                iB3 = i7;
                iB2 = i6;
                btVar3 = btVar2;
            }
            z4 = true;
            if (iB3 > i14) {
                d3 = ((double) i14) + 1.0d;
            } else {
                if (iB3 < i14) {
                    d3 = 0.0d + ((double) i14);
                } else {
                    i15 = i15;
                    i14 = i14;
                    d3 = 999.0d;
                    z5 = false;
                }
                i2 = iB2;
                i3 = iB3;
                d4 = btVar3.a - btVar.a;
                d5 = d3;
                d6 = btVar3.b - btVar.b;
                d7 = btVar3.c - btVar.c;
                if (z3) {
                    d8 = (d - btVar.a) / d4;
                } else {
                    d8 = 999.0d;
                }
                if (z4) {
                    d9 = (d2 - btVar.b) / d6;
                } else {
                    d9 = 999.0d;
                }
                i4 = i14;
                if (z5) {
                }
                if (d8 >= d9) {
                    i5 = i;
                    if (d9 < d10) {
                        i6 = i2;
                        if (i6 > i15) {
                            c2 = 0;
                        } else {
                            c2 = 1;
                        }
                        btVar.a += d4 * d9;
                        btVar.b = d2;
                        btVar.c += d7 * d9;
                        c = c2;
                        i7 = i3;
                    } else {
                        i6 = i2;
                        i7 = i3;
                        if (i7 > i4) {
                            c = 2;
                        } else {
                            c = 3;
                        }
                        btVar.a += d4 * d10;
                        btVar.b += d6 * d10;
                        btVar.c = d5;
                    }
                } else {
                    i5 = i;
                    if (d9 < d10) {
                        i6 = i2;
                        if (i6 > i15) {
                            c2 = 0;
                        } else {
                            c2 = 1;
                        }
                        btVar.a += d4 * d9;
                        btVar.b = d2;
                        btVar.c += d7 * d9;
                        c = c2;
                        i7 = i3;
                    } else {
                        i6 = i2;
                        i7 = i3;
                        if (i7 > i4) {
                            c = 2;
                        } else {
                            c = 3;
                        }
                        btVar.a += d4 * d10;
                        btVar.b += d6 * d10;
                        btVar.c = d5;
                    }
                }
                btVarB = bt.b(btVar.a, btVar.b, btVar.c);
                double dB112 = in.b(btVar.a);
                btVarB.a = dB112;
                i8 = (int) dB112;
                if (c == 5) {
                    i8--;
                    btVarB.a += 1.0d;
                }
                iB4 = i8;
                double dB113 = in.b(btVar.b);
                btVarB.b = dB113;
                i9 = (int) dB113;
                if (c == 1) {
                    i9--;
                    btVarB.b += 1.0d;
                }
                i10 = i9;
                double dB114 = in.b(btVar.c);
                btVarB.c = dB114;
                i11 = (int) dB114;
                if (c == 3) {
                    i11--;
                    btVarB.c += 1.0d;
                }
                i12 = i11;
                int iA9 = a(iB4, i10, i12);
                iE = e(iB4, i10, i12);
                uuVar = uu.m[iA9];
                if (z2) {
                    z6 = z;
                    if (uuVar.a(iE, z6)) {
                        vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                        if (vfVarA != null) {
                            return vfVarA;
                        }
                    }
                } else {
                    z6 = z;
                    if (uuVar.a(iE, z6)) {
                        vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                        if (vfVarA != null) {
                            return vfVarA;
                        }
                    }
                }
                i14 = i12;
                i15 = i10;
                fdVar = this;
                iB = i5;
                i13 = i16;
                vfVar = null;
                iB3 = i7;
                iB2 = i6;
                btVar3 = btVar2;
            }
            z5 = true;
            i2 = iB2;
            i3 = iB3;
            d4 = btVar3.a - btVar.a;
            d5 = d3;
            d6 = btVar3.b - btVar.b;
            d7 = btVar3.c - btVar.c;
            if (z3) {
                d8 = (d - btVar.a) / d4;
            } else {
                d8 = 999.0d;
            }
            if (z4) {
                d9 = (d2 - btVar.b) / d6;
            } else {
                d9 = 999.0d;
            }
            i4 = i14;
            if (z5) {
            }
            if (d8 >= d9) {
                i5 = i;
                if (d9 < d10) {
                    i6 = i2;
                    if (i6 > i15) {
                        c2 = 0;
                    } else {
                        c2 = 1;
                    }
                    btVar.a += d4 * d9;
                    btVar.b = d2;
                    btVar.c += d7 * d9;
                    c = c2;
                    i7 = i3;
                } else {
                    i6 = i2;
                    i7 = i3;
                    if (i7 > i4) {
                        c = 2;
                    } else {
                        c = 3;
                    }
                    btVar.a += d4 * d10;
                    btVar.b += d6 * d10;
                    btVar.c = d5;
                }
            } else {
                i5 = i;
                if (d9 < d10) {
                    i6 = i2;
                    if (i6 > i15) {
                        c2 = 0;
                    } else {
                        c2 = 1;
                    }
                    btVar.a += d4 * d9;
                    btVar.b = d2;
                    btVar.c += d7 * d9;
                    c = c2;
                    i7 = i3;
                } else {
                    i6 = i2;
                    i7 = i3;
                    if (i7 > i4) {
                        c = 2;
                    } else {
                        c = 3;
                    }
                    btVar.a += d4 * d10;
                    btVar.b += d6 * d10;
                    btVar.c = d5;
                }
            }
            btVarB = bt.b(btVar.a, btVar.b, btVar.c);
            double dB115 = in.b(btVar.a);
            btVarB.a = dB115;
            i8 = (int) dB115;
            if (c == 5) {
                i8--;
                btVarB.a += 1.0d;
            }
            iB4 = i8;
            double dB116 = in.b(btVar.b);
            btVarB.b = dB116;
            i9 = (int) dB116;
            if (c == 1) {
                i9--;
                btVarB.b += 1.0d;
            }
            i10 = i9;
            double dB117 = in.b(btVar.c);
            btVarB.c = dB117;
            i11 = (int) dB117;
            if (c == 3) {
                i11--;
                btVarB.c += 1.0d;
            }
            i12 = i11;
            int iA10 = a(iB4, i10, i12);
            iE = e(iB4, i10, i12);
            uuVar = uu.m[iA10];
            if (z2) {
                z6 = z;
                if (uuVar.a(iE, z6)) {
                    vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                    if (vfVarA != null) {
                        return vfVarA;
                    }
                }
            } else {
                z6 = z;
                if (uuVar.a(iE, z6)) {
                    vfVarA = uuVar.a(this, iB4, i10, i12, btVar, btVar2);
                    if (vfVarA != null) {
                        return vfVarA;
                    }
                }
            }
            i14 = i12;
            i15 = i10;
            fdVar = this;
            iB = i5;
            i13 = i16;
            vfVar = null;
            iB3 = i7;
            iB2 = i6;
            btVar3 = btVar2;
        }
    }

    public void a(sn snVar, String str, float f, float f2) {
        for (int i = 0; i < this.u.size(); i++) {
            ((pm) this.u.get(i)).a(str, snVar.aM, snVar.aN - ((double) snVar.bf), snVar.aO, f, f2);
        }
    }

    public void a(double d, double d2, double d3, String str, float f, float f2) {
        for (int i = 0; i < this.u.size(); i++) {
            ((pm) this.u.get(i)).a(str, d, d2, d3, f, f2);
        }
    }

    public void a(String str, int i, int i2, int i3) {
        for (int i4 = 0; i4 < this.u.size(); i4++) {
            ((pm) this.u.get(i4)).a(str, i, i2, i3);
        }
    }

    public void a(String str, double d, double d2, double d3, double d4, double d5, double d6) {
        for (int i = 0; i < this.u.size(); i++) {
            ((pm) this.u.get(i)).a(str, d, d2, d3, d4, d5, d6);
        }
    }

    public boolean a(sn snVar) {
        this.e.add(snVar);
        return true;
    }

    public boolean b(sn snVar) {
        int iB = in.b(snVar.aM / 16.0d);
        int iB2 = in.b(snVar.aO / 16.0d);
        boolean z = snVar instanceof gs;
        if (!z && !f(iB, iB2)) {
            return false;
        }
        if (z) {
            this.d.add((gs) snVar);
            y();
        }
        c(iB, iB2).a(snVar);
        this.b.add(snVar);
        c(snVar);
        return true;
    }

    protected void c(sn snVar) {
        for (int i = 0; i < this.u.size(); i++) {
            ((pm) this.u.get(i)).a(snVar);
        }
    }

    protected void d(sn snVar) {
        for (int i = 0; i < this.u.size(); i++) {
            ((pm) this.u.get(i)).b(snVar);
        }
    }

    public void e(sn snVar) {
        if (snVar.aG != null) {
            snVar.aG.i(null);
        }
        if (snVar.aH != null) {
            snVar.i(null);
        }
        snVar.K();
        if (snVar instanceof gs) {
            this.d.remove((gs) snVar);
            y();
        }
    }

    public void a(pm pmVar) {
        this.u.add(pmVar);
    }

    public void b(pm pmVar) {
        this.u.remove(pmVar);
    }

    public List a(sn snVar, eq eqVar) {
        this.K.clear();
        int iB = in.b(eqVar.a);
        int iB2 = in.b(eqVar.d + 1.0d);
        int iB3 = in.b(eqVar.b);
        int iB4 = in.b(eqVar.e + 1.0d);
        int iB5 = in.b(eqVar.c);
        int iB6 = in.b(eqVar.f + 1.0d);
        for (int i = iB; i < iB2; i++) {
            int i2 = iB5;
            while (i2 < iB6) {
                if (i(i, 64, i2)) {
                    int i3 = iB3 - 1;
                    while (i3 < iB4) {
                        uu uuVar = uu.m[a(i, i3, i2)];
                        if (uuVar != null) {
                            uuVar.a(this, i, i3, i2, eqVar, this.K);
                        }
                        i3++;
                        i2 = i2;
                    }
                }
                i2++;
            }
        }
        List listB = b(snVar, eqVar.b(0.25d, 0.25d, 0.25d));
        for (int i4 = 0; i4 < listB.size(); i4++) {
            eq eqVarF = ((sn) listB.get(i4)).f();
            if (eqVarF != null && eqVarF.a(eqVar)) {
                this.K.add(eqVarF);
            }
            eq eqVarA = snVar.a((sn) listB.get(i4));
            if (eqVarA != null && eqVarA.a(eqVar)) {
                this.K.add(eqVarA);
            }
        }
        return this.K;
    }

    public int a(float f) {
        float fB = 1.0f - ((in.b((b(f) * 3.1415927f) * 2.0f) * 2.0f) + 0.5f);
        if (fB < 0.0f) {
            fB = 0.0f;
        }
        if (fB > 1.0f) {
            fB = 1.0f;
        }
        return (int) ((1.0f - ((float) (((double) ((float) (((double) (1.0f - fB)) * (1.0d - (((double) (g(f) * 5.0f)) / 16.0d))))) * (1.0d - (((double) (f(f) * 5.0f)) / 16.0d))))) * 11.0f);
    }

    public bt a(sn snVar, float f) {
        float fB = (in.b(b(f) * 3.1415927f * 2.0f) * 2.0f) + 0.5f;
        if (fB < 0.0f) {
            fB = 0.0f;
        }
        if (fB > 1.0f) {
            fB = 1.0f;
        }
        int iB = in.b(snVar.aM);
        int iB2 = in.b(snVar.aO);
        int iA = a().a(iB, iB2).a((float) a().b(iB, iB2));
        float f2 = (((iA >> 16) & 255) / 255.0f) * fB;
        float f3 = (((iA >> 8) & 255) / 255.0f) * fB;
        float f4 = ((iA & 255) / 255.0f) * fB;
        float fG = g(f);
        if (fG > 0.0f) {
            float f5 = 1.0f - (fG * 0.75f);
            float f6 = ((f2 * 0.3f) + (f3 * 0.59f) + (f4 * 0.11f)) * 0.6f * (1.0f - f5);
            f2 = (f2 * f5) + f6;
            f3 = (f3 * f5) + f6;
            f4 = (f4 * f5) + f6;
        }
        float f7 = f(f);
        if (f7 > 0.0f) {
            float f8 = 1.0f - (f7 * 0.75f);
            float f9 = ((0.3f * f2) + (0.59f * f3) + (0.11f * f4)) * 0.2f * (1.0f - f8);
            f2 = (f2 * f8) + f9;
            f3 = (f3 * f8) + f9;
            f4 = (f4 * f8) + f9;
        }
        int i = this.n;
        if (i > 0) {
            float f10 = i - f;
            if (f10 > 1.0f) {
                f10 = 1.0f;
            }
            float f11 = f10 * 0.45f;
            float f12 = 1.0f - f11;
            float f13 = 0.8f * f11;
            f2 = (f2 * f12) + f13;
            f3 = (f3 * f12) + f13;
            f4 = (f4 * f12) + (f11 * 1.0f);
        }
        return bt.b(f2, f3, f4);
    }

    public float b(float f) {
        return this.t.a(this.x.f(), f);
    }

    public bt c(float f) {
        float fB = (in.b(b(f) * 3.1415927f * 2.0f) * 2.0f) + 0.5f;
        if (fB < 0.0f) {
            fB = 0.0f;
        }
        if (fB > 1.0f) {
            fB = 1.0f;
        }
        long j = this.H;
        float f2 = ((j >> 16) & 255) / 255.0f;
        float f3 = ((j >> 8) & 255) / 255.0f;
        float f4 = (j & 255) / 255.0f;
        float fG = g(f);
        if (fG > 0.0f) {
            float f5 = 1.0f - (fG * 0.95f);
            float f6 = ((f2 * 0.3f) + (f3 * 0.59f) + (f4 * 0.11f)) * 0.6f * (1.0f - f5);
            f2 = (f2 * f5) + f6;
            f3 = (f3 * f5) + f6;
            f4 = (f4 * f5) + f6;
        }
        float f7 = (0.9f * fB) + 0.1f;
        float f8 = f2 * f7;
        float f9 = f3 * f7;
        float f10 = f4 * ((fB * 0.85f) + 0.15f);
        float f11 = f(f);
        if (f11 > 0.0f) {
            float f12 = 1.0f - (f11 * 0.95f);
            float f13 = ((0.3f * f8) + (0.59f * f9) + (0.11f * f10)) * 0.2f * (1.0f - f12);
            f8 = (f8 * f12) + f13;
            f9 = (f9 * f12) + f13;
            f10 = (f10 * f12) + f13;
        }
        return bt.b(f8, f9, f10);
    }

    public bt d(float f) {
        return this.t.b(b(f), f);
    }

    public int e(int i, int i2) {
        lm lmVarB = b(i, i2);
        int i3 = i & 15;
        int i4 = i2 & 15;
        for (int i5 = 127; i5 > 0; i5--) {
            int iA = lmVarB.a(i3, i5, i4);
            ln lnVar = iA == 0 ? ln.a : uu.m[iA].bA;
            if (lnVar.c() || lnVar.d()) {
                return i5 + 1;
            }
        }
        return -1;
    }

    public float e(float f) {
        float fB = 1.0f - ((in.b((b(f) * 3.1415927f) * 2.0f) * 2.0f) + 0.75f);
        if (fB < 0.0f) {
            fB = 0.0f;
        }
        float f2 = fB <= 1.0f ? fB : 1.0f;
        return f2 * f2 * 0.5f;
    }

    public void c(int i, int i2, int i3, int i4, int i5) {
        int iA;
        qy qyVar = new qy(i, i2, i3, i4);
        if (this.a) {
            if (a(qyVar.a - 8, qyVar.b - 8, qyVar.c - 8, qyVar.a + 8, qyVar.b + 8, qyVar.c + 8) && (iA = a(qyVar.a, qyVar.b, qyVar.c)) == qyVar.d && iA > 0) {
                uu.m[iA].a(this, qyVar.a, qyVar.b, qyVar.c, this.r);
                return;
            }
            return;
        }
        if (a(i - 8, i2 - 8, i3 - 8, i + 8, i2 + 8, i3 + 8)) {
            if (i4 > 0) {
                qyVar.a(((long) i5) + this.x.f());
            }
            if (this.F.contains(qyVar)) {
                return;
            }
            this.F.add(qyVar);
            this.E.add(qyVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009c  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:82:0x00c3 A[SYNTHETIC] */
    public void g() {
        int i;
        int i2;
        int i3 = 0;
        while (i3 < this.e.size()) {
            sn snVar = (sn) this.e.get(i3);
            snVar.w_();
            if (snVar.be) {
                this.e.remove(i3);
                i3--;
            }
            i3++;
        }
        this.b.removeAll(this.D);
        for (int i4 = 0; i4 < this.D.size(); i4++) {
            sn snVar2 = (sn) this.D.get(i4);
            int i5 = snVar2.bG;
            int i6 = snVar2.bI;
            if (snVar2.bF && f(i5, i6)) {
                c(i5, i6).b(snVar2);
            }
        }
        for (int i7 = 0; i7 < this.D.size(); i7++) {
            d((sn) this.D.get(i7));
        }
        this.D.clear();
        int i8 = 0;
        while (i8 < this.b.size()) {
            sn snVar3 = (sn) this.b.get(i8);
            if (snVar3.aH != null) {
                if (snVar3.aH.be || snVar3.aH.aG != snVar3) {
                    snVar3.aH.aG = null;
                    snVar3.aH = null;
                    if (!snVar3.be) {
                        f(snVar3);
                    }
                    if (snVar3.be) {
                        i = snVar3.bG;
                        i2 = snVar3.bI;
                        if (snVar3.bF) {
                            c(i, i2).b(snVar3);
                        }
                        this.b.remove(i8);
                        d(snVar3);
                        i8--;
                    }
                }
            } else {
                if (!snVar3.be) {
                    f(snVar3);
                }
                if (snVar3.be) {
                    i = snVar3.bG;
                    i2 = snVar3.bI;
                    if (snVar3.bF && f(i, i2)) {
                        c(i, i2).b(snVar3);
                    }
                    this.b.remove(i8);
                    d(snVar3);
                    i8--;
                }
            }
            i8++;
        }
        this.L = true;
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ow owVar = (ow) it.next();
            if (!owVar.g()) {
                owVar.n_();
            }
            if (owVar.g()) {
                it.remove();
                lm lmVarC = c(owVar.e >> 4, owVar.g >> 4);
                if (lmVarC != null) {
                    lmVarC.e(owVar.e & 15, owVar.f, owVar.g & 15);
                }
            }
        }
        this.L = false;
        if (this.G.isEmpty()) {
            return;
        }
        for (ow owVar2 : this.G) {
            if (!owVar2.g()) {
                if (!this.c.contains(owVar2)) {
                    this.c.add(owVar2);
                }
                lm lmVarC2 = c(owVar2.e >> 4, owVar2.g >> 4);
                if (lmVarC2 != null) {
                    lmVarC2.a(owVar2.e & 15, owVar2.f, owVar2.g & 15, owVar2);
                }
                j(owVar2.e, owVar2.f, owVar2.g);
            }
        }
        this.G.clear();
    }

    public void a(Collection collection) {
        if (this.L) {
            this.G.addAll(collection);
        } else {
            this.c.addAll(collection);
        }
    }

    public void f(sn snVar) {
        a(snVar, true);
    }

    public void a(sn snVar, boolean z) {
        int iB = in.b(snVar.aM);
        int iB2 = in.b(snVar.aO);
        if (!z || a(iB - 32, 0, iB2 - 32, iB + 32, 128, iB2 + 32)) {
            snVar.bl = snVar.aM;
            snVar.bm = snVar.aN;
            snVar.bn = snVar.aO;
            snVar.aU = snVar.aS;
            snVar.aV = snVar.aT;
            if (z && snVar.bF) {
                if (snVar.aH != null) {
                    snVar.s_();
                } else {
                    snVar.w_();
                }
            }
            if (Double.isNaN(snVar.aM) || Double.isInfinite(snVar.aM)) {
                snVar.aM = snVar.bl;
            }
            if (Double.isNaN(snVar.aN) || Double.isInfinite(snVar.aN)) {
                snVar.aN = snVar.bm;
            }
            if (Double.isNaN(snVar.aO) || Double.isInfinite(snVar.aO)) {
                snVar.aO = snVar.bn;
            }
            if (Double.isNaN(snVar.aT) || Double.isInfinite(snVar.aT)) {
                snVar.aT = snVar.aV;
            }
            if (Double.isNaN(snVar.aS) || Double.isInfinite(snVar.aS)) {
                snVar.aS = snVar.aU;
            }
            int iB3 = in.b(snVar.aM / 16.0d);
            int iB4 = in.b(snVar.aN / 16.0d);
            int iB5 = in.b(snVar.aO / 16.0d);
            if (!snVar.bF || snVar.bG != iB3 || snVar.bH != iB4 || snVar.bI != iB5) {
                if (snVar.bF && f(snVar.bG, snVar.bI)) {
                    c(snVar.bG, snVar.bI).a(snVar, snVar.bH);
                }
                if (f(iB3, iB5)) {
                    snVar.bF = true;
                    c(iB3, iB5).a(snVar);
                } else {
                    snVar.bF = false;
                }
            }
            if (z && snVar.bF && snVar.aG != null) {
                if (snVar.aG.be || snVar.aG.aH != snVar) {
                    snVar.aG.aH = null;
                    snVar.aG = null;
                } else {
                    f(snVar.aG);
                }
            }
        }
    }

    public boolean a(eq eqVar) {
        List listB = b((sn) null, eqVar);
        for (int i = 0; i < listB.size(); i++) {
            sn snVar = (sn) listB.get(i);
            if (!snVar.be && snVar.aF) {
                return false;
            }
        }
        return true;
    }

    public boolean b(eq eqVar) {
        int iB = in.b(eqVar.a);
        int iB2 = in.b(eqVar.d + 1.0d);
        int iB3 = in.b(eqVar.b);
        int iB4 = in.b(eqVar.e + 1.0d);
        int iB5 = in.b(eqVar.c);
        int iB6 = in.b(eqVar.f + 1.0d);
        if (eqVar.a < 0.0d) {
            iB--;
        }
        if (eqVar.b < 0.0d) {
            iB3--;
        }
        if (eqVar.c < 0.0d) {
            iB5--;
        }
        while (iB < iB2) {
            for (int i = iB3; i < iB4; i++) {
                for (int i2 = iB5; i2 < iB6; i2++) {
                    uu uuVar = uu.m[a(iB, i, i2)];
                    if (uuVar != null && uuVar.bA.d()) {
                        return true;
                    }
                }
            }
            iB++;
        }
        return false;
    }

    public boolean c(eq eqVar) {
        int iB = in.b(eqVar.a);
        int iB2 = in.b(eqVar.d + 1.0d);
        int iB3 = in.b(eqVar.b);
        int iB4 = in.b(eqVar.e + 1.0d);
        int iB5 = in.b(eqVar.c);
        int iB6 = in.b(eqVar.f + 1.0d);
        if (!a(iB, iB3, iB5, iB2, iB4, iB6)) {
            return false;
        }
        while (iB < iB2) {
            for (int i = iB3; i < iB4; i++) {
                for (int i2 = iB5; i2 < iB6; i2++) {
                    int iA = a(iB, i, i2);
                    if (iA == uu.as.bn || iA == uu.D.bn || iA == uu.E.bn) {
                        return true;
                    }
                }
            }
            iB++;
        }
        return false;
    }

    public boolean a(eq eqVar, ln lnVar, sn snVar) {
        int i;
        int i2;
        int iB = in.b(eqVar.a);
        int iB2 = in.b(eqVar.d + 1.0d);
        int iB3 = in.b(eqVar.b);
        int iB4 = in.b(eqVar.e + 1.0d);
        int iB5 = in.b(eqVar.c);
        int iB6 = in.b(eqVar.f + 1.0d);
        boolean z = false;
        if (!a(iB, iB3, iB5, iB2, iB4, iB6)) {
            return false;
        }
        bt btVarB = bt.b(0.0d, 0.0d, 0.0d);
        while (iB < iB2) {
            int i3 = iB3;
            while (i3 < iB4) {
                int i4 = iB5;
                while (i4 < iB6) {
                    uu uuVar = uu.m[a(iB, i3, i4)];
                    if (uuVar == null || uuVar.bA != lnVar) {
                        i = iB2;
                        i2 = iB3;
                    } else {
                        i = iB2;
                        i2 = iB3;
                        if (iB4 >= (i3 + 1) - rp.d(e(iB, i3, i4))) {
                            uuVar.a(this, iB, i3, i4, snVar, btVarB);
                            z = true;
                        }
                        i4++;
                        i3 = i3;
                        iB2 = i;
                        iB3 = i2;
                    }
                    i4++;
                    i3 = i3;
                    iB2 = i;
                    iB3 = i2;
                }
                i3++;
                iB3 = iB3;
            }
            iB++;
        }
        if (btVarB.d() > 0.0d) {
            bt btVarC = btVarB.c();
            snVar.aP += btVarC.a * 0.014d;
            snVar.aQ += btVarC.b * 0.014d;
            snVar.aR += btVarC.c * 0.014d;
        }
        return z;
    }

    public boolean a(eq eqVar, ln lnVar) {
        int iB = in.b(eqVar.d + 1.0d);
        int iB2 = in.b(eqVar.b);
        int iB3 = in.b(eqVar.e + 1.0d);
        int iB4 = in.b(eqVar.c);
        int iB5 = in.b(eqVar.f + 1.0d);
        for (int iB6 = in.b(eqVar.a); iB6 < iB; iB6++) {
            for (int i = iB2; i < iB3; i++) {
                for (int i2 = iB4; i2 < iB5; i2++) {
                    uu uuVar = uu.m[a(iB6, i, i2)];
                    if (uuVar != null && uuVar.bA == lnVar) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public boolean b(eq eqVar, ln lnVar) {
        int iB = in.b(eqVar.d + 1.0d);
        int iB2 = in.b(eqVar.b);
        int iB3 = in.b(eqVar.e + 1.0d);
        int iB4 = in.b(eqVar.c);
        int iB5 = in.b(eqVar.f + 1.0d);
        for (int iB6 = in.b(eqVar.a); iB6 < iB; iB6++) {
            for (int i = iB2; i < iB3; i++) {
                for (int i2 = iB4; i2 < iB5; i2++) {
                    uu uuVar = uu.m[a(iB6, i, i2)];
                    if (uuVar != null && uuVar.bA == lnVar) {
                        int iE = e(iB6, i, i2);
                        double d = i + 1;
                        if (iE < 8) {
                            d -= ((double) iE) / 8.0d;
                        }
                        if (d >= eqVar.b) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public qx a(sn snVar, double d, double d2, double d3, float f) {
        return a(snVar, d, d2, d3, f, false);
    }

    public qx a(sn snVar, double d, double d2, double d3, float f, boolean z) {
        qx qxVar = new qx(this, snVar, d, d2, d3, f);
        qxVar.a = z;
        qxVar.a();
        qxVar.a(true);
        return qxVar;
    }

    public float a(bt btVar, eq eqVar) {
        double d = 1.0d / (((eqVar.d - eqVar.a) * 2.0d) + 1.0d);
        double d2 = 1.0d / (((eqVar.e - eqVar.b) * 2.0d) + 1.0d);
        double d3 = 1.0d / (((eqVar.f - eqVar.c) * 2.0d) + 1.0d);
        int i = 0;
        int i2 = 0;
        float f = 0.0f;
        while (f <= 1.0f) {
            float f2 = 0.0f;
            while (f2 <= 1.0f) {
                float f3 = 0.0f;
                while (f3 <= 1.0f) {
                    double d4 = d3;
                    double d5 = d2;
                    double d6 = f3;
                    if (a(bt.b(eqVar.a + ((eqVar.d - eqVar.a) * ((double) f)), eqVar.b + ((eqVar.e - eqVar.b) * ((double) f2)), eqVar.c + ((eqVar.f - eqVar.c) * d6)), btVar) == null) {
                        i++;
                    }
                    i2++;
                    f3 = (float) (d6 + d4);
                    d3 = d4;
                    d2 = d5;
                }
                f2 = (float) (((double) f2) + d2);
                d3 = d3;
            }
            f = (float) (((double) f) + d);
            d3 = d3;
        }
        return i / i2;
    }

    public void a(gs gsVar, int i, int i2, int i3, int i4) {
        if (i4 == 0) {
            i2--;
        }
        if (i4 == 1) {
            i2++;
        }
        if (i4 == 2) {
            i3--;
        }
        if (i4 == 3) {
            i3++;
        }
        if (i4 == 4) {
            i--;
        }
        if (i4 == 5) {
            i++;
        }
        if (a(i, i2, i3) == uu.as.bn) {
            a(gsVar, 1004, i, i2, i3, 0);
            f(i, i2, i3, 0);
        }
    }

    public String h() {
        return "All: " + this.b.size();
    }

    public String i() {
        return this.v.c();
    }

    @Override // defpackage.xp
    public ow b(int i, int i2, int i3) {
        lm lmVarC = c(i >> 4, i3 >> 4);
        if (lmVarC != null) {
            return lmVarC.d(i & 15, i2, i3 & 15);
        }
        return null;
    }

    public void a(int i, int i2, int i3, ow owVar) {
        if (owVar.g()) {
            return;
        }
        if (this.L) {
            owVar.e = i;
            owVar.f = i2;
            owVar.g = i3;
            this.G.add(owVar);
            return;
        }
        this.c.add(owVar);
        lm lmVarC = c(i >> 4, i3 >> 4);
        if (lmVarC != null) {
            lmVarC.a(i & 15, i2, i3 & 15, owVar);
        }
    }

    public void p(int i, int i2, int i3) {
        ow owVarB = b(i, i2, i3);
        if (owVarB != null && this.L) {
            owVarB.i();
            return;
        }
        if (owVarB != null) {
            this.c.remove(owVarB);
        }
        lm lmVarC = c(i >> 4, i3 >> 4);
        if (lmVarC != null) {
            lmVarC.e(i & 15, i2, i3 & 15);
        }
    }

    @Override // defpackage.xp
    public boolean g(int i, int i2, int i3) {
        uu uuVar = uu.m[a(i, i2, i3)];
        if (uuVar == null) {
            return false;
        }
        return uuVar.c();
    }

    @Override // defpackage.xp
    public boolean h(int i, int i2, int i3) {
        uu uuVar = uu.m[a(i, i2, i3)];
        return uuVar != null && uuVar.bA.h() && uuVar.d();
    }

    public void a(yb ybVar) {
        a(true, ybVar);
    }

    public boolean j() {
        int i = this.M;
        if (i >= 50) {
            return false;
        }
        this.M = i + 1;
        int i2 = Keyboard.KEY_UP;
        while (this.C.size() > 0) {
            try {
                i2--;
                if (i2 > 0) {
                    List list = this.C;
                    ((st) list.remove(list.size() - 1)).a(this);
                } else {
                    this.M--;
                    return true;
                }
            } catch (Throwable th) {
                this.M--;
                throw th;
            }
        }
        this.M--;
        return false;
    }

    public void a(eb ebVar, int i, int i2, int i3, int i4, int i5, int i6) {
        a(ebVar, i, i2, i3, i4, i5, i6, true);
    }

    public void a(eb ebVar, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        if (this.t.e && ebVar == eb.Sky) {
            return;
        }
        int i7 = A + 1;
        A = i7;
        if (i7 == 50) {
            A = i7 - 1;
            return;
        }
        try {
            int i8 = (i4 + i) / 2;
            int i9 = (i6 + i3) / 2;
            if (i(i8, 64, i9)) {
                if (b(i8, i9).h()) {
                    return;
                }
                int size = this.C.size();
                if (z) {
                    if (5 <= size) {
                        size = 5;
                    }
                    for (int i10 = 0; i10 < size; i10++) {
                        List list = this.C;
                        st stVar = (st) list.get((list.size() - i10) - 1);
                        if (stVar.a == ebVar && stVar.a(i, i2, i3, i4, i5, i6)) {
                            return;
                        }
                    }
                }
                this.C.add(new st(ebVar, i, i2, i3, i4, i5, i6));
                if (this.C.size() > 1000000) {
                    System.out.println("More than 1000000 updates, aborting lighting updates");
                    this.C.clear();
                }
            }
        } finally {
            A--;
        }
    }

    public void k() {
        int iA = a(1.0f);
        if (iA != this.f) {
            this.f = iA;
        }
    }

    public void a(boolean z, boolean z2) {
        this.N = z;
        this.O = z2;
    }

    public void l() {
        m();
        if (A()) {
            if (!((!this.N || this.q < 1) ? false : cq.a(this, this.d))) {
                long jF = this.x.f() + 24000;
                this.x.a(jF - (jF % 24000));
                z();
            }
        }
        cq.a(this, this.N, this.O);
        this.v.a();
        int iA = a(1.0f);
        if (iA != this.f) {
            this.f = iA;
            for (int i = 0; i < this.u.size(); i++) {
                ((pm) this.u.get(i)).e();
            }
        }
        long jF2 = this.x.f() + 1;
        if (jF2 % ((long) this.p) == 0) {
            a(false, (yb) null);
        }
        this.x.a(jF2);
        a(false);
        n();
    }

    private void E() {
        if (this.x.o()) {
            this.j = 1.0f;
            if (this.x.m()) {
                this.l = 1.0f;
            }
        }
    }

    protected void m() {
        if (this.t.e) {
            return;
        }
        int i = this.m;
        if (i > 0) {
            this.m = i - 1;
        }
        int iN = this.x.n();
        if (iN <= 0) {
            if (this.x.m()) {
                this.x.e(this.r.nextInt(12000) + 3600);
            } else {
                this.x.e(this.r.nextInt(168000) + 12000);
            }
        } else {
            int i2 = iN - 1;
            this.x.e(i2);
            if (i2 <= 0) {
                ei eiVar = this.x;
                eiVar.a(!eiVar.m());
            }
        }
        int iP = this.x.p();
        if (iP <= 0) {
            if (this.x.o()) {
                this.x.f(this.r.nextInt(12000) + 12000);
            } else {
                this.x.f(this.r.nextInt(168000) + 12000);
            }
        } else {
            int i3 = iP - 1;
            this.x.f(i3);
            if (i3 <= 0) {
                ei eiVar2 = this.x;
                eiVar2.b(!eiVar2.o());
            }
        }
        this.i = this.j;
        if (this.x.o()) {
            this.j = (float) (((double) this.j) + 0.01d);
        } else {
            this.j = (float) (((double) this.j) - 0.01d);
        }
        if (this.j < 0.0f) {
            this.j = 0.0f;
        }
        if (this.j > 1.0f) {
            this.j = 1.0f;
        }
        this.k = this.l;
        if (this.x.m()) {
            this.l = (float) (((double) this.l) + 0.01d);
        } else {
            this.l = (float) (((double) this.l) - 0.01d);
        }
        if (this.l < 0.0f) {
            this.l = 0.0f;
        }
        if (this.l > 1.0f) {
            this.l = 1.0f;
        }
    }

    private void F() {
        this.x.f(0);
        this.x.b(false);
        this.x.e(0);
        this.x.a(false);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x011f  */
    /* JADX WARN: Code duplicated, block: B:74:0x01f4  */
    protected void n() {
        int i;
        lm lmVar;
        this.gb = 0;
        this.P.clear();
        for (int i2 = 0; i2 < this.d.size(); i2++) {
            gs gsVar = (gs) this.d.get(i2);
            int iB = in.b(gsVar.aM / 16.0d);
            int iB2 = in.b(gsVar.aO / 16.0d);
            for (int i3 = -6; i3 <= 6; i3++) {
                for (int i4 = -6; i4 <= 6; i4++) {
                    Set set = this.P;
                    int i5 = i3 + iB;
                    int i6 = i4 + iB2;
                    if (this.v.a(i5, i6)) {
                        set.add(new yy(i5, i6));
                    } else if (this.gb <= 0) {
                        this.gb = 1;
                        set.add(new yy(i5, i6));
                    }
                }
            }
        }
        int i7 = this.Q;
        if (i7 > 0) {
            this.Q = i7 - 1;
        }
        for (yy yyVar : this.P) {
            int i8 = yyVar.a * 16;
            int i9 = yyVar.b * 16;
            lm lmVarC = c(yyVar.a, yyVar.b);
            if (this.Q == 0) {
                int i10 = (this.g * 3) + 1013904223;
                this.g = i10;
                int i11 = i10 >> 2;
                int i12 = i11 & 15;
                int i13 = (i11 >> 8) & 15;
                int i14 = (i11 >> 16) & 127;
                int iA = lmVarC.a(i12, i14, i13);
                int i15 = i12 + i8;
                int i16 = i13 + i9;
                if (iA != 0 || m(i15, i14, i16) > this.r.nextInt(8) || a(eb.Sky, i15, i14, i16) > 0) {
                    i = 2;
                } else {
                    double d = ((double) i15) + 0.5d;
                    double d2 = ((double) i14) + 0.5d;
                    double d3 = ((double) i16) + 0.5d;
                    i = 2;
                    gs gsVarA = a(d, d2, d3, 8.0d);
                    if (gsVarA != null && gsVarA.g(d, d2, d3) > 4.0d) {
                        a(d, d2, d3, "ambient.cave.cave", 0.7f, (this.r.nextFloat() * 0.2f) + 0.8f);
                        this.Q = this.r.nextInt(12000) + 6000;
                    }
                }
            } else {
                i = 2;
            }
            if (this.r.nextInt(100000) == 0 && C() && B()) {
                int i17 = (this.g * 3) + 1013904223;
                this.g = i17;
                int i18 = i17 >> i;
                int i19 = (i18 & 15) + i8;
                int i20 = ((i18 >> 8) & 15) + i9;
                int iE = e(i19, i20);
                if (t(i19, iE, i20)) {
                    a(new c(this, i19, iE, i20));
                    this.m = i;
                }
            }
            if (this.r.nextInt(16) == 0) {
                int i21 = (this.g * 3) + 1013904223;
                this.g = i21;
                int i22 = i21 >> i;
                int i23 = i22 & 15;
                int i24 = (i22 >> 8) & 15;
                int i25 = i23 + i8;
                int i26 = i24 + i9;
                int iE2 = e(i25, i26);
                if (!a().a(i25, i26).c() || iE2 < 0 || iE2 >= 128) {
                    lmVar = lmVarC;
                } else {
                    lmVar = lmVarC;
                    if (lmVar.a(eb.Block, i23, iE2, i24) < 10) {
                        int i27 = iE2 - 1;
                        int iA2 = lmVar.a(i23, i27, i24);
                        int iA3 = lmVar.a(i23, iE2, i24);
                        if (C() && iA3 == 0 && uu.aT.a(this, i25, iE2, i26) && iA2 != 0 && iA2 != uu.aU.bn && uu.m[iA2].bA.c()) {
                            f(i25, iE2, i26, uu.aT.bn);
                        }
                        if (iA2 == uu.C.bn && lmVar.b(i23, i27, i24) == 0) {
                            f(i25, i27, i26, uu.aU.bn);
                        }
                    }
                }
            } else {
                lmVar = lmVarC;
            }
            for (int i28 = 0; i28 < 80; i28++) {
                int i29 = (this.g * 3) + 1013904223;
                this.g = i29;
                int i30 = i29 >> i;
                int i31 = i30 & 15;
                int i32 = (i30 >> 8) & 15;
                int i33 = (i30 >> 16) & 127;
                int i34 = lmVar.b[(i31 << 11) | (i32 << 7) | i33] & 255;
                if (uu.n[i34]) {
                    uu.m[i34].a(this, i31 + i8, i33, i32 + i9, this.r);
                }
            }
        }
    }

    public boolean a(boolean z) {
        int iA;
        int size = this.E.size();
        if (size != this.F.size()) {
            throw new IllegalStateException("TickNextTick list out of synch");
        }
        if (size > 1000) {
            size = 1000;
        }
        for (int i = 0; i < size; i++) {
            qy qyVar = (qy) this.E.first();
            if (!z && qyVar.e > this.x.f()) {
                break;
            }
            this.E.remove(qyVar);
            this.F.remove(qyVar);
            if (a(qyVar.a - 8, qyVar.b - 8, qyVar.c - 8, qyVar.a + 8, qyVar.b + 8, qyVar.c + 8) && (iA = a(qyVar.a, qyVar.b, qyVar.c)) == qyVar.d && iA > 0) {
                uu.m[iA].a(this, qyVar.a, qyVar.b, qyVar.c, this.r);
            }
        }
        return this.E.size() != 0;
    }

    public void q(int i, int i2, int i3) {
        Random random = new Random();
        for (int i4 = 0; i4 < 1000; i4++) {
            int iNextInt = (this.r.nextInt(16) + i) - this.r.nextInt(16);
            int iNextInt2 = (this.r.nextInt(16) + i2) - this.r.nextInt(16);
            int iNextInt3 = (this.r.nextInt(16) + i3) - this.r.nextInt(16);
            int iA = a(iNextInt, iNextInt2, iNextInt3);
            if (iA > 0) {
                uu.m[iA].b(this, iNextInt, iNextInt2, iNextInt3, random);
            }
        }
    }

    public List b(sn snVar, eq eqVar) {
        this.R.clear();
        int iB = in.b((eqVar.d + 2.0d) / 16.0d);
        int iB2 = in.b((eqVar.c - 2.0d) / 16.0d);
        int iB3 = in.b((eqVar.f + 2.0d) / 16.0d);
        for (int iB4 = in.b((eqVar.a - 2.0d) / 16.0d); iB4 <= iB; iB4++) {
            for (int i = iB2; i <= iB3; i++) {
                if (f(iB4, i)) {
                    c(iB4, i).a(snVar, eqVar, this.R);
                }
            }
        }
        return this.R;
    }

    public List a(Class cls, eq eqVar) {
        int iB = in.b((eqVar.d + 2.0d) / 16.0d);
        int iB2 = in.b((eqVar.c - 2.0d) / 16.0d);
        int iB3 = in.b((eqVar.f + 2.0d) / 16.0d);
        ArrayList arrayList = new ArrayList();
        for (int iB4 = in.b((eqVar.a - 2.0d) / 16.0d); iB4 <= iB; iB4++) {
            for (int i = iB2; i <= iB3; i++) {
                if (f(iB4, i)) {
                    c(iB4, i).a(cls, eqVar, arrayList);
                }
            }
        }
        return arrayList;
    }

    public List o() {
        return this.b;
    }

    public void b(int i, int i2, int i3, ow owVar) {
        if (i(i, i2, i3)) {
            b(i, i3).g();
        }
        for (int i4 = 0; i4 < this.u.size(); i4++) {
            ((pm) this.u.get(i4)).a(i, i2, i3, owVar);
        }
    }

    public int b(Class cls) {
        int i = 0;
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            if (cls.isAssignableFrom(((sn) this.b.get(i2)).getClass())) {
                i++;
            }
        }
        return i;
    }

    public void a(List list) {
        this.b.addAll(list);
        for (int i = 0; i < list.size(); i++) {
            c((sn) list.get(i));
        }
    }

    public void b(List list) {
        this.D.addAll(list);
    }

    public void p() {
        while (this.v.a()) {
        }
    }

    public boolean a(int i, int i2, int i3, int i4, boolean z, int i5) {
        uu uuVar = uu.m[a(i2, i3, i4)];
        uu uuVar2 = uu.m[i];
        eq eqVarE = uuVar2.e(this, i2, i3, i4);
        if (z) {
            eqVarE = null;
        }
        if (eqVarE != null && !a(eqVarE)) {
            return false;
        }
        if (uuVar == uu.B || uuVar == uu.C || uuVar == uu.D || uuVar == uu.E || uuVar == uu.as || uuVar == uu.aT) {
            uuVar = null;
        }
        return i > 0 && uuVar == null && uuVar2.a(this, i2, i3, i4, i5);
    }

    public dh a(sn snVar, sn snVar2, float f) {
        int iB = in.b(snVar.aM);
        int iB2 = in.b(snVar.aN);
        int iB3 = in.b(snVar.aO);
        int i = (int) (16.0f + f);
        return new fw(new ew(this, iB - i, iB2 - i, iB3 - i, iB + i, iB2 + i, iB3 + i)).a(snVar, snVar2, f);
    }

    public dh a(sn snVar, int i, int i2, int i3, float f) {
        int iB = in.b(snVar.aM);
        int iB2 = in.b(snVar.aN);
        int iB3 = in.b(snVar.aO);
        int i4 = (int) (f + 8.0f);
        return new fw(new ew(this, iB - i4, iB2 - i4, iB3 - i4, iB + i4, iB2 + i4, iB3 + i4)).a(snVar, i, i2, i3, f);
    }

    public boolean j(int i, int i2, int i3, int i4) {
        int iA = a(i, i2, i3);
        if (iA == 0) {
            return false;
        }
        return uu.m[iA].d(this, i, i2, i3, i4);
    }

    public boolean r(int i, int i2, int i3) {
        return j(i, i2 + (-1), i3, 0) || j(i, i2 + 1, i3, 1) || j(i, i2, i3 + (-1), 2) || j(i, i2, i3 + 1, 3) || j(i + (-1), i2, i3, 4) || j(i + 1, i2, i3, 5);
    }

    public boolean k(int i, int i2, int i3, int i4) {
        if (h(i, i2, i3)) {
            return r(i, i2, i3);
        }
        int iA = a(i, i2, i3);
        if (iA == 0) {
            return false;
        }
        return uu.m[iA].c((xp) this, i, i2, i3, i4);
    }

    public boolean s(int i, int i2, int i3) {
        return k(i, i2 + (-1), i3, 0) || k(i, i2 + 1, i3, 1) || k(i, i2, i3 + (-1), 2) || k(i, i2, i3 + 1, 3) || k(i + (-1), i2, i3, 4) || k(i + 1, i2, i3, 5);
    }

    public gs a(sn snVar, double d) {
        return a(snVar.aM, snVar.aN, snVar.aO, d);
    }

    public gs a(double d, double d2, double d3, double d4) {
        gs gsVar = null;
        double d5 = -1.0d;
        for (int i = 0; i < this.d.size(); i++) {
            gs gsVar2 = (gs) this.d.get(i);
            double dG = gsVar2.g(d, d2, d3);
            if ((d4 < 0.0d || dG < d4 * d4) && (d5 == -1.0d || dG < d5)) {
                gsVar = gsVar2;
                d5 = dG;
            }
        }
        return gsVar;
    }

    public gs a(String str) {
        for (int i = 0; i < this.d.size(); i++) {
            if (str.equals(((gs) this.d.get(i)).l)) {
                return (gs) this.d.get(i);
            }
        }
        return null;
    }

    public void a(int i, int i2, int i3, int i4, int i5, int i6, byte[] bArr) {
        int i7 = i >> 4;
        int i8 = i3 >> 4;
        int i9 = i + i4;
        int i10 = (i9 - 1) >> 4;
        int i11 = i3 + i6;
        int i12 = (i11 - 1) >> 4;
        int i13 = i2 + i5;
        int i14 = i2 < 0 ? 0 : i2;
        if (i13 > 128) {
            i13 = 128;
        }
        int i15 = 0;
        while (i7 <= i10) {
            int i16 = i7 * 16;
            int i17 = i - i16;
            int i18 = i9 - i16;
            int i19 = i17 < 0 ? 0 : i17;
            int i20 = 16;
            int i21 = i18 > 16 ? 16 : i18;
            int i22 = i8;
            int iA = i15;
            while (i22 <= i12) {
                int i23 = i22 * 16;
                int i24 = i3 - i23;
                int i25 = i11 - i23;
                int i26 = i24 < 0 ? 0 : i24;
                int i27 = i25 > i20 ? i20 : i25;
                iA = c(i7, i22).a(bArr, i19, i14, i26, i21, i13, i27, iA);
                b(i16 + i19, i14, i23 + i26, i16 + i21, i13, i23 + i27);
                i22++;
                i20 = i20;
            }
            i7++;
            i15 = iA;
        }
    }

    public void r() {
        this.w.b();
    }

    public void a(long j) {
        this.x.a(j);
    }

    public long s() {
        return this.x.b();
    }

    public long t() {
        return this.x.f();
    }

    public br u() {
        return new br(this.x.c(), this.x.d(), this.x.e());
    }

    public void a(br brVar) {
        this.x.a(brVar.a, brVar.b, brVar.c);
    }

    public void g(sn snVar) {
        int iB = in.b(snVar.aM / 16.0d);
        int iB2 = in.b(snVar.aO / 16.0d);
        for (int i = iB - 2; i <= iB + 2; i++) {
            for (int i2 = iB2 - 2; i2 <= iB2 + 2; i2++) {
                c(i, i2);
            }
        }
        if (this.b.contains(snVar)) {
            return;
        }
        this.b.add(snVar);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0078  */
    /* JADX WARN: Code duplicated, block: B:43:0x0098 A[SYNTHETIC] */
    public void v() {
        int i;
        int i2;
        this.b.removeAll(this.D);
        int i3 = 0;
        for (int i4 = 0; i4 < this.D.size(); i4++) {
            sn snVar = (sn) this.D.get(i4);
            int i5 = snVar.bG;
            int i6 = snVar.bI;
            if (snVar.bF && f(i5, i6)) {
                c(i5, i6).b(snVar);
            }
        }
        for (int i7 = 0; i7 < this.D.size(); i7++) {
            d((sn) this.D.get(i7));
        }
        this.D.clear();
        while (i3 < this.b.size()) {
            sn snVar2 = (sn) this.b.get(i3);
            if (snVar2.aH != null) {
                if (snVar2.aH.be || snVar2.aH.aG != snVar2) {
                    snVar2.aH.aG = null;
                    snVar2.aH = null;
                    if (snVar2.be) {
                        i = snVar2.bG;
                        i2 = snVar2.bI;
                        if (snVar2.bF) {
                            c(i, i2).b(snVar2);
                        }
                        this.b.remove(i3);
                        d(snVar2);
                        i3--;
                    }
                }
            } else if (snVar2.be) {
                i = snVar2.bG;
                i2 = snVar2.bI;
                if (snVar2.bF && f(i, i2)) {
                    c(i, i2).b(snVar2);
                }
                this.b.remove(i3);
                d(snVar2);
                i3--;
            }
            i3++;
        }
    }

    public cl w() {
        return this.v;
    }

    public void d(int i, int i2, int i3, int i4, int i5) {
        int iA = a(i, i2, i3);
        if (iA > 0) {
            uu.m[iA].a(this, i, i2, i3, i4, i5);
        }
    }

    public ei x() {
        return this.x;
    }

    public void y() {
        this.J = !this.d.isEmpty();
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            if (!((gs) it.next()).N()) {
                this.J = false;
                return;
            }
        }
    }

    protected void z() {
        this.J = false;
        for (gs gsVar : this.d) {
            if (gsVar.N()) {
                gsVar.a(false, false, true);
            }
        }
        F();
    }

    public boolean A() {
        if (!this.J || this.B) {
            return false;
        }
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            if (!((gs) it.next()).O()) {
                return false;
            }
        }
        return true;
    }

    public float f(float f) {
        float f2 = this.k;
        return (f2 + ((this.l - f2) * f)) * g(f);
    }

    public float g(float f) {
        float f2 = this.i;
        return f2 + ((this.j - f2) * f);
    }

    public void h(float f) {
        this.i = f;
        this.j = f;
    }

    public boolean B() {
        return ((double) f(1.0f)) > 0.9d;
    }

    public boolean C() {
        return ((double) g(1.0f)) > 0.2d;
    }

    public boolean t(int i, int i2, int i3) {
        if (!C() || !l(i, i2, i3) || e(i, i3) > i2) {
            return false;
        }
        kd kdVarA = a().a(i, i3);
        if (kdVarA.c()) {
            return false;
        }
        return kdVarA.d();
    }

    public void a(String str, hm hmVar) {
        this.z.a(str, hmVar);
    }

    public hm a(Class cls, String str) {
        return this.z.a(cls, str);
    }

    public int b(String str) {
        return this.z.a(str);
    }

    public void e(int i, int i2, int i3, int i4, int i5) {
        a((gs) null, i, i2, i3, i4, i5);
    }

    public void a(gs gsVar, int i, int i2, int i3, int i4, int i5) {
        for (int i6 = 0; i6 < this.u.size(); i6++) {
            ((pm) this.u.get(i6)).a(gsVar, i, i2, i3, i4, i5);
        }
    }
}
