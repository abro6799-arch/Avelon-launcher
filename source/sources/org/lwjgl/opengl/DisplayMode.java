package org.lwjgl.opengl;

/* JADX INFO: loaded from: classes.dex */
public final class DisplayMode {
    private final int h;
    private final int w;

    public int getBitsPerPixel() {
        return 32;
    }

    public int getFrequency() {
        return 60;
    }

    public DisplayMode(int i, int i2) {
        this.w = i;
        this.h = i2;
    }

    public int getHeight() {
        return this.h;
    }

    public int getWidth() {
        return this.w;
    }

    public String toString() {
        return this.w + " x " + this.h;
    }
}
