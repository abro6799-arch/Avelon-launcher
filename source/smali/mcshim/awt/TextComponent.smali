###### Class mcshim.awt.TextComponent (mcshim.awt.TextComponent)
.class public Lmcshim/awt/TextComponent;
.super Lmcshim/awt/Component;


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lmcshim/awt/Component;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: <init>"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
