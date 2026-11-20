package mcshim.awt;

import mcport.Platform;
import mcshim.awt.image.BufferedImage;
import mcshim.awt.image.ImageObserver;

/* JADX INFO: loaded from: classes.dex */
public class Graphics {
    protected Color color = Color.BLACK;
    protected final BufferedImage dst;

    static int blend(int i, int i2) {
        int i3 = i2 >>> 24;
        if (i3 == 255) {
            return i2;
        }
        if (i3 == 0) {
            return i;
        }
        float f = i3 / 255.0f;
        float f2 = ((i >>> 24) / 255.0f) * (1.0f - f);
        float f3 = f + f2;
        if (f3 <= 0.0f) {
            return 0;
        }
        return ((int) (((((i2 & 255) * f) + ((i & 255) * f2)) / f3) + 0.5f)) | (((int) ((f3 * 255.0f) + 0.5f)) << 24) | (((int) ((((((i2 >> 16) & 255) * f) + (((i >> 16) & 255) * f2)) / f3) + 0.5f)) << 16) | (((int) ((((((i2 >> 8) & 255) * f) + (((i >> 8) & 255) * f2)) / f3) + 0.5f)) << 8);
    }

    public void dispose() {
    }

    public Graphics(BufferedImage bufferedImage) {
        this.dst = bufferedImage;
    }

    public Color getColor() {
        return this.color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public void fillRect(int i, int i2, int i3, int i4) {
        int[] iArrPixels = this.dst.pixels();
        int width = this.dst.getWidth();
        int height = this.dst.getHeight();
        int rgb = this.color.getRGB();
        int iMax = Math.max(0, i);
        int iMin = Math.min(width, i + i3);
        int iMin2 = Math.min(height, i2 + i4);
        for (int iMax2 = Math.max(0, i2); iMax2 < iMin2; iMax2++) {
            for (int i5 = iMax; i5 < iMin; i5++) {
                int i6 = (iMax2 * width) + i5;
                iArrPixels[i6] = blend(iArrPixels[i6], rgb);
            }
        }
    }

    public boolean drawImage(Image image, int i, int i2, ImageObserver imageObserver) {
        if (!(image instanceof BufferedImage)) {
            return false;
        }
        BufferedImage bufferedImage = (BufferedImage) image;
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        int width2 = this.dst.getWidth();
        int height2 = this.dst.getHeight();
        int[] rgb = bufferedImage.getRGB(0, 0, width, height, null, 0, width);
        int[] iArrPixels = this.dst.pixels();
        for (int i3 = 0; i3 < height; i3++) {
            int i4 = i2 + i3;
            if (i4 >= 0 && i4 < height2) {
                for (int i5 = 0; i5 < width; i5++) {
                    int i6 = i + i5;
                    if (i6 >= 0 && i6 < width2) {
                        int i7 = (i4 * width2) + i6;
                        iArrPixels[i7] = blend(iArrPixels[i7], rgb[(i3 * width) + i5]);
                    }
                }
            }
        }
        return true;
    }

    public void drawString(String str, int i, int i2) {
        Platform.get().drawString(this.dst.pixels(), this.dst.getWidth(), this.dst.getHeight(), str, i, i2, this.color.getRGB());
    }
}
