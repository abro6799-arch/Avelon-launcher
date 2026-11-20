package mcshim.awt;

import mcshim.awt.datatransfer.Clipboard;

/* JADX INFO: loaded from: classes.dex */
public class Toolkit {
    private static final Toolkit T = new Toolkit();

    public static Toolkit getDefaultToolkit() {
        return T;
    }

    public Clipboard getSystemClipboard() {
        return Clipboard.SYSTEM;
    }
}
