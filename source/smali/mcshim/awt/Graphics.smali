###### Class mcshim.awt.Graphics (mcshim.awt.Graphics)
.class public Lmcshim/awt/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"


# instance fields
.field protected color:Lmcshim/awt/Color;

.field protected final dst:Lmcshim/awt/image/BufferedImage;


# direct methods
.method public constructor <init>(Lmcshim/awt/image/BufferedImage;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lmcshim/awt/Color;->BLACK:Lmcshim/awt/Color;

    iput-object v0, p0, Lmcshim/awt/Graphics;->color:Lmcshim/awt/Color;

    .line 6
    iput-object p1, p0, Lmcshim/awt/Graphics;->dst:Lmcshim/awt/image/BufferedImage;

    return-void
.end method

.method static blend(II)I
    .registers 11

    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_7

    return p1

    :cond_7
    if-nez v0, :cond_a

    return p0

    :cond_a
    ushr-int/lit8 v2, p0, 0x18

    int-to-float v0, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v0, v3

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    mul-float/2addr v2, v4

    add-float v4, v0, v2

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_1f

    const/4 p0, 0x0

    return p0

    :cond_1f
    shr-int/lit8 v5, p1, 0x10

    and-int/2addr v5, v1

    int-to-float v5, v5

    mul-float/2addr v5, v0

    shr-int/lit8 v6, p0, 0x10

    and-int/2addr v6, v1

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    div-float/2addr v5, v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    shr-int/lit8 v7, p1, 0x8

    and-int/2addr v7, v1

    int-to-float v7, v7

    mul-float/2addr v7, v0

    shr-int/lit8 v8, p0, 0x8

    and-int/2addr v8, v1

    int-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    div-float/2addr v7, v4

    add-float/2addr v7, v6

    float-to-int v7, v7

    and-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    and-int/2addr p0, v1

    int-to-float p0, p0

    mul-float/2addr p0, v2

    add-float/2addr p1, p0

    div-float/2addr p1, v4

    add-float/2addr p1, v6

    float-to-int p0, p1

    mul-float/2addr v4, v3

    add-float/2addr v4, v6

    float-to-int p1, v4

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 v0, v5, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v7, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public dispose()V
    .registers 1

    return-void
.end method

.method public drawImage(Lmcshim/awt/Image;IILmcshim/awt/image/ImageObserver;)Z
    .registers 16

    .line 12
    instance-of p4, p1, Lmcshim/awt/image/BufferedImage;

    const/4 v0, 0x0

    if-nez p4, :cond_6

    return v0

    :cond_6
    move-object v1, p1

    check-cast v1, Lmcshim/awt/image/BufferedImage;

    invoke-virtual {v1}, Lmcshim/awt/image/BufferedImage;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Lmcshim/awt/image/BufferedImage;->getHeight()I

    move-result p4

    iget-object v2, p0, Lmcshim/awt/Graphics;->dst:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {v2}, Lmcshim/awt/image/BufferedImage;->getWidth()I

    move-result v9

    iget-object v2, p0, Lmcshim/awt/Graphics;->dst:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {v2}, Lmcshim/awt/image/BufferedImage;->getHeight()I

    move-result v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, p4

    move v8, p1

    .line 13
    invoke-virtual/range {v1 .. v8}, Lmcshim/awt/image/BufferedImage;->getRGB(IIII[III)[I

    move-result-object v1

    iget-object v2, p0, Lmcshim/awt/Graphics;->dst:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {v2}, Lmcshim/awt/image/BufferedImage;->pixels()[I

    move-result-object v2

    move v3, v0

    :goto_2f
    if-ge v3, p4, :cond_58

    add-int v4, p3, v3

    if-ltz v4, :cond_55

    if-lt v4, v10, :cond_38

    goto :goto_55

    :cond_38
    move v5, v0

    :goto_39
    if-ge v5, p1, :cond_55

    add-int v6, p2, v5

    if-ltz v6, :cond_52

    if-lt v6, v9, :cond_42

    goto :goto_52

    :cond_42
    mul-int v7, v4, v9

    add-int/2addr v7, v6

    .line 14
    aget v6, v2, v7

    mul-int v8, v3, p1

    add-int/2addr v8, v5

    aget v8, v1, v8

    invoke-static {v6, v8}, Lmcshim/awt/Graphics;->blend(II)I

    move-result v6

    aput v6, v2, v7

    :cond_52
    :goto_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_55
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_58
    const/4 p1, 0x1

    return p1
.end method

.method public drawString(Ljava/lang/String;II)V
    .registers 12

    .line 16
    invoke-static {}, Lmcport/Platform;->get()Lmcport/Platform;

    move-result-object v0

    iget-object v1, p0, Lmcshim/awt/Graphics;->dst:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {v1}, Lmcshim/awt/image/BufferedImage;->pixels()[I

    move-result-object v1

    iget-object v2, p0, Lmcshim/awt/Graphics;->dst:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {v2}, Lmcshim/awt/image/BufferedImage;->getWidth()I

    move-result v2

    iget-object v3, p0, Lmcshim/awt/Graphics;->dst:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {v3}, Lmcshim/awt/image/BufferedImage;->getHeight()I

    move-result v3

    iget-object v4, p0, Lmcshim/awt/Graphics;->color:Lmcshim/awt/Color;

    invoke-virtual {v4}, Lmcshim/awt/Color;->getRGB()I

    move-result v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v7}, Lmcport/Platform;->drawString([IIILjava/lang/String;III)V

    return-void
.end method

.method public fillRect(IIII)V
    .registers 11

    .line 8
    iget-object v0, p0, Lmcshim/awt/Graphics;->dst:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {v0}, Lmcshim/awt/image/BufferedImage;->pixels()[I

    move-result-object v0

    iget-object v1, p0, Lmcshim/awt/Graphics;->dst:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {v1}, Lmcshim/awt/image/BufferedImage;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmcshim/awt/Graphics;->dst:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {v2}, Lmcshim/awt/image/BufferedImage;->getHeight()I

    move-result v2

    iget-object v3, p0, Lmcshim/awt/Graphics;->color:Lmcshim/awt/Color;

    invoke-virtual {v3}, Lmcshim/awt/Color;->getRGB()I

    move-result v3

    const/4 v4, 0x0

    .line 9
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr p1, p3

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr p2, p4

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_2b
    if-ge v4, p2, :cond_41

    move p3, v5

    :goto_2e
    if-ge p3, p1, :cond_3e

    mul-int p4, v4, v1

    add-int/2addr p4, p3

    .line 10
    aget v2, v0, p4

    invoke-static {v2, v3}, Lmcshim/awt/Graphics;->blend(II)I

    move-result v2

    aput v2, v0, p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2e

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_41
    return-void
.end method

.method public getColor()Lmcshim/awt/Color;
    .registers 2

    .line 7
    iget-object v0, p0, Lmcshim/awt/Graphics;->color:Lmcshim/awt/Color;

    return-object v0
.end method

.method public setColor(Lmcshim/awt/Color;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lmcshim/awt/Graphics;->color:Lmcshim/awt/Color;

    return-void
.end method
