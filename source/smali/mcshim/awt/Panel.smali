###### Class mcshim.awt.Panel (mcshim.awt.Panel)
.class public Lmcshim/awt/Panel;
.super Lmcshim/awt/Container;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lmcshim/awt/Container;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: <init>"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
