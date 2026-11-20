package mcshim.awt;

import mcshim.awt.image.ImageObserver;

/* JADX INFO: loaded from: classes.dex */
public abstract class Image {
    public void flush() {
    }

    public Graphics getGraphics() {
        return null;
    }

    public abstract int getHeight(ImageObserver imageObserver);

    public abstract int getWidth(ImageObserver imageObserver);
}
