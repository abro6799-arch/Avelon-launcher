###### Class mcshim.awt.TextArea (mcshim.awt.TextArea)
.class public Lmcshim/awt/TextArea;
.super Lmcshim/awt/TextComponent;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 5

    invoke-direct {p0}, Lmcshim/awt/TextComponent;-><init>()V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "desktop API not available on Android: <init>"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public setFont(Lmcshim/awt/Font;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "desktop API not available on Android: setFont"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
