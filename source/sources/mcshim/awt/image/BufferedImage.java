package mcshim.awt.image;

import mcshim.awt.Graphics;
import mcshim.awt.Graphics2D;
import mcshim.awt.Image;

/* JADX INFO: loaded from: classes.dex */
public class BufferedImage extends Image implements RenderedImage {
    public static final int TYPE_3BYTE_BGR = 5;
    public static final int TYPE_4BYTE_ABGR = 6;
    public static final int TYPE_CUSTOM = 0;
    public static final int TYPE_INT_ARGB = 2;
    public static final int TYPE_INT_ARGB_PRE = 3;
    public static final int TYPE_INT_BGR = 4;
    public static final int TYPE_INT_RGB = 1;
    private final int h;
    final int[] px;
    private final int type;
    private final int w;

    public BufferedImage(int i, int i2, int i3) {
        this.w = i;
        this.h = i2;
        this.type = i3;
        this.px = new int[i * i2];
    }

    public BufferedImage(int i, int i2, int i3, int[] iArr) {
        this.w = i;
        this.h = i2;
        this.type = i3;
        this.px = iArr;
    }

    @Override // mcshim.awt.image.RenderedImage
    public int getHeight() {
        return this.h;
    }

    public int getType() {
        return this.type;
    }

    @Override // mcshim.awt.image.RenderedImage
    public int getWidth() {
        return this.w;
    }

    @Override // mcshim.awt.Image
    public int getHeight(ImageObserver imageObserver) {
        return this.h;
    }

    @Override // mcshim.awt.Image
    public int getWidth(ImageObserver imageObserver) {
        return this.w;
    }

    private boolean opaque() {
        int i = this.type;
        return i == 1 || i == 4 || i == 5;
    }

    public int getRGB(int i, int i2) {
        int i3 = this.px[(i2 * this.w) + i];
        return opaque() ? i3 | (-16777216) : i3;
    }

    public void setRGB(int i, int i2, int i3) {
        int[] iArr = this.px;
        int i4 = (i2 * this.w) + i;
        if (opaque()) {
            i3 |= -16777216;
        }
        iArr[i4] = i3;
    }

    public int[] getRGB(int i, int i2, int i3, int i4, int[] iArr, int i5, int i6) {
        int[] iArr2 = iArr == null ? new int[i5 + (i4 * i6)] : iArr;
        boolean zOpaque = opaque();
        for (int i7 = 0; i7 < i4; i7++) {
            int i8 = ((i2 + i7) * this.w) + i;
            int i9 = i5 + (i7 * i6);
            if (zOpaque) {
                for (int i10 = 0; i10 < i3; i10++) {
                    iArr2[i9 + i10] = this.px[i8 + i10] | (-16777216);
                }
            } else {
                System.arraycopy(this.px, i8, iArr2, i9, i3);
            }
        }
        return iArr2;
    }

    public void setRGB(int i, int i2, int i3, int i4, int[] iArr, int i5, int i6) {
        boolean zOpaque = opaque();
        for (int i7 = 0; i7 < i4; i7++) {
            int i8 = ((i2 + i7) * this.w) + i;
            int i9 = i5 + (i7 * i6);
            if (zOpaque) {
                for (int i10 = 0; i10 < i3; i10++) {
                    this.px[i8 + i10] = iArr[i9 + i10] | (-16777216);
                }
            } else {
                System.arraycopy(iArr, i9, this.px, i8, i3);
            }
        }
    }

    @Override // mcshim.awt.Image
    public Graphics getGraphics() {
        return new Graphics(this);
    }

    public Graphics2D createGraphics() {
        return new Graphics2D(this);
    }

    public WritableRaster getRaster() {
        return new WritableRaster(new DataBufferInt(this.px));
    }

    public int[] pixels() {
        return this.px;
    }
}
