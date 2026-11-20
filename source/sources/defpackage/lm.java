package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class lm {
    public static boolean a;
    public byte[] b;
    public boolean c;
    public fd d;
    public wi e;
    public wi f;
    public wi g;
    public byte[] h;
    public int i;
    public final int j;
    public final int k;
    public Map l;
    public List[] m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public long r;

    public void a() {
    }

    public void d() {
    }

    public boolean h() {
        return false;
    }

    public lm(fd fdVar, int i, int i2) {
        this.l = new HashMap();
        this.m = new List[8];
        int i3 = 0;
        this.n = false;
        this.o = false;
        this.q = false;
        this.r = 0L;
        this.d = fdVar;
        this.j = i;
        this.k = i2;
        this.h = new byte[Keyboard.KEYBOARD_SIZE];
        while (true) {
            List[] listArr = this.m;
            if (i3 >= listArr.length) {
                return;
            }
            listArr[i3] = new ArrayList();
            i3++;
        }
    }

    public lm(fd fdVar, byte[] bArr, int i, int i2) {
        this(fdVar, i, i2);
        this.b = bArr;
        this.e = new wi(bArr.length);
        this.f = new wi(bArr.length);
        this.g = new wi(bArr.length);
    }

    public boolean a(int i, int i2) {
        return i == this.j && i2 == this.k;
    }

    public int b(int i, int i2) {
        return this.h[i | (i2 << 4)] & 255;
    }

    public void b() {
        int i = 127;
        for (int i2 = 0; i2 < 16; i2++) {
            for (int i3 = 0; i3 < 16; i3++) {
                int i4 = (i2 << 11) | (i3 << 7);
                int i5 = 127;
                while (i5 > 0 && uu.q[this.b[(i4 + i5) - 1] & 255] == 0) {
                    i5--;
                }
                this.h[(i3 << 4) | i2] = (byte) i5;
                if (i5 < i) {
                    i = i5;
                }
            }
        }
        this.i = i;
        this.o = true;
    }

    public void c() {
        int i = 127;
        for (int i2 = 0; i2 < 16; i2++) {
            for (int i3 = 0; i3 < 16; i3++) {
                int i4 = (i2 << 11) | (i3 << 7);
                int i5 = 127;
                while (i5 > 0 && uu.q[this.b[(i4 + i5) - 1] & 255] == 0) {
                    i5--;
                }
                this.h[(i3 << 4) | i2] = (byte) i5;
                if (i5 < i) {
                    i = i5;
                }
                if (!this.d.t.e) {
                    int i6 = 15;
                    int i7 = 127;
                    do {
                        i6 -= uu.q[this.b[i4 + i7] & 255];
                        if (i6 > 0) {
                            this.f.a(i2, i7, i3, i6);
                        }
                        i7--;
                        if (i7 <= 0) {
                            break;
                        }
                    } while (i6 > 0);
                }
            }
        }
        this.i = i;
        for (int i8 = 0; i8 < 16; i8++) {
            for (int i9 = 0; i9 < 16; i9++) {
                c(i8, i9);
            }
        }
        this.o = true;
    }

    private void c(int i, int i2) {
        int iB = b(i, i2);
        int i3 = (this.j * 16) + i;
        int i4 = (this.k * 16) + i2;
        f(i3 - 1, i4, iB);
        f(i3 + 1, i4, iB);
        f(i3, i4 - 1, iB);
        f(i3, i4 + 1, iB);
    }

    private void f(int i, int i2, int i3) {
        int iD = this.d.d(i, i2);
        if (iD > i3) {
            this.d.a(eb.Sky, i, i3, i2, i, iD, i2);
            this.o = true;
        } else if (iD < i3) {
            this.d.a(eb.Sky, i, iD, i2, i, i3, i2);
            this.o = true;
        }
    }

    private void g(int i, int i2, int i3) {
        int i4 = (i3 << 4) | i;
        int i5 = this.h[i4] & 255;
        int i6 = i2;
        if (i6 <= i5) {
            i6 = i5;
        }
        int i7 = (i << 11) | (i3 << 7);
        int i8 = i6;
        while (i8 > 0 && uu.q[this.b[(i7 + i8) - 1] & 255] == 0) {
            i8--;
        }
        if (i8 == i5) {
            return;
        }
        this.d.h(i, i3, i8, i5);
        this.h[i4] = (byte) i8;
        if (i8 < this.i) {
            this.i = i8;
        } else {
            int i9 = 127;
            for (int i10 = 0; i10 < 16; i10++) {
                for (int i11 = 0; i11 < 16; i11++) {
                    byte b = this.h[(i11 << 4) | i10];
                    if ((b & 255) < i9) {
                        i9 = b & 255;
                    }
                }
            }
            this.i = i9;
        }
        int i12 = (this.j * 16) + i;
        int i13 = (this.k * 16) + i3;
        if (i8 < i5) {
            for (int i14 = i8; i14 < i5; i14++) {
                this.f.a(i, i14, i3, 15);
            }
        } else {
            this.d.a(eb.Sky, i12, i5, i13, i12, i8, i13);
            while (i5 < i8) {
                this.f.a(i, i5, i3, 0);
                i5++;
            }
        }
        int i15 = i8;
        int i16 = 15;
        while (i15 > 0 && i16 > 0) {
            i15--;
            int i17 = uu.q[a(i, i15, i3)];
            if (i17 == 0) {
                i17 = 1;
            }
            i16 -= i17;
            if (i16 < 0) {
                i16 = 0;
            }
            this.f.a(i, i15, i3, i16);
        }
        int i18 = i15;
        while (i18 > 0 && uu.q[a(i, i18 - 1, i3)] == 0) {
            i18--;
        }
        if (i18 != i8) {
            this.d.a(eb.Sky, i12 - 1, i18, i13 - 1, i12 + 1, i8, i13 + 1);
        }
        this.o = true;
    }

    public int a(int i, int i2, int i3) {
        return this.b[(i << 11) | (i3 << 7) | i2] & 255;
    }

    public boolean a(int i, int i2, int i3, int i4, int i5) {
        byte b = (byte) i4;
        int i6 = this.h[(i3 << 4) | i] & 255;
        int i7 = (i << 11) | (i3 << 7) | i2;
        int i8 = this.b[i7] & 255;
        if (i8 == i4 && this.e.a(i, i2, i3) == i5) {
            return false;
        }
        int i9 = (this.j * 16) + i;
        int i10 = (this.k * 16) + i3;
        int i11 = b & 255;
        this.b[i7] = (byte) i11;
        if (i8 != 0 && !this.d.B) {
            uu.m[i8].b(this.d, i9, i2, i10);
        }
        this.e.a(i, i2, i3, i5);
        if (!this.d.t.e) {
            if (uu.q[i11] != 0) {
                if (i2 >= i6) {
                    g(i, i2 + 1, i3);
                }
            } else if (i2 == i6 - 1) {
                g(i, i2, i3);
            }
            this.d.a(eb.Sky, i9, i2, i10, i9, i2, i10);
        }
        this.d.a(eb.Block, i9, i2, i10, i9, i2, i10);
        c(i, i3);
        this.e.a(i, i2, i3, i5);
        if (i4 != 0) {
            uu.m[i4].c(this.d, i9, i2, i10);
        }
        this.o = true;
        return true;
    }

    public boolean a(int i, int i2, int i3, int i4) {
        byte b = (byte) i4;
        int i5 = this.h[(i3 << 4) | i] & 255;
        byte[] bArr = this.b;
        int i6 = (i << 11) | (i3 << 7) | i2;
        int i7 = bArr[i6] & 255;
        if (i7 == i4) {
            return false;
        }
        int i8 = (this.j * 16) + i;
        int i9 = (this.k * 16) + i3;
        int i10 = b & 255;
        bArr[i6] = (byte) i10;
        if (i7 != 0) {
            uu.m[i7].b(this.d, i8, i2, i9);
        }
        this.e.a(i, i2, i3, 0);
        if (uu.q[i10] != 0) {
            if (i2 >= i5) {
                g(i, i2 + 1, i3);
            }
        } else if (i2 == i5 - 1) {
            g(i, i2, i3);
        }
        this.d.a(eb.Sky, i8, i2, i9, i8, i2, i9);
        this.d.a(eb.Block, i8, i2, i9, i8, i2, i9);
        c(i, i3);
        if (i4 != 0 && !this.d.B) {
            uu.m[i4].c(this.d, i8, i2, i9);
        }
        this.o = true;
        return true;
    }

    public int b(int i, int i2, int i3) {
        return this.e.a(i, i2, i3);
    }

    public void b(int i, int i2, int i3, int i4) {
        this.o = true;
        this.e.a(i, i2, i3, i4);
    }

    public int a(eb ebVar, int i, int i2, int i3) {
        if (ebVar == eb.Sky) {
            return this.f.a(i, i2, i3);
        }
        if (ebVar == eb.Block) {
            return this.g.a(i, i2, i3);
        }
        return 0;
    }

    public void a(eb ebVar, int i, int i2, int i3, int i4) {
        this.o = true;
        if (ebVar == eb.Sky) {
            this.f.a(i, i2, i3, i4);
        } else if (ebVar == eb.Block) {
            this.g.a(i, i2, i3, i4);
        }
    }

    public int c(int i, int i2, int i3, int i4) {
        int iA = this.f.a(i, i2, i3);
        if (iA > 0) {
            a = true;
        }
        int i5 = iA - i4;
        int iA2 = this.g.a(i, i2, i3);
        return iA2 > i5 ? iA2 : i5;
    }

    public void a(sn snVar) {
        this.q = true;
        int iB = in.b(snVar.aM / 16.0d);
        int iB2 = in.b(snVar.aO / 16.0d);
        if (iB != this.j || iB2 != this.k) {
            System.out.println("Wrong location! " + snVar);
            Thread.dumpStack();
        }
        int iB3 = in.b(snVar.aN / 16.0d);
        if (iB3 < 0) {
            iB3 = 0;
        }
        List[] listArr = this.m;
        if (iB3 >= listArr.length) {
            iB3 = listArr.length - 1;
        }
        snVar.bF = true;
        snVar.bG = this.j;
        snVar.bH = iB3;
        snVar.bI = this.k;
        this.m[iB3].add(snVar);
    }

    public void b(sn snVar) {
        a(snVar, snVar.bH);
    }

    public void a(sn snVar, int i) {
        if (i < 0) {
            i = 0;
        }
        List[] listArr = this.m;
        if (i >= listArr.length) {
            i = listArr.length - 1;
        }
        listArr[i].remove(snVar);
    }

    public boolean c(int i, int i2, int i3) {
        return i2 >= (this.h[i | (i3 << 4)] & 255);
    }

    public ow d(int i, int i2, int i3) {
        wf wfVar = new wf(i, i2, i3);
        ow owVar = (ow) this.l.get(wfVar);
        if (owVar == null) {
            int iA = a(i, i2, i3);
            if (!uu.p[iA]) {
                return null;
            }
            ((rw) uu.m[iA]).c(this.d, (this.j * 16) + i, i2, (this.k * 16) + i3);
            owVar = (ow) this.l.get(wfVar);
        }
        if (owVar == null || !owVar.g()) {
            return owVar;
        }
        this.l.remove(wfVar);
        return null;
    }

    public void a(ow owVar) {
        a(owVar.e - (this.j * 16), owVar.f, owVar.g - (this.k * 16), owVar);
        if (this.c) {
            this.d.c.add(owVar);
        }
    }

    public void a(int i, int i2, int i3, ow owVar) {
        wf wfVar = new wf(i, i2, i3);
        owVar.d = this.d;
        owVar.e = (this.j * 16) + i;
        owVar.f = i2;
        owVar.g = (this.k * 16) + i3;
        if (a(i, i2, i3) == 0 || !(uu.m[a(i, i2, i3)] instanceof rw)) {
            System.out.println("Attempted to place a tile entity where there was no entity tile!");
        } else {
            owVar.j();
            this.l.put(wfVar, owVar);
        }
    }

    public void e(int i, int i2, int i3) {
        ow owVar;
        wf wfVar = new wf(i, i2, i3);
        if (!this.c || (owVar = (ow) this.l.remove(wfVar)) == null) {
            return;
        }
        owVar.i();
    }

    public void e() {
        this.c = true;
        this.d.a(this.l.values());
        int i = 0;
        while (true) {
            List[] listArr = this.m;
            if (i >= listArr.length) {
                return;
            }
            this.d.a(listArr[i]);
            i++;
        }
    }

    public void f() {
        int i = 0;
        this.c = false;
        Iterator it = this.l.values().iterator();
        while (it.hasNext()) {
            ((ow) it.next()).i();
        }
        while (true) {
            List[] listArr = this.m;
            if (i >= listArr.length) {
                return;
            }
            this.d.b(listArr[i]);
            i++;
        }
    }

    public void g() {
        this.o = true;
    }

    public void a(sn snVar, eq eqVar, List list) {
        int iB = in.b((eqVar.b - 2.0d) / 16.0d);
        int iB2 = in.b((eqVar.e + 2.0d) / 16.0d);
        if (iB < 0) {
            iB = 0;
        }
        List[] listArr = this.m;
        if (iB2 >= listArr.length) {
            iB2 = listArr.length - 1;
        }
        while (iB <= iB2) {
            List list2 = this.m[iB];
            for (int i = 0; i < list2.size(); i++) {
                sn snVar2 = (sn) list2.get(i);
                if (snVar2 != snVar && snVar2.aW.a(eqVar)) {
                    list.add(snVar2);
                }
            }
            iB++;
        }
    }

    public void a(Class cls, eq eqVar, List list) {
        int iB = in.b((eqVar.b - 2.0d) / 16.0d);
        int iB2 = in.b((eqVar.e + 2.0d) / 16.0d);
        if (iB < 0) {
            iB = 0;
        }
        List[] listArr = this.m;
        if (iB2 >= listArr.length) {
            iB2 = listArr.length - 1;
        }
        while (iB <= iB2) {
            List list2 = this.m[iB];
            for (int i = 0; i < list2.size(); i++) {
                sn snVar = (sn) list2.get(i);
                if (cls.isAssignableFrom(snVar.getClass()) && snVar.aW.a(eqVar)) {
                    list.add(snVar);
                }
            }
            iB++;
        }
    }

    public boolean a(boolean z) {
        if (this.p) {
            return false;
        }
        if (z) {
            if (this.q && this.d.t() != this.r) {
                return true;
            }
        } else if (this.q && this.d.t() >= this.r + 600) {
            return true;
        }
        return this.o;
    }

    public int a(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        for (int i8 = i; i8 < i4; i8++) {
            for (int i9 = i3; i9 < i6; i9++) {
                int i10 = i5 - i2;
                System.arraycopy(bArr, i7, this.b, (i8 << 11) | (i9 << 7) | i2, i10);
                i7 += i10;
            }
        }
        b();
        for (int i11 = i; i11 < i4; i11++) {
            for (int i12 = i3; i12 < i6; i12++) {
                int i13 = (i5 - i2) / 2;
                System.arraycopy(bArr, i7, this.e.a, (((i11 << 11) | (i12 << 7)) | i2) >> 1, i13);
                i7 += i13;
            }
        }
        for (int i14 = i; i14 < i4; i14++) {
            for (int i15 = i3; i15 < i6; i15++) {
                int i16 = (i5 - i2) / 2;
                System.arraycopy(bArr, i7, this.g.a, (((i14 << 11) | (i15 << 7)) | i2) >> 1, i16);
                i7 += i16;
            }
        }
        while (i < i4) {
            for (int i17 = i3; i17 < i6; i17++) {
                int i18 = (i5 - i2) / 2;
                System.arraycopy(bArr, i7, this.f.a, (((i << 11) | (i17 << 7)) | i2) >> 1, i18);
                i7 += i18;
            }
            i++;
        }
        return i7;
    }

    public Random a(long j) {
        long jS = this.d.s();
        int i = this.j;
        long j2 = jS + ((long) (i * i * 4987142)) + ((long) (i * 5947611));
        int i2 = this.k;
        return new Random(j ^ ((j2 + (((long) (i2 * i2)) * 4392871)) + ((long) (i2 * 389711))));
    }

    public void i() {
        vi.a(this.b);
    }
}
