package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class tb extends bw {
    protected ko a;

    public tb() {
        this.c = 0.5f;
        this.a = new nq();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:21:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:24:0x0101  */
    /* JADX WARN: Code duplicated, block: B:26:0x011d  */
    /* JADX WARN: Code duplicated, block: B:27:0x012c  */
    /* JADX WARN: Code duplicated, block: B:29:0x0131  */
    /* JADX WARN: Code duplicated, block: B:31:0x0150  */
    @Override // defpackage.bw
    public void a(yl ylVar, double d, double d2, double d3, float f, float f2) {
        double d4;
        double d5;
        double d6;
        float fAtan2;
        float fAtan;
        float f3;
        float f4;
        tb tbVar;
        GL11.glPushMatrix();
        double d7 = f2;
        double d8 = ylVar.bl + ((ylVar.aM - ylVar.bl) * d7);
        double d9 = ylVar.bm + ((ylVar.aN - ylVar.bm) * d7);
        double d10 = ylVar.bn + ((ylVar.aO - ylVar.bn) * d7);
        bt btVarI = ylVar.i(d8, d9, d10);
        float f5 = ylVar.aV + ((ylVar.aT - ylVar.aV) * f2);
        if (btVarI != null) {
            bt btVarA = ylVar.a(d8, d9, d10, 0.30000001192092896d);
            bt btVarA2 = ylVar.a(d8, d9, d10, -0.30000001192092896d);
            bt btVar = btVarA == null ? btVarI : btVarA;
            if (btVarA2 == null) {
                btVarA2 = btVarI;
            }
            d4 = d + (btVarI.a - d8);
            d5 = d2 + (((btVar.b + btVarA2.b) / 2.0d) - d9);
            d6 = d3 + (btVarI.c - d10);
            bt btVarC = btVarA2.c(-btVar.a, -btVar.b, -btVar.c);
            if (btVarC.d() != 0.0d) {
                bt btVarC2 = btVarC.c();
                fAtan2 = (float) ((Math.atan2(btVarC2.c, btVarC2.a) * 180.0d) / 3.141592653589793d);
                fAtan = (float) (Math.atan(btVarC2.b) * 73.0d);
            }
            GL11.glTranslatef((float) d4, (float) d5, (float) d6);
            GL11.glRotatef(180.0f - fAtan2, 0.0f, 1.0f, 0.0f);
            GL11.glRotatef(-fAtan, 0.0f, 0.0f, 1.0f);
            f3 = ylVar.b - f2;
            f4 = ylVar.a - f2;
            if (f4 < 0.0f) {
                f4 = 0.0f;
            }
            if (f3 > 0.0f) {
                GL11.glRotatef((((in.a(f3) * f3) * f4) / 10.0f) * ylVar.c, 1.0f, 0.0f, 0.0f);
            }
            if (ylVar.d != 0) {
                tbVar = this;
                tbVar.a("/terrain.png");
                GL11.glScalef(0.75f, 0.75f, 0.75f);
                GL11.glTranslatef(0.0f, 0.3125f, 0.0f);
                GL11.glRotatef(90.0f, 0.0f, 1.0f, 0.0f);
                if (ylVar.d == 1) {
                    new cv().a(uu.av, 0, ylVar.a(f2));
                } else if (ylVar.d == 2) {
                    new cv().a(uu.aC, 0, ylVar.a(f2));
                }
                GL11.glRotatef(-90.0f, 0.0f, 1.0f, 0.0f);
                GL11.glTranslatef(0.0f, -0.3125f, 0.0f);
                GL11.glScalef(1.3333334f, 1.3333334f, 1.3333334f);
            } else {
                tbVar = this;
            }
            tbVar.a("/item/cart.png");
            GL11.glScalef(-1.0f, -1.0f, 1.0f);
            tbVar.a.a(0.0f, 0.0f, -0.1f, 0.0f, 0.0f, 0.0625f);
            GL11.glPopMatrix();
        }
        d4 = d;
        d5 = d2;
        d6 = d3;
        fAtan2 = f;
        fAtan = f5;
        GL11.glTranslatef((float) d4, (float) d5, (float) d6);
        GL11.glRotatef(180.0f - fAtan2, 0.0f, 1.0f, 0.0f);
        GL11.glRotatef(-fAtan, 0.0f, 0.0f, 1.0f);
        f3 = ylVar.b - f2;
        f4 = ylVar.a - f2;
        if (f4 < 0.0f) {
            f4 = 0.0f;
        }
        if (f3 > 0.0f) {
            GL11.glRotatef((((in.a(f3) * f3) * f4) / 10.0f) * ylVar.c, 1.0f, 0.0f, 0.0f);
        }
        if (ylVar.d != 0) {
            tbVar = this;
            tbVar.a("/terrain.png");
            GL11.glScalef(0.75f, 0.75f, 0.75f);
            GL11.glTranslatef(0.0f, 0.3125f, 0.0f);
            GL11.glRotatef(90.0f, 0.0f, 1.0f, 0.0f);
            if (ylVar.d == 1) {
                new cv().a(uu.av, 0, ylVar.a(f2));
            } else if (ylVar.d == 2) {
                new cv().a(uu.aC, 0, ylVar.a(f2));
            }
            GL11.glRotatef(-90.0f, 0.0f, 1.0f, 0.0f);
            GL11.glTranslatef(0.0f, -0.3125f, 0.0f);
            GL11.glScalef(1.3333334f, 1.3333334f, 1.3333334f);
        } else {
            tbVar = this;
        }
        tbVar.a("/item/cart.png");
        GL11.glScalef(-1.0f, -1.0f, 1.0f);
        tbVar.a.a(0.0f, 0.0f, -0.1f, 0.0f, 0.0f, 0.0625f);
        GL11.glPopMatrix();
    }
}
