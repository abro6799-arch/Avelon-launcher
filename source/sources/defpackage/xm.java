package defpackage;

import java.util.Random;
import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class xm extends da {
    private static final int s = (ep.a * 24) - 112;
    private static final int t = (ep.b * 24) - 112;
    private static final int u = (ep.c * 24) - 77;
    private static final int v = (ep.d * 24) - 77;
    protected double m;
    protected double n;
    protected double o;
    protected double p;
    protected double q;
    protected double r;
    private xi x;
    protected int a = Keyboard.KEYBOARD_SIZE;
    protected int i = 202;
    protected int j = 0;
    protected int l = 0;
    private int w = 0;

    @Override // defpackage.da
    public boolean c() {
        return true;
    }

    public xm(xi xiVar) {
        this.x = xiVar;
        double d = ((ep.f.a * 24) - 70) - 12;
        this.q = d;
        this.o = d;
        this.m = d;
        double d2 = (ep.f.b * 24) - 70;
        this.r = d2;
        this.p = d2;
        this.n = d2;
    }

    @Override // defpackage.da
    public void b() {
        this.e.clear();
        this.e.add(new ab(1, (this.c / 2) + 24, (this.d / 2) + 74, 80, 20, Cdo.a("gui.done")));
    }

    @Override // defpackage.da
    protected void a(ke keVar) {
        if (keVar.f == 1) {
            this.b.a((da) null);
            this.b.g();
        }
        super.a(keVar);
    }

    @Override // defpackage.da
    protected void a(char c, int i) {
        if (i == this.b.z.r.b) {
            this.b.a((da) null);
            this.b.g();
        } else {
            super.a(c, i);
        }
    }

    @Override // defpackage.da
    public void a(int i, int i2, float f) {
        if (Mouse.isButtonDown(0)) {
            int i3 = ((this.c - this.a) / 2) + 8;
            int i4 = ((this.d - this.i) / 2) + 17;
            int i5 = this.w;
            if ((i5 == 0 || i5 == 1) && i >= i3 && i < i3 + 224 && i2 >= i4 && i2 < i4 + 155) {
                if (i5 == 0) {
                    this.w = 1;
                } else {
                    double d = this.o - ((double) (i - this.j));
                    this.o = d;
                    double d2 = this.p - ((double) (i2 - this.l));
                    this.p = d2;
                    this.m = d;
                    this.q = d;
                    this.n = d2;
                    this.r = d2;
                }
                this.j = i;
                this.l = i2;
            }
            double d3 = this.q;
            int i6 = s;
            if (d3 < i6) {
                this.q = i6;
            }
            double d4 = this.r;
            int i7 = t;
            if (d4 < i7) {
                this.r = i7;
            }
            double d5 = this.q;
            int i8 = u;
            if (d5 >= i8) {
                this.q = i8 - 1;
            }
            double d6 = this.r;
            int i9 = v;
            if (d6 >= i9) {
                this.r = i9 - 1;
            }
        } else {
            this.w = 0;
        }
        i();
        b(i, i2, f);
        GL11.glDisable(2896);
        GL11.glDisable(2929);
        k();
        GL11.glEnable(2896);
        GL11.glEnable(2929);
    }

    @Override // defpackage.da
    public void a() {
        double d = this.o;
        this.m = d;
        double d2 = this.p;
        this.n = d2;
        double d3 = this.q - d;
        double d4 = this.r - d2;
        if ((d3 * d3) + (d4 * d4) < 4.0d) {
            this.o = d + d3;
            this.p = d2 + d4;
        } else {
            this.o = d + (d3 * 0.85d);
            this.p = d2 + (d4 * 0.85d);
        }
    }

    protected void k() {
        this.g.b("Achievements", ((this.c - this.a) / 2) + 15, ((this.d - this.i) / 2) + 5, 4210752);
    }

    protected void b(int i, int i2, float f) {
        float f2;
        int i3;
        int i4;
        double d = this.m;
        double d2 = f;
        int iB = in.b(d + ((this.o - d) * d2));
        double d3 = this.n;
        int iB2 = in.b(d3 + ((this.p - d3) * d2));
        int i5 = s;
        if (iB < i5) {
            iB = i5;
        }
        int i6 = t;
        if (iB2 < i6) {
            iB2 = i6;
        }
        int i7 = u;
        if (iB >= i7) {
            iB = i7 - 1;
        }
        int i8 = iB;
        int i9 = v;
        if (iB2 >= i9) {
            iB2 = i9 - 1;
        }
        int i10 = iB2;
        int iB3 = this.b.p.b("/terrain.png");
        int iB4 = this.b.p.b("/achievement/bg.png");
        int i11 = (this.c - this.a) / 2;
        int i12 = (this.d - this.i) / 2;
        int i13 = i11 + 16;
        int i14 = i12 + 17;
        this.k = 0.0f;
        GL11.glDepthFunc(518);
        GL11.glPushMatrix();
        GL11.glTranslatef(0.0f, 0.0f, -200.0f);
        GL11.glEnable(3553);
        GL11.glDisable(2896);
        GL11.glEnable(32826);
        GL11.glEnable(2903);
        this.b.p.b(iB3);
        int i15 = i8 + 288;
        int i16 = i15 >> 4;
        int i17 = i10 + 288;
        int i18 = i17 >> 4;
        int i19 = i15 % 16;
        int i20 = i17 % 16;
        Random random = new Random();
        int i21 = 0;
        while (true) {
            int i22 = i21 * 16;
            int i23 = 224;
            f2 = 1.0f;
            if (i22 - i20 >= 155) {
                break;
            }
            int i24 = i18 + i21;
            float f3 = 0.6f - ((i24 / 25.0f) * 0.3f);
            GL11.glColor4f(f3, f3, f3, 1.0f);
            int i25 = 0;
            while (true) {
                int i26 = i25 * 16;
                if (i26 - i19 < i23) {
                    int i27 = i8;
                    random.setSeed(i16 + 1234 + i25);
                    random.nextInt();
                    int iNextInt = random.nextInt(i18 + 1 + i21) + (i24 / 2);
                    int i28 = uu.F.bm;
                    if (iNextInt > 37 || i24 == 35) {
                        i28 = uu.A.bm;
                    } else if (iNextInt == 22) {
                        if (random.nextInt(2) == 0) {
                            i28 = uu.ax.bm;
                        } else {
                            i28 = uu.aO.bm;
                        }
                    } else if (iNextInt == 10) {
                        i28 = uu.I.bm;
                    } else if (iNextInt == 8) {
                        i28 = uu.J.bm;
                    } else if (iNextInt > 4) {
                        i28 = uu.u.bm;
                    } else if (iNextInt > 0) {
                        i28 = uu.w.bm;
                    }
                    b((i26 + i13) - i19, (i14 + i22) - i20, (i28 % 16) << 4, (i28 >> 4) << 4, 16, 16);
                    i25++;
                    i13 = i13;
                    i14 = i14;
                    i16 = i16;
                    i24 = i24;
                    random = random;
                    i8 = i27;
                    i23 = 224;
                }
            }
            i21++;
            i8 = i8;
        }
        int i29 = i14;
        int i30 = i13;
        int i31 = i8;
        GL11.glEnable(2929);
        GL11.glDepthFunc(515);
        GL11.glDisable(3553);
        for (int i32 = 0; i32 < ep.e.size(); i32++) {
            ny nyVar = (ny) ep.e.get(i32);
            if (nyVar.c != null) {
                int i33 = ((nyVar.a * 24) - i31) + 11 + i30;
                int i34 = ((nyVar.b * 24) - i10) + 11 + i29;
                int i35 = ((nyVar.c.a * 24) - i31) + 11 + i30;
                int i36 = ((nyVar.c.b * 24) - i10) + 11 + i29;
                int i37 = this.x.a(nyVar) ? -9408400 : this.x.b(nyVar) ? 65280 + ((Math.sin(((((double) (System.currentTimeMillis() % 600)) / 600.0d) * 3.141592653589793d) * 2.0d) > 0.6d ? 255 : 130) << 24) : -16777216;
                a(i33, i35, i34, i37);
                b(i35, i34, i36, i37);
            }
        }
        bb bbVar = new bb();
        GL11.glPushMatrix();
        GL11.glRotatef(180.0f, 1.0f, 0.0f, 0.0f);
        u.b();
        GL11.glPopMatrix();
        GL11.glDisable(2896);
        GL11.glEnable(32826);
        GL11.glEnable(2903);
        ny nyVar2 = null;
        int i38 = 0;
        while (i38 < ep.e.size()) {
            ny nyVar3 = (ny) ep.e.get(i38);
            int i39 = (nyVar3.a * 24) - i31;
            int i40 = (nyVar3.b * 24) - i10;
            if (i39 >= -24 && i40 >= -24 && i39 <= 224) {
                if (i40 <= 155) {
                    if (this.x.a(nyVar3)) {
                        GL11.glColor4f(f2, f2, f2, f2);
                    } else if (this.x.b(nyVar3)) {
                        float f4 = Math.sin(((((double) (System.currentTimeMillis() % 600)) / 600.0d) * 3.141592653589793d) * 2.0d) < 0.6d ? 0.6f : 0.8f;
                        GL11.glColor4f(f4, f4, f4, f2);
                    } else {
                        GL11.glColor4f(0.3f, 0.3f, 0.3f, f2);
                    }
                    this.b.p.b(iB4);
                    int i41 = i30 + i39;
                    int i42 = i29 + i40;
                    if (nyVar3.f()) {
                        i3 = i42;
                        i4 = i41;
                        b(i41 - 2, i42 - 2, 26, 202, 26, 26);
                    } else {
                        i3 = i42;
                        i4 = i41;
                        b(i4 - 2, i3 - 2, 0, 202, 26, 26);
                    }
                    if (!this.x.b(nyVar3)) {
                        GL11.glColor4f(0.1f, 0.1f, 0.1f, 1.0f);
                        bbVar.a = false;
                    }
                    GL11.glEnable(2896);
                    GL11.glEnable(2884);
                    bbVar.a(this.b.q, this.b.p, nyVar3.d, i4 + 3, i3 + 3);
                    GL11.glDisable(2896);
                    if (!this.x.b(nyVar3)) {
                        bbVar.a = true;
                    }
                    GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
                    if (i >= i30 && i2 >= i29 && i < i30 + 224 && i2 < i29 + 155 && i >= i4 && i <= i4 + 22 && i2 >= i3 && i2 <= i3 + 22) {
                        nyVar2 = nyVar3;
                    }
                } else {
                    i38 = i38;
                }
            }
            i38++;
            f2 = 1.0f;
        }
        GL11.glDisable(2929);
        GL11.glEnable(3042);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        this.b.p.b(iB4);
        b(i11, i12, 0, 0, this.a, this.i);
        GL11.glPopMatrix();
        this.k = 0.0f;
        GL11.glDepthFunc(515);
        GL11.glDisable(2929);
        GL11.glEnable(3553);
        super.a(i, i2, f);
        if (nyVar2 != null) {
            String str = nyVar2.f;
            String strE = nyVar2.e();
            int i43 = i + 12;
            int i44 = i2 - 4;
            if (this.x.b(nyVar2)) {
                int iMax = Math.max(this.g.a(str), 120);
                int iA = this.g.a(strE, iMax);
                if (this.x.a(nyVar2)) {
                    iA += 12;
                }
                int i45 = i44 + iA;
                a(i43 - 3, i44 - 3, i43 + iMax + 3, i45 + 3 + 12, -1073741824, -1073741824);
                this.g.a(strE, i43, i44 + 12, iMax, -6250336);
                if (this.x.a(nyVar2)) {
                    this.g.a(Cdo.a("achievement.taken"), i43, i45 + 4, -7302913);
                }
            } else {
                int iMax2 = Math.max(this.g.a(str), 120);
                String strA = Cdo.a("achievement.requires", nyVar2.c.f);
                a(i43 - 3, i44 - 3, i43 + iMax2 + 3, this.g.a(strA, iMax2) + i44 + 12 + 3, -1073741824, -1073741824);
                this.g.a(strA, i43, i44 + 12, iMax2, -9416624);
            }
            this.g.a(str, i43, i44, this.x.b(nyVar2) ? nyVar2.f() ? -128 : -1 : nyVar2.f() ? -8355776 : -8355712);
        }
        GL11.glEnable(2929);
        GL11.glEnable(2896);
        u.a();
    }
}
