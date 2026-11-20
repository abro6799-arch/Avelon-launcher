package defpackage;

import java.util.List;
import net.minecraft.client.Minecraft;
import org.lwjgl.input.Mouse;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public abstract class lg {
    private final Minecraft a;
    private final int b;
    private final int c;
    private final int d;
    private int f;
    private int g;
    protected final int h;
    protected final int i;
    protected final int j;
    private float l;
    private float m;
    private boolean q;
    private int r;
    private float k = -2.0f;
    private int n = -1;
    private long o = 0;
    private boolean p = true;
    private final int e = 0;

    protected abstract int a();

    protected void a(int i, int i2) {
    }

    protected abstract void a(int i, int i2, int i3, int i4, nw nwVar);

    protected void a(int i, int i2, nw nwVar) {
    }

    protected abstract void a(int i, boolean z);

    protected void b(int i, int i2) {
    }

    protected abstract void c();

    protected abstract boolean c_(int i);

    public lg(Minecraft minecraft, int i, int i2, int i3, int i4, int i5) {
        this.a = minecraft;
        this.b = i;
        this.c = i2;
        this.h = i3;
        this.i = i4;
        this.j = i5;
        this.d = i;
    }

    public void a(boolean z) {
        this.p = z;
    }

    protected void a(boolean z, int i) {
        this.q = z;
        this.r = i;
        if (z) {
            return;
        }
        this.r = 0;
    }

    protected int b() {
        return (a() * this.j) + this.r;
    }

    public int c(int i, int i2) {
        int i3 = this.b;
        int i4 = (i3 / 2) - 110;
        int i5 = (i3 / 2) + 110;
        int i6 = (((i2 - this.h) - this.r) + ((int) this.m)) - 4;
        int i7 = i6 / this.j;
        if (i < i4 || i > i5 || i7 < 0 || i6 < 0 || i7 >= a()) {
            return -1;
        }
        return i7;
    }

    public void a(List list, int i, int i2) {
        this.f = i;
        this.g = i2;
    }

    private void d() {
        int iB = b() - ((this.i - this.h) - 4);
        if (iB < 0) {
            iB /= 2;
        }
        if (this.m < 0.0f) {
            this.m = 0.0f;
        }
        float f = iB;
        if (this.m > f) {
            this.m = f;
        }
    }

    public void a(ke keVar) {
        if (keVar.g) {
            if (keVar.f == this.f) {
                this.m -= (this.j * 2) / 3;
                this.k = -2.0f;
                d();
            } else if (keVar.f == this.g) {
                this.m += (this.j * 2) / 3;
                this.k = -2.0f;
                d();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:42:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cf  */
    public void a(int i, int i2, float f) {
        int i3;
        boolean z;
        c();
        int iA = a();
        int i4 = (this.b / 2) + 124;
        int i5 = i4 + 6;
        if (Mouse.isButtonDown(0)) {
            float f2 = this.k;
            if (f2 == -1.0f) {
                int i6 = this.h;
                if (i2 >= i6 && i2 <= this.i) {
                    int i7 = this.b;
                    int i8 = (i7 / 2) - 110;
                    int i9 = (i7 / 2) + 110;
                    int i10 = (i2 - i6) - this.r;
                    float f3 = this.m;
                    int i11 = (i10 + ((int) f3)) - 4;
                    int i12 = i11 / this.j;
                    if (i < i8 || i > i9 || i12 < 0 || i11 < 0 || i12 >= iA) {
                        if (i >= i8 && i <= i9 && i11 < 0) {
                            a(i - i8, ((i2 - i6) + ((int) f3)) - 4);
                            z = false;
                        }
                        if (i < i4 && i <= i5) {
                            this.l = -1.0f;
                            int iB = b();
                            int i13 = this.i;
                            int i14 = this.h;
                            int i15 = iB - ((i13 - i14) - 4);
                            if (i15 < 1) {
                                i15 = 1;
                            }
                            int iB2 = (int) (((i13 - i14) * (i13 - i14)) / b());
                            if (iB2 < 32) {
                                iB2 = 32;
                            }
                            int i16 = this.i;
                            int i17 = this.h;
                            if (iB2 > (i16 - i17) - 8) {
                                iB2 = (i16 - i17) - 8;
                            }
                            this.l /= ((i16 - i17) - iB2) / i15;
                        } else {
                            this.l = 1.0f;
                        }
                        if (z) {
                            this.k = i2;
                        } else {
                            this.k = -2.0f;
                        }
                    } else {
                        a(i12, i12 == this.n && System.currentTimeMillis() - this.o < 250);
                        this.n = i12;
                        this.o = System.currentTimeMillis();
                    }
                    z = true;
                    if (i < i4) {
                        this.l = 1.0f;
                    } else {
                        this.l = 1.0f;
                    }
                    if (z) {
                        this.k = i2;
                    } else {
                        this.k = -2.0f;
                    }
                } else {
                    this.k = -2.0f;
                }
            } else if (f2 >= 0.0f) {
                float f4 = i2;
                this.m -= (f4 - f2) * this.l;
                this.k = f4;
            }
        } else {
            this.k = -1.0f;
        }
        d();
        GL11.glDisable(2896);
        GL11.glDisable(2912);
        nw nwVar = nw.a;
        GL11.glBindTexture(3553, this.a.p.b("/gui/background.png"));
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        nwVar.b();
        nwVar.b(2105376);
        int i18 = this.e;
        int i19 = this.i;
        nwVar.a(i18, i19, 0.0d, i18 / 32.0f, (i19 + ((int) this.m)) / 32.0f);
        int i20 = this.d;
        int i21 = this.i;
        nwVar.a(i20, i21, 0.0d, i20 / 32.0f, (i21 + ((int) this.m)) / 32.0f);
        int i22 = this.d;
        int i23 = this.h;
        nwVar.a(i22, i23, 0.0d, i22 / 32.0f, (i23 + ((int) this.m)) / 32.0f);
        int i24 = this.e;
        int i25 = this.h;
        nwVar.a(i24, i25, 0.0d, i24 / 32.0f, (i25 + ((int) this.m)) / 32.0f);
        nwVar.a();
        int i26 = ((this.b / 2) - 92) - 16;
        int i27 = (this.h + 4) - ((int) this.m);
        if (this.q) {
            a(i26, i27, nwVar);
        }
        int i28 = 0;
        while (i28 < iA) {
            int i29 = this.j;
            int i30 = this.r + (i28 * i29) + i27;
            int i31 = i29 - 4;
            if (i30 > this.i || (i3 = i30 + i31) < this.h) {
                i27 = i27;
                iA = iA;
                i4 = i4;
                i5 = i5;
            } else {
                if (this.p && c_(i28)) {
                    int i32 = this.b;
                    int i33 = (i32 / 2) - 110;
                    int i34 = (i32 / 2) + 110;
                    GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
                    GL11.glDisable(3553);
                    nwVar.b();
                    nwVar.b(8421504);
                    double d = i33;
                    double d2 = i3 + 2;
                    nwVar.a(d, d2, 0.0d, 0.0d, 1.0d);
                    double d3 = i34;
                    nwVar.a(d3, d2, 0.0d, 1.0d, 1.0d);
                    double d4 = i30 - 2;
                    nwVar.a(d3, d4, 0.0d, 1.0d, 0.0d);
                    nwVar.a(d, d4, 0.0d, 0.0d, 0.0d);
                    nwVar.b(0);
                    double d5 = i33 + 1;
                    double d6 = i3 + 1;
                    nwVar.a(d5, d6, 0.0d, 0.0d, 1.0d);
                    double d7 = i34 - 1;
                    nwVar.a(d7, d6, 0.0d, 1.0d, 1.0d);
                    double d8 = i30 - 1;
                    nwVar.a(d7, d8, 0.0d, 1.0d, 0.0d);
                    nwVar.a(d5, d8, 0.0d, 0.0d, 0.0d);
                    nwVar.a();
                    GL11.glEnable(3553);
                }
                a(i28, i26, i30, i31, nwVar);
            }
            i28++;
            iA = iA;
            i27 = i27;
            i4 = i4;
            i5 = i5;
        }
        int i35 = i4;
        int i36 = i5;
        GL11.glDisable(2929);
        a(0, this.h, 255, 255);
        a(this.i, this.c, 255, 255);
        GL11.glEnable(3042);
        GL11.glBlendFunc(770, 771);
        GL11.glDisable(3008);
        GL11.glShadeModel(7425);
        GL11.glDisable(3553);
        nwVar.b();
        nwVar.a(0, 0);
        nwVar.a(this.e, this.h + 4, 0.0d, 0.0d, 1.0d);
        nwVar.a(this.d, this.h + 4, 0.0d, 1.0d, 1.0d);
        nwVar.a(0, 255);
        nwVar.a(this.d, this.h, 0.0d, 1.0d, 0.0d);
        nwVar.a(this.e, this.h, 0.0d, 0.0d, 0.0d);
        nwVar.a();
        nwVar.b();
        nwVar.a(0, 255);
        nwVar.a(this.e, this.i, 0.0d, 0.0d, 1.0d);
        nwVar.a(this.d, this.i, 0.0d, 1.0d, 1.0d);
        nwVar.a(0, 0);
        nwVar.a(this.d, this.i - 4, 0.0d, 1.0d, 0.0d);
        nwVar.a(this.e, this.i - 4, 0.0d, 0.0d, 0.0d);
        nwVar.a();
        int iB3 = b();
        int i37 = this.i;
        int i38 = this.h;
        int i39 = iB3 - ((i37 - i38) - 4);
        if (i39 > 0) {
            int iB4 = ((i37 - i38) * (i37 - i38)) / b();
            int i40 = iB4 < 32 ? 32 : iB4;
            int i41 = this.i;
            int i42 = this.h;
            if (i40 > (i41 - i42) - 8) {
                i40 = (i41 - i42) - 8;
            }
            int i43 = ((((int) this.m) * ((i41 - i42) - i40)) / i39) + i42;
            if (i43 >= i42) {
                i42 = i43;
            }
            nwVar.b();
            nwVar.a(0, 255);
            double d9 = i35;
            nwVar.a(d9, this.i, 0.0d, 0.0d, 1.0d);
            double d10 = i36;
            nwVar.a(d10, this.i, 0.0d, 1.0d, 1.0d);
            nwVar.a(d10, this.h, 0.0d, 1.0d, 0.0d);
            nwVar.a(d9, this.h, 0.0d, 0.0d, 0.0d);
            nwVar.a();
            nwVar.b();
            nwVar.a(8421504, 255);
            int i44 = i40 + i42;
            double d11 = i44;
            nwVar.a(d9, d11, 0.0d, 0.0d, 1.0d);
            nwVar.a(d10, d11, 0.0d, 1.0d, 1.0d);
            double d12 = i42;
            nwVar.a(d10, d12, 0.0d, 1.0d, 0.0d);
            nwVar.a(d9, d12, 0.0d, 0.0d, 0.0d);
            nwVar.a();
            nwVar.b();
            nwVar.a(12632256, 255);
            double d13 = i44 - 1;
            nwVar.a(d9, d13, 0.0d, 0.0d, 1.0d);
            double d14 = i36 - 1;
            nwVar.a(d14, d13, 0.0d, 1.0d, 1.0d);
            nwVar.a(d14, d12, 0.0d, 1.0d, 0.0d);
            nwVar.a(d9, d12, 0.0d, 0.0d, 0.0d);
            nwVar.a();
        }
        b(i, i2);
        GL11.glEnable(3553);
        GL11.glShadeModel(7424);
        GL11.glEnable(3008);
        GL11.glDisable(3042);
    }

    private void a(int i, int i2, int i3, int i4) {
        nw nwVar = nw.a;
        GL11.glBindTexture(3553, this.a.p.b("/gui/background.png"));
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        nwVar.b();
        nwVar.a(4210752, i4);
        double d = i2;
        double d2 = i2 / 32.0f;
        nwVar.a(0.0d, d, 0.0d, 0.0d, d2);
        int i5 = this.b;
        nwVar.a(i5, d, 0.0d, i5 / 32.0f, d2);
        nwVar.a(4210752, i3);
        int i6 = this.b;
        double d3 = i;
        double d4 = i / 32.0f;
        nwVar.a(i6, d3, 0.0d, i6 / 32.0f, d4);
        nwVar.a(0.0d, d3, 0.0d, 0.0d, d4);
        nwVar.a();
    }
}
