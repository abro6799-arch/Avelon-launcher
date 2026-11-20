package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public abstract class bw {
    protected th b;
    private ko a = new fh();
    private cv e = new cv();
    protected float c = 0.0f;
    protected float d = 1.0f;

    public abstract void a(sn snVar, double d, double d2, double d3, float f, float f2);

    protected void a(String str) {
        ji jiVar = this.b.e;
        jiVar.b(jiVar.b(str));
    }

    protected boolean a(String str, String str2) {
        ji jiVar = this.b.e;
        int iA = jiVar.a(str, str2);
        if (iA < 0) {
            return false;
        }
        jiVar.b(iA);
        return true;
    }

    private void a(sn snVar, double d, double d2, double d3, float f) {
        float f2;
        float f3;
        float f4;
        float f5;
        GL11.glDisable(2896);
        int i = uu.as.bm;
        int i2 = (i & 15) << 4;
        int i3 = i & 240;
        float f6 = i2;
        float f7 = 256.0f;
        float f8 = f6 / 256.0f;
        float f9 = (f6 + 15.99f) / 256.0f;
        float f10 = i3;
        float f11 = f10 / 256.0f;
        GL11.glPushMatrix();
        GL11.glTranslatef((float) d, (float) d2, (float) d3);
        float f12 = snVar.bg * 1.4f;
        GL11.glScalef(f12, f12, f12);
        a("/terrain.png");
        nw nwVar = nw.a;
        float f13 = snVar.bh / f12;
        float f14 = (f10 + 15.99f) / 256.0f;
        float f15 = (float) (snVar.aN - snVar.aW.b);
        float f16 = 0.0f;
        GL11.glRotatef(-this.b.i, 0.0f, 1.0f, 0.0f);
        GL11.glTranslatef(0.0f, 0.0f, (((int) f13) * 0.02f) - 0.3f);
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        nwVar.b();
        float f17 = 0.5f;
        float f18 = f13;
        int i4 = 0;
        float f19 = 0.0f;
        while (f18 > f16) {
            if (i4 % 2 == 0) {
                f2 = f11;
                f3 = f14;
            } else {
                float f20 = i3 + 16;
                f2 = f20 / f7;
                f3 = (f20 + 15.99f) / f7;
            }
            if ((i4 / 2) % 2 == 0) {
                f5 = f9;
                f4 = f8;
            } else {
                f4 = f9;
                f5 = f8;
            }
            int i5 = i3;
            double d4 = f17 - f16;
            double d5 = f16 - f15;
            float f21 = f14;
            double d6 = f19;
            double d7 = f4;
            float f22 = f15;
            double d8 = f3;
            float f23 = f19;
            nwVar.a(d4, d5, d6, d7, d8);
            double d9 = (-f17) - 0.0f;
            double d10 = f5;
            nwVar.a(d9, d5, d6, d10, d8);
            double d11 = 1.4f - f22;
            double d12 = f2;
            nwVar.a(d9, d11, d6, d10, d12);
            nwVar.a(d4, d11, d6, d7, d12);
            f18 -= 0.45f;
            f15 = f22 - 0.45f;
            f17 *= 0.9f;
            f19 = f23 + 0.03f;
            i4++;
            f14 = f21;
            i3 = i5;
            f9 = f9;
            f11 = f11;
            f8 = f8;
            f16 = 0.0f;
            f7 = 256.0f;
        }
        nwVar.a();
        GL11.glPopMatrix();
        GL11.glEnable(2896);
    }

    private void c(sn snVar, double d, double d2, double d3, float f, float f2) {
        int i;
        fd fdVar;
        int i2;
        float f3;
        GL11.glEnable(3042);
        GL11.glBlendFunc(770, 771);
        ji jiVar = this.b.e;
        jiVar.b(jiVar.b("%clamp%/misc/shadow.png"));
        fd fdVarB = b();
        GL11.glDepthMask(false);
        float f4 = this.c;
        double d4 = f2;
        double d5 = snVar.bl + ((snVar.aM - snVar.bl) * d4);
        double dX_ = snVar.bm + ((snVar.aN - snVar.bm) * d4) + ((double) snVar.x_());
        fd fdVar2 = fdVarB;
        double d6 = snVar.bn + ((snVar.aO - snVar.bn) * d4);
        double d7 = f4;
        int iB = in.b(d5 - d7);
        int iB2 = in.b(d5 + d7);
        int iB3 = in.b(dX_ - d7);
        int iB4 = in.b(dX_);
        int iB5 = in.b(d6 - d7);
        int iB6 = in.b(d7 + d6);
        double d8 = d - d5;
        double d9 = d2 - dX_;
        double d10 = d3 - d6;
        nw nwVar = nw.a;
        nwVar.b();
        int i3 = iB;
        while (i3 <= iB2) {
            int i4 = iB3;
            while (i4 <= iB4) {
                int i5 = iB5;
                while (i5 <= iB6) {
                    fd fdVar3 = fdVar2;
                    int iA = fdVar3.a(i3, i4 - 1, i5);
                    if (iA <= 0 || fdVar3.n(i3, i4, i5) <= 3) {
                        i = i5;
                        fdVar = fdVar3;
                        i2 = i4;
                        f3 = f4;
                    } else {
                        i = i5;
                        i2 = i4;
                        f3 = f4;
                        fdVar = fdVar3;
                        a(uu.m[iA], d, d2 + ((double) snVar.x_()), d3, i3, i2, i, f, f3, d8, d9 + ((double) snVar.x_()), d10);
                    }
                    i5 = i + 1;
                    i4 = i2;
                    i3 = i3;
                    iB6 = iB6;
                    f4 = f3;
                    fdVar2 = fdVar;
                    iB4 = iB4;
                    iB2 = iB2;
                }
                i4++;
            }
            i3++;
        }
        nwVar.a();
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        GL11.glDisable(3042);
        GL11.glDepthMask(true);
    }

    private fd b() {
        return this.b.g;
    }

    private void a(uu uuVar, double d, double d2, double d3, int i, int i2, int i3, float f, float f2, double d4, double d5, double d6) {
        nw nwVar = nw.a;
        if (uuVar.d()) {
            double d7 = i2;
            double dC = (((double) f) - ((d2 - (d7 + d5)) / 2.0d)) * 0.5d * ((double) b().c(i, i2, i3));
            if (dC < 0.0d) {
                return;
            }
            if (dC > 1.0d) {
                dC = 1.0d;
            }
            nwVar.a(1.0f, 1.0f, 1.0f, (float) dC);
            double d8 = i;
            double d9 = uuVar.bs + d8 + d4;
            double d10 = d8 + uuVar.bv + d4;
            double d11 = d7 + uuVar.bt + d5 + 0.015625d;
            double d12 = i3;
            double d13 = uuVar.bu + d12 + d6;
            double d14 = d12 + uuVar.bx + d6;
            double d15 = f2;
            float f3 = (float) ((((d - d10) / 2.0d) / d15) + 0.5d);
            double d16 = (float) ((((d - d9) / 2.0d) / d15) + 0.5d);
            double d17 = (float) ((((d3 - d13) / 2.0d) / d15) + 0.5d);
            nwVar.a(d9, d11, d13, d16, d17);
            double d18 = (float) ((((d3 - d14) / 2.0d) / d15) + 0.5d);
            nwVar.a(d9, d11, d14, d16, d18);
            double d19 = f3;
            nwVar.a(d10, d11, d14, d19, d18);
            nwVar.a(d10, d11, d13, d19, d17);
        }
    }

    public static void a(eq eqVar, double d, double d2, double d3) {
        GL11.glDisable(3553);
        nw nwVar = nw.a;
        GL11.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);
        nwVar.b();
        nwVar.b(d, d2, d3);
        nwVar.b(0.0f, 0.0f, -1.0f);
        nwVar.a(eqVar.a, eqVar.e, eqVar.c);
        nwVar.a(eqVar.d, eqVar.e, eqVar.c);
        nwVar.a(eqVar.d, eqVar.b, eqVar.c);
        nwVar.a(eqVar.a, eqVar.b, eqVar.c);
        nwVar.b(0.0f, 0.0f, 1.0f);
        nwVar.a(eqVar.a, eqVar.b, eqVar.f);
        nwVar.a(eqVar.d, eqVar.b, eqVar.f);
        nwVar.a(eqVar.d, eqVar.e, eqVar.f);
        nwVar.a(eqVar.a, eqVar.e, eqVar.f);
        nwVar.b(0.0f, -1.0f, 0.0f);
        nwVar.a(eqVar.a, eqVar.b, eqVar.c);
        nwVar.a(eqVar.d, eqVar.b, eqVar.c);
        nwVar.a(eqVar.d, eqVar.b, eqVar.f);
        nwVar.a(eqVar.a, eqVar.b, eqVar.f);
        nwVar.b(0.0f, 1.0f, 0.0f);
        nwVar.a(eqVar.a, eqVar.e, eqVar.f);
        nwVar.a(eqVar.d, eqVar.e, eqVar.f);
        nwVar.a(eqVar.d, eqVar.e, eqVar.c);
        nwVar.a(eqVar.a, eqVar.e, eqVar.c);
        nwVar.b(-1.0f, 0.0f, 0.0f);
        nwVar.a(eqVar.a, eqVar.b, eqVar.f);
        nwVar.a(eqVar.a, eqVar.e, eqVar.f);
        nwVar.a(eqVar.a, eqVar.e, eqVar.c);
        nwVar.a(eqVar.a, eqVar.b, eqVar.c);
        nwVar.b(1.0f, 0.0f, 0.0f);
        nwVar.a(eqVar.d, eqVar.b, eqVar.c);
        nwVar.a(eqVar.d, eqVar.e, eqVar.c);
        nwVar.a(eqVar.d, eqVar.e, eqVar.f);
        nwVar.a(eqVar.d, eqVar.b, eqVar.f);
        nwVar.b(0.0d, 0.0d, 0.0d);
        nwVar.a();
        GL11.glEnable(3553);
    }

    public static void a(eq eqVar) {
        nw nwVar = nw.a;
        nwVar.b();
        nwVar.a(eqVar.a, eqVar.e, eqVar.c);
        nwVar.a(eqVar.d, eqVar.e, eqVar.c);
        nwVar.a(eqVar.d, eqVar.b, eqVar.c);
        nwVar.a(eqVar.a, eqVar.b, eqVar.c);
        nwVar.a(eqVar.a, eqVar.b, eqVar.f);
        nwVar.a(eqVar.d, eqVar.b, eqVar.f);
        nwVar.a(eqVar.d, eqVar.e, eqVar.f);
        nwVar.a(eqVar.a, eqVar.e, eqVar.f);
        nwVar.a(eqVar.a, eqVar.b, eqVar.c);
        nwVar.a(eqVar.d, eqVar.b, eqVar.c);
        nwVar.a(eqVar.d, eqVar.b, eqVar.f);
        nwVar.a(eqVar.a, eqVar.b, eqVar.f);
        nwVar.a(eqVar.a, eqVar.e, eqVar.f);
        nwVar.a(eqVar.d, eqVar.e, eqVar.f);
        nwVar.a(eqVar.d, eqVar.e, eqVar.c);
        nwVar.a(eqVar.a, eqVar.e, eqVar.c);
        nwVar.a(eqVar.a, eqVar.b, eqVar.f);
        nwVar.a(eqVar.a, eqVar.e, eqVar.f);
        nwVar.a(eqVar.a, eqVar.e, eqVar.c);
        nwVar.a(eqVar.a, eqVar.b, eqVar.c);
        nwVar.a(eqVar.d, eqVar.b, eqVar.c);
        nwVar.a(eqVar.d, eqVar.e, eqVar.c);
        nwVar.a(eqVar.d, eqVar.e, eqVar.f);
        nwVar.a(eqVar.d, eqVar.b, eqVar.f);
        nwVar.a();
    }

    public void a(th thVar) {
        this.b = thVar;
    }

    public void b(sn snVar, double d, double d2, double d3, float f, float f2) {
        if (this.b.k.j && this.c > 0.0f) {
            float fA = (float) ((1.0d - (this.b.a(snVar.aM, snVar.aN, snVar.aO) / 256.0d)) * ((double) this.d));
            if (fA > 0.0f) {
                c(snVar, d, d2, d3, fA, f2);
            }
        }
        if (snVar.ak()) {
            a(snVar, d, d2, d3, f2);
        }
    }

    public sj a() {
        return this.b.a();
    }
}
