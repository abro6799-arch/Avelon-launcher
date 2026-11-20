package mcshim.awt.event;

/* JADX INFO: loaded from: classes.dex */
public class MouseEvent extends InputEvent {
    protected MouseEvent() {
        throw new UnsupportedOperationException("desktop API not available on Android: <init>");
    }

    public int getClickCount() {
        throw new UnsupportedOperationException("desktop API not available on Android: getClickCount");
    }

    public int getX() {
        throw new UnsupportedOperationException("desktop API not available on Android: getX");
    }

    public int getY() {
        throw new UnsupportedOperationException("desktop API not available on Android: getY");
    }
}
