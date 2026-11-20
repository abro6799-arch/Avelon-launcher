package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import org.lwjgl.opengl.ARBVertexBufferObject;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GLContext;

/* JADX INFO: loaded from: classes.dex */
public class nw {
    public static final nw a = new nw(2097152);
    private static boolean b = true;
    private static boolean c;
    private int B;
    private ByteBuffer d;
    private IntBuffer e;
    private FloatBuffer f;
    private int[] g;
    private double i;
    private double j;
    private int k;
    private int r;
    private double s;
    private double t;
    private double u;
    private int v;
    private boolean x;
    private IntBuffer y;
    private int h = 0;
    private boolean l = false;
    private boolean m = false;
    private boolean n = false;
    private int o = 0;
    private int p = 0;
    private boolean q = false;
    private boolean w = false;
    private int z = 0;
    private int A = 10;

    private nw(int i) {
        boolean z = false;
        this.x = false;
        this.B = i;
        ByteBuffer byteBufferC = ge.c(i * 4);
        this.d = byteBufferC;
        this.e = byteBufferC.asIntBuffer();
        this.f = this.d.asFloatBuffer();
        this.g = new int[i];
        if (c && GLContext.getCapabilities().GL_ARB_vertex_buffer_object) {
            z = true;
        }
        this.x = z;
        if (z) {
            IntBuffer intBufferD = ge.d(this.A);
            this.y = intBufferD;
            ARBVertexBufferObject.glGenBuffersARB(intBufferD);
        }
    }

    public void a() {
        if (!this.w) {
            throw new IllegalStateException("Not tesselating!");
        }
        this.w = false;
        if (this.h > 0) {
            this.e.clear();
            this.e.put(this.g, 0, this.o);
            this.d.position(0);
            this.d.limit(this.o * 4);
            if (this.x) {
                int i = (this.z + 1) % this.A;
                this.z = i;
                ARBVertexBufferObject.glBindBufferARB(34962, this.y.get(i));
                ARBVertexBufferObject.glBufferDataARB(34962, this.d, 35040);
            }
            if (this.m) {
                if (this.x) {
                    GL11.glTexCoordPointer(2, 5126, 32, 12L);
                } else {
                    this.f.position(3);
                    GL11.glTexCoordPointer(2, 32, this.f);
                }
                GL11.glEnableClientState(32888);
            }
            if (this.l) {
                if (this.x) {
                    GL11.glColorPointer(4, 5121, 32, 20L);
                } else {
                    this.d.position(20);
                    GL11.glColorPointer(4, true, 32, this.d);
                }
                GL11.glEnableClientState(32886);
            }
            if (this.n) {
                if (this.x) {
                    GL11.glNormalPointer(5120, 32, 24L);
                } else {
                    this.d.position(24);
                    GL11.glNormalPointer(32, this.d);
                }
                GL11.glEnableClientState(32885);
            }
            if (this.x) {
                GL11.glVertexPointer(3, 5126, 32, 0L);
            } else {
                this.f.position(0);
                GL11.glVertexPointer(3, 32, this.f);
            }
            GL11.glEnableClientState(32884);
            int i2 = this.r;
            if (i2 == 7 && b) {
                GL11.glDrawArrays(4, 0, this.h);
            } else {
                GL11.glDrawArrays(i2, 0, this.h);
            }
            GL11.glDisableClientState(32884);
            if (this.m) {
                GL11.glDisableClientState(32888);
            }
            if (this.l) {
                GL11.glDisableClientState(32886);
            }
            if (this.n) {
                GL11.glDisableClientState(32885);
            }
        }
        d();
    }

    private void d() {
        this.h = 0;
        this.d.clear();
        this.o = 0;
        this.p = 0;
    }

    public void b() {
        a(7);
    }

    public void a(int i) {
        if (this.w) {
            throw new IllegalStateException("Already tesselating!");
        }
        this.w = true;
        d();
        this.r = i;
        this.n = false;
        this.l = false;
        this.m = false;
        this.q = false;
    }

    public void a(double d, double d2) {
        this.m = true;
        this.i = d;
        this.j = d2;
    }

