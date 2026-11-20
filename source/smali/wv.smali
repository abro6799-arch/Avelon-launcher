###### Class defpackage.wv (wv)
.class Lwv;
.super Lmcshim/awt/Canvas;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 39
    invoke-direct {p0}, Lmcshim/awt/Canvas;-><init>()V

    .line 40
    new-instance v0, Lmcshim/awt/Dimension;

    invoke-direct {v0, p1, p1}, Lmcshim/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lwv;->setPreferredSize(Lmcshim/awt/Dimension;)V

    .line 41
    new-instance v0, Lmcshim/awt/Dimension;

    invoke-direct {v0, p1, p1}, Lmcshim/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lwv;->setMinimumSize(Lmcshim/awt/Dimension;)V

    return-void
.end method
