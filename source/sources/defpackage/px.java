package defpackage;

import java.nio.FloatBuffer;
import java.util.List;
import java.util.Random;
import net.minecraft.client.Minecraft;
import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;
import org.lwjgl.opengl.Display;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GLContext;
import org.lwjgl.util.glu.GLU;

/* JADX INFO: loaded from: classes.dex */
public class px {
    public static boolean a;
    public static int b;
    private float L;
    private float M;
    public ra c;
    float g;
    float h;
    float i;
    private Minecraft j;
    private int l;
    private float k = 0.0f;
    private sn m = null;
    private cu n = new cu();
    private cu o = new cu();
    private cu p = new cu();
    private cu q = new cu();
    private cu r = new cu();
    private cu s = new cu();
    private float t = 4.0f;
    private float u = 4.0f;
    private float v = 0.0f;
    private float w = 0.0f;
    private float x = 0.0f;
    private float y = 0.0f;
    private float z = 0.0f;
    private float A = 0.0f;
    private float B = 0.0f;
    private float C = 0.0f;
    private boolean D = false;
    private double E = 1.0d;
    private double F = 0.0d;
    private double G = 0.0d;
    private long H = System.currentTimeMillis();
    private long I = 0;
    private Random J = new Random();
    private int K = 0;
    volatile int d = 0;
    volatile int e = 0;
    FloatBuffer f = ge.e(16);

    public px(Minecraft minecraft) {
        this.j = minecraft;
        this.c = new ra(minecraft);
    }

    public void a() {
        this.L = this.M;
        this.u = this.t;
        this.w = this.v;
        this.y = this.x;
        this.A = this.z;
        this.C = this.B;
        if (this.j.i == null) {
            Minecraft minecraft = this.j;
            minecraft.i = minecraft.h;
        }
        float fC = this.j.f.c(in.b(this.j.i.aM), in.b(this.j.i.aN), in.b(this.j.i.aO));
        float f = (3 - this.j.z.e) / 3.0f;
        float f2 = (fC * (1.0f - f)) + f;
        float f3 = this.M;
        this.M = f3 + ((f2 - f3) * 0.1f);
        this.l++;
        this.c.a();
        c();
    }

    public void a(float f) {
        if (this.j.i == null || this.j.f == null) {
            return;
        }
        double dB = this.j.c.b();
        Minecraft minecraft = this.j;
        minecraft.y = minecraft.i.a(dB, f);
        bt btVarE = this.j.i.e(f);
        if (this.j.y != null) {
            dB = this.j.y.f.c(btVarE);
        }
        if (this.j.c instanceof pj) {
            dB = 32.0d;
        } else if (dB > 3.0d) {
            dB = 3.0d;
        }
        bt btVarF = this.j.i.f(f);
        bt btVarC = btVarE.c(btVarF.a * dB, btVarF.b * dB, btVarF.c * dB);
        this.m = null;
        fd fdVar = this.j.f;
        ls lsVar = this.j.i;
        eq eqVarA = this.j.i.aW.a(btVarF.a * dB, btVarF.b * dB, btVarF.c * dB);
        double d = 1.0f;
        List listB = fdVar.b(lsVar, eqVarA.b(d, d, d));
        double d2 = 0.0d;
        for (int i = 0; i < listB.size(); i++) {
            sn snVar = (sn) listB.get(i);
            if (snVar.h_()) {
                double dM_ = snVar.m_();
                eq eqVarB = snVar.aW.b(dM_, dM_, dM_);
                vf vfVarA = eqVarB.a(btVarE, btVarC);
                if (eqVarB.a(btVarE)) {
                    if (0.0d < d2 || d2 == 0.0d) {
                        this.m = snVar;
                        d2 = 0.0d;
                    }
                } else if (vfVarA != null) {
                    double dC = btVarE.c(vfVarA.f);
                    if (dC < d2 || d2 == 0.0d) {
                        this.m = snVar;
                        d2 = dC;
                    }
                }
            }
        }
        if (this.m == null || (this.j.c instanceof pj)) {
            return;
        }
        this.j.y = new vf(this.m);
    }

    private float d(float f) {
        ls lsVar = this.j.i;
        float f2 = lsVar.a(ln.g) ? 60.0f : 70.0f;
        if (lsVar.Y <= 0) {
            f2 /= ((1.0f - (500.0f / ((lsVar.ad + f) + 500.0f))) * 2.0f) + 1.0f;
        }
        float f3 = this.A;
        return f2 + f3 + ((this.z - f3) * f);
    }

    private void e(float f) {
        ls lsVar = this.j.i;
        float f2 = lsVar.aa - f;
        if (lsVar.Y <= 0) {
            GL11.glRotatef(40.0f - (8000.0f / ((lsVar.ad + f) + 200.0f)), 0.0f, 0.0f, 1.0f);
        }
        if (f2 < 0.0f) {
            return;
        }
        float f3 = f2 / lsVar.ab;
        float fA = in.a(f3 * f3 * f3 * f3 * 3.1415927f);
        float f4 = lsVar.ac;
        GL11.glRotatef(-f4, 0.0f, 1.0f, 0.0f);
        GL11.glRotatef((-fA) * 14.0f, 0.0f, 0.0f, 1.0f);
        GL11.glRotatef(f4, 0.0f, 1.0f, 0.0f);
    }

