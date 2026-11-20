###### Class mcshim.awt.event.ComponentEvent (mcshim.awt.event.ComponentEvent)
.class public Lmcshim/awt/event/ComponentEvent;
.super Lmcshim/awt/AWTEvent;


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lmcshim/awt/AWTEvent;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: <init>"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
