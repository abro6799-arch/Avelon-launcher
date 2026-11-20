package mcshim.awt;

/* JADX INFO: loaded from: classes.dex */
public class Color {
    public static final Color BLACK;
    public static final Color GRAY;
    public static final Color RED;
    public static final Color WHITE;
    public static final Color black;
    public static final Color red;
    public static final Color white;
    private final int v;

    static {
        Color color = new Color(255, 255, 255);
        WHITE = color;
        Color color2 = new Color(0, 0, 0);
        BLACK = color2;
        white = color;
        black = color2;
        Color color3 = new Color(255, 0, 0);
        RED = color3;
        red = color3;
        GRAY = new Color(128, 128, 128);
    }

    public Color(int i, int i2, int i3) {
        this(i, i2, i3, 255);
    }

    public Color(int i, int i2, int i3, int i4) {
        this.v = ((i & 255) << 16) | ((i4 & 255) << 24) | ((i2 & 255) << 8) | (i3 & 255);
    }

    public Color(int i) {
        this.v = i | (-16777216);
    }

    public Color(int i, boolean z) {
        this.v = z ? i : i | (-16777216);
    }

    public int getAlpha() {
        return this.v >>> 24;
    }

    public int getBlue() {
        return this.v & 255;
    }

    public int getGreen() {
        return (this.v >> 8) & 255;
    }

    public int getRGB() {
        return this.v;
    }

    public int getRed() {
        return (this.v >> 16) & 255;
    }

    public static Color getHSBColor(float f, float f2, float f3) {
        return new Color(HSBtoRGB(f, f2, f3));
    }

    public static int HSBtoRGB(float f, float f2, float f3) {
        int i;
        int i2;
        int i3;
        if (f2 != 0.0f) {
            float fFloor = (f - ((float) Math.floor(f))) * 6.0f;
            float fFloor2 = fFloor - ((float) Math.floor(fFloor));
            float f4 = (1.0f - f2) * f3;
            float f5 = (1.0f - (f2 * fFloor2)) * f3;
            float f6 = (1.0f - (f2 * (1.0f - fFloor2))) * f3;
            int i4 = (int) fFloor;
            if (i4 != 0) {
                if (i4 == 1) {
                    i = (int) ((f5 * 255.0f) + 0.5f);
                    i2 = (int) ((f3 * 255.0f) + 0.5f);
                } else if (i4 != 2) {
                    if (i4 == 3) {
                        i = (int) ((f4 * 255.0f) + 0.5f);
                        i2 = (int) ((f5 * 255.0f) + 0.5f);
                    } else if (i4 == 4) {
                        i = (int) ((f6 * 255.0f) + 0.5f);
                        i2 = (int) ((f4 * 255.0f) + 0.5f);
                    } else if (i4 != 5) {
                        i = 0;
                    } else {
                        i = (int) ((f3 * 255.0f) + 0.5f);
                        i2 = (int) ((f4 * 255.0f) + 0.5f);
                        i3 = (int) ((f5 * 255.0f) + 0.5f);
                    }
                    i3 = (int) ((f3 * 255.0f) + 0.5f);
                } else {
                    i = (int) ((f4 * 255.0f) + 0.5f);
                    i2 = (int) ((f3 * 255.0f) + 0.5f);
                    i3 = (int) ((f6 * 255.0f) + 0.5f);
                }
                return (i << 16) | (-16777216) | (i2 << 8) | i3;
            }
            i = (int) ((f3 * 255.0f) + 0.5f);
            i2 = (int) ((f6 * 255.0f) + 0.5f);
            i3 = (int) ((f4 * 255.0f) + 0.5f);
            return (i << 16) | (-16777216) | (i2 << 8) | i3;
        }
        i = (int) ((f3 * 255.0f) + 0.5f);
        i2 = i;
        i3 = i2;
        return (i << 16) | (-16777216) | (i2 << 8) | i3;
    }
}
