package defpackage;

import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import net.minecraft.client.Minecraft;
import org.lwjgl.input.Keyboard;
import org.lwjgl.opengl.ARBOcclusionQuery;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class n implements pm {
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int J;
    private int K;
    private int L;
    private int M;
    private int N;
    private int O;
    private int P;
    private int Q;
    private int R;
    public float i;
    private fd k;
    private ji l;
    private dk[] n;
    private dk[] o;
    private int p;
    private int q;
    private int r;
    private Minecraft t;
    private cv u;
    private IntBuffer v;
    private boolean w;
    private int y;
    private int z;
    public List a = new ArrayList();
    private List m = new ArrayList();
    private int x = 0;
    private int H = -1;
    private int I = 2;
    int[] b = new int[50000];
    IntBuffer c = ge.d(64);
    private List S = new ArrayList();
    private tg[] T = {new tg(), new tg(), new tg(), new tg()};
    int d = 0;
    int e = ge.a(1);
    double f = -9999.0d;
    double g = -9999.0d;
    double h = -9999.0d;
    int j = 0;
    private int s = ge.a(786432);

    @Override // defpackage.pm
    public void a(int i, int i2, int i3, ow owVar) {
    }

    public boolean a(double d, double d2, double d3, float f) {
        return false;
    }

    public n(Minecraft minecraft, ji jiVar) {
        this.w = false;
        this.t = minecraft;
        this.l = jiVar;
        boolean zA = minecraft.n().a();
        this.w = zA;
        if (zA) {
            this.c.clear();
            IntBuffer intBufferD = ge.d(262144);
            this.v = intBufferD;
            intBufferD.clear();
            this.v.position(0);
            this.v.limit(262144);
            ARBOcclusionQuery.glGenQueriesARB(this.v);
        }
        this.y = ge.a(3);
        GL11.glPushMatrix();
        GL11.glNewList(this.y, 4864);
        g();
        GL11.glEndList();
        GL11.glPopMatrix();
        nw nwVar = nw.a;
        int i = this.y + 1;
        this.z = i;
        GL11.glNewList(i, 4864);
        for (int i2 = -384; i2 <= 384; i2 += 64) {
            int i3 = -384;
            while (i3 <= 384) {
                nwVar.b();
                double d = i2 + 0;
                double d2 = 16.0f;
                double d3 = i3 + 0;
                nwVar.a(d, d2, d3);
                double d4 = i2 + 64;
                nwVar.a(d4, d2, d3);
                i3 += 64;
                double d5 = i3;
                nwVar.a(d4, d2, d5);
                nwVar.a(d, d2, d5);
                nwVar.a();
            }
        }
        GL11.glEndList();
        int i4 = this.y + 2;
        this.A = i4;
        GL11.glNewList(i4, 4864);
        nwVar.b();
        for (int i5 = -384; i5 <= 384; i5 += 64) {
            int i6 = -384;
            while (i6 <= 384) {
                double d6 = i5 + 64;
                double d7 = -16.0f;
                double d8 = i6 + 0;
                nwVar.a(d6, d7, d8);
                double d9 = i5 + 0;
                nwVar.a(d9, d7, d8);
                i6 += 64;
                double d10 = i6;
                nwVar.a(d9, d7, d10);
                nwVar.a(d6, d7, d10);
            }
        }
        nwVar.a();
        GL11.glEndList();
    }

    private void g() {
        Random random = new Random(10842L);
        nw nwVar = nw.a;
        nwVar.b();
        for (int i = 0; i < 1500; i++) {
            double dNextFloat = (random.nextFloat() * 2.0f) - 1.0f;
            double dNextFloat2 = (random.nextFloat() * 2.0f) - 1.0f;
            double dNextFloat3 = (random.nextFloat() * 2.0f) - 1.0f;
            double dNextFloat4 = (random.nextFloat() * 0.25f) + 0.25f;
            double d = (dNextFloat * dNextFloat) + (dNextFloat2 * dNextFloat2) + (dNextFloat3 * dNextFloat3);
            if (d < 1.0d && d > 0.01d) {
                double dSqrt = 1.0d / Math.sqrt(d);
                double d2 = dNextFloat * dSqrt;
                double d3 = dNextFloat2 * dSqrt;
                double d4 = dNextFloat3 * dSqrt;
                double d5 = d2 * 100.0d;
                double d6 = d3 * 100.0d;
                double d7 = 100.0d * d4;
                double dAtan2 = Math.atan2(d2, d4);
                double dSin = Math.sin(dAtan2);
                double dCos = Math.cos(dAtan2);
                double dAtan3 = Math.atan2(Math.sqrt((d2 * d2) + (d4 * d4)), d3);
                double dSin2 = Math.sin(dAtan3);
                double dCos2 = Math.cos(dAtan3);
                double dNextDouble = random.nextDouble() * 3.141592653589793d * 2.0d;
                double dSin3 = Math.sin(dNextDouble);
                double dCos3 = Math.cos(dNextDouble);
                int i2 = 0;
                while (i2 < 4) {
                    double d8 = ((double) ((i2 & 2) - 1)) * dNextFloat4;
                    int i3 = i2 + 1;
                    double d9 = ((double) ((i3 & 2) - 1)) * dNextFloat4;
                    double d10 = (d8 * dCos3) - (d9 * dSin3);
                    double d11 = (d9 * dCos3) + (d8 * dSin3);
                    double d12 = (0.0d * dSin2) - (d10 * dCos2);
                    nwVar.a(((d12 * dSin) - (d11 * dCos)) + d5, d6 + (d10 * dSin2) + (dCos2 * 0.0d), d7 + (d11 * dSin) + (d12 * dCos));
                    i2 = i3;
                }
            }
        }
        nwVar.a();
    }

    public void a(fd fdVar) {
        fd fdVar2 = this.k;
        if (fdVar2 != null) {
            fdVar2.b(this);
        }
        this.f = -9999.0d;
        this.g = -9999.0d;
        this.h = -9999.0d;
        th.a.a(fdVar);
        this.k = fdVar;
        this.u = new cv(fdVar);
        if (fdVar != null) {
            fdVar.a(this);
            a();
        }
    }

    public void a() {
        ls lsVar;
        uu.L.a(this.t.z.j);
        this.H = this.t.z.e;
        if (this.o != null) {
            int i = 0;
            while (true) {
                dk[] dkVarArr = this.o;
                if (i >= dkVarArr.length) {
                    break;
                }
                dkVarArr[i].c();
                i++;
            }
        }
        int i2 = 64 << (3 - this.H);
        if (i2 > 400) {
            i2 = 400;
        }
        int i3 = (i2 / 16) + 1;
        this.p = i3;
        this.q = 8;
        this.r = i3;
        this.o = new dk[i3 * 8 * i3];
        this.n = new dk[i3 * 8 * i3];
        this.B = 0;
        this.C = 0;
        this.D = 0;
        this.E = i3;
        this.F = 8;
        this.G = i3;
        for (int i4 = 0; i4 < this.m.size(); i4++) {
            ((dk) this.m.get(i4)).u = false;
        }
        this.m.clear();
        this.a.clear();
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < this.p; i7++) {
            for (int i8 = 0; i8 < this.q; i8++) {
                int i9 = 0;
                while (i9 < this.r) {
                    this.o[(((this.q * i9) + i8) * this.p) + i7] = new dk(this.k, this.a, i7 * 16, i8 * 16, i9 * 16, 16, this.s + i5);
                    if (this.w) {
                        this.o[(((this.q * i9) + i8) * this.p) + i7].z = this.v.get(i6);
                    }
                    this.o[(((this.q * i9) + i8) * this.p) + i7].y = false;
                    this.o[(((this.q * i9) + i8) * this.p) + i7].x = true;
                    this.o[(((this.q * i9) + i8) * this.p) + i7].o = true;
                    int i10 = i6 + 1;
                    this.o[(((this.q * i9) + i8) * this.p) + i7].w = i6;
                    this.o[(((this.q * i9) + i8) * this.p) + i7].f();
                    dk[] dkVarArr2 = this.n;
                    int i11 = this.q;
                    int i12 = this.p;
                    dk[] dkVarArr3 = this.o;
                    dkVarArr2[(((i9 * i11) + i8) * i12) + i7] = dkVarArr3[(((i9 * i11) + i8) * i12) + i7];
                    this.m.add(dkVarArr3[(((i11 * i9) + i8) * i12) + i7]);
                    i5 += 3;
                    i9++;
                    i6 = i10;
                }
            }
        }
        if (this.k != null && (lsVar = this.t.i) != null) {
            b(in.b(lsVar.aM), in.b(lsVar.aN), in.b(lsVar.aO));
            Arrays.sort(this.n, new jo(lsVar));
        }
        this.I = 2;
    }

    public void a(bt btVar, yn ynVar, float f) {
        int i = this.I;
        if (i > 0) {
            this.I = i - 1;
            return;
        }
        ll.a.a(this.k, this.l, this.t.q, this.t.i, f);
        th.a.a(this.k, this.l, this.t.q, this.t.i, this.t.z, f);
        this.J = 0;
        this.K = 0;
        this.L = 0;
        ls lsVar = this.t.i;
        double d = f;
        th.b = lsVar.bl + ((lsVar.aM - lsVar.bl) * d);
        th.c = lsVar.bm + ((lsVar.aN - lsVar.bm) * d);
        th.d = lsVar.bn + ((lsVar.aO - lsVar.bn) * d);
        ll.b = lsVar.bl + ((lsVar.aM - lsVar.bl) * d);
        ll.c = lsVar.bm + ((lsVar.aN - lsVar.bm) * d);
        ll.d = lsVar.bn + ((lsVar.aO - lsVar.bn) * d);
        List listO = this.k.o();
        this.J = listO.size();
        for (int i2 = 0; i2 < this.k.e.size(); i2++) {
            sn snVar = (sn) this.k.e.get(i2);
            this.K++;
            if (snVar.a(btVar)) {
                th.a.a(snVar, f);
            }
        }
        for (int i3 = 0; i3 < listO.size(); i3++) {
            sn snVar2 = (sn) listO.get(i3);
            if (snVar2.a(btVar) && (snVar2.bM || ynVar.a(snVar2.aW))) {
                if (snVar2 != this.t.i || this.t.z.A || this.t.i.N()) {
                    int iB = in.b(snVar2.aN);
                    if (iB < 0) {
                        iB = 0;
                    }
                    if (iB >= 128) {
                        iB = 127;
                    }
                    if (this.k.i(in.b(snVar2.aM), iB, in.b(snVar2.aO))) {
                        this.K++;
                        th.a.a(snVar2, f);
                    }
                }
            }
        }
        for (int i4 = 0; i4 < this.a.size(); i4++) {
            ll.a.a((ow) this.a.get(i4), f);
        }
    }

    public String b() {
        return "C: " + this.P + "/" + this.M + ". F: " + this.N + ", O: " + this.O + ", E: " + this.Q;
    }

    public String c() {
        return "E: " + this.K + "/" + this.J + ". B: " + this.L + ", I: " + ((this.J - this.L) - this.K);
    }

    private void b(int i, int i2, int i3) {
        int i4 = i - 8;
        int i5 = i3 - 8;
        this.B = Integer.MAX_VALUE;
        this.C = Integer.MAX_VALUE;
        this.D = Integer.MAX_VALUE;
        this.E = Integer.MIN_VALUE;
        this.F = Integer.MIN_VALUE;
        this.G = Integer.MIN_VALUE;
        int i6 = this.p * 16;
        int i7 = i6 / 2;
        for (int i8 = 0; i8 < this.p; i8++) {
            int i9 = i8 * 16;
            int i10 = (i9 + i7) - i4;
            if (i10 < 0) {
                i10 -= i6 - 1;
            }
            int i11 = i9 - ((i10 / i6) * i6);
            if (i11 < this.B) {
                this.B = i11;
            }
            if (i11 > this.E) {
                this.E = i11;
            }
            for (int i12 = 0; i12 < this.r; i12++) {
                int i13 = i12 * 16;
                int i14 = (i13 + i7) - i5;
                if (i14 < 0) {
                    i14 -= i6 - 1;
                }
                int i15 = i13 - ((i14 / i6) * i6);
                if (i15 < this.D) {
                    this.D = i15;
                }
                if (i15 > this.G) {
                    this.G = i15;
                }
                int i16 = 0;
                while (true) {
                    int i17 = this.q;
                    if (i16 < i17) {
                        int i18 = i16 * 16;
                        if (i18 < this.C) {
                            this.C = i18;
                        }
                        if (i18 > this.F) {
                            this.F = i18;
                        }
                        dk dkVar = this.o[(((i17 * i12) + i16) * this.p) + i8];
                        boolean z = dkVar.u;
                        dkVar.a(i11, i18, i15);
                        if (!z && dkVar.u) {
                            this.m.add(dkVar);
                        }
                        i16++;
                    }
                }
            }
        }
    }

    public int a(ls lsVar, int i, double d) {
        boolean z;
        boolean z2 = false;
        for (int i2 = 0; i2 < 10; i2++) {
            int i3 = this.R + 1;
            dk[] dkVarArr = this.o;
            int length = i3 % dkVarArr.length;
            this.R = length;
            dk dkVar = dkVarArr[length];
            if (dkVar.u && !this.m.contains(dkVar)) {
                this.m.add(dkVar);
            }
        }
        if (this.t.z.e != this.H) {
            a();
        }
        if (i == 0) {
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
        }
        double d2 = lsVar.bl + ((lsVar.aM - lsVar.bl) * d);
        double d3 = lsVar.bm + ((lsVar.aN - lsVar.bm) * d);
        double d4 = lsVar.bn + ((lsVar.aO - lsVar.bn) * d);
        double d5 = lsVar.aM - this.f;
        double d6 = lsVar.aN - this.g;
        double d7 = lsVar.aO - this.h;
        if ((d5 * d5) + (d6 * d6) + (d7 * d7) > 16.0d) {
            this.f = lsVar.aM;
            this.g = lsVar.aN;
            this.h = lsVar.aO;
            b(in.b(lsVar.aM), in.b(lsVar.aN), in.b(lsVar.aO));
            Arrays.sort(this.n, new jo(lsVar));
        }
        u.a();
        if (this.w && this.t.z.h && !this.t.z.g && i == 0) {
            a(0, 16);
            for (int i4 = 0; i4 < 16; i4++) {
                this.n[i4].x = true;
            }
            int i5 = 16;
            int iA = a(0, 16, i, d) + 0;
            while (true) {
                int length2 = i5 * 2;
                dk[] dkVarArr2 = this.n;
                if (length2 > dkVarArr2.length) {
                    length2 = dkVarArr2.length;
                }
                int i6 = length2;
                GL11.glDisable(3553);
                GL11.glDisable(2896);
                GL11.glDisable(3008);
                GL11.glDisable(2912);
                GL11.glColorMask(z2, z2, z2, z2);
                GL11.glDepthMask(z2);
                a(i5, i6);
                GL11.glPushMatrix();
                int i7 = i5;
                float f = 0.0f;
                float f2 = 0.0f;
                float f3 = 0.0f;
                while (i7 < i6) {
                    if (this.n[i7].e()) {
                        this.n[i7].o = z2;
                    } else {
                        if (!this.n[i7].o) {
                            this.n[i7].x = true;
                        }
                        if (this.n[i7].o && !this.n[i7].y) {
                            int iC = (int) ((in.c(this.n[i7].a(lsVar)) / 128.0f) + 1.0f);
                            if (this.x % iC == i7 % iC) {
                                dk dkVar2 = this.n[i7];
                                float f4 = ((float) (((double) dkVar2.i) - d2)) - f;
                                float f5 = ((float) (((double) dkVar2.j) - d3)) - f2;
                                float f6 = ((float) (((double) dkVar2.k) - d4)) - f3;
                                if (f4 != 0.0f || f5 != 0.0f || f6 != 0.0f) {
                                    GL11.glTranslatef(f4, f5, f6);
                                    f += f4;
                                    f2 += f5;
                                    f3 += f6;
                                }
                                ARBOcclusionQuery.glBeginQueryARB(35092, this.n[i7].z);
                                this.n[i7].d();
                                ARBOcclusionQuery.glEndQueryARB(35092);
                                this.n[i7].y = true;
                            }
                        }
                        i7++;
                        i5 = i5;
                        iA = iA;
                        z2 = false;
                    }
                    i7++;
                    i5 = i5;
                    iA = iA;
                    z2 = false;
                }
                int i8 = i5;
                int i9 = iA;
                GL11.glPopMatrix();
                if (this.t.z.g) {
                    if (px.b == 0) {
                        z = true;
                        GL11.glColorMask(false, true, true, true);
                    } else {
                        z = true;
                        GL11.glColorMask(true, false, false, true);
                    }
                } else {
                    z = true;
                    GL11.glColorMask(true, true, true, true);
                }
                GL11.glDepthMask(z);
                GL11.glEnable(3553);
                GL11.glEnable(3008);
                GL11.glEnable(2912);
                iA = i9 + a(i8, i6, i, d);
                if (i6 >= this.n.length) {
                    return iA;
                }
                i5 = i6;
                z2 = false;
            }
        } else {
            return 0 + a(0, this.n.length, i, d);
        }
    }

    private void a(int i, int i2) {
        while (i < i2) {
            if (this.n[i].y) {
                this.c.clear();
                ARBOcclusionQuery.glGetQueryObjectuARB(this.n[i].z, 34919, this.c);
                if (this.c.get(0) != 0) {
                    this.n[i].y = false;
                    this.c.clear();
                    ARBOcclusionQuery.glGetQueryObjectuARB(this.n[i].z, 34918, this.c);
                    this.n[i].x = this.c.get(0) != 0;
                }
            }
            i++;
        }
    }

    private int a(int i, int i2, int i3, double d) {
        int i4;
        int i5;
        double d2 = d;
        this.S.clear();
        int i6 = 0;
        for (int i7 = i; i7 < i2; i7++) {
            if (i3 == 0) {
                this.M++;
                if (this.n[i7].p[i3]) {
                    this.Q++;
                } else if (!this.n[i7].o) {
                    this.N++;
                } else if (!this.w || this.n[i7].x) {
                    this.P++;
                } else {
                    this.O++;
                }
            }
            if (!this.n[i7].p[i3] && this.n[i7].o && ((!this.w || this.n[i7].x) && this.n[i7].a(i3) >= 0)) {
                this.S.add(this.n[i7]);
                i6++;
            }
        }
        ls lsVar = this.t.i;
        double d3 = lsVar.bl + ((lsVar.aM - lsVar.bl) * d2);
        double d4 = lsVar.bm + ((lsVar.aN - lsVar.bm) * d2);
        double d5 = lsVar.bn + ((lsVar.aO - lsVar.bn) * d2);
        int i8 = 0;
        while (true) {
            tg[] tgVarArr = this.T;
            if (i8 >= tgVarArr.length) {
                break;
            }
            tgVarArr[i8].b();
            i8++;
        }
        int i9 = 0;
        int i10 = 0;
        while (i10 < this.S.size()) {
            dk dkVar = (dk) this.S.get(i10);
            int i11 = -1;
            int i12 = 0;
            while (i12 < i9) {
                int i13 = i10;
                int i14 = i6;
                if (this.T[i12].a(dkVar.i, dkVar.j, dkVar.k)) {
                    i11 = i12;
                }
                i12++;
                i6 = i14;
                i10 = i13;
            }
            int i15 = i6;
            int i16 = i10;
            if (i11 < 0) {
                i4 = i9 + 1;
                this.T[i9].a(dkVar.i, dkVar.j, dkVar.k, d3, d4, d5);
                i5 = i9;
            } else {
                i4 = i9;
                i5 = i11;
            }
            this.T[i5].a(dkVar.a(i3));
            i10 = i16 + 1;
            i6 = i15;
            i9 = i4;
            d2 = d;
        }
        int i17 = i6;
        a(i3, d2);
        return i17;
    }

    public void a(int i, double d) {
        int i2 = 0;
        while (true) {
            tg[] tgVarArr = this.T;
            if (i2 >= tgVarArr.length) {
                return;
            }
            tgVarArr[i2].a();
            i2++;
        }
    }

    public void d() {
        this.x++;
    }

    public void a(float f) {
        float f2;
        float f3;
        if (this.t.f.t.c) {
            return;
        }
        int i = 3553;
        GL11.glDisable(3553);
        bt btVarA = this.k.a((sn) this.t.i, f);
        float f4 = (float) btVarA.a;
        float f5 = (float) btVarA.b;
        float f6 = (float) btVarA.c;
        if (this.t.z.g) {
            float f7 = f4 * 30.0f;
            float f8 = (((f5 * 59.0f) + f7) + (f6 * 11.0f)) / 100.0f;
            f5 = ((f5 * 70.0f) + f7) / 100.0f;
            f6 = (f7 + (f6 * 70.0f)) / 100.0f;
            f4 = f8;
        }
        GL11.glColor3f(f4, f5, f6);
        nw nwVar = nw.a;
        GL11.glDepthMask(false);
        GL11.glEnable(2912);
        GL11.glColor3f(f4, f5, f6);
        GL11.glCallList(this.z);
        GL11.glDisable(2912);
        GL11.glDisable(3008);
        GL11.glEnable(3042);
        GL11.glBlendFunc(770, 771);
        u.a();
        float[] fArrA = this.k.t.a(this.k.b(f), f);
        if (fArrA != null) {
            GL11.glDisable(3553);
            GL11.glShadeModel(7425);
            GL11.glPushMatrix();
            GL11.glRotatef(90.0f, 1.0f, 0.0f, 0.0f);
            GL11.glRotatef(this.k.b(f) > 0.5f ? 180.0f : 0.0f, 0.0f, 0.0f, 1.0f);
            float f9 = fArrA[0];
            float f10 = fArrA[1];
            float f11 = fArrA[2];
            if (this.t.z.g) {
                float f12 = f9 * 30.0f;
                float f13 = (((59.0f * f10) + f12) + (11.0f * f11)) / 100.0f;
                f10 = (f12 + (f10 * 70.0f)) / 100.0f;
                f11 = (f12 + (f11 * 70.0f)) / 100.0f;
                f9 = f13;
            }
            nwVar.a(6);
            nwVar.a(f9, f10, f11, fArrA[3]);
            f3 = 0.0f;
            nwVar.a(0.0d, 100.0d, 0.0d);
            nwVar.a(fArrA[0], fArrA[1], fArrA[2], 0.0f);
            int i2 = 0;
            while (i2 <= 16) {
                float f14 = ((i2 * 3.1415927f) * 2.0f) / 16;
                float fA = in.a(f14);
                float fB = in.b(f14);
                nwVar.a(fA * 120.0f, 120.0f * fB, (-fB) * 40.0f * fArrA[3]);
                i2++;
                f6 = f6;
            }
            f2 = f6;
            nwVar.a();
            GL11.glPopMatrix();
            GL11.glShadeModel(7424);
            i = 3553;
        } else {
            f2 = f6;
            f3 = 0.0f;
        }
        GL11.glEnable(i);
        GL11.glBlendFunc(770, 1);
        GL11.glPushMatrix();
        float fG = 1.0f - this.k.g(f);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, fG);
        GL11.glTranslatef(f3, f3, f3);
        GL11.glRotatef(f3, f3, f3, 1.0f);
        GL11.glRotatef(this.k.b(f) * 360.0f, 1.0f, f3, f3);
        GL11.glBindTexture(3553, this.l.b("/terrain/sun.png"));
        nwVar.b();
        double d = -30.0f;
        nwVar.a(d, 100.0d, d, 0.0d, 0.0d);
        double d2 = 30.0f;
        nwVar.a(d2, 100.0d, d, 1.0d, 0.0d);
        nwVar.a(d2, 100.0d, d2, 1.0d, 1.0d);
        nwVar.a(d, 100.0d, d2, 0.0d, 1.0d);
        nwVar.a();
        GL11.glBindTexture(3553, this.l.b("/terrain/moon.png"));
        nwVar.b();
        double d3 = -20.0f;
        double d4 = 20.0f;
        nwVar.a(d3, -100.0d, d4, 1.0d, 1.0d);
        nwVar.a(d4, -100.0d, d4, 0.0d, 1.0d);
        nwVar.a(d4, -100.0d, d3, 0.0d, 0.0d);
        nwVar.a(d3, -100.0d, d3, 1.0d, 0.0d);
        nwVar.a();
        GL11.glDisable(3553);
        float fE = this.k.e(f) * fG;
        if (fE > f3) {
            GL11.glColor4f(fE, fE, fE, fE);
            GL11.glCallList(this.y);
        }
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        GL11.glDisable(3042);
        GL11.glEnable(3008);
        GL11.glEnable(2912);
        GL11.glPopMatrix();
        if (this.k.t.c()) {
            GL11.glColor3f((f4 * 0.2f) + 0.04f, (f5 * 0.2f) + 0.04f, (f2 * 0.6f) + 0.1f);
        } else {
            GL11.glColor3f(f4, f5, f2);
        }
        GL11.glDisable(3553);
        GL11.glCallList(this.A);
        GL11.glEnable(3553);
        GL11.glDepthMask(true);
    }

    public void b(float f) {
        if (this.t.f.t.c) {
            return;
        }
        if (this.t.z.j) {
            c(f);
            return;
        }
        GL11.glDisable(2884);
        double d = f;
        float f2 = (float) (this.t.i.bm + ((this.t.i.aN - this.t.i.bm) * d));
        nw nwVar = nw.a;
        GL11.glBindTexture(3553, this.l.b("/environment/clouds.png"));
        GL11.glEnable(3042);
        GL11.glBlendFunc(770, 771);
        bt btVarC = this.k.c(f);
        float f3 = (float) btVarC.a;
        float f4 = (float) btVarC.b;
        float f5 = (float) btVarC.c;
        if (this.t.z.g) {
            float f6 = f3 * 30.0f;
            float f7 = (((59.0f * f4) + f6) + (11.0f * f5)) / 100.0f;
            f4 = ((f4 * 70.0f) + f6) / 100.0f;
            f5 = (f6 + (f5 * 70.0f)) / 100.0f;
            f3 = f7;
        }
        double d2 = this.t.i.aJ + ((this.t.i.aM - this.t.i.aJ) * d) + ((double) ((this.x + f) * 0.03f));
        double d3 = this.t.i.aL + ((this.t.i.aO - this.t.i.aL) * d);
        double dB = d2 - ((double) (in.b(d2 / 2048.0d) * 2048));
        double dB2 = d3 - ((double) (in.b(d3 / 2048.0d) * 2048));
        float fD = (this.k.t.d() - f2) + 0.33f;
        float f8 = 4.8828125E-4f;
        double d4 = 4.8828125E-4f;
        float f9 = (float) (dB * d4);
        float f10 = (float) (dB2 * d4);
        nwVar.b();
        nwVar.a(f3, f4, f5, 0.8f);
        int i = -256;
        while (true) {
            if (i >= 256) {
                nwVar.a();
                GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
                GL11.glDisable(3042);
                GL11.glEnable(2884);
                return;
            }
            int i2 = -256;
            for (int i3 = Keyboard.KEYBOARD_SIZE; i2 < i3; i3 = Keyboard.KEYBOARD_SIZE) {
                int i4 = i + 0;
                double d5 = i4;
                double d6 = fD;
                int i5 = i2 + 32;
                int i6 = i;
                double d7 = i5;
                double d8 = (i4 * f8) + f9;
                float f11 = f9;
                double d9 = (i5 * f8) + f10;
                int i7 = i2;
                nwVar.a(d5, d6, d7, d8, d9);
                int i8 = i6 + 32;
                double d10 = i8;
                double d11 = (i8 * 4.8828125E-4f) + f11;
                nwVar.a(d10, d6, d7, d11, d9);
                int i9 = i7 + 0;
                double d12 = i9;
                double d13 = (i9 * 4.8828125E-4f) + f10;
                nwVar.a(d10, d6, d12, d11, d13);
                nwVar.a(d5, d6, d12, d8, d13);
                i2 = i5;
                f8 = 4.8828125E-4f;
                i = i6;
                f9 = f11;
            }
            i += 32;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21, types: [int] */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r4v28 */
    /* JADX WARN: Type inference failed for: r4v29, types: [int] */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v26, types: [int] */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v32, types: [int] */
    /* JADX WARN: Type inference failed for: r7v49 */
    /* JADX WARN: Type inference failed for: r7v50 */
    public void c(float f) {
        nw nwVar;
        int i;
        int i2;
        float f2;
        float f3;
        float f4;
        boolean z;
        int i3;
        nw nwVar2;
        float f5;
        float f6;
        n nVar = this;
        GL11.glDisable(2884);
        double d = f;
        float f7 = (float) (nVar.t.i.bm + ((nVar.t.i.aN - nVar.t.i.bm) * d));
        nw nwVar3 = nw.a;
        double d2 = 12.0f;
        double d3 = ((nVar.t.i.aJ + ((nVar.t.i.aM - nVar.t.i.aJ) * d)) + ((double) ((nVar.x + f) * 0.03f))) / d2;
        double d4 = ((nVar.t.i.aL + ((nVar.t.i.aO - nVar.t.i.aL) * d)) / d2) + 0.33000001311302185d;
        float fD = (nVar.k.t.d() - f7) + 0.33f;
        double dB = d3 - ((double) (in.b(d3 / 2048.0d) * 2048));
        double dB2 = d4 - ((double) (in.b(d4 / 2048.0d) * 2048));
        GL11.glBindTexture(3553, nVar.l.b("/environment/clouds.png"));
        GL11.glEnable(3042);
        GL11.glBlendFunc(770, 771);
        bt btVarC = nVar.k.c(f);
        float f8 = (float) btVarC.a;
        float f9 = (float) btVarC.b;
        float f10 = (float) btVarC.c;
        if (nVar.t.z.g) {
            float f11 = f8 * 30.0f;
            float f12 = (((59.0f * f9) + f11) + (11.0f * f10)) / 100.0f;
            f9 = ((f9 * 70.0f) + f11) / 100.0f;
            f10 = (f11 + (f10 * 70.0f)) / 100.0f;
            f8 = f12;
        }
        float fB = in.b(dB) * 0.00390625f;
        float fB2 = in.b(dB2) * 0.00390625f;
        float fB3 = (float) (dB - ((double) in.b(dB)));
        float fB4 = (float) (dB2 - ((double) in.b(dB2)));
        float f13 = 1.0f;
        GL11.glScalef(12.0f, 1.0f, 12.0f);
        boolean z2 = false;
        int i4 = 0;
        while (i4 < 2) {
            if (i4 == 0) {
                GL11.glColorMask(z2, z2, z2, z2);
            } else if (nVar.t.z.g) {
                if (px.b == 0) {
                    GL11.glColorMask(z2, true, true, true);
                } else {
                    GL11.glColorMask(true, z2, z2, true);
                }
            } else {
                GL11.glColorMask(true, true, true, true);
            }
            int i5 = -2;
            while (true) {
                int i6 = 3;
                if (i5 <= 3) {
                    int i7 = -2;
                    while (i7 <= i6) {
                        nwVar3.b();
                        float f14 = i5 * 8;
                        float f15 = i7 * 8;
                        float f16 = f14 - fB3;
                        float f17 = f15 - fB4;
                        if (fD > -5.0f) {
                            nwVar3.a(f8 * 0.7f, f9 * 0.7f, f10 * 0.7f, 0.8f);
                            nwVar3.b(0.0f, -1.0f, 0.0f);
                            double d5 = f16 + 0.0f;
                            nwVar = nwVar3;
                            double d6 = fD + 0.0f;
                            float f18 = 8;
                            double d7 = f17 + f18;
                            double d8 = ((f14 + 0.0f) * 0.00390625f) + fB;
                            i = i7;
                            double d9 = ((f15 + f18) * 0.00390625f) + fB2;
                            f2 = f14;
                            i3 = 3;
                            f3 = f15;
                            i2 = i5;
                            f4 = 1.0f;
                            z = false;
                            nwVar.a(d5, d6, d7, d8, d9);
                            double d10 = f16 + f18;
                            double d11 = ((f2 + f18) * 0.00390625f) + fB;
                            nwVar.a(d10, d6, d7, d11, d9);
                            double d12 = f17 + 0.0f;
                            double d13 = ((f3 + 0.0f) * 0.00390625f) + fB2;
                            nwVar.a(d10, d6, d12, d11, d13);
                            nwVar.a(d5, d6, d12, d8, d13);
                        } else {
                            nwVar = nwVar3;
                            i = i7;
                            i2 = i5;
                            f2 = f14;
                            f3 = f15;
                            f4 = f13;
                            z = z2;
                            i3 = 3;
                        }
                        if (fD <= 5.0f) {
                            nwVar2 = nwVar;
                            f5 = f10;
                            float f19 = f8;
                            nwVar2.a(f19, f9, f5, 0.8f);
                            nwVar2.b(0.0f, f4, 0.0f);
                            double d14 = f16 + 0.0f;
                            double d15 = (fD + 4.0f) - 9.765625E-4f;
                            float f20 = 8;
                            double d16 = f17 + f20;
                            double d17 = ((f2 + 0.0f) * 0.00390625f) + fB;
                            f6 = f19;
                            double d18 = ((f3 + f20) * 0.00390625f) + fB2;
                            nwVar2.a(d14, d15, d16, d17, d18);
                            double d19 = f16 + f20;
                            double d20 = ((f2 + f20) * 0.00390625f) + fB;
                            nwVar2.a(d19, d15, d16, d20, d18);
                            double d21 = f17 + 0.0f;
                            double d22 = ((f3 + 0.0f) * 0.00390625f) + fB2;
                            nwVar2.a(d19, d15, d21, d20, d22);
                            nwVar2.a(d14, d15, d21, d17, d22);
                        } else {
                            nwVar2 = nwVar;
                            f5 = f10;
                            f6 = f8;
                        }
                        nwVar2.a(f6 * 0.9f, f9 * 0.9f, 0.9f * f5, 0.8f);
                        float f21 = 0.5f;
                        int i8 = i2;
                        if (i8 > -1) {
                            float f22 = 0.0f;
                            nwVar2.b(-1.0f, 0.0f, 0.0f);
                            for (?? r4 = z; r4 < 8; r4++) {
                                float f23 = (float) r4;
                                double d23 = f16 + f23 + f22;
                                double d24 = fD + f22;
                                float f24 = 8;
                                double d25 = f17 + f24;
                                double d26 = ((f2 + f23 + f21) * 0.00390625f) + fB;
                                double d27 = ((f3 + f24) * 0.00390625f) + fB2;
                                nwVar2.a(d23, d24, d25, d26, d27);
                                double d28 = fD + 4.0f;
                                nw nwVar4 = nwVar2;
                                nwVar4.a(d23, d28, d25, d26, d27);
                                double d29 = f17 + 0.0f;
                                double d30 = ((f3 + 0.0f) * 0.00390625f) + fB2;
                                nwVar4.a(d23, d28, d29, d26, d30);
                                nwVar4.a(d23, d24, d29, d26, d30);
                                f21 = 0.5f;
                                f22 = 0.0f;
                            }
                        }
                        if (i8 <= 1) {
                            float f25 = 1.0f;
                            float f26 = 0.0f;
                            nwVar2.b(1.0f, 0.0f, 0.0f);
                            for (?? r7 = z; r7 < 8; r7++) {
                                float f27 = (float) r7;
                                double d31 = ((f16 + f27) + f25) - 9.765625E-4f;
                                double d32 = fD + f26;
                                float f28 = 8;
                                double d33 = f17 + f28;
                                double d34 = ((f2 + f27 + 0.5f) * 0.00390625f) + fB;
                                double d35 = ((f3 + f28) * 0.00390625f) + fB2;
                                nw nwVar5 = nwVar2;
                                nwVar5.a(d31, d32, d33, d34, d35);
                                double d36 = fD + 4.0f;
                                nwVar5.a(d31, d36, d33, d34, d35);
                                double d37 = f17 + 0.0f;
                                double d38 = ((f3 + 0.0f) * 0.00390625f) + fB2;
                                nwVar5.a(d31, d36, d37, d34, d38);
                                nwVar5.a(d31, d32, d37, d34, d38);
                                f25 = 1.0f;
                                f26 = 0.0f;
                            }
                        }
                        nwVar2.a(f6 * 0.8f, f9 * 0.8f, f5 * 0.8f, 0.8f);
                        int i9 = i;
                        if (i9 > -1) {
                            float f29 = 0.0f;
                            nwVar2.b(0.0f, 0.0f, -1.0f);
                            for (?? r2 = z; r2 < 8; r2++) {
                                double d39 = f16 + f29;
                                double d40 = fD + 4.0f;
                                float f30 = (float) r2;
                                double d41 = f17 + f30 + f29;
                                double d42 = ((f2 + f29) * 0.00390625f) + fB;
                                double d43 = ((f3 + f30 + 0.5f) * 0.00390625f) + fB2;
                                nwVar2.a(d39, d40, d41, d42, d43);
                                float f31 = 8;
                                double d44 = f16 + f31;
                                double d45 = ((f2 + f31) * 0.00390625f) + fB;
                                nwVar2.a(d44, d40, d41, d45, d43);
                                double d46 = fD + 0.0f;
                                nw nwVar6 = nwVar2;
                                nwVar6.a(d44, d46, d41, d45, d43);
                                nwVar6.a(d39, d46, d41, d42, d43);
                                f5 = f5;
                                f29 = 0.0f;
                            }
                        }
                        float f32 = f5;
                        if (i9 <= 1) {
                            float f33 = 1.0f;
                            float f34 = 0.0f;
                            nwVar2.b(0.0f, 0.0f, 1.0f);
                            char c = '\b';
                            for (?? r8 = z; r8 < c; r8++) {
                                double d47 = f16 + f34;
                                double d48 = fD + 4.0f;
                                float f35 = (float) r8;
                                double d49 = ((f17 + f35) + f33) - 9.765625E-4f;
                                double d50 = ((f2 + f34) * 0.00390625f) + fB;
                                double d51 = ((f3 + f35 + 0.5f) * 0.00390625f) + fB2;
                                nwVar2.a(d47, d48, d49, d50, d51);
                                float f36 = 8;
                                double d52 = f16 + f36;
                                double d53 = ((f2 + f36) * 0.00390625f) + fB;
                                nwVar2.a(d52, d48, d49, d53, d51);
                                double d54 = fD + 0.0f;
                                nw nwVar7 = nwVar2;
                                nwVar7.a(d52, d54, d49, d53, d51);
                                nwVar7.a(d47, d54, d49, d50, d51);
                                i8 = i8;
                                f34 = 0.0f;
                                c = '\b';
                                f33 = 1.0f;
                            }
                        }
                        nwVar2.a();
                        i7 = i9 + 1;
                        i5 = i8;
                        nwVar3 = nwVar2;
                        f9 = f9;
                        f10 = f32;
                        fD = fD;
                        fB3 = fB3;
                        fB4 = fB4;
                        f8 = f6;
                        i6 = i3;
                        i4 = i4;
                        z2 = z;
                        f13 = 1.0f;
                    }
                    i5++;
                    fB4 = fB4;
                    f13 = 1.0f;
                }
            }
            i4++;
            fB4 = fB4;
            f13 = 1.0f;
            nVar = this;
        }
        float f37 = f13;
        GL11.glColor4f(f37, f37, f37, f37);
        GL11.glDisable(3042);
        GL11.glEnable(2884);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0056 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    public boolean a(ls lsVar, boolean z) {
        md mdVar = new md(lsVar);
        dk[] dkVarArr = new dk[2];
        int size = this.m.size();
        ArrayList arrayList = null;
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            dk dkVar = (dk) this.m.get(i2);
            if (z) {
                if (dkVar.o) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    i++;
                    arrayList.add(dkVar);
                    this.m.set(i2, null);
                }
            } else if (dkVar.a(lsVar) > 256.0f) {
                int i3 = 0;
                while (i3 < 2) {
                    dk dkVar2 = dkVarArr[i3];
                    if (dkVar2 != null && mdVar.compare(dkVar2, dkVar) > 0) {
                        break;
                    }
                    i3++;
                }
                int i4 = i3 - 1;
                if (i4 > 0) {
                    int i5 = i4;
                    while (true) {
                        i5--;
                        if (i5 == 0) {
                            break;
                        }
                        dkVarArr[i5 - 1] = dkVarArr[i5];
                    }
                    dkVarArr[i4] = dkVar;
                }
            } else {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                i++;
                arrayList.add(dkVar);
                this.m.set(i2, null);
            }
        }
        if (arrayList != null) {
            if (arrayList.size() > 1) {
                Collections.sort(arrayList, mdVar);
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                dk dkVar3 = (dk) arrayList.get(size2);
                dkVar3.a();
                dkVar3.u = false;
            }
        }
        int i6 = 0;
        for (int i7 = 1; i7 >= 0; i7--) {
            dk dkVar4 = dkVarArr[i7];
            if (dkVar4 != null) {
                if (!dkVar4.o && i7 != 1) {
                    dkVarArr[i7] = null;
                    dkVarArr[0] = null;
                    break;
                }
                dkVarArr[i7].a();
                dkVarArr[i7].u = false;
                i6++;
            }
        }
        int size3 = this.m.size();
        int i8 = 0;
        int i9 = 0;
        while (i8 != size3) {
            dk dkVar5 = (dk) this.m.get(i8);
            if (dkVar5 != null) {
                boolean z2 = false;
                for (int i10 = 0; i10 < 2 && !z2; i10++) {
                    if (dkVar5 == dkVarArr[i10]) {
                        z2 = true;
                    }
                }
                if (!z2) {
                    if (i9 != i8) {
                        this.m.set(i9, dkVar5);
                    }
                    i9++;
                }
            }
            i8++;
        }
        while (true) {
            i8--;
            if (i8 < i9) {
                break;
            }
            this.m.remove(i8);
        }
        return size == i + i6;
    }

    public void a(gs gsVar, vf vfVar, int i, iz izVar, float f) {
        int i2;
        nw nwVar = nw.a;
        GL11.glEnable(3042);
        GL11.glEnable(3008);
        GL11.glBlendFunc(770, 1);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, ((in.a(System.currentTimeMillis() / 100.0f) * 0.2f) + 0.4f) * 0.5f);
        if (i == 0) {
            if (this.i > 0.0f) {
                GL11.glBlendFunc(774, 768);
                GL11.glBindTexture(3553, this.l.b("/terrain.png"));
                GL11.glColor4f(1.0f, 1.0f, 1.0f, 0.5f);
                GL11.glPushMatrix();
                int iA = this.k.a(vfVar.b, vfVar.c, vfVar.d);
                uu uuVar = iA > 0 ? uu.m[iA] : null;
                GL11.glDisable(3008);
                GL11.glPolygonOffset(-3.0f, -3.0f);
                GL11.glEnable(32823);
                double d = f;
                double d2 = gsVar.bl + ((gsVar.aM - gsVar.bl) * d);
                double d3 = gsVar.bm + ((gsVar.aN - gsVar.bm) * d);
                double d4 = gsVar.bn + ((gsVar.aO - gsVar.bn) * d);
                if (uuVar == null) {
                    uuVar = uu.u;
                }
                GL11.glEnable(3008);
                nwVar.b();
                nwVar.b(-d2, -d3, -d4);
                nwVar.c();
                this.u.a(uuVar, vfVar.b, vfVar.c, vfVar.d, ((int) (this.i * 10.0f)) + 240);
                nwVar.a();
                nwVar.b(0.0d, 0.0d, 0.0d);
                GL11.glDisable(3008);
                GL11.glPolygonOffset(0.0f, 0.0f);
                GL11.glDisable(32823);
                GL11.glEnable(3008);
                GL11.glDepthMask(true);
                GL11.glPopMatrix();
            } else {
                i2 = 3042;
            }
            GL11.glDisable(i2);
            GL11.glDisable(3008);
        }
        if (izVar != null) {
            GL11.glBlendFunc(770, 771);
            float fA = (in.a(System.currentTimeMillis() / 100.0f) * 0.2f) + 0.8f;
            GL11.glColor4f(fA, fA, fA, (in.a(System.currentTimeMillis() / 200.0f) * 0.2f) + 0.5f);
            GL11.glBindTexture(3553, this.l.b("/terrain.png"));
            int i3 = vfVar.b;
            int i4 = vfVar.c;
            int i5 = vfVar.d;
            int i6 = vfVar.e;
            int i7 = vfVar.e;
            int i8 = vfVar.e;
            int i9 = vfVar.e;
            int i10 = vfVar.e;
            int i11 = vfVar.e;
        }
        i2 = 3042;
        GL11.glDisable(i2);
        GL11.glDisable(3008);
    }

    public void b(gs gsVar, vf vfVar, int i, iz izVar, float f) {
        if (i == 0 && vfVar.a == jg.TILE) {
            GL11.glEnable(3042);
            GL11.glBlendFunc(770, 771);
            GL11.glColor4f(0.0f, 0.0f, 0.0f, 0.4f);
            GL11.glLineWidth(2.0f);
            GL11.glDisable(3553);
            GL11.glDepthMask(false);
            int iA = this.k.a(vfVar.b, vfVar.c, vfVar.d);
            if (iA > 0) {
                uu.m[iA].a((xp) this.k, vfVar.b, vfVar.c, vfVar.d);
                double d = f;
                double d2 = 0.002f;
                a(uu.m[iA].f(this.k, vfVar.b, vfVar.c, vfVar.d).b(d2, d2, d2).c(-(gsVar.bl + ((gsVar.aM - gsVar.bl) * d)), -(gsVar.bm + ((gsVar.aN - gsVar.bm) * d)), -(gsVar.bn + ((gsVar.aO - gsVar.bn) * d))));
            }
            GL11.glDepthMask(true);
            GL11.glEnable(3553);
            GL11.glDisable(3042);
        }
    }

    private void a(eq eqVar) {
        nw nwVar = nw.a;
        nwVar.a(3);
        nwVar.a(eqVar.a, eqVar.b, eqVar.c);
        nwVar.a(eqVar.d, eqVar.b, eqVar.c);
        nwVar.a(eqVar.d, eqVar.b, eqVar.f);
        nwVar.a(eqVar.a, eqVar.b, eqVar.f);
        nwVar.a(eqVar.a, eqVar.b, eqVar.c);
        nwVar.a();
        nwVar.a(3);
        nwVar.a(eqVar.a, eqVar.e, eqVar.c);
        nwVar.a(eqVar.d, eqVar.e, eqVar.c);
        nwVar.a(eqVar.d, eqVar.e, eqVar.f);
        nwVar.a(eqVar.a, eqVar.e, eqVar.f);
        nwVar.a(eqVar.a, eqVar.e, eqVar.c);
        nwVar.a();
        nwVar.a(1);
        nwVar.a(eqVar.a, eqVar.b, eqVar.c);
        nwVar.a(eqVar.a, eqVar.e, eqVar.c);
        nwVar.a(eqVar.d, eqVar.b, eqVar.c);
        nwVar.a(eqVar.d, eqVar.e, eqVar.c);
        nwVar.a(eqVar.d, eqVar.b, eqVar.f);
        nwVar.a(eqVar.d, eqVar.e, eqVar.f);
        nwVar.a(eqVar.a, eqVar.b, eqVar.f);
        nwVar.a(eqVar.a, eqVar.e, eqVar.f);
        nwVar.a();
    }

    public void a(int i, int i2, int i3, int i4, int i5, int i6) {
        int iA = in.a(i2, 16);
        int iA2 = in.a(i3, 16);
        int iA3 = in.a(i4, 16);
        int iA4 = in.a(i5, 16);
        int iA5 = in.a(i6, 16);
        for (int iA6 = in.a(i, 16); iA6 <= iA3; iA6++) {
            int i7 = this.p;
            int i8 = iA6 % i7;
            if (i8 < 0) {
                i8 += i7;
            }
            for (int i9 = iA; i9 <= iA4; i9++) {
                int i10 = this.q;
                int i11 = i9 % i10;
                if (i11 < 0) {
                    i11 += i10;
                }
                for (int i12 = iA2; i12 <= iA5; i12++) {
                    int i13 = this.r;
                    int i14 = i12 % i13;
                    if (i14 < 0) {
                        i14 += i13;
                    }
                    dk dkVar = this.o[(((i14 * this.q) + i11) * this.p) + i8];
                    if (!dkVar.u) {
                        this.m.add(dkVar);
                        dkVar.f();
                    }
                }
            }
        }
    }

    @Override // defpackage.pm
    public void a(int i, int i2, int i3) {
        a(i - 1, i2 - 1, i3 - 1, i + 1, i2 + 1, i3 + 1);
    }

    @Override // defpackage.pm
    public void b(int i, int i2, int i3, int i4, int i5, int i6) {
        a(i - 1, i2 - 1, i3 - 1, i4 + 1, i5 + 1, i6 + 1);
    }

    public void a(yn ynVar, float f) {
        int i = 0;
        while (true) {
            dk[] dkVarArr = this.o;
            if (i < dkVarArr.length) {
                if (!dkVarArr[i].e() && (!this.o[i].o || ((this.j + i) & 15) == 0)) {
                    this.o[i].a(ynVar);
                }
                i++;
            } else {
                this.j++;
                return;
            }
        }
    }

    @Override // defpackage.pm
    public void a(String str, int i, int i2, int i3) {
        if (str != null) {
            this.t.v.b("C418 - " + str);
        }
        this.t.B.a(str, i, i2, i3, 1.0f, 1.0f);
    }

    @Override // defpackage.pm
    public void a(String str, double d, double d2, double d3, float f, float f2) {
        float f3 = f > 1.0f ? 16.0f * f : 16.0f;
        if (this.t.i.g(d, d2, d3) < f3 * f3) {
            this.t.B.b(str, (float) d, (float) d2, (float) d3, f, f2);
        }
    }

    @Override // defpackage.pm
    public void a(String str, double d, double d2, double d3, double d4, double d5, double d6) {
        Minecraft minecraft = this.t;
        if (minecraft == null || minecraft.i == null || this.t.j == null) {
            return;
        }
        double d7 = this.t.i.aM - d;
        double d8 = this.t.i.aN - d2;
        double d9 = this.t.i.aO - d3;
        if ((d7 * d7) + (d8 * d8) + (d9 * d9) > 256.0d) {
            return;
        }
        if (str.equals("bubble")) {
            this.t.j.a(new cr(this.k, d, d2, d3, d4, d5, d6));
            return;
        }
        if (str.equals("smoke")) {
            this.t.j.a(new xn(this.k, d, d2, d3, d4, d5, d6));
            return;
        }
        if (str.equals("note")) {
            this.t.j.a(new ae(this.k, d, d2, d3, d4, d5, d6));
            return;
        }
        if (str.equals("portal")) {
            this.t.j.a(new op(this.k, d, d2, d3, d4, d5, d6));
            return;
        }
        if (str.equals("explode")) {
            this.t.j.a(new gy(this.k, d, d2, d3, d4, d5, d6));
            return;
        }
        if (str.equals("flame")) {
            this.t.j.a(new qu(this.k, d, d2, d3, d4, d5, d6));
            return;
        }
        if (str.equals("lava")) {
            this.t.j.a(new fg(this.k, d, d2, d3));
            return;
        }
        if (str.equals("footstep")) {
            this.t.j.a(new gl(this.l, this.k, d, d2, d3));
            return;
        }
        if (str.equals("splash")) {
            this.t.j.a(new sy(this.k, d, d2, d3, d4, d5, d6));
            return;
        }
        if (str.equals("largesmoke")) {
            this.t.j.a(new xn(this.k, d, d2, d3, d4, d5, d6, 2.5f));
            return;
        }
        if (str.equals("reddust")) {
            this.t.j.a(new im(this.k, d, d2, d3, (float) d4, (float) d5, (float) d6));
            return;
        }
        if (str.equals("snowballpoof")) {
            this.t.j.a(new pb(this.k, d, d2, d3, gm.aB));
            return;
        }
        if (str.equals("snowshovel")) {
            this.t.j.a(new mu(this.k, d, d2, d3, d4, d5, d6));
        } else if (str.equals("slime")) {
            this.t.j.a(new pb(this.k, d, d2, d3, gm.aK));
        } else if (str.equals("heart")) {
            this.t.j.a(new kc(this.k, d, d2, d3, d4, d5, d6));
        }
    }

    @Override // defpackage.pm
    public void a(sn snVar) {
        snVar.u_();
        if (snVar.bA != null) {
            this.l.a(snVar.bA, new rr());
        }
        if (snVar.bB != null) {
            this.l.a(snVar.bB, new rr());
        }
    }

    @Override // defpackage.pm
    public void b(sn snVar) {
        if (snVar.bA != null) {
            this.l.c(snVar.bA);
        }
        if (snVar.bB != null) {
            this.l.c(snVar.bB);
        }
    }

    @Override // defpackage.pm
    public void e() {
        int i = 0;
        while (true) {
            dk[] dkVarArr = this.o;
            if (i >= dkVarArr.length) {
                return;
            }
            if (dkVarArr[i].A && !this.o[i].u) {
                this.m.add(this.o[i]);
                this.o[i].f();
            }
            i++;
        }
    }

    public void f() {
        ge.b(this.s);
    }

    @Override // defpackage.pm
    public void a(gs gsVar, int i, int i2, int i3, int i4, int i5) {
        Random random = this.k.r;
        if (i == 2000) {
            double d = (i5 % 3) - 1;
            double d2 = ((double) i2) + (d * 0.6d) + 0.5d;
            double d3 = ((double) i3) + 0.5d;
            double d4 = ((i5 / 3) % 3) - 1;
            double d5 = ((double) i4) + (0.6d * d4) + 0.5d;
            int i6 = 0;
            while (i6 < 10) {
                double dNextDouble = (random.nextDouble() * 0.2d) + 0.01d;
                a("smoke", d2 + (d * 0.01d) + ((random.nextDouble() - 0.5d) * d4 * 0.5d), d3 + ((random.nextDouble() - 0.5d) * 0.5d), d5 + (d4 * 0.01d) + ((random.nextDouble() - 0.5d) * d * 0.5d), (d * dNextDouble) + (random.nextGaussian() * 0.01d), (random.nextGaussian() * 0.01d) - 0.03d, (dNextDouble * d4) + (random.nextGaussian() * 0.01d));
                i6++;
                d4 = d4;
                d = d;
            }
            return;
        }
        if (i != 2001) {
            switch (i) {
                case 1000:
                    this.k.a(i2, i3, i4, "random.click", 1.0f, 1.0f);
                    break;
                case 1001:
                    this.k.a(i2, i3, i4, "random.click", 1.0f, 1.2f);
                    break;
                case 1002:
                    this.k.a(i2, i3, i4, "random.bow", 1.0f, 1.2f);
                    break;
                case 1003:
                    if (Math.random() < 0.5d) {
                        fd fdVar = this.k;
                        fdVar.a(((double) i2) + 0.5d, ((double) i3) + 0.5d, ((double) i4) + 0.5d, "random.door_open", 1.0f, (fdVar.r.nextFloat() * 0.1f) + 0.9f);
                    } else {
                        fd fdVar2 = this.k;
                        fdVar2.a(((double) i2) + 0.5d, ((double) i3) + 0.5d, ((double) i4) + 0.5d, "random.door_close", 1.0f, (fdVar2.r.nextFloat() * 0.1f) + 0.9f);
                    }
                    break;
                case 1004:
                    this.k.a(i2 + 0.5f, i3 + 0.5f, i4 + 0.5f, "random.fizz", 0.5f, ((random.nextFloat() - random.nextFloat()) * 0.8f) + 2.6f);
                    break;
                case 1005:
                    if (gm.c[i5] instanceof tr) {
                        this.k.a(((tr) gm.c[i5]).a, i2, i3, i4);
                    } else {
                        this.k.a((String) null, i2, i3, i4);
                    }
                    break;
            }
            return;
        }
        int i7 = i5 & 255;
        if (i7 > 0) {
            uu uuVar = uu.m[i7];
            this.t.B.b(uuVar.by.a(), i2 + 0.5f, i3 + 0.5f, i4 + 0.5f, (uuVar.by.b() + 1.0f) / 2.0f, uuVar.by.c() * 0.8f);
        }
        this.t.j.a(i2, i3, i4, i7, (i5 >> 8) & 255);
    }
}
