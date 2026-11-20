package defpackage;

import mcshim.awt.Graphics;
import mcshim.awt.image.BufferedImage;
import mcshim.awt.image.DataBufferInt;

/* JADX INFO: loaded from: classes.dex */
public class rr implements nf {
    private int[] a;
    private int b;
    private int c;

    @Override // defpackage.nf
    public BufferedImage a(BufferedImage bufferedImage) {
        if (bufferedImage == null) {
            return null;
        }
        this.b = 64;
        this.c = 32;
        BufferedImage bufferedImage2 = new BufferedImage(64, 32, 2);
        Graphics graphics = bufferedImage2.getGraphics();
        graphics.drawImage(bufferedImage, 0, 0, null);
        graphics.dispose();
        this.a = ((DataBufferInt) bufferedImage2.getRaster().getDataBuffer()).getData();
        b(0, 0, 32, 16);
        a(32, 0, 64, 32);
        b(0, 16, 64, 32);
        boolean z = false;
        for (int i = 32; i < 64; i++) {
            for (int i2 = 0; i2 < 16; i2++) {
                if (((this.a[(i2 * 64) + i] >> 24) & 255) < 128) {
                    z = true;
                }
            }
        }
        if (!z) {
            for (int i3 = 32; i3 < 64; i3++) {
                for (int i4 = 0; i4 < 16; i4++) {
                    int i5 = this.a[(i4 * 64) + i3];
                }
            }
        }
        return bufferedImage2;
    }

    private void a(int i, int i2, int i3, int i4) {
        if (c(i, i2, i3, i4)) {
            return;
        }
        while (i < i3) {
            for (int i5 = i2; i5 < i4; i5++) {
                int[] iArr = this.a;
                int i6 = (this.b * i5) + i;
                iArr[i6] = iArr[i6] & 16777215;
            }
            i++;
        }
    }

    private void b(int i, int i2, int i3, int i4) {
        while (i < i3) {
            for (int i5 = i2; i5 < i4; i5++) {
                int[] iArr = this.a;
                int i6 = (this.b * i5) + i;
                iArr[i6] = iArr[i6] | (-16777216);
            }
            i++;
        }
    }

    private boolean c(int i, int i2, int i3, int i4) {
        while (i < i3) {
            for (int i5 = i2; i5 < i4; i5++) {
                if (((this.a[(this.b * i5) + i] >> 24) & 255) < 128) {
                    return true;
                }
            }
            i++;
        }
        return false;
    }
}
