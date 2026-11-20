package mcshim.awt;

/* JADX INFO: loaded from: classes.dex */
public class RenderingHints {
    public static final Key KEY_ANTIALIASING = new Key(0) { // from class: mcshim.awt.RenderingHints.1
    };
    public static final Key KEY_INTERPOLATION = new Key(1) { // from class: mcshim.awt.RenderingHints.2
    };
    public static final Object VALUE_INTERPOLATION_NEAREST_NEIGHBOR = new Object();
    public static final Object VALUE_ANTIALIAS_ON = new Object();
    public static final Object VALUE_ANTIALIAS_OFF = new Object();

    public static abstract class Key {
        protected Key(int i) {
        }
    }
}
