package defpackage;

import java.io.IOException;
import mcshim.imageio.ImageIO;
import net.minecraft.client.Minecraft;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class ku extends aw {
    private Minecraft g;
    private int[] h;
    private int[] i;
    private double j;
    private double k;

    public ku(Minecraft minecraft) {
        super(gm.aQ.a(0));
        this.h = new int[Keyboard.KEYBOARD_SIZE];
        this.i = new int[Keyboard.KEYBOARD_SIZE];
        this.g = minecraft;
        this.f = 1;
        try {
            ImageIO.read(Minecraft.class.getResource("/gui/items.png")).getRGB((this.b % 16) * 16, (this.b / 16) * 16, 16, 16, this.h, 0, 16);
            ImageIO.read(Minecraft.class.getResource("/misc/dial.png")).getRGB(0, 0, 16, 16, this.i, 0, 16);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // defpackage.aw
    public void a() {
        double dRandom;
        if (this.g.f == null || this.g.h == null) {
            dRandom = 0.0d;
        } else {
            dRandom = (-this.g.f.b(1.0f)) * 3.1415927f * 2.0f;
            if (this.g.f.t.c) {
                dRandom = Math.random() * 3.1415927410125732d * 2.0d;
            }
        }
        double d = dRandom - this.j;
        while (d < -3.141592653589793d) {
            d += 6.283185307179586d;
        }
        while (d >= 3.141592653589793d) {
            d -= 6.283185307179586d;
        }
        if (d < -1.0d) {
            d = -1.0d;
        }
        if (d > 1.0d) {
            d = 1.0d;
        }
        double d2 = (this.k + (d * 0.1d)) * 0.8d;
        this.k = d2;
        double d3 = this.j + d2;
        this.j = d3;
        double dSin = Math.sin(d3);
        double dCos = Math.cos(this.j);
        for (int i = 0; i < 256; i++) {
            int i2 = this.h[i];
            int i3 = (i2 >> 24) & 255;
            int i4 = (i2 >> 16) & 255;
            int i5 = (i2 >> 8) & 255;
            int i6 = (i2 >> 0) & 255;
            if (i4 == i6 && i5 == 0 && i6 > 0) {
                double d4 = -((((double) (i % 16)) / 15.0d) - 0.5d);
                double d5 = (((double) (i / 16)) / 15.0d) - 0.5d;
                int i7 = this.i[(((int) (((d4 * dCos) + (d5 * dSin) + 0.5d) * 16.0d)) & 15) + ((((int) ((((d5 * dCos) - (d4 * dSin)) + 0.5d) * 16.0d)) & 15) * 16)];
                i3 = (i7 >> 24) & 255;
                int i8 = (((i7 >> 16) & 255) * i4) / 255;
                int i9 = (((i7 >> 8) & 255) * i4) / 255;
                i6 = (((i7 >> 0) & 255) * i4) / 255;
                i4 = i8;
                i5 = i9;
            }
            if (this.c) {
                int i10 = i4 * 30;
                int i11 = (((i5 * 59) + i10) + (i6 * 11)) / 100;
                i5 = ((i5 * 70) + i10) / 100;
                i6 = (i10 + (i6 * 70)) / 100;
                i4 = i11;
            }
            int i12 = i * 4;
            this.a[i12 + 0] = (byte) i4;
            this.a[i12 + 1] = (byte) i5;
            this.a[i12 + 2] = (byte) i6;
            this.a[i12 + 3] = (byte) i3;
        }
    }
}
