###### Class mcshim.awt.Font (mcshim.awt.Font)
.class public Lmcshim/awt/Font;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "desktop API not available on Android: <init>"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
