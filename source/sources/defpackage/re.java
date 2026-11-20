package defpackage;

import mcshim.awt.image.BufferedImage;

/* JADX INFO: loaded from: classes.dex */
public class re {
    public BufferedImage a;
    public fd b;
    public int c;
    public int d;
    public boolean e = false;
    public boolean f = false;
    public int g = 0;
    public boolean h = false;

    public re(fd fdVar, int i, int i2) {
        this.b = fdVar;
        a(i, i2);
    }

    public void a(int i, int i2) {
        this.e = false;
        this.c = i;
        this.d = i2;
        this.g = 0;
        this.h = false;
    }

    public void a(fd fdVar, int i, int i2) {
        this.b = fdVar;
        a(i, i2);
    }
}