    private void f(float f) {
        if (this.j.i instanceof gs) {
            gs gsVar = (gs) this.j.i;
            float f2 = -(gsVar.bj + ((gsVar.bj - gsVar.bi) * f));
            float f3 = gsVar.h + ((gsVar.i - gsVar.h) * f);
            float f4 = gsVar.af + ((gsVar.ag - gsVar.af) * f);
            float f5 = f2 * 3.1415927f;
            GL11.glTranslatef(in.a(f5) * f3 * 0.5f, -Math.abs(in.b(f5) * f3), 0.0f);
            GL11.glRotatef(in.a(f5) * f3 * 3.0f, 0.0f, 0.0f, 1.0f);
            GL11.glRotatef(Math.abs(in.b(f5 - 0.2f) * f3) * 5.0f, 1.0f, 0.0f, 0.0f);
            GL11.glRotatef(f4, 1.0f, 0.0f, 0.0f);
        }
    }

    private void g(float f) {
        ls lsVar;
        double d;
        px pxVar;
        float f2;
        float f3;
        double d2;
        float f4;
        px pxVar2 = this;
        ls lsVar2 = pxVar2.j.i;
        float f5 = lsVar2.bf - 1.62f;
        double d3 = f;
        double d4 = lsVar2.aJ + ((lsVar2.aM - lsVar2.aJ) * d3);
        double d5 = f5;
        double d6 = (lsVar2.aK + ((lsVar2.aN - lsVar2.aK) * d3)) - d5;
        double d7 = lsVar2.aL + ((lsVar2.aO - lsVar2.aL) * d3);
        float f6 = pxVar2.C;
        GL11.glRotatef(f6 + ((pxVar2.B - f6) * f), 0.0f, 0.0f, 1.0f);
        if (lsVar2.N()) {
            f2 = (float) (d5 + 1.0d);
            GL11.glTranslatef(0.0f, 0.3f, 0.0f);
            if (!pxVar2.j.z.F) {
                if (pxVar2.j.f.a(in.b(lsVar2.aM), in.b(lsVar2.aN), in.b(lsVar2.aO)) == uu.T.bn) {
                    GL11.glRotatef((pxVar2.j.f.e(in.b(lsVar2.aM), in.b(lsVar2.aN), in.b(lsVar2.aO)) & 3) * 90, 0.0f, 1.0f, 0.0f);
                }
                GL11.glRotatef(lsVar2.aU + ((lsVar2.aS - lsVar2.aU) * f) + 180.0f, 0.0f, -1.0f, 0.0f);
                GL11.glRotatef(lsVar2.aV + ((lsVar2.aT - lsVar2.aV) * f), -1.0f, 0.0f, 0.0f);
            }
            d = d3;
            pxVar = pxVar2;
            lsVar = lsVar2;
        } else {
            if (pxVar2.j.z.A) {
                float f7 = pxVar2.u;
                double d8 = f7 + ((pxVar2.t - f7) * f);
                if (pxVar2.j.z.F) {
                    float f8 = pxVar2.w;
                    float f9 = f8 + ((pxVar2.v - f8) * f);
                    float f10 = pxVar2.y;
                    float f11 = f10 + ((pxVar2.x - f10) * f);
                    GL11.glTranslatef(0.0f, 0.0f, (float) (-d8));
                    GL11.glRotatef(f11, 1.0f, 0.0f, 0.0f);
                    GL11.glRotatef(f9, 0.0f, 1.0f, 0.0f);
                    lsVar = lsVar2;
                    d = d3;
                } else {
                    float f12 = lsVar2.aS;
                    float f13 = lsVar2.aT;
                    float f14 = (f12 / 180.0f) * 3.1415927f;
                    float f15 = (f13 / 180.0f) * 3.1415927f;
                    double dB = ((double) ((-in.a(f14)) * in.b(f15))) * d8;
                    double dB2 = ((double) (in.b(f14) * in.b(f15))) * d8;
                    double d9 = ((double) (-in.a(f15))) * d8;
                    int i = 0;
                    double d10 = d8;
                    while (i < 8) {
                        double d11 = d10;
                        fd fdVar = pxVar2.j.f;
                        double d12 = d3;
                        double d13 = (((i & 1) * 2) - 1) * 0.1f;
                        double d14 = ((((i >> 1) & 1) * 2) - 1) * 0.1f;
                        ls lsVar3 = lsVar2;
                        double d15 = ((((i >> 2) & 1) * 2) - 1) * 0.1f;
                        vf vfVarA = fdVar.a(bt.b(d4 + d13, d6 + d14, d7 + d15), bt.b((d4 - dB) + d13 + d15, (d6 - d9) + d14, (d7 - dB2) + d15));
                        if (vfVarA != null) {
                            d2 = d11;
                            f3 = f13;
                            double dC = vfVarA.f.c(bt.b(d4, d6, d7));
                            if (dC < d2) {
                                d10 = dC;
                            }
                            i++;
                            pxVar2 = this;
                            f13 = f3;
                            d3 = d12;
                            lsVar2 = lsVar3;
                        } else {
                            f3 = f13;
                            d2 = d11;
                        }
                        d10 = d2;
                        i++;
                        pxVar2 = this;
                        f13 = f3;
                        d3 = d12;
                        lsVar2 = lsVar3;
                    }
                    lsVar = lsVar2;
                    d = d3;
                    float f16 = f13;
                    GL11.glRotatef(lsVar.aT - f16, 1.0f, 0.0f, 0.0f);
                    GL11.glRotatef(lsVar.aS - f12, 0.0f, 1.0f, 0.0f);
                    GL11.glTranslatef(0.0f, 0.0f, (float) (-d10));
                    GL11.glRotatef(f12 - lsVar.aS, 0.0f, 1.0f, 0.0f);
                    GL11.glRotatef(f16 - lsVar.aT, 1.0f, 0.0f, 0.0f);
                }
            } else {
                lsVar = lsVar2;
                d = d3;
                GL11.glTranslatef(0.0f, 0.0f, -0.1f);
            }
            pxVar = this;
            f2 = f5;
        }
        if (pxVar.j.z.F) {
            f4 = 0.0f;
        } else {
            f4 = 0.0f;
            GL11.glRotatef(lsVar.aV + ((lsVar.aT - lsVar.aV) * f), 1.0f, 0.0f, 0.0f);
            GL11.glRotatef(lsVar.aU + ((lsVar.aS - lsVar.aU) * f) + 180.0f, 0.0f, 1.0f, 0.0f);
        }
        GL11.glTranslatef(f4, f2, f4);
        pxVar.D = pxVar.j.g.a(lsVar.aJ + ((lsVar.aM - lsVar.aJ) * d), (lsVar.aK + ((lsVar.aN - lsVar.aK) * d)) - ((double) f2), ((lsVar.aO - lsVar.aL) * d) + lsVar.aL, f);
    }

