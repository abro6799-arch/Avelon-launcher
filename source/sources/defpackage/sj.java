package defpackage;

import java.io.IOException;
import java.nio.IntBuffer;
import mcshim.awt.image.BufferedImage;
import mcshim.imageio.ImageIO;
import org.lwjgl.input.Keyboard;
import org.lwjgl.opengl.GL11;

/* JADX INFO: loaded from: classes.dex */
public class sj {
    public int a;
    private int[] b;
    private int c;
    private IntBuffer d;

    public sj(kv kvVar, String str, ji jiVar) {
        int i;
        int i2;
        sj sjVar = this;
        int i3 = Keyboard.KEYBOARD_SIZE;
        sjVar.b = new int[Keyboard.KEYBOARD_SIZE];
        int i4 = 0;
        sjVar.a = 0;
        sjVar.d = ge.d(1024);
        try {
            BufferedImage bufferedImage = ImageIO.read(ji.class.getResourceAsStream(str));
            int width = bufferedImage.getWidth();
            int height = bufferedImage.getHeight();
            int[] iArr = new int[width * height];
            bufferedImage.getRGB(0, 0, width, height, iArr, 0, width);
            int i5 = 0;
            while (true) {
                i = 32;
                i2 = 8;
                if (i5 >= 256) {
                    break;
                }
                int i6 = i5 % 16;
                int i7 = i5 / 16;
                int i8 = 7;
                while (i8 >= 0) {
                    int i9 = (i6 * 8) + i8;
                    boolean z = true;
                    for (int i10 = i4; i10 < 8 && z; i10++) {
                        if ((iArr[i9 + (((i7 * 8) + i10) * width)] & 255) > 0) {
                            z = false;
                        }
                    }
                    if (!z) {
                        break;
                    }
                    i8--;
                    i4 = 0;
                }
                if (i5 == 32) {
                    i8 = 2;
                }
                sjVar.b[i5] = i8 + 2;
                i5++;
                i4 = 0;
            }
            sjVar.a = jiVar.a(bufferedImage);
            sjVar.c = ge.a(288);
            nw nwVar = nw.a;
            int i11 = 0;
            while (i11 < i3) {
                GL11.glNewList(sjVar.c + i11, 4864);
                nwVar.b();
                int i12 = (i11 / 16) * i2;
                double d = 7.99f;
                float f = (i11 % 16) * i2;
                double d2 = (f / 128.0f) + 0.0f;
                float f2 = i12;
                double d3 = ((f2 + 7.99f) / 128.0f) + 0.0f;
                nwVar.a(0.0d, d, 0.0d, d2, d3);
                double d4 = ((f + 7.99f) / 128.0f) + 0.0f;
                nwVar.a(d, d, 0.0d, d4, d3);
                double d5 = (f2 / 128.0f) + 0.0f;
                nwVar.a(d, 0.0d, 0.0d, d4, d5);
                nwVar.a(0.0d, 0.0d, 0.0d, d2, d5);
                nwVar.a();
                sjVar = this;
                GL11.glTranslatef(sjVar.b[i11], 0.0f, 0.0f);
                GL11.glEndList();
                i11++;
                i3 = Keyboard.KEYBOARD_SIZE;
                i = 32;
                i2 = 8;
            }
            int i13 = i;
            int i14 = 0;
            while (i14 < i13) {
                int i15 = ((i14 >> 3) & 1) * 85;
                int i16 = (((i14 >> 2) & 1) * 170) + i15;
                int i17 = (((i14 >> 1) & 1) * 170) + i15;
                int i18 = (((i14 >> 0) & 1) * 170) + i15;
                i16 = i14 == 6 ? i16 + 85 : i16;
                boolean z2 = i14 >= 16;
                if (kvVar.g) {
                    int i19 = i16 * 30;
                    int i20 = (((i17 * 59) + i19) + (i18 * 11)) / 100;
                    i17 = ((i17 * 70) + i19) / 100;
                    i18 = (i19 + (i18 * 70)) / 100;
                    i16 = i20;
                }
                if (z2) {
                    i16 /= 4;
                    i17 /= 4;
                    i18 /= 4;
                }
                GL11.glNewList(sjVar.c + Keyboard.KEYBOARD_SIZE + i14, 4864);
                GL11.glColor3f(i16 / 255.0f, i17 / 255.0f, i18 / 255.0f);
                GL11.glEndList();
                i14++;
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void a(String str, int i, int i2, int i3) {
        a(str, i + 1, i2 + 1, i3, true);
        b(str, i, i2, i3);
    }

    public void b(String str, int i, int i2, int i3) {
        a(str, i, i2, i3, false);
    }

    public void a(String str, int i, int i2, int i3, boolean z) {
        int i4;
        int iIndexOf;
        if (str == null) {
            return;
        }
        if (z) {
            i3 = ((i3 & 16579836) >> 2) + ((-16777216) & i3);
        }
        GL11.glBindTexture(3553, this.a);
        float f = ((i3 >> 16) & 255) / 255.0f;
        float f2 = ((i3 >> 8) & 255) / 255.0f;
        float f3 = (i3 & 255) / 255.0f;
        float f4 = ((i3 >> 24) & 255) / 255.0f;
        if (f4 == 0.0f) {
            f4 = 1.0f;
        }
        GL11.glColor4f(f, f2, f3, f4);
        this.d.clear();
        GL11.glPushMatrix();
        GL11.glTranslatef(i, i2, 0.0f);
        int i5 = 0;
        while (i5 < str.length()) {
            while (true) {
                i4 = i5 + 1;
                if (str.length() <= i4 || str.charAt(i5) != 167) {
                    break;
                }
                int iIndexOf2 = "0123456789abcdef".indexOf(str.toLowerCase().charAt(i4));
                if (iIndexOf2 < 0 || iIndexOf2 > 15) {
                    iIndexOf2 = 15;
                }
                this.d.put(this.c + Keyboard.KEYBOARD_SIZE + iIndexOf2 + (z ? 16 : 0));
                if (this.d.remaining() == 0) {
                    this.d.flip();
                    GL11.glCallLists(this.d);
                    this.d.clear();
                }
                i5 += 2;
            }
            if (i5 < str.length() && (iIndexOf = fp.a.indexOf(str.charAt(i5))) >= 0) {
                this.d.put(this.c + iIndexOf + 32);
            }
            if (this.d.remaining() == 0) {
                this.d.flip();
                GL11.glCallLists(this.d);
                this.d.clear();
            }
            i5 = i4;
        }
        this.d.flip();
        GL11.glCallLists(this.d);
        GL11.glPopMatrix();
    }

    public int a(String str) {
        int i = 0;
        if (str == null) {
            return 0;
        }
        int i2 = 0;
        while (i < str.length()) {
            if (str.charAt(i) == 167) {
                i++;
            } else {
                int iIndexOf = fp.a.indexOf(str.charAt(i));
                if (iIndexOf >= 0) {
                    i2 += this.b[iIndexOf + 32];
                }
            }
            i++;
        }
        return i2;
    }

    public void a(String str, int i, int i2, int i3, int i4) {
        String[] strArrSplit = str.split("\n");
        if (strArrSplit.length > 1) {
            int iA = i2;
            for (int i5 = 0; i5 < strArrSplit.length; i5++) {
                a(strArrSplit[i5], i, iA, i3, i4);
                iA += a(strArrSplit[i5], i3);
            }
            return;
        }
        String[] strArrSplit2 = str.split(" ");
        int i6 = i2;
        int i7 = 0;
        while (i7 < strArrSplit2.length) {
            String strSubstring = strArrSplit2[i7] + " ";
            i7++;
            while (i7 < strArrSplit2.length) {
                if (a(strSubstring + strArrSplit2[i7]) >= i3) {
                    break;
                }
                strSubstring = strSubstring + strArrSplit2[i7] + " ";
                i7++;
            }
            while (a(strSubstring) > i3) {
                int i8 = 0;
                while (true) {
                    int i9 = i8 + 1;
                    if (a(strSubstring.substring(0, i9)) > i3) {
                        break;
                    } else {
                        i8 = i9;
                    }
                }
                if (strSubstring.substring(0, i8).trim().length() > 0) {
                    b(strSubstring.substring(0, i8), i, i6, i4);
                    i6 += 8;
                }
                strSubstring = strSubstring.substring(i8);
            }
            if (strSubstring.trim().length() > 0) {
                b(strSubstring, i, i6, i4);
                i6 += 8;
            }
        }
    }

    public int a(String str, int i) {
        String[] strArrSplit = str.split("\n");
        if (strArrSplit.length > 1) {
            int iA = 0;
            for (String str2 : strArrSplit) {
                iA += a(str2, i);
            }
            return iA;
        }
        String[] strArrSplit2 = str.split(" ");
        int i2 = 0;
        int i3 = 0;
        while (i2 < strArrSplit2.length) {
            String strSubstring = strArrSplit2[i2] + " ";
            i2++;
            while (i2 < strArrSplit2.length) {
                if (a(strSubstring + strArrSplit2[i2]) >= i) {
                    break;
                }
                strSubstring = strSubstring + strArrSplit2[i2] + " ";
                i2++;
            }
            while (a(strSubstring) > i) {
                int i4 = 0;
                while (true) {
                    int i5 = i4 + 1;
                    if (a(strSubstring.substring(0, i5)) > i) {
                        break;
                    }
                    i4 = i5;
                }
                if (strSubstring.substring(0, i4).trim().length() > 0) {
                    i3 += 8;
                }
                strSubstring = strSubstring.substring(i4);
            }
            if (strSubstring.trim().length() > 0) {
                i3 += 8;
            }
        }
        return i3 < 8 ? i3 + 8 : i3;
    }
}
