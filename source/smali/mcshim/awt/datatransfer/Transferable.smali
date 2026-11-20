###### Class mcshim.awt.datatransfer.Transferable (mcshim.awt.datatransfer.Transferable)
.class public interface abstract Lmcshim/awt/datatransfer/Transferable;
.super Ljava/lang/Object;
.source "Transferable.java"


# virtual methods
.method public abstract getTransferData(Lmcshim/awt/datatransfer/DataFlavor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isDataFlavorSupported(Lmcshim/awt/datatransfer/DataFlavor;)Z
.end method
