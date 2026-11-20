package defpackage;

import java.io.IOException;
import mcshim.awt.Canvas;
import mcshim.awt.Dimension;
import mcshim.awt.Graphics;
import mcshim.awt.image.BufferedImage;
import mcshim.imageio.ImageIO;

/* JADX INFO: loaded from: classes.dex */
class fy extends Canvas {
    private BufferedImage a;

    public fy() {
        try {
            this.a = ImageIO.read(cb.class.getResource("/gui/logo.png"));
        } catch (IOException unused) {
        }
        setPreferredSize(new Dimension(100, 100));
        setMinimumSize(new Dimension(100, 100));
    }

    @Override // mcshim.awt.Canvas
    public void paint(Graphics graphics) {
        super.paint(graphics);
        graphics.drawImage(this.a, (getWidth() / 2) - (this.a.getWidth() / 2), 32, null);
    }
}
