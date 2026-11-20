###### Class mcshim.awt.image.BufferedImage (mcshim.awt.image.BufferedImage)
.class public Lmcshim/awt/image/BufferedImage;
.super Lmcshim/awt/Image;
.source "BufferedImage.java"

# interfaces
.implements Lmcshim/awt/image/RenderedImage;


# static fields
.field public static final TYPE_3BYTE_BGR:I = 0x5

.field public static final TYPE_4BYTE_ABGR:I = 0x6

.field public static final TYPE_CUSTOM:I = 0x0

.field public static final TYPE_INT_ARGB:I = 0x2

.field public static final TYPE_INT_ARGB_PRE:I = 0x3

.field public static final TYPE_INT_BGR:I = 0x4

.field public static final TYPE_INT_RGB:I = 0x1


# instance fields
.field private final h:I

.field final px:[I

.field private final type:I

.field private final w:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 6
    invoke-direct {p0}, Lmcshim/awt/Image;-><init>()V

    iput p1, p0, Lmcshim/awt/image/BufferedImage;->w:I

    iput p2, p0, Lmcshim/awt/image/BufferedImage;->h:I

    iput p3, p0, Lmcshim/awt/image/BufferedImage;->type:I

    mul-int/2addr p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lmcshim/awt/image/BufferedImage;->px:[I

    return-void
.end method

.method public constructor <init>(III[I)V
    .registers 5

    .line 7
    invoke-direct {p0}, Lmcshim/awt/Image;-><init>()V

    iput p1, p0, Lmcshim/awt/image/BufferedImage;->w:I

    iput p2, p0, Lmcshim/awt/image/BufferedImage;->h:I

    iput p3, p0, Lmcshim/awt/image/BufferedImage;->type:I

    iput-object p4, p0, Lmcshim/awt/image/BufferedImage;->px:[I

    return-void
.end method

.method private opaque()Z
    .registers 4

    .line 10
    iget v0, p0, Lmcshim/awt/image/BufferedImage;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x4

    if-eq v0, v2, :cond_d

    const/4 v2, 0x5

    if-ne v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_d
    return v1
.end method


# virtual methods
.method public createGraphics()Lmcshim/awt/Graphics2D;
    .registers 2

    .line 20
    new-instance v0, Lmcshim/awt/Graphics2D;

    invoke-direct {v0, p0}, Lmcshim/awt/Graphics2D;-><init>(Lmcshim/awt/image/BufferedImage;)V

    return-object v0
.end method

.method public getGraphics()Lmcshim/awt/Graphics;
    .registers 2

    .line 19
    new-instance v0, Lmcshim/awt/Graphics;

    invoke-direct {v0, p0}, Lmcshim/awt/Graphics;-><init>(Lmcshim/awt/image/BufferedImage;)V

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 8
    iget v0, p0, Lmcshim/awt/image/BufferedImage;->h:I

    return v0
.end method

.method public getHeight(Lmcshim/awt/image/ImageObserver;)I
    .registers 2

    .line 9
    iget p1, p0, Lmcshim/awt/image/BufferedImage;->h:I

    return p1
.end method

.method public getRGB(II)I
    .registers 5

    .line 11
    iget-object v0, p0, Lmcshim/awt/image/BufferedImage;->px:[I

    iget v1, p0, Lmcshim/awt/image/BufferedImage;->w:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    aget p1, v0, p2

    invoke-direct {p0}, Lmcshim/awt/image/BufferedImage;->opaque()Z

    move-result p2

    if-eqz p2, :cond_11

    const/high16 p2, -0x1000000

    or-int/2addr p1, p2

    :cond_11
    return p1
.end method

.method public getRGB(IIII[III)[I
    .registers 21

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    if-nez p5, :cond_e

    mul-int v3, v2, p7

    add-int v3, p6, v3

    .line 14
    new-array v3, v3, [I

    goto :goto_10

    :cond_e
    move-object/from16 v3, p5

    :goto_10
    invoke-direct {p0}, Lmcshim/awt/image/BufferedImage;->opaque()Z

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_16
    if-ge v6, v2, :cond_3f

    add-int v7, p2, v6

    .line 15
    iget v8, v0, Lmcshim/awt/image/BufferedImage;->w:I

    mul-int/2addr v7, v8

    add-int/2addr v7, p1

    mul-int v8, v6, p7

    add-int v8, p6, v8

    if-eqz v4, :cond_37

    move v9, v5

    :goto_25
    if-ge v9, v1, :cond_3c

    add-int v10, v8, v9

    iget-object v11, v0, Lmcshim/awt/image/BufferedImage;->px:[I

    add-int v12, v7, v9

    aget v11, v11, v12

    const/high16 v12, -0x1000000

    or-int/2addr v11, v12

    aput v11, v3, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    :cond_37
    iget-object v9, v0, Lmcshim/awt/image/BufferedImage;->px:[I

    invoke-static {v9, v7, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_3f
    return-object v3
.end method

.method public getRaster()Lmcshim/awt/image/WritableRaster;
    .registers 4

    .line 21
    new-instance v0, Lmcshim/awt/image/WritableRaster;

    new-instance v1, Lmcshim/awt/image/DataBufferInt;

    iget-object v2, p0, Lmcshim/awt/image/BufferedImage;->px:[I

    invoke-direct {v1, v2}, Lmcshim/awt/image/DataBufferInt;-><init>([I)V

    invoke-direct {v0, v1}, Lmcshim/awt/image/WritableRaster;-><init>(Lmcshim/awt/image/DataBuffer;)V

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 8
    iget v0, p0, Lmcshim/awt/image/BufferedImage;->type:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 8
    iget v0, p0, Lmcshim/awt/image/BufferedImage;->w:I

    return v0
.end method

.method public getWidth(Lmcshim/awt/image/ImageObserver;)I
    .registers 2

    .line 9
    iget p1, p0, Lmcshim/awt/image/BufferedImage;->w:I

    return p1
.end method

.method public pixels()[I
    .registers 2

    .line 23
    iget-object v0, p0, Lmcshim/awt/image/BufferedImage;->px:[I

    return-object v0
.end method

.method public setRGB(III)V
    .registers 6

    .line 12
    iget-object v0, p0, Lmcshim/awt/image/BufferedImage;->px:[I

    iget v1, p0, Lmcshim/awt/image/BufferedImage;->w:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    invoke-direct {p0}, Lmcshim/awt/image/BufferedImage;->opaque()Z

    move-result p1

    if-eqz p1, :cond_f

    const/high16 p1, -0x1000000

    or-int/2addr p3, p1

    :cond_f
    aput p3, v0, p2

    return-void
.end method

.method public setRGB(IIII[III)V
    .registers 22

    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p5

    .line 18
    invoke-direct {p0}, Lmcshim/awt/image/BufferedImage;->opaque()Z

    move-result v3

    const/4 v4, 0x0

    move/from16 v5, p4

    move v6, v4

    :goto_d
    if-ge v6, v5, :cond_36

    add-int v7, p2, v6

    iget v8, v0, Lmcshim/awt/image/BufferedImage;->w:I

    mul-int/2addr v7, v8

    add-int/2addr v7, p1

    mul-int v8, v6, p7

    add-int v8, p6, v8

    if-eqz v3, :cond_2e

    move v9, v4

    :goto_1c
    if-ge v9, v1, :cond_33

    iget-object v10, v0, Lmcshim/awt/image/BufferedImage;->px:[I

    add-int v11, v7, v9

    add-int v12, v8, v9

    aget v12, v2, v12

    const/high16 v13, -0x1000000

    or-int/2addr v12, v13

    aput v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_2e
    iget-object v9, v0, Lmcshim/awt/image/BufferedImage;->px:[I

    invoke-static {v2, v8, v9, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_36
    return-void
.end method
