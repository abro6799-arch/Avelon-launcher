###### Class defpackage.rr (rr)
.class public Lrr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnf;


# instance fields
.field private a:[I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(IIII)V
    .registers 10

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lrr;->c(IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :goto_7
    if-ge p1, p3, :cond_20

    move v0, p2

    :goto_a
    if-ge v0, p4, :cond_1d

    .line 49
    iget-object v1, p0, Lrr;->a:[I

    iget v2, p0, Lrr;->b:I

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    aget v3, v1, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_20
    return-void
.end method

.method private b(IIII)V
    .registers 10

    :goto_0
    if-ge p1, p3, :cond_18

    move v0, p2

    :goto_3
    if-ge v0, p4, :cond_15

    .line 56
    iget-object v1, p0, Lrr;->a:[I

    iget v2, p0, Lrr;->b:I

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    aget v3, v1, v2

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_18
    return-void
.end method

.method private c(IIII)Z
    .registers 8

    :goto_0
    if-ge p1, p3, :cond_1d

    move v0, p2

    :goto_3
    if-ge v0, p4, :cond_1a

    .line 63
    iget-object v1, p0, Lrr;->a:[I

    iget v2, p0, Lrr;->b:I

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x80

    if-ge v1, v2, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Lmcshim/awt/image/BufferedImage;)Lmcshim/awt/image/BufferedImage;
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x40

    .line 13
    iput v1, p0, Lrr;->b:I

    const/16 v2, 0x20

    .line 14
    iput v2, p0, Lrr;->c:I

    .line 16
    new-instance v3, Lmcshim/awt/image/BufferedImage;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v2, v4}, Lmcshim/awt/image/BufferedImage;-><init>(III)V

    .line 17
    invoke-virtual {v3}, Lmcshim/awt/image/BufferedImage;->getGraphics()Lmcshim/awt/Graphics;

    move-result-object v4

    const/4 v5, 0x0

    .line 18
    invoke-virtual {v4, p1, v5, v5, v0}, Lmcshim/awt/Graphics;->drawImage(Lmcshim/awt/Image;IILmcshim/awt/image/ImageObserver;)Z

    .line 19
    invoke-virtual {v4}, Lmcshim/awt/Graphics;->dispose()V

    .line 21
    invoke-virtual {v3}, Lmcshim/awt/image/BufferedImage;->getRaster()Lmcshim/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p1}, Lmcshim/awt/image/WritableRaster;->getDataBuffer()Lmcshim/awt/image/DataBuffer;

    move-result-object p1

    check-cast p1, Lmcshim/awt/image/DataBufferInt;

    invoke-virtual {p1}, Lmcshim/awt/image/DataBufferInt;->getData()[I

    move-result-object p1

    iput-object p1, p0, Lrr;->a:[I

    const/16 p1, 0x10

    .line 23
    invoke-direct {p0, v5, v5, v2, p1}, Lrr;->b(IIII)V

    .line 24
    invoke-direct {p0, v2, v5, v1, v2}, Lrr;->a(IIII)V

    .line 25
    invoke-direct {p0, v5, p1, v1, v2}, Lrr;->b(IIII)V

    move v0, v2

    move v4, v5

    :goto_3a
    if-ge v0, v1, :cond_55

    move v6, v5

    :goto_3d
    if-ge v6, p1, :cond_52

    .line 29
    iget-object v7, p0, Lrr;->a:[I

    mul-int/lit8 v8, v6, 0x40

    add-int/2addr v8, v0

    aget v7, v7, v8

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x80

    if-ge v7, v8, :cond_4f

    const/4 v4, 0x1

    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_55
    if-nez v4, :cond_69

    :goto_57
    if-ge v2, v1, :cond_69

    move v0, v5

    :goto_5a
    if-ge v0, p1, :cond_66

    .line 36
    iget-object v4, p0, Lrr;->a:[I

    mul-int/lit8 v6, v0, 0x40

    add-int/2addr v6, v2

    aget v4, v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_69
    return-object v3
.end method
