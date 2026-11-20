package mcshim.awt.datatransfer;

/* JADX INFO: loaded from: classes.dex */
public interface Transferable {
    Object getTransferData(DataFlavor dataFlavor) throws Exception;

    boolean isDataFlavorSupported(DataFlavor dataFlavor);
}
