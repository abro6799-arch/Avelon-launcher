package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import mcshim.awt.Color;
import net.minecraft.client.Minecraft;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class uq extends ub {
    private static bb d = new bb();
    public float b;
    private Minecraft g;
    private List e = new ArrayList();
    private Random f = new Random();
    public String a = null;
    private int h = 0;
    private String i = "";
    private int j = 0;
    private boolean l = false;
    float c = 1.0f;

    public uq(Minecraft minecraft) {
        this.g = minecraft;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0575  */
    /* JADX WARN: Code duplicated, block: B:94:0x0532  */
    public void a(float f, boolean z, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        qq qqVar = new qq(this.g.z, this.g.d, this.g.e);
        int iA = qqVar.a();
        int iB = qqVar.b();
        sj sjVar = this.g.q;
        this.g.t.b();
        GL11.glEnable(3042);
        if (Minecraft.u()) {
            a(this.g.h.a(f), iA, iB);
        }
        iz izVarD = this.g.h.c.d(3);
        if (!this.g.z.A && izVarD != null && izVarD.c == uu.bb.bn) {
            a(iA, iB);
        }
        float f2 = this.g.h.C + ((this.g.h.B - this.g.h.C) * f);
        if (f2 > 0.0f) {
            b(f2, iA, iB);
        }
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        GL11.glBindTexture(3553, this.g.p.b("/gui/gui.png"));
        ix ixVar = this.g.h.c;
        this.k = -90.0f;
        int i8 = iA / 2;
        int i9 = i8 - 91;
        int i10 = iB - 22;
        b(i9, i10, 0, 0, 182, 22);
        int i11 = 1;
        b((ixVar.c * 20) + (i9 - 1), i10 - 1, 0, 22, 24, 22);
        GL11.glBindTexture(3553, this.g.p.b("/gui/icons.png"));
        GL11.glEnable(3042);
        GL11.glBlendFunc(775, 769);
        b(i8 - 7, (iB / 2) - 7, 0, 0, 16, 16);
        GL11.glDisable(3042);
        int i12 = 10;
        int i13 = this.g.h.by < 10 ? 0 : (this.g.h.by / 3) % 2 == 1 ? 1 : 0;
        int i14 = this.g.h.Y;
        int i15 = this.g.h.Z;
        this.f.setSeed(this.h * 312871);
        if (this.g.c.d()) {
            int iS = this.g.h.s();
            int i16 = 0;
            while (i16 < i12) {
                int iNextInt = iB - 32;
                if (iS > 0) {
                    int i17 = ((i8 + 91) - (i16 * 8)) - 9;
                    int i18 = (i16 * 2) + i11;
                    if (i18 < iS) {
                        b(i17, iNextInt, 34, 9, 9, 9);
                    }
                    if (i18 == iS) {
                        b(i17, iNextInt, 25, 9, 9, 9);
                    }
                    if (i18 > iS) {
                        b(i17, iNextInt, 16, 9, 9, 9);
                    }
                } else {
                    i16 = i16;
                    iS = iS;
                    i15 = i15;
                    i12 = i12;
                    i14 = i14;
                }
                int i19 = i9 + (i16 * 8);
                if (i14 <= 4) {
                    iNextInt += this.f.nextInt(2);
                }
                b(i19, iNextInt, (i13 * 9) + 16, 0, 9, 9);
                if (i13 != 0) {
                    int i20 = (i16 * 2) + 1;
                    int i21 = i15;
                    if (i20 < i21) {
                        b(i19, iNextInt, 70, 0, 9, 9);
                        i7 = i21;
                    } else {
                        i7 = i21;
                    }
                    if (i20 == i7) {
                        i6 = i7;
                        b(i19, iNextInt, 79, 0, 9, 9);
                    } else {
                        i6 = i7;
                    }
                } else {
                    iS = iS;
                    i6 = i15;
                }
                int i22 = (i16 * 2) + 1;
                if (i22 < i14) {
                    b(i19, iNextInt, 52, 0, 9, 9);
                }
                if (i22 == i14) {
                    b(i19, iNextInt, 61, 0, 9, 9);
                }
                i16++;
                i14 = i14;
                iS = iS;
                i12 = i12;
                i15 = i6;
                i11 = 1;
            }
            i4 = i12;
            if (this.g.h.a(ln.g)) {
                int iCeil = (int) Math.ceil((((double) (this.g.h.bz - 2)) * 10.0d) / 300.0d);
                int iCeil2 = ((int) Math.ceil((((double) this.g.h.bz) * 10.0d) / 300.0d)) - iCeil;
                int i23 = 0;
                while (i23 < iCeil + iCeil2) {
                    if (i23 < iCeil) {
                        b(i9 + (i23 * 8), (iB - 32) - 9, 16, 18, 9, 9);
                    } else {
                        b(i9 + (i23 * 8), (iB - 32) - 9, 25, 18, 9, 9);
                    }
                    i23++;
                    iCeil = iCeil;
                }
            }
            i3 = 9;
        } else {
            i3 = 9;
            i4 = 10;
        }
        GL11.glDisable(3042);
        GL11.glEnable(32826);
        GL11.glPushMatrix();
        GL11.glRotatef(120.0f, 1.0f, 0.0f, 0.0f);
        u.b();
        GL11.glPopMatrix();
        for (int i24 = 0; i24 < i3; i24++) {
            a(i24, (i8 - 90) + (i24 * 20) + 2, (iB - 16) - 3, f);
        }
        u.a();
        GL11.glDisable(32826);
        if (this.g.h.P() > 0) {
            GL11.glDisable(2929);
            GL11.glDisable(3008);
            int iP = this.g.h.P();
            float f3 = iP / 100.0f;
            if (f3 > 1.0f) {
                f3 = 1.0f - ((iP - 100) / 10.0f);
            }
            a(0, 0, iA, iB, (((int) (f3 * 220.0f)) << 24) | 1052704);
            GL11.glEnable(3008);
            GL11.glEnable(2929);
        }
        if (this.g.z.B) {
            GL11.glPushMatrix();
            if (Minecraft.H > 0) {
                GL11.glTranslatef(0.0f, 32.0f, 0.0f);
            }
            sjVar.a("Minecraft Beta 1.7.3 (" + this.g.K + ")", 2, 2, 16777215);
            sjVar.a(this.g.o(), 2, 12, 16777215);
            sjVar.a(this.g.p(), 2, 22, 16777215);
            sjVar.a(this.g.r(), 2, 32, 16777215);
            sjVar.a(this.g.q(), 2, 42, 16777215);
            long jMaxMemory = Runtime.getRuntime().maxMemory();
            long j = Runtime.getRuntime().totalMemory();
            long jFreeMemory = j - Runtime.getRuntime().freeMemory();
            String str = "Used memory: " + ((100 * jFreeMemory) / jMaxMemory) + "% (" + ((jFreeMemory / 1024) / 1024) + "MB) of " + ((jMaxMemory / 1024) / 1024) + "MB";
            b(sjVar, str, (iA - sjVar.a(str)) - 2, 2, 14737632);
            String str2 = "Allocated memory: " + ((100 * j) / jMaxMemory) + "% (" + ((j / 1024) / 1024) + "MB)";
            b(sjVar, str2, (iA - sjVar.a(str2)) - 2, 12, 14737632);
            b(sjVar, "x: " + this.g.h.aM, 2, 64, 14737632);
            b(sjVar, "y: " + this.g.h.aN, 2, 72, 14737632);
            b(sjVar, "z: " + this.g.h.aO, 2, 80, 14737632);
            b(sjVar, "f: " + (in.b(((double) ((this.g.h.aS * 4.0f) / 360.0f)) + 0.5d) & 3), 2, 88, 14737632);
            GL11.glPopMatrix();
        }
        int i25 = this.j;
        int i26 = 255;
        if (i25 > 0) {
            float f4 = i25 - f;
            int i27 = (int) ((256.0f * f4) / 20.0f);
            if (i27 > 255) {
                i27 = 255;
            }
            if (i27 > 0) {
                GL11.glPushMatrix();
                GL11.glTranslatef(i8, iB - 48, 0.0f);
                GL11.glEnable(3042);
                GL11.glBlendFunc(770, 771);
                int iHSBtoRGB = this.l ? Color.HSBtoRGB(f4 / 50.0f, 0.7f, 0.6f) & 16777215 : 16777215;
                String str3 = this.i;
                sjVar.b(str3, (-sjVar.a(str3)) / 2, -4, iHSBtoRGB + (i27 << 24));
                i5 = 3042;
                GL11.glDisable(3042);
                GL11.glPopMatrix();
            } else {
                i5 = 3042;
            }
        } else {
            i5 = 3042;
        }
        boolean z2 = this.g.r instanceof gc;
        int i28 = z2 ? 20 : i4;
        GL11.glEnable(i5);
        GL11.glBlendFunc(770, 771);
        GL11.glDisable(3008);
        GL11.glPushMatrix();
        GL11.glTranslatef(0.0f, iB - 48, 0.0f);
        int i29 = 0;
        while (i29 < this.e.size() && i29 < i28) {
            if (((sw) this.e.get(i29)).b < 200 || z2) {
                double d2 = (1.0d - (((double) ((sw) this.e.get(i29)).b) / 200.0d)) * 10.0d;
                if (d2 < 0.0d) {
                    d2 = 0.0d;
                }
                double d3 = d2 <= 1.0d ? d2 : 1.0d;
                int i30 = z2 ? i26 : (int) (d3 * d3 * 255.0d);
                if (i30 > 0) {
                    int i31 = (-i29) * 9;
                    String str4 = ((sw) this.e.get(i29)).a;
                    a(2, i31 - 1, 322, i31 + 8, (i30 / 2) << 24);
                    GL11.glEnable(3042);
                    sjVar.a(str4, 2, i31, (i30 << 24) + 16777215);
                }
            }
            i29++;
            i26 = 255;
        }
        GL11.glPopMatrix();
        GL11.glEnable(3008);
        GL11.glDisable(3042);
    }

    private void a(int i, int i2) {
        GL11.glDisable(2929);
        GL11.glDepthMask(false);
        GL11.glBlendFunc(770, 771);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        GL11.glDisable(3008);
        GL11.glBindTexture(3553, this.g.p.b("%blur%/misc/pumpkinblur.png"));
        nw nwVar = nw.a;
        nwVar.b();
        double d2 = i2;
        nwVar.a(0.0d, d2, -90.0d, 0.0d, 1.0d);
        double d3 = i;
        nwVar.a(d3, d2, -90.0d, 1.0d, 1.0d);
        nwVar.a(d3, 0.0d, -90.0d, 1.0d, 0.0d);
        nwVar.a(0.0d, 0.0d, -90.0d, 0.0d, 0.0d);
        nwVar.a();
        GL11.glDepthMask(true);
        GL11.glEnable(2929);
        GL11.glEnable(3008);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
    }

    private void a(float f, int i, int i2) {
        float f2 = 1.0f - f;
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        float f3 = this.c;
        this.c = (float) (((double) f3) + (((double) (f2 - f3)) * 0.01d));
        GL11.glDisable(2929);
        GL11.glDepthMask(false);
        GL11.glBlendFunc(0, 769);
        float f4 = this.c;
        GL11.glColor4f(f4, f4, f4, 1.0f);
        GL11.glBindTexture(3553, this.g.p.b("%blur%/misc/vignette.png"));
        nw nwVar = nw.a;
        nwVar.b();
        double d2 = i2;
        nwVar.a(0.0d, d2, -90.0d, 0.0d, 1.0d);
        double d3 = i;
        nwVar.a(d3, d2, -90.0d, 1.0d, 1.0d);
        nwVar.a(d3, 0.0d, -90.0d, 1.0d, 0.0d);
        nwVar.a(0.0d, 0.0d, -90.0d, 0.0d, 0.0d);
        nwVar.a();
        GL11.glDepthMask(true);
        GL11.glEnable(2929);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        GL11.glBlendFunc(770, 771);
    }

    private void b(float f, int i, int i2) {
        float f2;
        if (f < 1.0f) {
            float f3 = f * f;
            f2 = (f3 * f3 * 0.8f) + 0.2f;
        } else {
            f2 = f;
        }
        GL11.glDisable(3008);
        GL11.glDisable(2929);
        GL11.glDepthMask(false);
        GL11.glBlendFunc(770, 771);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, f2);
        GL11.glBindTexture(3553, this.g.p.b("/terrain.png"));
        float f4 = (uu.bf.bm % 16) / 16.0f;
        float f5 = (uu.bf.bm / 16) / 16.0f;
        float f6 = ((uu.bf.bm % 16) + 1) / 16.0f;
        float f7 = ((uu.bf.bm / 16) + 1) / 16.0f;
        nw nwVar = nw.a;
        nwVar.b();
        double d2 = i2;
        double d3 = f4;
        double d4 = f7;
        nwVar.a(0.0d, d2, -90.0d, d3, d4);
        double d5 = i;
        double d6 = f6;
        nwVar.a(d5, d2, -90.0d, d6, d4);
        double d7 = f5;
        nwVar.a(d5, 0.0d, -90.0d, d6, d7);
        nwVar.a(0.0d, 0.0d, -90.0d, d3, d7);
        nwVar.a();
        GL11.glDepthMask(true);
        GL11.glEnable(2929);
        GL11.glEnable(3008);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
    }

    private void a(int i, int i2, int i3, float f) {
        iz izVar = this.g.h.c.a[i];
        if (izVar == null) {
            return;
        }
        float f2 = izVar.b - f;
        if (f2 > 0.0f) {
            GL11.glPushMatrix();
            float f3 = (f2 / 5.0f) + 1.0f;
            int i4 = i2 + 8;
            int i5 = i3 + 12;
            GL11.glTranslatef(i4, i5, 0.0f);
            GL11.glScalef(1.0f / f3, (f3 + 1.0f) / 2.0f, 1.0f);
            GL11.glTranslatef(-i4, -i5, 0.0f);
        }
        d.a(this.g.q, this.g.p, izVar, i2, i3);
        if (f2 > 0.0f) {
            GL11.glPopMatrix();
        }
        d.b(this.g.q, this.g.p, izVar, i2, i3);
    }

    public void a() {
        int i = this.j;
        if (i > 0) {
            this.j = i - 1;
        }
        this.h++;
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            ((sw) this.e.get(i2)).b++;
        }
    }

    public void b() {
        this.e.clear();
    }

    public void a(String str) {
        while (true) {
            int i = 1;
            if (this.g.q.a(str) <= 320) {
                break;
            }
            while (i < str.length()) {
                int i2 = i + 1;
                if (this.g.q.a(str.substring(0, i2)) > 320) {
                    break;
                } else {
                    i = i2;
                }
            }
            a(str.substring(0, i));
            str = str.substring(i);
        }
        this.e.add(0, new sw(str));
        while (this.e.size() > 50) {
            List list = this.e;
            list.remove(list.size() - 1);
        }
    }

    public void b(String str) {
        this.i = "Now playing: " + str;
        this.j = 60;
        this.l = true;
    }

    public void c(String str) {
        a(nh.a().a(str));
    }
}
