package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import mcshim.awt.Color;
import mcshim.awt.Graphics;
import mcshim.awt.image.BufferedImage;
import mcshim.imageio.ImageIO;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class ji {
    public static boolean a;
    private kv i;
    private ik l;
    private BufferedImage m;
    private HashMap b = new HashMap();
    private HashMap c = new HashMap();
    private HashMap d = new HashMap();
    private IntBuffer e = ge.d(1);
    private ByteBuffer f = ge.c(1048576);
    private List g = new ArrayList();
    private Map h = new HashMap();
    private boolean j = false;
    private boolean k = false;

    private int a(int i, int i2) {
        return ((((((i & (-16777216)) >> 24) & 255) + ((((-16777216) & i2) >> 24) & 255)) >> 1) << 24) + (((i & 16711422) + (i2 & 16711422)) >> 1);
    }

    public ji(ik ikVar, kv kvVar) {
        BufferedImage bufferedImage = new BufferedImage(64, 64, 2);
        this.m = bufferedImage;
        this.l = ikVar;
        this.i = kvVar;
        Graphics graphics = bufferedImage.getGraphics();
        graphics.setColor(Color.WHITE);
        graphics.fillRect(0, 0, 64, 64);
        graphics.setColor(Color.BLACK);
        graphics.drawString("missingtex", 1, 10);
        graphics.dispose();
    }

    public int[] a(String str) {
        int[] iArrB;
        i iVar = this.l.a;
        int[] iArr = (int[]) this.c.get(str);
        if (iArr != null) {
            return iArr;
        }
        try {
            if (str.startsWith("##")) {
                iArrB = b(c(a(iVar.a(str.substring(2)))));
            } else if (str.startsWith("%clamp%")) {
                this.j = true;
                iArrB = b(a(iVar.a(str.substring(7))));
                this.j = false;
            } else if (str.startsWith("%blur%")) {
                this.k = true;
                iArrB = b(a(iVar.a(str.substring(6))));
                this.k = false;
            } else {
                InputStream inputStreamA = iVar.a(str);
                if (inputStreamA == null) {
                    iArrB = b(this.m);
                } else {
                    iArrB = b(a(inputStreamA));
                }
            }
            this.c.put(str, iArrB);
            return iArrB;
        } catch (IOException e) {
            e.printStackTrace();
            int[] iArrB2 = b(this.m);
            this.c.put(str, iArrB2);
            return iArrB2;
        }
    }

    private int[] b(BufferedImage bufferedImage) {
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        int[] iArr = new int[width * height];
        bufferedImage.getRGB(0, 0, width, height, iArr, 0, width);
        return iArr;
    }

    private int[] a(BufferedImage bufferedImage, int[] iArr) {
        int width = bufferedImage.getWidth();
        bufferedImage.getRGB(0, 0, width, bufferedImage.getHeight(), iArr, 0, width);
        return iArr;
    }

    public int b(String str) {
        i iVar = this.l.a;
        Integer num = (Integer) this.b.get(str);
        if (num != null) {
            return num.intValue();
        }
        try {
            this.e.clear();
            ge.a(this.e);
            int i = this.e.get(0);
            if (str.startsWith("##")) {
                a(c(a(iVar.a(str.substring(2)))), i);
            } else if (str.startsWith("%clamp%")) {
                this.j = true;
                a(a(iVar.a(str.substring(7))), i);
                this.j = false;
            } else if (str.startsWith("%blur%")) {
                this.k = true;
                a(a(iVar.a(str.substring(6))), i);
                this.k = false;
            } else {
                InputStream inputStreamA = iVar.a(str);
                if (inputStreamA == null) {
                    a(this.m, i);
                } else {
                    a(a(inputStreamA), i);
                }
            }
            this.b.put(str, Integer.valueOf(i));
            return i;
        } catch (IOException e) {
            e.printStackTrace();
            ge.a(this.e);
            int i2 = this.e.get(0);
            a(this.m, i2);
            this.b.put(str, Integer.valueOf(i2));
            return i2;
        }
    }

    private BufferedImage c(BufferedImage bufferedImage) {
        int width = bufferedImage.getWidth() / 16;
        BufferedImage bufferedImage2 = new BufferedImage(16, bufferedImage.getHeight() * width, 2);
        Graphics graphics = bufferedImage2.getGraphics();
        for (int i = 0; i < width; i++) {
            graphics.drawImage(bufferedImage, (-i) * 16, bufferedImage.getHeight() * i, null);
        }
        graphics.dispose();
        return bufferedImage2;
    }

    public int a(BufferedImage bufferedImage) {
        this.e.clear();
        ge.a(this.e);
        int i = this.e.get(0);
        a(bufferedImage, i);
        this.d.put(Integer.valueOf(i), bufferedImage);
        return i;
    }

    public void a(BufferedImage bufferedImage, int i) {
        GL11.glBindTexture(3553, i);
        if (a) {
            GL11.glTexParameteri(3553, 10241, 9986);
            GL11.glTexParameteri(3553, 10240, 9728);
        } else {
            GL11.glTexParameteri(3553, 10241, 9728);
            GL11.glTexParameteri(3553, 10240, 9728);
        }
        if (this.k) {
            GL11.glTexParameteri(3553, 10241, 9729);
            GL11.glTexParameteri(3553, 10240, 9729);
        }
        if (this.j) {
            GL11.glTexParameteri(3553, 10242, 10496);
            GL11.glTexParameteri(3553, 10243, 10496);
        } else {
            GL11.glTexParameteri(3553, 10242, 10497);
            GL11.glTexParameteri(3553, 10243, 10497);
        }
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        int i2 = width * height;
        int[] iArr = new int[i2];
        int i3 = i2 * 4;
        byte[] bArr = new byte[i3];
        bufferedImage.getRGB(0, 0, width, height, iArr, 0, width);
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = iArr[i5];
            int i7 = (i6 >> 24) & 255;
            int i8 = (i6 >> 16) & 255;
            int i9 = (i6 >> 8) & 255;
            int i10 = i6 & 255;
            kv kvVar = this.i;
            if (kvVar != null && kvVar.g) {
                int i11 = i8 * 30;
                int i12 = (((i9 * 59) + i11) + (i10 * 11)) / 100;
                i9 = ((i9 * 70) + i11) / 100;
                i10 = (i11 + (i10 * 70)) / 100;
                i8 = i12;
            }
            int i13 = i5 * 4;
            bArr[i13 + 0] = (byte) i8;
            bArr[i13 + 1] = (byte) i9;
            bArr[i13 + 2] = (byte) i10;
            bArr[i13 + 3] = (byte) i7;
        }
        this.f.clear();
        this.f.put(bArr);
        this.f.position(0).limit(i3);
        GL11.glTexImage2D(3553, 0, 6408, width, height, 0, 6408, 5121, this.f);
        if (a) {
            int i14 = 1;
            int i15 = 1;
            while (i15 <= 4) {
                int i16 = width >> (i15 - 1);
                int i17 = width >> i15;
                int i18 = height >> i15;
                int i19 = i4;
                while (i19 < i17) {
                    int i20 = i4;
                    while (i20 < i18) {
                        int i21 = i19 * 2;
                        int i22 = i21 + 0;
                        int i23 = i20 * 2;
                        int i24 = (i23 + 0) * i16;
                        int i25 = i21 + i14;
                        int i26 = (i23 + 1) * i16;
                        this.f.putInt(((i20 * i17) + i19) * 4, b(b(this.f.getInt((i22 + i24) * 4), this.f.getInt((i25 + i24) * 4)), b(this.f.getInt((i25 + i26) * 4), this.f.getInt((i22 + i26) * 4))));
                        i20++;
                        i14 = 1;
                    }
                    i19++;
                    i4 = 0;
                }
                GL11.glTexImage2D(3553, i15, 6408, i17, i18, 0, 6408, 5121, this.f);
                i15++;
                i4 = 0;
            }
        }
    }

    public void a(int[] iArr, int i, int i2, int i3) {
        GL11.glBindTexture(3553, i3);
        if (a) {
            GL11.glTexParameteri(3553, 10241, 9986);
            GL11.glTexParameteri(3553, 10240, 9728);
        } else {
            GL11.glTexParameteri(3553, 10241, 9728);
            GL11.glTexParameteri(3553, 10240, 9728);
        }
        if (this.k) {
            GL11.glTexParameteri(3553, 10241, 9729);
            GL11.glTexParameteri(3553, 10240, 9729);
        }
        if (this.j) {
            GL11.glTexParameteri(3553, 10242, 10496);
            GL11.glTexParameteri(3553, 10243, 10496);
        } else {
            GL11.glTexParameteri(3553, 10242, 10497);
            GL11.glTexParameteri(3553, 10243, 10497);
        }
        int i4 = i * i2 * 4;
        byte[] bArr = new byte[i4];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = iArr[i5];
            int i7 = (i6 >> 24) & 255;
            int i8 = (i6 >> 16) & 255;
            int i9 = (i6 >> 8) & 255;
            int i10 = i6 & 255;
            kv kvVar = this.i;
            if (kvVar != null && kvVar.g) {
                int i11 = i8 * 30;
                int i12 = (((i9 * 59) + i11) + (i10 * 11)) / 100;
                i9 = ((i9 * 70) + i11) / 100;
                i10 = (i11 + (i10 * 70)) / 100;
                i8 = i12;
            }
            int i13 = i5 * 4;
            bArr[i13 + 0] = (byte) i8;
            bArr[i13 + 1] = (byte) i9;
            bArr[i13 + 2] = (byte) i10;
            bArr[i13 + 3] = (byte) i7;
        }
        this.f.clear();
        this.f.put(bArr);
        this.f.position(0).limit(i4);
        GL11.glTexSubImage2D(3553, 0, 0, 0, i, i2, 6408, 5121, this.f);
    }

    public void a(int i) {
        this.d.remove(Integer.valueOf(i));
        this.e.clear();
        this.e.put(i);
        this.e.flip();
        GL11.glDeleteTextures(this.e);
    }

    public int a(String str, String str2) {
        ek ekVar = (ek) this.h.get(str);
        if (ekVar != null && ekVar.a != null && !ekVar.d) {
            if (ekVar.c < 0) {
                ekVar.c = a(ekVar.a);
            } else {
                a(ekVar.a, ekVar.c);
            }
            ekVar.d = true;
        }
        if (ekVar != null && ekVar.c >= 0) {
            return ekVar.c;
        }
        if (str2 == null) {
            return -1;
        }
        return b(str2);
    }

    public ek a(String str, nf nfVar) {
        ek ekVar = (ek) this.h.get(str);
        if (ekVar == null) {
            this.h.put(str, new ek(str, nfVar));
        } else {
            ekVar.b++;
        }
        return ekVar;
    }

    public void c(String str) {
        ek ekVar = (ek) this.h.get(str);
        if (ekVar != null) {
            ekVar.b--;
            if (ekVar.b == 0) {
                if (ekVar.c >= 0) {
                    a(ekVar.c);
                }
                this.h.remove(str);
            }
        }
    }

    public void a(aw awVar) {
        this.g.add(awVar);
        awVar.a();
    }

    public void a() {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = 16;
            int i4 = 1;
            if (i2 >= this.g.size()) {
                break;
            }
            aw awVar = (aw) this.g.get(i2);
            awVar.c = this.i.g;
            awVar.a();
            this.f.clear();
            this.f.put(awVar.a);
            this.f.position(i).limit(awVar.a.length);
            awVar.a(this);
            int i5 = i;
            while (i5 < awVar.e) {
                int i6 = i;
                while (i6 < awVar.e) {
                    GL11.glTexSubImage2D(3553, 0, (i5 * 16) + ((awVar.b % i3) * i3), (i6 * 16) + ((awVar.b / i3) * i3), 16, 16, 6408, 5121, this.f);
                    if (a) {
                        int i7 = i4;
                        while (i7 <= 4) {
                            int i8 = i3 >> (i7 - 1);
                            int i9 = i3 >> i7;
                            int i10 = i;
                            while (i10 < i9) {
                                int i11 = i;
                                while (i11 < i9) {
                                    int i12 = i10 * 2;
                                    int i13 = i12 + 0;
                                    int i14 = i11 * 2;
                                    int i15 = (i14 + 0) * i8;
                                    int i16 = i12 + i4;
                                    int i17 = (i14 + 1) * i8;
                                    this.f.putInt(((i11 * i9) + i10) * 4, a(a(this.f.getInt((i13 + i15) * 4), this.f.getInt((i16 + i15) * 4)), a(this.f.getInt((i16 + i17) * 4), this.f.getInt((i13 + i17) * 4))));
                                    i11++;
                                    i4 = 1;
                                }
                                i10++;
                                i = 0;
                                i4 = 1;
                            }
                            GL11.glTexSubImage2D(3553, i7, (awVar.b % 16) * i9, (awVar.b / 16) * i9, i9, i9, 6408, 5121, this.f);
                            i7++;
                            i = 0;
                            i3 = 16;
                            i4 = 1;
                        }
                    }
                    i6++;
                    i = 0;
                    i3 = 16;
                    i4 = 1;
                }
                i5++;
                i = 0;
                i3 = 16;
                i4 = 1;
            }
            i2++;
            i = 0;
        }
        for (int i18 = 0; i18 < this.g.size(); i18++) {
            aw awVar2 = (aw) this.g.get(i18);
            if (awVar2.d > 0) {
                this.f.clear();
                this.f.put(awVar2.a);
                this.f.position(0).limit(awVar2.a.length);
                GL11.glBindTexture(3553, awVar2.d);
                GL11.glTexSubImage2D(3553, 0, 0, 0, 16, 16, 6408, 5121, this.f);
                if (a) {
                    for (int i19 = 1; i19 <= 4; i19++) {
                        int i20 = 16 >> (i19 - 1);
                        int i21 = 16 >> i19;
                        for (int i22 = 0; i22 < i21; i22++) {
                            for (int i23 = 0; i23 < i21; i23++) {
                                int i24 = i22 * 2;
                                int i25 = i24 + 0;
                                int i26 = i23 * 2;
                                int i27 = (i26 + 0) * i20;
                                int i28 = i24 + 1;
                                int i29 = (i26 + 1) * i20;
                                this.f.putInt(((i23 * i21) + i22) * 4, a(a(this.f.getInt((i25 + i27) * 4), this.f.getInt((i27 + i28) * 4)), a(this.f.getInt((i28 + i29) * 4), this.f.getInt((i25 + i29) * 4))));
                            }
                        }
                        GL11.glTexSubImage2D(3553, i19, 0, 0, i21, i21, 6408, 5121, this.f);
                    }
                }
            }
        }
    }

    private int b(int i, int i2) {
        int i3;
        int i4;
        int i5 = ((i & (-16777216)) >> 24) & 255;
        int i6 = (((-16777216) & i2) >> 24) & 255;
        if (i5 + i6 == 0) {
            i3 = 1;
            i4 = 0;
            i6 = 1;
        } else {
            i3 = i5;
            i4 = 255;
        }
        int i7 = ((i >> 16) & 255) * i3;
        int i8 = ((i >> 8) & 255) * i3;
        int i9 = i3 + i6;
        return ((((i & 255) * i3) + ((i2 & 255) * i6)) / i9) | (i4 << 24) | (((i7 + (((i2 >> 16) & 255) * i6)) / i9) << 16) | (((i8 + (((i2 >> 8) & 255) * i6)) / i9) << 8);
    }

    public void b() {
        BufferedImage bufferedImageA;
        BufferedImage bufferedImageA2;
        i iVar = this.l.a;
        Iterator it = this.d.keySet().iterator();
        while (it.hasNext()) {
            int iIntValue = ((Integer) it.next()).intValue();
            a((BufferedImage) this.d.get(Integer.valueOf(iIntValue)), iIntValue);
        }
        Iterator it2 = this.h.values().iterator();
        while (it2.hasNext()) {
            ((ek) it2.next()).d = false;
        }
        for (String str : this.b.keySet()) {
            try {
                if (str.startsWith("##")) {
                    bufferedImageA2 = c(a(iVar.a(str.substring(2))));
                } else if (str.startsWith("%clamp%")) {
                    this.j = true;
                    bufferedImageA2 = a(iVar.a(str.substring(7)));
                } else if (str.startsWith("%blur%")) {
                    this.k = true;
                    bufferedImageA2 = a(iVar.a(str.substring(6)));
                } else {
                    bufferedImageA2 = a(iVar.a(str));
                }
                a(bufferedImageA2, ((Integer) this.b.get(str)).intValue());
                this.k = false;
                this.j = false;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        for (String str2 : this.c.keySet()) {
            try {
                if (str2.startsWith("##")) {
                    bufferedImageA = c(a(iVar.a(str2.substring(2))));
                } else if (str2.startsWith("%clamp%")) {
                    this.j = true;
                    bufferedImageA = a(iVar.a(str2.substring(7)));
                } else if (str2.startsWith("%blur%")) {
                    this.k = true;
                    bufferedImageA = a(iVar.a(str2.substring(6)));
                } else {
                    bufferedImageA = a(iVar.a(str2));
                }
                a(bufferedImageA, (int[]) this.c.get(str2));
                this.k = false;
                this.j = false;
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    private BufferedImage a(InputStream inputStream) throws IOException {
        BufferedImage bufferedImage = ImageIO.read(inputStream);
        inputStream.close();
        return bufferedImage;
    }

    public void b(int i) {
        if (i < 0) {
            return;
        }
        GL11.glBindTexture(3553, i);
    }
}