    private void a(float f, int i) {
        this.k = Keyboard.KEYBOARD_SIZE >> this.j.z.e;
        GL11.glMatrixMode(5889);
        GL11.glLoadIdentity();
        if (this.j.z.g) {
            GL11.glTranslatef((-((i * 2) - 1)) * 0.07f, 0.0f, 0.0f);
        }
        if (this.E != 1.0d) {
            GL11.glTranslatef((float) this.F, (float) (-this.G), 0.0f);
            double d = this.E;
            GL11.glScaled(d, d, 1.0d);
            GLU.gluPerspective(d(f), this.j.d / this.j.e, 0.05f, this.k * 2.0f);
        } else {
            GLU.gluPerspective(d(f), this.j.d / this.j.e, 0.05f, this.k * 2.0f);
        }
        GL11.glMatrixMode(5888);
        GL11.glLoadIdentity();
        if (this.j.z.g) {
            GL11.glTranslatef(((i * 2) - 1) * 0.1f, 0.0f, 0.0f);
        }
        e(f);
        if (this.j.z.f) {
            f(f);
        }
        float f2 = this.j.h.C + ((this.j.h.B - this.j.h.C) * f);
        if (f2 > 0.0f) {
            float f3 = (5.0f / ((f2 * f2) + 5.0f)) - (f2 * 0.04f);
            GL11.glRotatef((this.l + f) * 20.0f, 0.0f, 1.0f, 1.0f);
            GL11.glScalef(1.0f / (f3 * f3), 1.0f, 1.0f);
            GL11.glRotatef((-(this.l + f)) * 20.0f, 0.0f, 1.0f, 1.0f);
        }
        g(f);
    }

    private void b(float f, int i) {
        GL11.glLoadIdentity();
        if (this.j.z.g) {
            GL11.glTranslatef(((i * 2) - 1) * 0.1f, 0.0f, 0.0f);
        }
        GL11.glPushMatrix();
        e(f);
        if (this.j.z.f) {
            f(f);
        }
        if (!this.j.z.A && !this.j.i.N() && !this.j.z.z) {
            this.c.a(f);
        }
        GL11.glPopMatrix();
        if (!this.j.z.A && !this.j.i.N()) {
            this.c.b(f);
            e(f);
        }
        if (this.j.z.f) {
            f(f);
        }
    }

