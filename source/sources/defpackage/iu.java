package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class iu extends hm {
    public int b;
    public int c;
    public byte d;
    public byte e;
    public byte[] f;
    public int g;
    public List h;
    public List i;
    private Map j;

    public iu(String str) {
        super(str);
        this.f = new byte[16384];
        this.h = new ArrayList();
        this.j = new HashMap();
        this.i = new ArrayList();
    }

    @Override // defpackage.hm
    public void a(nu nuVar) {
        this.d = nuVar.c("dimension");
        this.b = nuVar.e("xCenter");
        this.c = nuVar.e("zCenter");
        byte bC = nuVar.c("scale");
        this.e = bC;
        if (bC < 0) {
            this.e = (byte) 0;
        }
        if (this.e > 4) {
            this.e = (byte) 4;
        }
        short sD = nuVar.d("width");
        short sD2 = nuVar.d("height");
        if (sD == 128 && sD2 == 128) {
            this.f = nuVar.j("colors");
            return;
        }
        byte[] bArrJ = nuVar.j("colors");
        this.f = new byte[16384];
        int i = (128 - sD) / 2;
        int i2 = (128 - sD2) / 2;
        for (int i3 = 0; i3 < sD2; i3++) {
            int i4 = i3 + i2;
            if (i4 >= 0 || i4 < 128) {
                for (int i5 = 0; i5 < sD; i5++) {
                    int i6 = i5 + i;
                    if (i6 >= 0 || i6 < 128) {
                        this.f[i6 + (i4 * 128)] = bArrJ[(i3 * sD) + i5];
                    }
                }
            }
        }
    }

    @Override // defpackage.hm
    public void b(nu nuVar) {
        nuVar.a("dimension", this.d);
        nuVar.a("xCenter", this.b);
        nuVar.a("zCenter", this.c);
        nuVar.a("scale", this.e);
        nuVar.a("width", (short) 128);
        nuVar.a("height", (short) 128);
        nuVar.a("colors", this.f);
    }

    public void a(gs gsVar, iz izVar) {
        if (!this.j.containsKey(gsVar)) {
            si siVar = new si(this, gsVar);
            this.j.put(gsVar, siVar);
            this.h.add(siVar);
        }
        this.i.clear();
        for (int i = 0; i < this.h.size(); i++) {
            si siVar2 = (si) this.h.get(i);
            if (siVar2.a.be || !siVar2.a.c.c(izVar)) {
                this.j.remove(siVar2.a);
                this.h.remove(siVar2);
            } else {
                float f = ((float) (siVar2.a.aM - ((double) this.b))) / (1 << this.e);
                float f2 = ((float) (siVar2.a.aO - ((double) this.c))) / (1 << this.e);
                float f3 = -64;
                if (f >= f3 && f2 >= f3) {
                    float f4 = 64;
                    if (f <= f4 && f2 <= f4) {
                        byte b = (byte) (((double) (f * 2.0f)) + 0.5d);
                        byte b2 = (byte) (((double) (f2 * 2.0f)) + 0.5d);
                        byte b3 = (byte) (((double) ((gsVar.aS * 16.0f) / 360.0f)) + 0.5d);
                        if (this.d < 0) {
                            int i2 = this.g / 10;
                            b3 = (byte) (((((i2 * i2) * 34187121) + (i2 * 121)) >> 15) & 15);
                        }
                        byte b4 = b3;
                        if (siVar2.a.m == this.d) {
                            this.i.add(new ax(this, (byte) 0, b, b2, b4));
                        }
                    }
                }
            }
        }
    }

    public void a(int i, int i2, int i3) {
        super.a();
        for (int i4 = 0; i4 < this.h.size(); i4++) {
            si siVar = (si) this.h.get(i4);
            if (siVar.b[i] < 0 || siVar.b[i] > i2) {
                siVar.b[i] = i2;
            }
            if (siVar.c[i] < 0 || siVar.c[i] < i3) {
                siVar.c[i] = i3;
            }
        }
    }

    public void a(byte[] bArr) {
        int i = 0;
        byte b = bArr[0];
        if (b == 0) {
            int i2 = bArr[1] & 255;
            int i3 = bArr[2] & 255;
            while (i < bArr.length - 3) {
                this.f[((i + i3) * 128) + i2] = bArr[i + 3];
                i++;
            }
            a();
            return;
        }
        if (b == 1) {
            this.i.clear();
            while (i < (bArr.length - 1) / 3) {
                int i4 = i * 3;
                byte b2 = bArr[i4 + 1];
                this.i.add(new ax(this, (byte) (b2 % 16), bArr[i4 + 2], bArr[i4 + 3], (byte) (b2 / 16)));
                i++;
            }
        }
    }
}
