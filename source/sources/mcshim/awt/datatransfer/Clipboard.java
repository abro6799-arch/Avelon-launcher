package mcshim.awt.datatransfer;

import mcport.Platform;

/* JADX INFO: loaded from: classes.dex */
public class Clipboard {
    public static final Clipboard SYSTEM = new Clipboard();

    public Transferable getContents(Object obj) {
        final String clipboard = Platform.get().getClipboard();
        if (clipboard == null) {
            return null;
        }
        return new Transferable() { // from class: mcshim.awt.datatransfer.Clipboard.1
            @Override // mcshim.awt.datatransfer.Transferable
            public Object getTransferData(DataFlavor dataFlavor) {
                return clipboard;
            }

            @Override // mcshim.awt.datatransfer.Transferable
            public boolean isDataFlavorSupported(DataFlavor dataFlavor) {
                return dataFlavor == DataFlavor.stringFlavor;
            }
        };
    }
}
