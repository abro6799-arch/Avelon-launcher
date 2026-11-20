###### Class defpackage.av (av)
.class public Lav;
.super Law;
.source "SourceFile"


# instance fields
.field private g:Lnet/minecraft/client/Minecraft;

.field private h:[I

.field private i:D

.field private j:D


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;)V
    .registers 10

    .line 20
    sget-object v0, Lgm;->aO:Lgm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgm;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, Law;-><init>(I)V

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 15
    iput-object v0, p0, Lav;->h:[I

    .line 21
    iput-object p1, p0, Lav;->g:Lnet/minecraft/client/Minecraft;

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lav;->f:I

    .line 25
    :try_start_15
    const-class p1, Lnet/minecraft/client/Minecraft;

    const-string v0, "/gui/items.png"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-static {p1}, Lmcshim/imageio/ImageIO;->read(Ljava/net/URL;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    .line 26
    iget p1, p0, Lav;->b:I

    rem-int/lit8 p1, p1, 0x10

    mul-int/lit8 v1, p1, 0x10

    .line 27
    iget p1, p0, Lav;->b:I

    div-int/lit8 p1, p1, 0x10

    mul-int/lit8 v2, p1, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x10

    .line 28
    iget-object v5, p0, Lav;->h:[I

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-virtual/range {v0 .. v7}, Lmcshim/awt/image/BufferedImage;->getRGB(IIII[III)[I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3e
    return-void
.end method


# virtual methods
.method public a()V
    .registers 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/16 v3, 0x100

    const/16 v4, 0xff

    const/16 v5, 0x64

    if-ge v2, v3, :cond_53

    .line 36
    iget-object v3, v0, Lav;->h:[I

    aget v3, v3, v2

    shr-int/lit8 v6, v3, 0x18

    and-int/2addr v6, v4

    shr-int/lit8 v7, v3, 0x10

    and-int/2addr v7, v4

    shr-int/lit8 v8, v3, 0x8

    and-int/2addr v8, v4

    shr-int/2addr v3, v1

    and-int/2addr v3, v4

    .line 41
    iget-boolean v4, v0, Lav;->c:Z

    if-eqz v4, :cond_32

    mul-int/lit8 v7, v7, 0x1e

    mul-int/lit8 v4, v8, 0x3b

    add-int/2addr v4, v7

    mul-int/lit8 v9, v3, 0xb

    add-int/2addr v4, v9

    .line 42
    div-int/2addr v4, v5

    mul-int/lit8 v8, v8, 0x46

    add-int/2addr v8, v7

    .line 43
    div-int/2addr v8, v5

    mul-int/lit8 v3, v3, 0x46

    add-int/2addr v7, v3

    .line 44
    div-int/lit8 v3, v7, 0x64

    move v7, v4

    .line 51
    :cond_32
    iget-object v4, v0, Lav;->a:[B

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v9, v5, 0x0

    int-to-byte v7, v7

    aput-byte v7, v4, v9

    .line 52
    iget-object v4, v0, Lav;->a:[B

    add-int/lit8 v7, v5, 0x1

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 53
    iget-object v4, v0, Lav;->a:[B

    add-int/lit8 v7, v5, 0x2

    int-to-byte v3, v3

    aput-byte v3, v4, v7

    .line 54
    iget-object v3, v0, Lav;->a:[B

    add-int/lit8 v5, v5, 0x3

    int-to-byte v4, v6

    aput-byte v4, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 59
    :cond_53
    iget-object v1, v0, Lav;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    if-eqz v1, :cond_af

    iget-object v1, v0, Lav;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    if-eqz v1, :cond_af

    .line 60
    iget-object v1, v0, Lav;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v1}, Lfd;->u()Lbr;

    move-result-object v1

    .line 61
    iget v6, v1, Lbr;->a:I

    int-to-double v6, v6

    iget-object v8, v0, Lav;->g:Lnet/minecraft/client/Minecraft;

    iget-object v8, v8, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v8, v8, Ldc;->aM:D

    sub-double/2addr v6, v8

    .line 62
    iget v1, v1, Lbr;->c:I

    int-to-double v8, v1

    iget-object v1, v0, Lav;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v10, v1, Ldc;->aO:D

    sub-double/2addr v8, v10

    .line 63
    iget-object v1, v0, Lav;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v1, v1, Ldc;->aS:F

    const/high16 v10, 0x42b40000    # 90.0f

    sub-float/2addr v1, v10

    float-to-double v10, v1

    mul-double/2addr v10, v2

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double/2addr v10, v6

    .line 64
    iget-object v1, v0, Lav;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v1, v1, Lfd;->t:Lxa;

    iget-boolean v1, v1, Lxa;->c:Z

    if-eqz v1, :cond_b1

    .line 65
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x400921fb60000000L    # 3.1415927410125732

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v10, v6, v8

    goto :goto_b1

    :cond_af
    const-wide/16 v10, 0x0

    .line 69
    :cond_b1
    :goto_b1
    iget-wide v6, v0, Lav;->i:D

    sub-double/2addr v10, v6

    :goto_b4
    const-wide v6, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v1, v10, v6

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v1, :cond_c4

    add-double/2addr v10, v6

    goto :goto_b4

    :cond_c4
    :goto_c4
    cmpl-double v1, v10, v2

    if-ltz v1, :cond_ca

    sub-double/2addr v10, v6

    goto :goto_c4

    :cond_ca
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpg-double v3, v10, v1

    if-gez v3, :cond_d1

    move-wide v10, v1

    :cond_d1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v10, v1

    if-lez v3, :cond_d8

    move-wide v10, v1

    .line 76
    :cond_d8
    iget-wide v1, v0, Lav;->j:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, v6

    add-double/2addr v1, v10

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v6

    .line 77
    iput-wide v1, v0, Lav;->j:D

    .line 79
    iget-wide v6, v0, Lav;->i:D

    add-double/2addr v6, v1

    iput-wide v6, v0, Lav;->i:D

    .line 80
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 81
    iget-wide v6, v0, Lav;->i:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const/4 v3, -0x4

    :goto_f9
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v10, 0x401e000000000000L    # 7.5

    const-wide/high16 v12, 0x4021000000000000L    # 8.5

    const-wide v14, 0x3fd3333333333333L    # 0.3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_143

    int-to-double v4, v3

    mul-double v19, v6, v4

    mul-double v19, v19, v14

    add-double v12, v19, v12

    double-to-int v12, v12

    mul-double/2addr v4, v1

    mul-double/2addr v4, v14

    mul-double/2addr v4, v8

    sub-double/2addr v10, v4

    double-to-int v4, v10

    const/16 v5, 0x10

    mul-int/2addr v4, v5

    add-int/2addr v4, v12

    .line 92
    iget-boolean v5, v0, Lav;->c:Z

    .line 102
    iget-object v5, v0, Lav;->a:[B

    const/4 v8, 0x4

    mul-int/2addr v4, v8

    add-int/lit8 v8, v4, 0x0

    const/16 v9, 0x64

    int-to-byte v10, v9

    aput-byte v10, v5, v8

    .line 103
    iget-object v5, v0, Lav;->a:[B

    add-int/lit8 v8, v4, 0x1

    int-to-byte v10, v9

    aput-byte v10, v5, v8

    .line 104
    iget-object v5, v0, Lav;->a:[B

    add-int/lit8 v8, v4, 0x2

    int-to-byte v10, v9

    aput-byte v10, v5, v8

    .line 105
    iget-object v5, v0, Lav;->a:[B

    add-int/lit8 v4, v4, 0x3

    const/16 v8, 0xff

    int-to-byte v9, v8

    aput-byte v9, v5, v4

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xff

    const/16 v5, 0x64

    goto :goto_f9

    :cond_143
    const/4 v3, -0x8

    const/16 v4, 0x10

    :goto_146
    if-gt v3, v4, :cond_1bc

    int-to-double v4, v3

    mul-double v19, v1, v4

    mul-double v19, v19, v14

    add-double v10, v19, v12

    double-to-int v10, v10

    mul-double/2addr v4, v6

    mul-double/2addr v4, v14

    mul-double/2addr v4, v8

    const-wide/high16 v19, 0x401e000000000000L    # 7.5

    add-double v4, v4, v19

    double-to-int v4, v4

    const/16 v5, 0x10

    mul-int/2addr v4, v5

    add-int/2addr v4, v10

    if-ltz v3, :cond_161

    const/16 v10, 0xff

    goto :goto_163

    :cond_161
    const/16 v10, 0x64

    :goto_163
    const/16 v11, 0x14

    if-ltz v3, :cond_16a

    move/from16 v18, v11

    goto :goto_16c

    :cond_16a
    const/16 v18, 0x64

    :goto_16c
    if-ltz v3, :cond_16f

    goto :goto_171

    :cond_16f
    const/16 v11, 0x64

    .line 117
    :goto_171
    iget-boolean v5, v0, Lav;->c:Z

    if-eqz v5, :cond_18f

    mul-int/lit8 v10, v10, 0x1e

    mul-int/lit8 v5, v18, 0x3b

    add-int/2addr v5, v10

    mul-int/lit8 v21, v11, 0xb

    add-int v5, v5, v21

    const/16 v16, 0x64

    .line 118
    div-int/lit8 v5, v5, 0x64

    mul-int/lit8 v18, v18, 0x46

    add-int v18, v10, v18

    .line 119
    div-int/lit8 v18, v18, 0x64

    mul-int/lit8 v11, v11, 0x46

    add-int/2addr v10, v11

    .line 120
    div-int/lit8 v11, v10, 0x64

    move v10, v5

    goto :goto_191

    :cond_18f
    const/16 v16, 0x64

    :goto_191
    move/from16 v5, v18

    .line 127
    iget-object v8, v0, Lav;->a:[B

    const/4 v9, 0x4

    mul-int/2addr v4, v9

    add-int/lit8 v17, v4, 0x0

    int-to-byte v10, v10

    aput-byte v10, v8, v17

    .line 128
    iget-object v8, v0, Lav;->a:[B

    add-int/lit8 v10, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v8, v10

    .line 129
    iget-object v5, v0, Lav;->a:[B

    add-int/lit8 v8, v4, 0x2

    int-to-byte v10, v11

    aput-byte v10, v5, v8

    .line 130
    iget-object v5, v0, Lav;->a:[B

    add-int/lit8 v4, v4, 0x3

    const/16 v8, 0xff

    int-to-byte v10, v8

    aput-byte v10, v5, v4

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v10, v19

    const/16 v4, 0x10

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    goto :goto_146

    :cond_1bc
    return-void
.end method
