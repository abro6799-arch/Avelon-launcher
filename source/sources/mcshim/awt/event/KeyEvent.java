package mcshim.awt.event;

/* JADX INFO: loaded from: classes.dex */
public class KeyEvent extends InputEvent {
    protected KeyEvent() {
        throw new UnsupportedOperationException("desktop API not available on Android: <init>");
    }

    public int getKeyCode() {
        throw new UnsupportedOperationException("desktop API not available on Android: getKeyCode");
    }
}
