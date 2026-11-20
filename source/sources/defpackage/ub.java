package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class ub {
    protected float k = 0.0f;

    protected void a(int i, int i2, int i3, int i4) {
        int i5;
        if (i2 < i) {
            i5 = i2;
        } else {
            i5 = i;
            i = i2;
        }
        a(i5, i3, i + 1, i3 + 1, i4);
    }

    protected void b(int i, int i2, int i3, int i4) {
        int i5;
        if (i3 < i2) {
            i5 = i2;
            i2 = i3;
        } else {
            i5 = i3;
        }
        a(i, i2 + 1, i + 1, i5, i4);
    }

    protected void a(int i, int i2, int i3, int i4, int i5) {
        int i6 = i;
        int i7 = i3;
        int i8 = i2;
        int i9 = i4;
        if (i6 < i7) {
            i7 = i6;
            i6 = i7;
        }
        if (i8 >= i9) {
            i9 = i8;
            i8 = i9;
        }
        nw nwVar = nw.a;
        GL11.glEnable(3042);
        GL11.glDisable(3553);
        GL11.glBlendFunc(770, 771);
        GL11.glColor4f(((i5 >> 16) & 255) / 255.0f, ((i5 >> 8) & 255) / 255.0f, (i5 & 255) / 255.0f, ((i5 >> 24) & 255) / 255.0f);
        nwVar.b();
        double d = i6;
        double d2 = i8;
        nwVar.a(d, d2, 0.0d);
        double d3 = i7;
        nwVar.a(d3, d2, 0.0d);
        double d4 = i9;
        nwVar.a(d3, d4, 0.0d);
        nwVar.a(d, d4, 0.0d);
        nwVar.a();
        GL11.glEnable(3553);
        GL11.glDisable(3042);
    }

    protected void a(int i, int i2, int i3, int i4, int i5, int i6) {
        GL11.glDisable(3553);
        GL11.glEnable(3042);
        GL11.glDisable(3008);
        GL11.glBlendFunc(770, 771);
        GL11.glShadeModel(7425);
        nw nwVar = nw.a;
        nwVar.b();
        nwVar.a(((i5 >> 16) & 255) / 255.0f, ((i5 >> 8) & 255) / 255.0f, (i5 & 255) / 255.0f, ((i5 >> 24) & 255) / 255.0f);
        double d = i3;
        double d2 = i2;
        nwVar.a(d, d2, 0.0d);
        double d3 = i;
        nwVar.a(d3, d2, 0.0d);
        nwVar.a(((i6 >> 16) & 255) / 255.0f, ((i6 >> 8) & 255) / 255.0f, (i6 & 255) / 255.0f, ((i6 >> 24) & 255) / 255.0f);
        double d4 = i4;
        nwVar.a(d3, d4, 0.0d);
        nwVar.a(d, d4, 0.0d);
        nwVar.a();
        GL11.glShadeModel(7424);
        GL11.glDisable(3042);
        GL11.glEnable(3008);
        GL11.glEnable(3553);
    }

    public void a(sj sjVar, String str, int i, int i2, int i3) {
        sjVar.a(str, i - (sjVar.a(str) / 2), i2, i3);
    }

    public void b(sj sjVar, String str, int i, int i2, int i3) {
        sjVar.a(str, i, i2, i3);
    }

    public void b(int i, int i2, int i3, int i4, int i5, int i6) {
        nw nwVar = nw.a;
        nwVar.b();
        double d = i + 0;
        double d2 = i2 + i6;
        double d3 = (i3 + 0) * 0.00390625f;
        double d4 = (i4 + i6) * 0.00390625f;
        nwVar.a(d, d2, this.k, d3, d4);
        double d5 = i + i5;
        double d6 = (i3 + i5) * 0.00390625f;
        nwVar.a(d5, d2, this.k, d6, d4);
        double d7 = i2 + 0;
        double d8 = (i4 + 0) * 0.00390625f;
        nwVar.a(d5, d7, this.k, d6, d8);
        nwVar.a(d, d7, this.k, d3, d8);
        nwVar.a();
    }
}
