###### Class mcshim.awt.event.WindowEvent (mcshim.awt.event.WindowEvent)
.class public Lmcshim/awt/event/WindowEvent;
.super Lmcshim/awt/event/ComponentEvent;


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lmcshim/awt/event/ComponentEvent;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: <init>"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