    public void b(float f) {
        if (Display.isActive()) {
            this.H = System.currentTimeMillis();
        } else if (System.currentTimeMillis() - this.H > 500) {
            this.j.i();
        }
        if (this.j.N) {
            this.j.C.c();
            float f2 = (this.j.z.c * 0.6f) + 0.2f;
            float f3 = f2 * f2 * f2 * 8.0f;
            float fA = this.j.C.a * f3;
            float fA2 = this.j.C.b * f3;
            int i = this.j.z.d ? -1 : 1;
            if (this.j.z.E) {
                float f4 = f3 * 0.05f;
                fA = this.n.a(fA, f4);
                fA2 = this.o.a(fA2, f4);
            }
            this.j.h.d(fA, fA2 * i);
        }
        if (this.j.w) {
            return;
        }
        a = this.j.z.g;
        qq qqVar = new qq(this.j.z, this.j.d, this.j.e);
        int iA = qqVar.a();
        int iB = qqVar.b();
        int x = (Mouse.getX() * iA) / this.j.d;
        int y = (iB - ((Mouse.getY() * iB) / this.j.e)) - 1;
        int i2 = this.j.z.i == 1 ? 120 : Keyboard.KEY_UP;
        if (this.j.z.i == 2) {
            i2 = 40;
        }
        if (this.j.f != null) {
            if (this.j.z.i == 0) {
                a(f, 0L);
            } else {
                a(f, this.I + ((long) (1000000000 / i2)));
            }
            if (this.j.z.i == 2) {
                long jNanoTime = ((this.I + ((long) (1000000000 / i2))) - System.nanoTime()) / 1000000;
                if (jNanoTime > 0 && jNanoTime < 500) {
                    try {
                        Thread.sleep(jNanoTime);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
            this.I = System.nanoTime();
            if (this.j.z.z && this.j.r == null) {
                y = y;
            } else {
                this.j.v.a(f, this.j.r != null, x, y);
            }
        } else {
            y = y;
            GL11.glViewport(0, 0, this.j.d, this.j.e);
            GL11.glMatrixMode(5889);
            GL11.glLoadIdentity();
            GL11.glMatrixMode(5888);
            GL11.glLoadIdentity();
            b();
            if (this.j.z.i == 2) {
                long jNanoTime2 = ((this.I + ((long) (1000000000 / i2))) - System.nanoTime()) / 1000000;
                if (jNanoTime2 < 0) {
                    jNanoTime2 += 10;
                }
                if (jNanoTime2 > 0 && jNanoTime2 < 500) {
                    try {
                        Thread.sleep(jNanoTime2);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
            }
            this.I = System.nanoTime();
        }
        if (this.j.r != null) {
            GL11.glClear(Keyboard.KEYBOARD_SIZE);
            this.j.r.a(x, y, f);
            if (this.j.r == null || this.j.r.h == null) {
                return;
            }
            this.j.r.h.a(f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void a(float f, long j) {
        int i;
        ?? r8;
        int i2;
        int i3 = 2884;
        GL11.glEnable(2884);
        GL11.glEnable(2929);
        if (this.j.i == null) {
            Minecraft minecraft = this.j;
            minecraft.i = minecraft.h;
        }
        a(f);
        ls lsVar = this.j.i;
        n nVar = this.j.g;
        dn dnVar = this.j.j;
        double d = f;
        double d2 = lsVar.bl + ((lsVar.aM - lsVar.bl) * d);
        double d3 = lsVar.bm + ((lsVar.aN - lsVar.bm) * d);
        double d4 = ((lsVar.aO - lsVar.bn) * d) + lsVar.bn;
        cl clVarW = this.j.f.w();
        if (clVarW instanceof kx) {
            ((kx) clVarW).d(in.d((int) d2) >> 4, in.d((int) d4) >> 4);
        }
        boolean z = 0;
        int i4 = 0;
        while (i4 < 2) {
            if (this.j.z.g) {
                b = i4;
                if (i4 == 0) {
                    GL11.glColorMask(z, true, true, z);
                } else {
                    GL11.glColorMask(true, z, z, z);
                }
            }
            GL11.glViewport(z, z, this.j.d, this.j.e);
            h(f);
            GL11.glClear(16640);
            GL11.glEnable(i3);
            a(f, i4);
            w.a();
            if (this.j.z.e < 2) {
                a(-1, f);
                nVar.a(f);
            }
            GL11.glEnable(2912);
            a(1, f);
            if (this.j.z.k) {
                GL11.glShadeModel(7425);
            }
            sr srVar = new sr();
            srVar.a(d2, d3, d4);
            this.j.g.a(srVar, f);
            if (i4 == 0) {
                while (!this.j.g.a(lsVar, z) && j != 0) {
                    long jNanoTime = j - System.nanoTime();
                    if (jNanoTime < 0 || jNanoTime > 1000000000) {
                        break;
                    }
                }
            }
            a((int) z, f);
            GL11.glEnable(2912);
            double d5 = d4;
            GL11.glBindTexture(3553, this.j.p.b("/terrain.png"));
            u.a();
            nVar.a(lsVar, (int) z, d);
            GL11.glShadeModel(7424);
            u.b();
            nVar.a(lsVar.e(f), srVar, f);
            dnVar.b(lsVar, f);
            u.a();
            a((int) z, f);
            dnVar.a(lsVar, f);
            if (this.j.y != null && lsVar.a(ln.g) && (lsVar instanceof gs)) {
                gs gsVar = (gs) lsVar;
                GL11.glDisable(3008);
                i = i4;
                nVar.a(gsVar, this.j.y, 0, gsVar.c.b(), f);
                nVar.b(gsVar, this.j.y, 0, gsVar.c.b(), f);
                GL11.glEnable(3008);
            } else {
                i = i4;
            }
            GL11.glBlendFunc(770, 771);
            a(0, f);
            GL11.glEnable(3042);
            GL11.glDisable(2884);
            GL11.glBindTexture(3553, this.j.p.b("/terrain.png"));
            if (this.j.z.j) {
                if (this.j.z.k) {
                    GL11.glShadeModel(7425);
                }
                GL11.glColorMask(false, false, false, false);
                r8 = 1;
                int iA = nVar.a(lsVar, 1, d);
                if (this.j.z.g) {
                    if (b == 0) {
                        GL11.glColorMask(false, true, true, true);
                    } else {
                        GL11.glColorMask(true, false, false, true);
                    }
                } else {
                    GL11.glColorMask(true, true, true, true);
                }
                if (iA > 0) {
                    nVar.a(1, d);
                }
                GL11.glShadeModel(7424);
            } else {
                r8 = 1;
                nVar.a(lsVar, 1, d);
            }
            GL11.glDepthMask(r8);
            GL11.glEnable(2884);
            GL11.glDisable(3042);
            if (this.E == 1.0d && (lsVar instanceof gs) && this.j.y != null && !lsVar.a(ln.g)) {
                gs gsVar2 = (gs) lsVar;
                GL11.glDisable(3008);
                nVar.a(gsVar2, this.j.y, 0, gsVar2.c.b(), f);
                nVar.b(gsVar2, this.j.y, 0, gsVar2.c.b(), f);
                GL11.glEnable(3008);
            }
            c(f);
            GL11.glDisable(2912);
            a(0, f);
            GL11.glEnable(2912);
            nVar.b(f);
            GL11.glDisable(2912);
            a((int) r8, f);
            if (this.E == 1.0d) {
                GL11.glClear(Keyboard.KEYBOARD_SIZE);
                i2 = i;
                b(f, i2);
            } else {
                i2 = i;
            }
            if (!this.j.z.g) {
                return;
            }
            i4 = i2 + 1;
            d4 = d5;
            d2 = d2;
            z = 0;
            i3 = 2884;
        }
        GL11.glColorMask(true, true, true, z);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x013a  */
    private void c() {
        int i;
        float fG = this.j.f.g(1.0f);
        if (!this.j.z.j) {
            fG /= 2.0f;
        }
        if (fG == 0.0f) {
            return;
        }
        this.J.setSeed(((long) this.l) * 312987231);
        ls lsVar = this.j.i;
        fd fdVar = this.j.f;
        int iB = in.b(lsVar.aM);
        int iB2 = in.b(lsVar.aN);
        int iB3 = in.b(lsVar.aO);
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        int i2 = 0;
        int i3 = 0;
        while (i2 < ((int) (100.0f * fG * fG))) {
            int iNextInt = (iB + this.J.nextInt(10)) - this.J.nextInt(10);
            int iNextInt2 = (iB3 + this.J.nextInt(10)) - this.J.nextInt(10);
            int iE = fdVar.e(iNextInt, iNextInt2);
            int iA = fdVar.a(iNextInt, iE - 1, iNextInt2);
            if (iE > iB2 + 10 || iE < iB2 - 10 || !fdVar.a().a(iNextInt, iNextInt2).d()) {
                i = i2;
            } else {
                float fNextFloat = this.J.nextFloat();
                float fNextFloat2 = this.J.nextFloat();
                if (iA <= 0) {
                    i = i2;
                } else if (uu.m[iA].bA == ln.h) {
                    i = i2;
                    this.j.j.a(new xn(fdVar, iNextInt + fNextFloat, ((double) (iE + 0.1f)) - uu.m[iA].bt, iNextInt2 + fNextFloat2, 0.0d, 0.0d, 0.0d));
                } else {
                    i = i2;
                    int i4 = i3 + 1;
                    if (this.J.nextInt(i4) == 0) {
                        d2 = ((double) (iE + 0.1f)) - uu.m[iA].bt;
                        d3 = iNextInt2 + fNextFloat2;
                        d = iNextInt + fNextFloat;
                    }
                    this.j.j.a(new xd(fdVar, iNextInt + fNextFloat, ((double) (iE + 0.1f)) - uu.m[iA].bt, iNextInt2 + fNextFloat2));
                    i3 = i4;
                }
            }
            i2 = i + 1;
        }
        if (i3 > 0) {
            int iNextInt3 = this.J.nextInt(3);
            int i5 = this.K;
            this.K = i5 + 1;
            if (iNextInt3 < i5) {
                this.K = 0;
                if (d2 > lsVar.aN + 1.0d && fdVar.e(in.b(lsVar.aM), in.b(lsVar.aO)) > in.b(lsVar.aN)) {
                    this.j.f.a(d, d2, d3, "ambient.weather.rain", 0.1f, 0.5f);
                } else {
                    this.j.f.a(d, d2, d3, "ambient.weather.rain", 0.2f, 1.0f);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x02cb  */
    protected void c(float f) {
        double d;
        double d2;
        char c;
        int i;
        int i2;
        int i3;
        double d3;
        int i4;
        px pxVar = this;
        float f2 = f;
        float fG = pxVar.j.f.g(f2);
        if (fG <= 0.0f) {
            return;
        }
        ls lsVar = pxVar.j.i;
        fd fdVar = pxVar.j.f;
        int iB = in.b(lsVar.aM);
        int iB2 = in.b(lsVar.aN);
        int iB3 = in.b(lsVar.aO);
        nw nwVar = nw.a;
        GL11.glDisable(2884);
        GL11.glNormal3f(0.0f, 1.0f, 0.0f);
        GL11.glEnable(3042);
        GL11.glBlendFunc(770, 771);
        GL11.glAlphaFunc(516, 0.01f);
        GL11.glBindTexture(3553, pxVar.j.p.b("/environment/snow.png"));
        double d4 = f2;
        double d5 = ((lsVar.aM - lsVar.bl) * d4) + lsVar.bl;
        double d6 = lsVar.bm + ((lsVar.aN - lsVar.bm) * d4);
        double d7 = lsVar.bn + ((lsVar.aO - lsVar.bn) * d4);
        int iB4 = in.b(d6);
        int i5 = pxVar.j.z.j ? 10 : 5;
        int i6 = iB - i5;
        int i7 = iB3 - i5;
        int i8 = (i5 * 2) + 1;
        kd[] kdVarArrA = fdVar.a().a(i6, i7, i8, i8);
        int i9 = 0;
        int i10 = i6;
        int i11 = 0;
        while (i10 <= iB + i5) {
            int i12 = i7;
            while (i12 <= iB3 + i5) {
                int i13 = i11 + 1;
                if (kdVarArrA[i11].c()) {
                    int iE = fdVar.e(i10, i12);
                    if (iE < 0) {
                        iE = 0;
                    }
                    if (iE < iB4) {
                        i2 = iB4;
                        i = i2;
                    } else {
                        i = iB4;
                        i2 = iE;
                    }
                    int i14 = iB2 - i5;
                    i3 = i7;
                    int i15 = iB2 + i5;
                    if (i14 < iE) {
                        i14 = iE;
                    }
                    if (i15 < iE) {
                        i15 = iE;
                    }
                    if (i14 != i15) {
                        int i16 = i15;
                        iB = iB;
                        int i17 = i14;
                        pxVar.J.setSeed((i10 * i10 * 3121) + (i10 * 45238971) + (i12 * i12 * 418711) + (i12 * 13761));
                        int i18 = pxVar.l;
                        float f3 = i18 + f2;
                        float f4 = ((i18 & 511) + f2) / 512.0f;
                        double d8 = d7;
                        float fNextFloat = pxVar.J.nextFloat() + (f3 * 0.01f * ((float) pxVar.J.nextGaussian()));
                        float fNextFloat2 = pxVar.J.nextFloat() + (f3 * ((float) pxVar.J.nextGaussian()) * 0.001f);
                        double d9 = ((double) (i10 + 0.5f)) - lsVar.aM;
                        double d10 = ((double) (i12 + 0.5f)) - lsVar.aO;
                        float fA = in.a((d9 * d9) + (d10 * d10)) / i5;
                        nwVar.b();
                        float fC = fdVar.c(i10, i2, i12);
                        GL11.glColor4f(fC, fC, fC, (((1.0f - (fA * fA)) * 0.3f) + 0.5f) * fG);
                        double d11 = d5;
                        double d12 = (-d8) * 1.0d;
                        d3 = d11;
                        d7 = d8;
                        i12 = i12;
                        i5 = i5;
                        i4 = i10;
                        nwVar.b((-d11) * 1.0d, (-d6) * 1.0d, d12);
                        double d13 = i4 + 0;
                        double d14 = i17;
                        double d15 = ((double) i12) + 0.5d;
                        double d16 = 0.0f + fNextFloat;
                        float f5 = f4 * 1.0f;
                        double d17 = ((i17 * 1.0f) / 4.0f) + f5 + fNextFloat2;
                        nwVar.a(d13, d14, d15, d16, d17);
                        double d18 = i4 + 1;
                        double d19 = 1.0f + fNextFloat;
                        nwVar.a(d18, d14, d15, d19, d17);
                        double d20 = i16;
                        double d21 = ((i16 * 1.0f) / 4.0f) + f5 + fNextFloat2;
                        nwVar.a(d18, d20, d15, d19, d21);
                        nwVar.a(d13, d20, d15, d16, d21);
                        double d22 = ((double) i4) + 0.5d;
                        double d23 = i12 + 0;
                        nwVar.a(d22, d14, d23, d16, d17);
                        double d24 = i12 + 1;
                        nwVar.a(d22, d14, d24, d19, d17);
                        nwVar.a(d22, d20, d24, d19, d21);
                        nwVar.a(d22, d20, d23, d16, d21);
                        nwVar.b(0.0d, 0.0d, 0.0d);
                        nwVar.a();
                    }
                    i12++;
                    pxVar = this;
                    f2 = f;
                    i10 = i4;
                    i11 = i13;
                    iB4 = i;
                    i7 = i3;
                    i5 = i5;
                    iB = iB;
                    d7 = d7;
                    d5 = d3;
                    d6 = d6;
                } else {
                    i = iB4;
                    i3 = i7;
                }
                i4 = i10;
                d3 = d5;
                i12++;
                pxVar = this;
                f2 = f;
                i10 = i4;
                i11 = i13;
                iB4 = i;
                i7 = i3;
                i5 = i5;
                iB = iB;
                d7 = d7;
                d5 = d3;
                d6 = d6;
            }
            i10++;
            pxVar = this;
            f2 = f;
            iB4 = iB4;
            i5 = i5;
            iB = iB;
        }
        double d25 = d7;
        int i19 = iB;
        int i20 = i5;
        double d26 = d6;
        double d27 = d5;
        char c2 = 0;
        GL11.glBindTexture(3553, pxVar.j.p.b("/environment/rain.png"));
        int i21 = pxVar.j.z.j ? 10 : i20;
        int i22 = i19 - i21;
        while (i22 <= i19 + i21) {
            int i23 = iB3 - i21;
            while (i23 <= iB3 + i21) {
                int i24 = i9 + 1;
                if (kdVarArrA[i9].d()) {
                    int iE2 = fdVar.e(i22, i23);
                    int i25 = iB2 - i21;
                    int i26 = iB2 + i21;
                    int i27 = i25 < iE2 ? iE2 : i25;
                    if (i26 >= iE2) {
                        iE2 = i26;
                    }
                    if (i27 != iE2) {
                        int i28 = i22 * i22 * 3121;
                        int i29 = i22 * 45238971;
                        int i30 = i23 * i23 * 418711;
                        int i31 = i23 * 13761;
                        int i32 = i23;
                        pxVar.J.setSeed(i28 + i29 + i30 + i31);
                        float fNextFloat3 = (((((((pxVar.l + i28) + i29) + i30) + i31) & 31) + f) / 32.0f) * (pxVar.J.nextFloat() + 3.0f);
                        double d28 = ((double) (i22 + 0.5f)) - lsVar.aM;
                        double d29 = ((double) (i32 + 0.5f)) - lsVar.aO;
                        float fA2 = in.a((d28 * d28) + (d29 * d29)) / i21;
                        nwVar.b();
                        float fC2 = (fdVar.c(i22, 128, i32) * 0.85f) + 0.15f;
                        GL11.glColor4f(fC2, fC2, fC2, (((1.0f - (fA2 * fA2)) * 0.5f) + 0.5f) * fG);
                        double d30 = d27;
                        d = d25;
                        d2 = d30;
                        int i33 = i27;
                        i23 = i32;
                        nwVar.b((-d30) * 1.0d, (-d26) * 1.0d, (-d) * 1.0d);
                        double d31 = i22 + 0;
                        double d32 = i33;
                        double d33 = ((double) i23) + 0.5d;
                        double d34 = 0.0f;
                        float f6 = fNextFloat3 * 1.0f;
                        double d35 = ((i33 * 1.0f) / 4.0f) + f6;
                        nwVar.a(d31, d32, d33, d34, d35);
                        double d36 = i22 + 1;
                        c = 0;
                        double d37 = 1.0f;
                        nwVar.a(d36, d32, d33, d37, d35);
                        double d38 = iE2;
                        double d39 = ((iE2 * 1.0f) / 4.0f) + f6;
                        nwVar.a(d36, d38, d33, d37, d39);
                        nwVar.a(d31, d38, d33, d34, d39);
                        double d40 = ((double) i22) + 0.5d;
                        double d41 = i23 + 0;
                        nwVar.a(d40, d32, d41, d34, d35);
                        double d42 = i23 + 1;
                        nwVar.a(d40, d32, d42, d37, d35);
                        nwVar.a(d40, d38, d42, d37, d39);
                        nwVar.a(d40, d38, d41, d34, d39);
                        nwVar.b(0.0d, 0.0d, 0.0d);
                        nwVar.a();
                    } else {
                        c = c2;
                        d = d25;
                        d2 = d27;
                    }
                } else {
                    c = c2;
                    d = d25;
                    d2 = d27;
                }
                i23++;
                c2 = c;
                d25 = d;
                i9 = i24;
                i21 = i21;
                lsVar = lsVar;
                fdVar = fdVar;
                d26 = d26;
                d27 = d2;
                pxVar = this;
            }
            i22++;
            lsVar = lsVar;
            fdVar = fdVar;
            pxVar = this;
        }
        GL11.glEnable(2884);
        GL11.glDisable(3042);
        GL11.glAlphaFunc(516, 0.1f);
    }

    public void b() {
        qq qqVar = new qq(this.j.z, this.j.d, this.j.e);
        GL11.glClear(Keyboard.KEYBOARD_SIZE);
        GL11.glMatrixMode(5889);
        GL11.glLoadIdentity();
        GL11.glOrtho(0.0d, qqVar.a, qqVar.b, 0.0d, 1000.0d, 3000.0d);
        GL11.glMatrixMode(5888);
        GL11.glLoadIdentity();
        GL11.glTranslatef(0.0f, 0.0f, -2000.0f);
    }

    private void h(float f) {
        fd fdVar = this.j.f;
        ls lsVar = this.j.i;
        float fPow = 1.0f - ((float) Math.pow(1.0f / (4 - this.j.z.e), 0.25d));
        bt btVarA = fdVar.a((sn) this.j.i, f);
        float f2 = (float) btVarA.a;
        float f3 = (float) btVarA.b;
        float f4 = (float) btVarA.c;
        bt btVarD = fdVar.d(f);
        this.g = (float) btVarD.a;
        this.h = (float) btVarD.b;
        float f5 = (float) btVarD.c;
        float f6 = this.g;
        this.g = f6 + ((f2 - f6) * fPow);
        float f7 = this.h;
        this.h = f7 + ((f3 - f7) * fPow);
        this.i = f5 + ((f4 - f5) * fPow);
        float fG = fdVar.g(f);
        if (fG > 0.0f) {
            float f8 = 1.0f - (fG * 0.5f);
            this.g *= f8;
            this.h *= f8;
            this.i *= 1.0f - (fG * 0.4f);
        }
        float f9 = fdVar.f(f);
        if (f9 > 0.0f) {
            float f10 = 1.0f - (f9 * 0.5f);
            this.g *= f10;
            this.h *= f10;
            this.i *= f10;
        }
        if (this.D) {
            bt btVarC = fdVar.c(f);
            this.g = (float) btVarC.a;
            this.h = (float) btVarC.b;
            this.i = (float) btVarC.c;
        } else if (lsVar.a(ln.g)) {
            this.g = 0.02f;
            this.h = 0.02f;
            this.i = 0.2f;
        } else if (lsVar.a(ln.h)) {
            this.g = 0.6f;
            this.h = 0.1f;
            this.i = 0.0f;
        }
        float f11 = this.L;
        float f12 = f11 + ((this.M - f11) * f);
        this.g *= f12;
        this.h *= f12;
        this.i *= f12;
        if (this.j.z.g) {
            float f13 = this.g;
            float f14 = this.h;
            float f15 = this.i;
            this.g = (((f13 * 30.0f) + (59.0f * f14)) + (11.0f * f15)) / 100.0f;
            this.h = ((f13 * 30.0f) + (f14 * 70.0f)) / 100.0f;
            this.i = ((f13 * 30.0f) + (f15 * 70.0f)) / 100.0f;
        }
        GL11.glClearColor(this.g, this.h, this.i, 0.0f);
    }

    private void a(int i, float f) {
        ls lsVar = this.j.i;
        GL11.glFog(2918, a(this.g, this.h, this.i, 1.0f));
        GL11.glNormal3f(0.0f, -1.0f, 0.0f);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        if (this.D || lsVar.a(ln.g)) {
            GL11.glFogi(2917, 2048);
            GL11.glFogf(2914, 0.1f);
            boolean z = this.j.z.g;
        } else if (lsVar.a(ln.h)) {
            GL11.glFogi(2917, 2048);
            GL11.glFogf(2914, 2.0f);
            boolean z2 = this.j.z.g;
        } else {
            GL11.glFogi(2917, 9729);
            GL11.glFogf(2915, this.k * 0.25f);
            GL11.glFogf(2916, this.k);
            if (i < 0) {
                GL11.glFogf(2915, 0.0f);
                GL11.glFogf(2916, this.k * 0.8f);
            }
            if (GLContext.getCapabilities().GL_NV_fog_distance) {
                GL11.glFogi(34138, 34139);
            }
            if (this.j.f.t.c) {
                GL11.glFogf(2915, 0.0f);
            }
        }
        GL11.glEnable(2903);
        GL11.glColorMaterial(1028, 4608);
    }

    private FloatBuffer a(float f, float f2, float f3, float f4) {
        this.f.clear();
        this.f.put(f).put(f2).put(f3).put(f4);
        this.f.flip();
        return this.f;
    }
}
