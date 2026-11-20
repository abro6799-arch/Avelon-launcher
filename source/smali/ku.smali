###### Class defpackage.ku (ku)
.class public Lku;
.super Law;
.source "SourceFile"


# instance fields
.field private g:Lnet/minecraft/client/Minecraft;

.field private h:[I

.field private i:[I

.field private j:D

.field private k:D


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;)V
    .registers 10

    .line 20
    sget-object v0, Lgm;->aQ:Lgm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgm;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, Law;-><init>(I)V

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 14
    iput-object v1, p0, Lku;->h:[I

    new-array v0, v0, [I

    .line 15
    iput-object v0, p0, Lku;->i:[I

    .line 21
    iput-object p1, p0, Lku;->g:Lnet/minecraft/client/Minecraft;

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lku;->f:I

    .line 25
    :try_start_19
    const-class p1, Lnet/minecraft/client/Minecraft;

    const-string v0, "/gui/items.png"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-static {p1}, Lmcshim/imageio/ImageIO;->read(Ljava/net/URL;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    .line 26
    iget p1, p0, Lku;->b:I

    rem-int/lit8 p1, p1, 0x10

    mul-int/lit8 v1, p1, 0x10

    .line 27
    iget p1, p0, Lku;->b:I

    div-int/lit8 p1, p1, 0x10

    mul-int/lit8 v2, p1, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x10

    .line 28
    iget-object v5, p0, Lku;->h:[I

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-virtual/range {v0 .. v7}, Lmcshim/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 30
    const-class p1, Lnet/minecraft/client/Minecraft;

    const-string v0, "/misc/dial.png"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-static {p1}, Lmcshim/imageio/ImageIO;->read(Ljava/net/URL;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/16 v4, 0x10

    .line 31
    iget-object v5, p0, Lku;->i:[I

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-virtual/range {v0 .. v7}, Lmcshim/awt/image/BufferedImage;->getRGB(IIII[III)[I
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5c
    return-void
.end method


# virtual methods
.method public a()V
    .registers 19

    move-object/from16 v0, p0

    .line 39
    iget-object v1, v0, Lku;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    if-eqz v1, :cond_39

    iget-object v1, v0, Lku;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    if-eqz v1, :cond_39

    .line 40
    iget-object v1, v0, Lku;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lfd;->b(F)F

    move-result v1

    neg-float v1, v1

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    .line 42
    iget-object v3, v0, Lku;->g:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v3, v3, Lfd;->t:Lxa;

    iget-boolean v3, v3, Lxa;->c:Z

    if-eqz v3, :cond_3b

    .line 43
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x400921fb60000000L    # 3.1415927410125732

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    goto :goto_3b

    :cond_39
    const-wide/16 v1, 0x0

    .line 47
    :cond_3b
    :goto_3b
    iget-wide v3, v0, Lku;->j:D

    sub-double/2addr v1, v3

    :goto_3e
    const-wide v3, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v3, v1, v3

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v3, :cond_4e

    add-double/2addr v1, v4

    goto :goto_3e

    :cond_4e
    :goto_4e
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    cmpl-double v3, v1, v6

    if-ltz v3, :cond_59

    sub-double/2addr v1, v4

    goto :goto_4e

    :cond_59
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_60

    move-wide v1, v3

    :cond_60
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_67

    move-wide v1, v3

    .line 54
    :cond_67
    iget-wide v3, v0, Lku;->k:D

    const-wide v5, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v1, v5

    add-double/2addr v3, v1

    const-wide v1, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v1

    .line 55
    iput-wide v3, v0, Lku;->k:D

    .line 57
    iget-wide v1, v0, Lku;->j:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Lku;->j:D

    .line 59
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 60
    iget-wide v3, v0, Lku;->j:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const/4 v5, 0x0

    move v6, v5

    :goto_89
    const/16 v7, 0x100

    if-ge v6, v7, :cond_128

    .line 64
    iget-object v7, v0, Lku;->h:[I

    aget v7, v7, v6

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v9, v7, 0x10

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    shr-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    if-ne v9, v7, :cond_ed

    if-nez v10, :cond_ed

    if-lez v7, :cond_ed

    .line 70
    rem-int/lit8 v7, v6, 0x10

    int-to-double v7, v7

    const-wide/high16 v10, 0x402e000000000000L    # 15.0

    div-double/2addr v7, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v7, v12

    neg-double v7, v7

    .line 71
    div-int/lit8 v14, v6, 0x10

    int-to-double v14, v14

    div-double/2addr v14, v10

    sub-double/2addr v14, v12

    mul-double v10, v7, v3

    mul-double v16, v14, v1

    add-double v10, v10, v16

    add-double/2addr v10, v12

    const-wide/high16 v16, 0x4030000000000000L    # 16.0

    mul-double v10, v10, v16

    double-to-int v10, v10

    mul-double/2addr v14, v3

    mul-double/2addr v7, v1

    sub-double/2addr v14, v7

    add-double/2addr v14, v12

    mul-double v14, v14, v16

    double-to-int v7, v14

    and-int/lit8 v8, v10, 0xf

    and-int/lit8 v7, v7, 0xf

    mul-int/lit8 v7, v7, 0x10

    add-int/2addr v8, v7

    .line 78
    iget-object v7, v0, Lku;->i:[I

    aget v7, v7, v8

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v10, v7, 0x10

    and-int/lit16 v10, v10, 0xff

    mul-int/2addr v10, v9

    .line 79
    div-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v11, v11, 0xff

    mul-int/2addr v11, v9

    .line 80
    div-int/lit16 v11, v11, 0xff

    shr-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    mul-int/2addr v7, v9

    .line 81
    div-int/lit16 v7, v7, 0xff

    move v9, v10

    move v10, v11

    .line 84
    :cond_ed
    iget-boolean v11, v0, Lku;->c:Z

    if-eqz v11, :cond_106

    mul-int/lit8 v9, v9, 0x1e

    mul-int/lit8 v11, v10, 0x3b

    add-int/2addr v11, v9

    mul-int/lit8 v12, v7, 0xb

    add-int/2addr v11, v12

    .line 85
    div-int/lit8 v11, v11, 0x64

    mul-int/lit8 v10, v10, 0x46

    add-int/2addr v10, v9

    .line 86
    div-int/lit8 v10, v10, 0x64

    mul-int/lit8 v7, v7, 0x46

    add-int/2addr v9, v7

    .line 87
    div-int/lit8 v7, v9, 0x64

    move v9, v11

    .line 94
    :cond_106
    iget-object v11, v0, Lku;->a:[B

    mul-int/lit8 v12, v6, 0x4

    add-int/lit8 v13, v12, 0x0

    int-to-byte v9, v9

    aput-byte v9, v11, v13

    .line 95
    iget-object v9, v0, Lku;->a:[B

    add-int/lit8 v11, v12, 0x1

    int-to-byte v10, v10

    aput-byte v10, v9, v11

    .line 96
    iget-object v9, v0, Lku;->a:[B

    add-int/lit8 v10, v12, 0x2

    int-to-byte v7, v7

    aput-byte v7, v9, v10

    .line 97
    iget-object v7, v0, Lku;->a:[B

    add-int/lit8 v12, v12, 0x3

    int-to-byte v8, v8

    aput-byte v8, v7, v12

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_89

    :cond_128
    return-void
.end method
