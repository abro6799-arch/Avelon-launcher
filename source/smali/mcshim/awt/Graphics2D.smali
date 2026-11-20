###### Class mcshim.awt.Graphics2D (mcshim.awt.Graphics2D)
.class public Lmcshim/awt/Graphics2D;
.super Lmcshim/awt/Graphics;
.source "Graphics2D.java"


# direct methods
.method public constructor <init>(Lmcshim/awt/image/BufferedImage;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lmcshim/awt/Graphics;-><init>(Lmcshim/awt/image/BufferedImage;)V

    return-void
.end method


# virtual methods
.method public getClipBounds()Lmcshim/awt/Rectangle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFontMetrics()Lmcshim/awt/FontMetrics;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransform()Lmcshim/awt/geom/AffineTransform;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public scale(DD)V
    .registers 5

    return-void
.end method

.method public setClip(IIII)V
    .registers 5

    return-void
.end method

.method public setRenderingHint(Lmcshim/awt/RenderingHints$Key;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public setTransform(Lmcshim/awt/geom/AffineTransform;)V
    .registers 2

    return-void
.end method

.method public translate(II)V
    .registers 3

    return-void
.end method
