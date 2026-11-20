package defpackage;

import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class ps {
    public float a;
    public float b;
    public float c;
    public float d;
    public float e;
    public float f;
    private ib[] j;
    private tz[] k;
    private int l;
    private int m;
    private boolean n = false;
    private int o = 0;
    public boolean g = false;
    public boolean h = true;
    public boolean i = false;

    public ps(int i, int i2) {
        this.l = i;
        this.m = i2;
    }

    public void a(float f, float f2, float f3, int i, int i2, int i3) {
        a(f, f2, f3, i, i2, i3, 0.0f);
    }

    public void a(float f, float f2, float f3, int i, int i2, int i3, float f4) {
        this.j = new ib[8];
        this.k = new tz[6];
        float f5 = f - f4;
        float f6 = f2 - f4;
        float f7 = f3 - f4;
        float f8 = f + i + f4;
        float f9 = f2 + i2 + f4;
        float f10 = f3 + i3 + f4;
        if (this.g) {
            f5 = f8;
            f8 = f5;
        }
        ib ibVar = new ib(f5, f6, f7, 0.0f, 0.0f);
        float f11 = f8;
        ib ibVar2 = new ib(f11, f6, f7, 0.0f, 8.0f);
        ib ibVar3 = new ib(f11, f9, f7, 8.0f, 8.0f);
        float f12 = f5;
        ib ibVar4 = new ib(f12, f9, f7, 8.0f, 0.0f);
        ib ibVar5 = new ib(f12, f6, f10, 0.0f, 0.0f);
        float f13 = f8;
        ib ibVar6 = new ib(f13, f6, f10, 0.0f, 8.0f);
        ib ibVar7 = new ib(f13, f9, f10, 8.0f, 8.0f);
        ib ibVar8 = new ib(f5, f9, f10, 8.0f, 0.0f);
        ib[] ibVarArr = this.j;
        ibVarArr[0] = ibVar;
        ibVarArr[1] = ibVar2;
        ibVarArr[2] = ibVar3;
        ibVarArr[3] = ibVar4;
        ibVarArr[4] = ibVar5;
        ibVarArr[5] = ibVar6;
        ibVarArr[6] = ibVar7;
        ibVarArr[7] = ibVar8;
        tz[] tzVarArr = this.k;
        ib[] ibVarArr2 = {ibVar6, ibVar2, ibVar3, ibVar7};
        int i4 = this.l;
        int i5 = this.m;
        tzVarArr[0] = new tz(ibVarArr2, i4 + i3 + i, i5 + i3, i4 + i3 + i + i3, i5 + i3 + i2);
        tz[] tzVarArr2 = this.k;
        ib[] ibVarArr3 = {ibVar, ibVar5, ibVar8, ibVar4};
        int i6 = this.l;
        int i7 = this.m;
        tzVarArr2[1] = new tz(ibVarArr3, i6 + 0, i7 + i3, i6 + i3, i7 + i3 + i2);
        tz[] tzVarArr3 = this.k;
        int i8 = this.l;
        int i9 = this.m;
        tzVarArr3[2] = new tz(new ib[]{ibVar6, ibVar5, ibVar, ibVar2}, i8 + i3, i9 + 0, i8 + i3 + i, i9 + i3);
        tz[] tzVarArr4 = this.k;
        int i10 = this.l;
        int i11 = this.m;
        tzVarArr4[3] = new tz(new ib[]{ibVar3, ibVar4, ibVar8, ibVar7}, i10 + i3 + i, i11 + 0, i10 + i3 + i + i, i11 + i3);
        tz[] tzVarArr5 = this.k;
        int i12 = this.l;
        int i13 = this.m;
        tzVarArr5[4] = new tz(new ib[]{ibVar2, ibVar, ibVar4, ibVar3}, i12 + i3, i13 + i3, i12 + i3 + i, i13 + i3 + i2);
        tz[] tzVarArr6 = this.k;
        int i14 = this.l;
        int i15 = this.m;
        tzVarArr6[5] = new tz(new ib[]{ibVar5, ibVar6, ibVar7, ibVar8}, i14 + i3 + i + i3, i15 + i3, i14 + i3 + i + i3 + i, i15 + i3 + i2);
        if (!this.g) {
            return;
        }
        int i16 = 0;
        while (true) {
            tz[] tzVarArr7 = this.k;
            if (i16 >= tzVarArr7.length) {
                return;
            }
            tzVarArr7[i16].a();
            i16++;
        }
    }

    public void a(float f, float f2, float f3) {
        this.a = f;
        this.b = f2;
        this.c = f3;
    }

    public void a(float f) {
        if (!this.i && this.h) {
            if (!this.n) {
                d(f);
            }
            if (this.d != 0.0f || this.e != 0.0f || this.f != 0.0f) {
                GL11.glPushMatrix();
                GL11.glTranslatef(this.a * f, this.b * f, this.c * f);
                float f2 = this.f;
                if (f2 != 0.0f) {
                    GL11.glRotatef(f2 * 57.295776f, 0.0f, 0.0f, 1.0f);
                }
                float f3 = this.e;
                if (f3 != 0.0f) {
                    GL11.glRotatef(f3 * 57.295776f, 0.0f, 1.0f, 0.0f);
                }
                float f4 = this.d;
                if (f4 != 0.0f) {
                    GL11.glRotatef(f4 * 57.295776f, 1.0f, 0.0f, 0.0f);
                }
                GL11.glCallList(this.o);
                GL11.glPopMatrix();
                return;
            }
            float f5 = this.a;
            if (f5 != 0.0f || this.b != 0.0f || this.c != 0.0f) {
                GL11.glTranslatef(f5 * f, this.b * f, this.c * f);
                GL11.glCallList(this.o);
                GL11.glTranslatef((-this.a) * f, (-this.b) * f, (-this.c) * f);
                return;
            }
            GL11.glCallList(this.o);
        }
    }

    public void b(float f) {
        if (!this.i && this.h) {
            if (!this.n) {
                d(f);
            }
            GL11.glPushMatrix();
            GL11.glTranslatef(this.a * f, this.b * f, this.c * f);
            float f2 = this.e;
            if (f2 != 0.0f) {
                GL11.glRotatef(f2 * 57.295776f, 0.0f, 1.0f, 0.0f);
            }
            float f3 = this.d;
            if (f3 != 0.0f) {
                GL11.glRotatef(f3 * 57.295776f, 1.0f, 0.0f, 0.0f);
            }
            float f4 = this.f;
            if (f4 != 0.0f) {
                GL11.glRotatef(f4 * 57.295776f, 0.0f, 0.0f, 1.0f);
            }
            GL11.glCallList(this.o);
            GL11.glPopMatrix();
        }
    }

    public void c(float f) {
        if (!this.i && this.h) {
            if (!this.n) {
                d(f);
            }
            if (this.d != 0.0f || this.e != 0.0f || this.f != 0.0f) {
                GL11.glTranslatef(this.a * f, this.b * f, this.c * f);
                float f2 = this.f;
                if (f2 != 0.0f) {
                    GL11.glRotatef(f2 * 57.295776f, 0.0f, 0.0f, 1.0f);
                }
                float f3 = this.e;
                if (f3 != 0.0f) {
                    GL11.glRotatef(f3 * 57.295776f, 0.0f, 1.0f, 0.0f);
                }
                float f4 = this.d;
                if (f4 != 0.0f) {
                    GL11.glRotatef(f4 * 57.295776f, 1.0f, 0.0f, 0.0f);
                    return;
                }
                return;
            }
            float f5 = this.a;
            if (f5 == 0.0f && this.b == 0.0f && this.c == 0.0f) {
                return;
            }
            GL11.glTranslatef(f5 * f, this.b * f, this.c * f);
        }
    }

    private void d(float f) {
        int iA = ge.a(1);
        this.o = iA;
        GL11.glNewList(iA, 4864);
        nw nwVar = nw.a;
        int i = 0;
        while (true) {
            tz[] tzVarArr = this.k;
            if (i < tzVarArr.length) {
                tzVarArr[i].a(nwVar, f);
                i++;
            } else {
                GL11.glEndList();
                this.n = true;
                return;
            }
        }
    }
}
