package defpackage;

import java.io.IOException;
import mcshim.imageio.ImageIO;
import net.minecraft.client.Minecraft;
import org.lwjgl.input.Keyboard;

/* JADX INFO: loaded from: classes.dex */
public class av extends aw {
    private Minecraft g;
    private int[] h;
    private double i;
    private double j;

    public av(Minecraft minecraft) {
        super(gm.aO.a(0));
        this.h = new int[Keyboard.KEYBOARD_SIZE];
        this.g = minecraft;
        this.f = 1;
        try {
            ImageIO.read(Minecraft.class.getResource("/gui/items.png")).getRGB((this.b % 16) * 16, (this.b / 16) * 16, 16, 16, this.h, 0, 16);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // defpackage.aw
    public void a() {
        double dAtan2;
        double d;
        for (int i = 0; i < 256; i++) {
            int i2 = this.h[i];
            int i3 = (i2 >> 24) & 255;
            int i4 = (i2 >> 16) & 255;
            int i5 = (i2 >> 8) & 255;
            int i6 = (i2 >> 0) & 255;
            if (this.c) {
                int i7 = i4 * 30;
                int i8 = (((i5 * 59) + i7) + (i6 * 11)) / 100;
                i5 = ((i5 * 70) + i7) / 100;
                i6 = (i7 + (i6 * 70)) / 100;
                i4 = i8;
            }
            int i9 = i * 4;
            this.a[i9 + 0] = (byte) i4;
            this.a[i9 + 1] = (byte) i5;
            this.a[i9 + 2] = (byte) i6;
            this.a[i9 + 3] = (byte) i3;
        }
        if (this.g.f == null || this.g.h == null) {
            dAtan2 = 0.0d;
        } else {
            br brVarU = this.g.f.u();
            dAtan2 = ((((double) (this.g.h.aS - 90.0f)) * 3.141592653589793d) / 180.0d) - Math.atan2(((double) brVarU.c) - this.g.h.aO, ((double) brVarU.a) - this.g.h.aM);
            if (this.g.f.t.c) {
                dAtan2 = Math.random() * 3.1415927410125732d * 2.0d;
            }
        }
        double d2 = dAtan2 - this.i;
        while (d2 < -3.141592653589793d) {
            d2 += 6.283185307179586d;
        }
        while (d2 >= 3.141592653589793d) {
            d2 -= 6.283185307179586d;
        }
        if (d2 < -1.0d) {
            d2 = -1.0d;
        }
        if (d2 > 1.0d) {
            d2 = 1.0d;
        }
        double d3 = (this.j + (d2 * 0.1d)) * 0.8d;
        this.j = d3;
        double d4 = this.i + d3;
        this.i = d4;
        double dSin = Math.sin(d4);
        double dCos = Math.cos(this.i);
        int i10 = -4;
        while (true) {
            d = 0.5d;
            if (i10 > 4) {
                break;
            }
            double d5 = i10;
            boolean z = this.c;
            int i11 = ((((int) (7.5d - (((d5 * dSin) * 0.3d) * 0.5d))) * 16) + ((int) ((dCos * d5 * 0.3d) + 8.5d))) * 4;
            this.a[i11 + 0] = (byte) 100;
            this.a[i11 + 1] = (byte) 100;
            this.a[i11 + 2] = (byte) 100;
            this.a[i11 + 3] = (byte) 255;
            i10++;
        }
        int i12 = -8;
        int i13 = 16;
        while (i12 <= i13) {
            double d6 = i12;
            int i14 = (((int) ((d6 * dCos * 0.3d * d) + 7.5d)) * 16) + ((int) ((dSin * d6 * 0.3d) + 8.5d));
            int i15 = i12 >= 0 ? 255 : 100;
            int i16 = i12 >= 0 ? 20 : 100;
            int i17 = i12 < 0 ? 100 : 20;
            if (this.c) {
                int i18 = i15 * 30;
                int i19 = (((i16 * 59) + i18) + (i17 * 11)) / 100;
                i16 = (i18 + (i16 * 70)) / 100;
                i17 = (i18 + (i17 * 70)) / 100;
                i15 = i19;
            }
            int i20 = i14 * 4;
            this.a[i20 + 0] = (byte) i15;
            this.a[i20 + 1] = (byte) i16;
            this.a[i20 + 2] = (byte) i17;
            this.a[i20 + 3] = (byte) 255;
            i12++;
            i13 = 16;
            d = 0.5d;
        }
    }
}
