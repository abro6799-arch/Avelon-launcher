###### Class mcshim.awt.event.WindowAdapter (mcshim.awt.event.WindowAdapter)
.class public abstract Lmcshim/awt/event/WindowAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lmcshim/awt/event/WindowListener;
.implements Lmcshim/awt/event/WindowStateListener;
.implements Lmcshim/awt/event/WindowFocusListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: <init>"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
