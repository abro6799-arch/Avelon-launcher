package mcshim.awt.image;

import mcshim.awt.Graphics;

/* JADX INFO: loaded from: classes.dex */
public abstract class BufferStrategy {
    protected BufferStrategy() {
        throw new UnsupportedOperationException("desktop API not available on Android: <init>");
    }

    public Graphics getDrawGraphics() {
        throw new UnsupportedOperationException("desktop API not available on Android: getDrawGraphics");
    }

    public void show() {
        throw new UnsupportedOperationException("desktop API not available on Android: show");
    }
}