    public void a(float f, float f2, float f3) {
        a((int) (f * 255.0f), (int) (f2 * 255.0f), (int) (f3 * 255.0f));
    }

    public void a(float f, float f2, float f3, float f4) {
        a((int) (f * 255.0f), (int) (f2 * 255.0f), (int) (f3 * 255.0f), (int) (f4 * 255.0f));
    }

    public void a(int i, int i2, int i3) {
        a(i, i2, i3, 255);
    }

    public void a(int i, int i2, int i3, int i4) {
        if (this.q) {
            return;
        }
        if (i > 255) {
            i = 255;
        }
        if (i2 > 255) {
            i2 = 255;
        }
        if (i3 > 255) {
            i3 = 255;
        }
        if (i4 > 255) {
            i4 = 255;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i3 < 0) {
            i3 = 0;
        }
        if (i4 < 0) {
            i4 = 0;
        }
        this.l = true;
        if (ByteOrder.nativeOrder() == ByteOrder.LITTLE_ENDIAN) {
            this.k = i | (i2 << 8) | (i3 << 16) | (i4 << 24);
            return;
        }
        this.k = (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    public void a(double d, double d2, double d3, double d4, double d5) {
        a(d4, d5);
        a(d, d2, d3);
    }

    public void a(double d, double d2, double d3) {
        int i = this.p + 1;
        this.p = i;
        if (this.r == 7 && b && i % 4 == 0) {
            for (int i2 = 0; i2 < 2; i2++) {
                int i3 = (3 - i2) * 8;
                if (this.m) {
                    int[] iArr = this.g;
                    int i4 = this.o;
                    iArr[i4 + 3] = iArr[(i4 - i3) + 3];
                    iArr[i4 + 4] = iArr[(i4 - i3) + 4];
                }
                if (this.l) {
                    int[] iArr2 = this.g;
                    int i5 = this.o;
                    iArr2[i5 + 5] = iArr2[(i5 - i3) + 5];
                }
                int[] iArr3 = this.g;
                int i6 = this.o;
                iArr3[i6 + 0] = iArr3[(i6 - i3) + 0];
                iArr3[i6 + 1] = iArr3[(i6 - i3) + 1];
                iArr3[i6 + 2] = iArr3[(i6 - i3) + 2];
                this.h++;
                this.o = i6 + 8;
            }
        }
        if (this.m) {
            this.g[this.o + 3] = Float.floatToRawIntBits((float) this.i);
            this.g[this.o + 4] = Float.floatToRawIntBits((float) this.j);
        }
        if (this.l) {
            this.g[this.o + 5] = this.k;
        }
        if (this.n) {
            this.g[this.o + 6] = this.v;
        }
        this.g[this.o + 0] = Float.floatToRawIntBits((float) (d + this.s));
        this.g[this.o + 1] = Float.floatToRawIntBits((float) (d2 + this.t));
        this.g[this.o + 2] = Float.floatToRawIntBits((float) (d3 + this.u));
        int i7 = this.o + 8;
        this.o = i7;
        int i8 = this.h + 1;
        this.h = i8;
        if (i8 % 4 != 0 || i7 < this.B - 32) {
            return;
        }
        a();
        this.w = true;
    }

    public void b(int i) {
        a((i >> 16) & 255, (i >> 8) & 255, i & 255);
    }

    public void a(int i, int i2) {
        a((i >> 16) & 255, (i >> 8) & 255, i & 255, i2);
    }

    public void c() {
        this.q = true;
    }

    public void b(float f, float f2, float f3) {
        if (!this.w) {
            System.out.println("But..");
        }
        this.n = true;
        this.v = ((byte) (f * 128.0f)) | (((byte) (f2 * 127.0f)) << 8) | (((byte) (f3 * 127.0f)) << 16);
    }

    public void b(double d, double d2, double d3) {
        this.s = d;
        this.t = d2;
        this.u = d3;
    }

    public void c(float f, float f2, float f3) {
        this.s += (double) f;
        this.t += (double) f2;
        this.u += (double) f3;
    }
}
