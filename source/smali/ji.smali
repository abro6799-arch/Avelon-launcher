###### Class defpackage.ji (ji)
.class public Lji;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# instance fields
.field private b:Ljava/util/HashMap;

.field private c:Ljava/util/HashMap;

.field private d:Ljava/util/HashMap;

.field private e:Ljava/nio/IntBuffer;

.field private f:Ljava/nio/ByteBuffer;

.field private g:Ljava/util/List;

.field private h:Ljava/util/Map;

.field private i:Lkv;

.field private j:Z

.field private k:Z

.field private l:Lik;

.field private m:Lmcshim/awt/image/BufferedImage;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lik;Lkv;)V
    .registers 8

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lji;->b:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lji;->c:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lji;->d:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 31
    invoke-static {v0}, Lge;->d(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lji;->e:Ljava/nio/IntBuffer;

    const/high16 v1, 0x100000

    .line 32
    invoke-static {v1}, Lge;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lji;->f:Ljava/nio/ByteBuffer;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lji;->g:Ljava/util/List;

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lji;->h:Ljava/util/Map;

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lji;->j:Z

    .line 39
    iput-boolean v1, p0, Lji;->k:Z

    .line 42
    new-instance v2, Lmcshim/awt/image/BufferedImage;

    const/4 v3, 0x2

    const/16 v4, 0x40

    invoke-direct {v2, v4, v4, v3}, Lmcshim/awt/image/BufferedImage;-><init>(III)V

    iput-object v2, p0, Lji;->m:Lmcshim/awt/image/BufferedImage;

    .line 45
    iput-object p1, p0, Lji;->l:Lik;

    .line 46
    iput-object p2, p0, Lji;->i:Lkv;

    .line 48
    invoke-virtual {v2}, Lmcshim/awt/image/BufferedImage;->getGraphics()Lmcshim/awt/Graphics;

    move-result-object p1

    .line 49
    sget-object p2, Lmcshim/awt/Color;->WHITE:Lmcshim/awt/Color;

    invoke-virtual {p1, p2}, Lmcshim/awt/Graphics;->setColor(Lmcshim/awt/Color;)V

    .line 50
    invoke-virtual {p1, v1, v1, v4, v4}, Lmcshim/awt/Graphics;->fillRect(IIII)V

    .line 51
    sget-object p2, Lmcshim/awt/Color;->BLACK:Lmcshim/awt/Color;

    invoke-virtual {p1, p2}, Lmcshim/awt/Graphics;->setColor(Lmcshim/awt/Color;)V

    const-string p2, "missingtex"

    const/16 v1, 0xa

    .line 52
    invoke-virtual {p1, p2, v0, v1}, Lmcshim/awt/Graphics;->drawString(Ljava/lang/String;II)V

    .line 54
    invoke-virtual {p1}, Lmcshim/awt/Graphics;->dispose()V

    return-void
.end method

.method private a(II)I
    .registers 5

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xfefefe

    and-int/2addr p1, v1

    and-int/2addr p2, v1

    add-int/2addr p1, p2

    shr-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;
    .registers 3

    .line 532
    invoke-static {p1}, Lmcshim/imageio/ImageIO;->read(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    .line 533
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method private a(Lmcshim/awt/image/BufferedImage;[I)[I
    .registers 11

    .line 105
    invoke-virtual {p1}, Lmcshim/awt/image/BufferedImage;->getWidth()I

    move-result v7

    .line 106
    invoke-virtual {p1}, Lmcshim/awt/image/BufferedImage;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v3, v7

    move-object v5, p2

    .line 107
    invoke-virtual/range {v0 .. v7}, Lmcshim/awt/image/BufferedImage;->getRGB(IIII[III)[I

    return-object p2
.end method

.method private b(II)I
    .registers 11

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x18

    const/16 v2, 0xff

    and-int/2addr v1, v2

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v2

    add-int v3, v1, v0

    if-nez v3, :cond_17

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_19

    :cond_17
    move v3, v1

    move v1, v2

    :goto_19
    shr-int/lit8 v4, p1, 0x10

    and-int/2addr v4, v2

    mul-int/2addr v4, v3

    shr-int/lit8 v5, p1, 0x8

    and-int/2addr v5, v2

    mul-int/2addr v5, v3

    and-int/2addr p1, v2

    mul-int/2addr p1, v3

    shr-int/lit8 v6, p2, 0x10

    and-int/2addr v6, v2

    mul-int/2addr v6, v0

    shr-int/lit8 v7, p2, 0x8

    and-int/2addr v7, v2

    mul-int/2addr v7, v0

    and-int/2addr p2, v2

    mul-int/2addr p2, v0

    add-int/2addr v4, v6

    add-int/2addr v3, v0

    .line 467
    div-int/2addr v4, v3

    add-int/2addr v5, v7

    .line 468
    div-int/2addr v5, v3

    add-int/2addr p1, p2

    .line 469
    div-int/2addr p1, v3

    shl-int/lit8 p2, v1, 0x18

    shl-int/lit8 v0, v4, 0x10

    or-int/2addr p2, v0

    shl-int/lit8 v0, v5, 0x8

    or-int/2addr p2, v0

    or-int/2addr p1, p2

    return p1
.end method

.method private b(Lmcshim/awt/image/BufferedImage;)[I
    .registers 11

    .line 97
    invoke-virtual {p1}, Lmcshim/awt/image/BufferedImage;->getWidth()I

    move-result v7

    .line 98
    invoke-virtual {p1}, Lmcshim/awt/image/BufferedImage;->getHeight()I

    move-result v4

    mul-int v0, v7, v4

    .line 99
    new-array v8, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v3, v7

    move-object v5, v8

    .line 100
    invoke-virtual/range {v0 .. v7}, Lmcshim/awt/image/BufferedImage;->getRGB(IIII[III)[I

    return-object v8
.end method

.method private c(Lmcshim/awt/image/BufferedImage;)Lmcshim/awt/image/BufferedImage;
    .registers 10

    .line 156
    invoke-virtual {p1}, Lmcshim/awt/image/BufferedImage;->getWidth()I

    move-result v0

    const/16 v1, 0x10

    div-int/2addr v0, v1

    .line 158
    new-instance v2, Lmcshim/awt/image/BufferedImage;

    invoke-virtual {p1}, Lmcshim/awt/image/BufferedImage;->getHeight()I

    move-result v3

    mul-int/2addr v3, v0

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4}, Lmcshim/awt/image/BufferedImage;-><init>(III)V

    .line 159
    invoke-virtual {v2}, Lmcshim/awt/image/BufferedImage;->getGraphics()Lmcshim/awt/Graphics;

    move-result-object v3

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v0, :cond_27

    neg-int v5, v4

    mul-int/2addr v5, v1

    .line 161
    invoke-virtual {p1}, Lmcshim/awt/image/BufferedImage;->getHeight()I

    move-result v6

    mul-int/2addr v6, v4

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v5, v6, v7}, Lmcshim/awt/Graphics;->drawImage(Lmcshim/awt/Image;IILmcshim/awt/image/ImageObserver;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 163
    :cond_27
    invoke-virtual {v3}, Lmcshim/awt/Graphics;->dispose()V

    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 332
    iget-object v0, p0, Lji;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lek;

    if-eqz p1, :cond_29

    .line 334
    iget-object v0, p1, Lek;->a:Lmcshim/awt/image/BufferedImage;

    if-eqz v0, :cond_29

    iget-boolean v0, p1, Lek;->d:Z

    if-nez v0, :cond_29

    .line 335
    iget v0, p1, Lek;->c:I

    if-gez v0, :cond_1f

    .line 336
    iget-object v0, p1, Lek;->a:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {p0, v0}, Lji;->a(Lmcshim/awt/image/BufferedImage;)I

    move-result v0

    iput v0, p1, Lek;->c:I

    goto :goto_26

    .line 338
    :cond_1f
    iget-object v0, p1, Lek;->a:Lmcshim/awt/image/BufferedImage;

    iget v1, p1, Lek;->c:I

    invoke-virtual {p0, v0, v1}, Lji;->a(Lmcshim/awt/image/BufferedImage;I)V

    :goto_26
    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p1, Lek;->d:Z

    :cond_29
    if-eqz p1, :cond_33

    .line 343
    iget v0, p1, Lek;->c:I

    if-gez v0, :cond_30

    goto :goto_33

    .line 347
    :cond_30
    iget p1, p1, Lek;->c:I

    return p1

    :cond_33
    :goto_33
    if-nez p2, :cond_37

    const/4 p1, -0x1

    return p1

    .line 345
    :cond_37
    invoke-virtual {p0, p2}, Lji;->b(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Lmcshim/awt/image/BufferedImage;)I
    .registers 5

    .line 168
    iget-object v0, p0, Lji;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 169
    iget-object v0, p0, Lji;->e:Ljava/nio/IntBuffer;

    invoke-static {v0}, Lge;->a(Ljava/nio/IntBuffer;)V

    .line 170
    iget-object v0, p0, Lji;->e:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 171
    invoke-virtual {p0, p1, v0}, Lji;->a(Lmcshim/awt/image/BufferedImage;I)V

    .line 172
    iget-object v1, p0, Lji;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public a(Ljava/lang/String;Lnf;)Lek;
    .registers 6

    .line 351
    iget-object v0, p0, Lji;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lek;

    if-nez v0, :cond_15

    .line 353
    iget-object v1, p0, Lji;->h:Ljava/util/Map;

    new-instance v2, Lek;

    invoke-direct {v2, p1, p2}, Lek;-><init>(Ljava/lang/String;Lnf;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 355
    :cond_15
    iget p1, v0, Lek;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lek;->b:I

    :goto_1b
    return-object v0
.end method

.method public a()V
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 377
    :goto_4
    iget-object v3, v0, Lji;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v2, v3, :cond_10a

    .line 378
    iget-object v3, v0, Lji;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Law;

    .line 379
    iget-object v7, v0, Lji;->i:Lkv;

    iget-boolean v7, v7, Lkv;->g:Z

    iput-boolean v7, v3, Law;->c:Z

    .line 380
    invoke-virtual {v3}, Law;->a()V

    .line 382
    iget-object v7, v0, Lji;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 383
    iget-object v7, v0, Lji;->f:Ljava/nio/ByteBuffer;

    iget-object v8, v3, Law;->a:[B

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 384
    iget-object v7, v0, Lji;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    iget-object v8, v3, Law;->a:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 386
    invoke-virtual {v3, v0}, Law;->a(Lji;)V

    move v7, v1

    .line 388
    :goto_3d
    iget v8, v3, Law;->e:I

    if-ge v7, v8, :cond_105

    move v8, v1

    .line 389
    :goto_42
    iget v9, v3, Law;->e:I

    if-ge v8, v9, :cond_fd

    const/16 v10, 0xde1

    const/4 v11, 0x0

    .line 391
    iget v9, v3, Law;->b:I

    rem-int/2addr v9, v5

    mul-int/2addr v9, v5

    mul-int/lit8 v12, v7, 0x10

    add-int/2addr v12, v9

    iget v9, v3, Law;->b:I

    div-int/2addr v9, v5

    mul-int/2addr v9, v5

    mul-int/lit8 v13, v8, 0x10

    add-int/2addr v13, v9

    const/16 v14, 0x10

    const/16 v15, 0x10

    const/16 v16, 0x1908

    const/16 v17, 0x1401

    iget-object v9, v0, Lji;->f:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v9

    invoke-static/range {v10 .. v18}, Lorg/lwjgl/opengl/GL11;->glTexSubImage2D(IIIIIIIILjava/nio/ByteBuffer;)V

    .line 392
    sget-boolean v9, Lji;->a:Z

    if-eqz v9, :cond_f5

    move v9, v6

    :goto_6b
    if-gt v9, v4, :cond_f5

    add-int/lit8 v10, v9, -0x1

    shr-int v10, v5, v10

    shr-int v15, v5, v9

    move v11, v1

    :goto_74
    if-ge v11, v15, :cond_d2

    move v12, v1

    :goto_77
    if-ge v12, v15, :cond_cb

    .line 399
    iget-object v13, v0, Lji;->f:Ljava/nio/ByteBuffer;

    mul-int/lit8 v14, v11, 0x2

    add-int/lit8 v16, v14, 0x0

    mul-int/lit8 v17, v12, 0x2

    add-int/lit8 v18, v17, 0x0

    mul-int v18, v18, v10

    add-int v19, v16, v18

    mul-int/lit8 v1, v19, 0x4

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 400
    iget-object v13, v0, Lji;->f:Ljava/nio/ByteBuffer;

    add-int/2addr v14, v6

    add-int v18, v14, v18

    mul-int/lit8 v5, v18, 0x4

    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 401
    iget-object v13, v0, Lji;->f:Ljava/nio/ByteBuffer;

    add-int/lit8 v17, v17, 0x1

    mul-int v17, v17, v10

    add-int v14, v14, v17

    mul-int/2addr v14, v4

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v13

    .line 402
    iget-object v14, v0, Lji;->f:Ljava/nio/ByteBuffer;

    add-int v16, v16, v17

    mul-int/lit8 v6, v16, 0x4

    invoke-virtual {v14, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    .line 403
    invoke-direct {v0, v1, v5}, Lji;->a(II)I

    move-result v1

    invoke-direct {v0, v13, v6}, Lji;->a(II)I

    move-result v5

    invoke-direct {v0, v1, v5}, Lji;->a(II)I

    move-result v1

    .line 404
    iget-object v5, v0, Lji;->f:Ljava/nio/ByteBuffer;

    mul-int v6, v12, v15

    add-int/2addr v6, v11

    mul-int/2addr v6, v4

    invoke-virtual {v5, v6, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x1

    goto :goto_77

    :cond_cb
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x1

    goto :goto_74

    :cond_d2
    const/16 v10, 0xde1

    .line 406
    iget v1, v3, Law;->b:I

    const/16 v5, 0x10

    rem-int/2addr v1, v5

    mul-int v12, v1, v15

    iget v1, v3, Law;->b:I

    div-int/2addr v1, v5

    mul-int v13, v1, v15

    const/16 v16, 0x1908

    const/16 v17, 0x1401

    iget-object v1, v0, Lji;->f:Ljava/nio/ByteBuffer;

    move v11, v9

    move v14, v15

    move-object/from16 v18, v1

    invoke-static/range {v10 .. v18}, Lorg/lwjgl/opengl/GL11;->glTexSubImage2D(IIIIIIIILjava/nio/ByteBuffer;)V

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x1

    goto/16 :goto_6b

    :cond_f5
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x1

    goto/16 :goto_42

    :cond_fd
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x1

    goto/16 :goto_3d

    :cond_105
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_10a
    const/4 v1, 0x0

    .line 412
    :goto_10b
    iget-object v2, v0, Lji;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d1

    .line 413
    iget-object v2, v0, Lji;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Law;

    .line 415
    iget v3, v2, Law;->d:I

    if-lez v3, :cond_1c8

    .line 416
    iget-object v3, v0, Lji;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 417
    iget-object v3, v0, Lji;->f:Ljava/nio/ByteBuffer;

    iget-object v5, v2, Law;->a:[B

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 418
    iget-object v3, v0, Lji;->f:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    iget-object v6, v2, Law;->a:[B

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/16 v3, 0xde1

    .line 419
    iget v2, v2, Law;->d:I

    invoke-static {v3, v2}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/16 v11, 0x10

    const/16 v12, 0x1908

    const/16 v13, 0x1401

    .line 420
    iget-object v14, v0, Lji;->f:Ljava/nio/ByteBuffer;

    invoke-static/range {v6 .. v14}, Lorg/lwjgl/opengl/GL11;->glTexSubImage2D(IIIIIIIILjava/nio/ByteBuffer;)V

    .line 421
    sget-boolean v2, Lji;->a:Z

    if-eqz v2, :cond_1c9

    const/4 v2, 0x1

    :goto_156
    if-gt v2, v4, :cond_1c9

    add-int/lit8 v3, v2, -0x1

    const/16 v15, 0x10

    shr-int v3, v15, v3

    shr-int v11, v15, v2

    move v6, v5

    :goto_161
    if-ge v6, v11, :cond_1b4

    move v7, v5

    :goto_164
    if-ge v7, v11, :cond_1af

    .line 428
    iget-object v8, v0, Lji;->f:Ljava/nio/ByteBuffer;

    mul-int/lit8 v9, v6, 0x2

    add-int/lit8 v10, v9, 0x0

    mul-int/lit8 v12, v7, 0x2

    add-int/lit8 v13, v12, 0x0

    mul-int/2addr v13, v3

    add-int v14, v10, v13

    mul-int/2addr v14, v4

    invoke-virtual {v8, v14}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    .line 429
    iget-object v14, v0, Lji;->f:Ljava/nio/ByteBuffer;

    const/16 v16, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v13, v9

    mul-int/2addr v13, v4

    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v13

    .line 430
    iget-object v14, v0, Lji;->f:Ljava/nio/ByteBuffer;

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v3

    add-int/2addr v9, v12

    mul-int/2addr v9, v4

    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    .line 431
    iget-object v14, v0, Lji;->f:Ljava/nio/ByteBuffer;

    add-int/2addr v10, v12

    mul-int/2addr v10, v4

    invoke-virtual {v14, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    .line 432
    invoke-direct {v0, v8, v13}, Lji;->a(II)I

    move-result v8

    invoke-direct {v0, v9, v10}, Lji;->a(II)I

    move-result v9

    invoke-direct {v0, v8, v9}, Lji;->a(II)I

    move-result v8

    .line 433
    iget-object v9, v0, Lji;->f:Ljava/nio/ByteBuffer;

    mul-int v10, v7, v11

    add-int/2addr v10, v6

    mul-int/2addr v10, v4

    invoke-virtual {v9, v10, v8}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_164

    :cond_1af
    const/16 v16, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_161

    :cond_1b4
    const/16 v16, 0x1

    const/16 v6, 0xde1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0x1908

    const/16 v13, 0x1401

    .line 435
    iget-object v14, v0, Lji;->f:Ljava/nio/ByteBuffer;

    move v7, v2

    move v10, v11

    invoke-static/range {v6 .. v14}, Lorg/lwjgl/opengl/GL11;->glTexSubImage2D(IIIIIIIILjava/nio/ByteBuffer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_156

    :cond_1c8
    const/4 v5, 0x0

    :cond_1c9
    const/16 v15, 0x10

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10b

    :cond_1d1
    return-void
.end method

.method public a(I)V
    .registers 4

    .line 324
    iget-object v0, p0, Lji;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lji;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 326
    iget-object v0, p0, Lji;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 327
    iget-object p1, p0, Lji;->e:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 328
    iget-object p1, p0, Lji;->e:Ljava/nio/IntBuffer;

    invoke-static {p1}, Lorg/lwjgl/opengl/GL11;->glDeleteTextures(Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public a(Law;)V
    .registers 3

    .line 372
    iget-object v0, p0, Lji;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {p1}, Law;->a()V

    return-void
.end method

.method public a(Lmcshim/awt/image/BufferedImage;I)V
    .registers 21

    move-object/from16 v0, p0

    const/16 v1, 0xde1

    move/from16 v2, p2

    .line 177
    invoke-static {v1, v2}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 179
    sget-boolean v2, Lji;->a:Z

    const/16 v3, 0x2800

    const/16 v4, 0x2600

    const/16 v5, 0x2801

    if-eqz v2, :cond_1c

    const/16 v2, 0x2702

    .line 180
    invoke-static {v1, v5, v2}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 181
    invoke-static {v1, v3, v4}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    goto :goto_22

    .line 189
    :cond_1c
    invoke-static {v1, v5, v4}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 190
    invoke-static {v1, v3, v4}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 192
    :goto_22
    iget-boolean v2, v0, Lji;->k:Z

    if-eqz v2, :cond_2e

    const/16 v2, 0x2601

    .line 193
    invoke-static {v1, v5, v2}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 194
    invoke-static {v1, v3, v2}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 197
    :cond_2e
    iget-boolean v2, v0, Lji;->j:Z

    const/16 v3, 0x2803

    const/16 v4, 0x2802

    if-eqz v2, :cond_3f

    const/16 v2, 0x2900

    .line 198
    invoke-static {v1, v4, v2}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 199
    invoke-static {v1, v3, v2}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    goto :goto_47

    :cond_3f
    const/16 v2, 0x2901

    .line 201
    invoke-static {v1, v4, v2}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 202
    invoke-static {v1, v3, v2}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 205
    :goto_47
    invoke-virtual/range {p1 .. p1}, Lmcshim/awt/image/BufferedImage;->getWidth()I

    move-result v1

    .line 206
    invoke-virtual/range {p1 .. p1}, Lmcshim/awt/image/BufferedImage;->getHeight()I

    move-result v2

    mul-int v3, v1, v2

    .line 208
    new-array v4, v3, [I

    mul-int/lit8 v13, v3, 0x4

    .line 209
    new-array v14, v13, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move v8, v1

    move v9, v2

    move-object v10, v4

    move v12, v1

    .line 210
    invoke-virtual/range {v5 .. v12}, Lmcshim/awt/image/BufferedImage;->getRGB(IIII[III)[I

    const/4 v15, 0x0

    move v5, v15

    :goto_65
    if-ge v5, v3, :cond_ad

    .line 212
    aget v6, v4, v5

    shr-int/lit8 v7, v6, 0x18

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v6, v6, 0xff

    .line 217
    iget-object v10, v0, Lji;->i:Lkv;

    if-eqz v10, :cond_94

    iget-boolean v10, v10, Lkv;->g:Z

    if-eqz v10, :cond_94

    mul-int/lit8 v8, v8, 0x1e

    mul-int/lit8 v10, v9, 0x3b

    add-int/2addr v10, v8

    mul-int/lit8 v11, v6, 0xb

    add-int/2addr v10, v11

    .line 218
    div-int/lit8 v10, v10, 0x64

    mul-int/lit8 v9, v9, 0x46

    add-int/2addr v9, v8

    .line 219
    div-int/lit8 v9, v9, 0x64

    mul-int/lit8 v6, v6, 0x46

    add-int/2addr v8, v6

    .line 220
    div-int/lit8 v6, v8, 0x64

    move v8, v10

    :cond_94
    mul-int/lit8 v10, v5, 0x4

    add-int/lit8 v11, v10, 0x0

    int-to-byte v8, v8

    .line 227
    aput-byte v8, v14, v11

    add-int/lit8 v8, v10, 0x1

    int-to-byte v9, v9

    .line 228
    aput-byte v9, v14, v8

    add-int/lit8 v8, v10, 0x2

    int-to-byte v6, v6

    .line 229
    aput-byte v6, v14, v8

    add-int/lit8 v10, v10, 0x3

    int-to-byte v6, v7

    .line 230
    aput-byte v6, v14, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    .line 232
    :cond_ad
    iget-object v3, v0, Lji;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 233
    iget-object v3, v0, Lji;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 234
    iget-object v3, v0, Lji;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    .line 237
    iget-object v13, v0, Lji;->f:Ljava/nio/ByteBuffer;

    move v8, v1

    move v9, v2

    invoke-static/range {v5 .. v13}, Lorg/lwjgl/opengl/GL11;->glTexImage2D(IIIIIIIILjava/nio/ByteBuffer;)V

    .line 238
    sget-boolean v3, Lji;->a:Z

    if-eqz v3, :cond_152

    const/4 v3, 0x1

    move v13, v3

    :goto_d7
    const/4 v4, 0x4

    if-gt v13, v4, :cond_152

    add-int/lit8 v5, v13, -0x1

    shr-int v5, v1, v5

    shr-int v7, v1, v13

    shr-int v8, v2, v13

    move v6, v15

    :goto_e3
    if-ge v6, v7, :cond_13d

    move v9, v15

    :goto_e6
    if-ge v9, v8, :cond_137

    .line 248
    iget-object v10, v0, Lji;->f:Ljava/nio/ByteBuffer;

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v12, v11, 0x0

    mul-int/lit8 v14, v9, 0x2

    add-int/lit8 v16, v14, 0x0

    mul-int v16, v16, v5

    add-int v17, v12, v16

    mul-int/lit8 v15, v17, 0x4

    invoke-virtual {v10, v15}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    .line 249
    iget-object v15, v0, Lji;->f:Ljava/nio/ByteBuffer;

    add-int/2addr v11, v3

    add-int v16, v11, v16

    mul-int/lit8 v3, v16, 0x4

    invoke-virtual {v15, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 250
    iget-object v15, v0, Lji;->f:Ljava/nio/ByteBuffer;

    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    mul-int/2addr v14, v5

    add-int/2addr v11, v14

    mul-int/2addr v11, v4

    invoke-virtual {v15, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    .line 251
    iget-object v15, v0, Lji;->f:Ljava/nio/ByteBuffer;

    add-int/2addr v12, v14

    mul-int/2addr v12, v4

    invoke-virtual {v15, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v12

    .line 252
    invoke-direct {v0, v10, v3}, Lji;->b(II)I

    move-result v3

    invoke-direct {v0, v11, v12}, Lji;->b(II)I

    move-result v10

    invoke-direct {v0, v3, v10}, Lji;->b(II)I

    move-result v3

    .line 253
    iget-object v10, v0, Lji;->f:Ljava/nio/ByteBuffer;

    mul-int v11, v9, v7

    add-int/2addr v11, v6

    mul-int/2addr v11, v4

    invoke-virtual {v10, v11, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    const/4 v15, 0x0

    goto :goto_e6

    :cond_137
    move/from16 v16, v3

    add-int/lit8 v6, v6, 0x1

    const/4 v15, 0x0

    goto :goto_e3

    :cond_13d
    move/from16 v16, v3

    const/16 v4, 0xde1

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    .line 255
    iget-object v12, v0, Lji;->f:Ljava/nio/ByteBuffer;

    move v5, v13

    invoke-static/range {v4 .. v12}, Lorg/lwjgl/opengl/GL11;->glTexImage2D(IIIIIIIILjava/nio/ByteBuffer;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v15, 0x0

    goto :goto_d7

    :cond_152
    return-void
.end method

.method public a([IIII)V
    .registers 14

    const/16 v0, 0xde1

    .line 266
    invoke-static {v0, p4}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 268
    sget-boolean p4, Lji;->a:Z

    const/16 v1, 0x2800

    const/16 v2, 0x2600

    const/16 v3, 0x2801

    if-eqz p4, :cond_18

    const/16 p4, 0x2702

    .line 269
    invoke-static {v0, v3, p4}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 270
    invoke-static {v0, v1, v2}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    goto :goto_1e

    .line 278
    :cond_18
    invoke-static {v0, v3, v2}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 279
    invoke-static {v0, v1, v2}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 281
    :goto_1e
    iget-boolean p4, p0, Lji;->k:Z

    if-eqz p4, :cond_2a

    const/16 p4, 0x2601

    .line 282
    invoke-static {v0, v3, p4}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 283
    invoke-static {v0, v1, p4}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 286
    :cond_2a
    iget-boolean p4, p0, Lji;->j:Z

    const/16 v1, 0x2803

    const/16 v2, 0x2802

    if-eqz p4, :cond_3b

    const/16 p4, 0x2900

    .line 287
    invoke-static {v0, v2, p4}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 288
    invoke-static {v0, v1, p4}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    goto :goto_43

    :cond_3b
    const/16 p4, 0x2901

    .line 290
    invoke-static {v0, v2, p4}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    .line 291
    invoke-static {v0, v1, p4}, Lorg/lwjgl/opengl/GL11;->glTexParameteri(III)V

    :goto_43
    mul-int p4, p2, p3

    mul-int/lit8 p4, p4, 0x4

    .line 294
    new-array v0, p4, [B

    const/4 v1, 0x0

    move v2, v1

    .line 295
    :goto_4b
    array-length v3, p1

    if-ge v2, v3, :cond_94

    .line 296
    aget v3, p1, v2

    shr-int/lit8 v4, v3, 0x18

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v3, v3, 0xff

    .line 301
    iget-object v7, p0, Lji;->i:Lkv;

    if-eqz v7, :cond_7b

    iget-boolean v7, v7, Lkv;->g:Z

    if-eqz v7, :cond_7b

    mul-int/lit8 v5, v5, 0x1e

    mul-int/lit8 v7, v6, 0x3b

    add-int/2addr v7, v5

    mul-int/lit8 v8, v3, 0xb

    add-int/2addr v7, v8

    .line 302
    div-int/lit8 v7, v7, 0x64

    mul-int/lit8 v6, v6, 0x46

    add-int/2addr v6, v5

    .line 303
    div-int/lit8 v6, v6, 0x64

    mul-int/lit8 v3, v3, 0x46

    add-int/2addr v5, v3

    .line 304
    div-int/lit8 v3, v5, 0x64

    move v5, v7

    :cond_7b
    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v8, v7, 0x0

    int-to-byte v5, v5

    .line 311
    aput-byte v5, v0, v8

    add-int/lit8 v5, v7, 0x1

    int-to-byte v6, v6

    .line 312
    aput-byte v6, v0, v5

    add-int/lit8 v5, v7, 0x2

    int-to-byte v3, v3

    .line 313
    aput-byte v3, v0, v5

    add-int/lit8 v7, v7, 0x3

    int-to-byte v3, v4

    .line 314
    aput-byte v3, v0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 316
    :cond_94
    iget-object p1, p0, Lji;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 317
    iget-object p1, p0, Lji;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 318
    iget-object p1, p0, Lji;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    .line 320
    iget-object v8, p0, Lji;->f:Ljava/nio/ByteBuffer;

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v8}, Lorg/lwjgl/opengl/GL11;->glTexSubImage2D(IIIIIIIILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public a(Ljava/lang/String;)[I
    .registers 6

    .line 58
    iget-object v0, p0, Lji;->l:Lik;

    iget-object v0, v0, Lik;->a:Li;

    .line 61
    iget-object v1, p0, Lji;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_f

    return-object v1

    :cond_f
    :try_start_f
    const-string v1, "##"

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x2

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    invoke-direct {p0, v0}, Lji;->c(Lmcshim/awt/image/BufferedImage;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    invoke-direct {p0, v0}, Lji;->b(Lmcshim/awt/image/BufferedImage;)[I

    move-result-object v0

    goto :goto_80

    :cond_2d
    const-string v1, "%clamp%"

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4d

    .line 70
    iput-boolean v3, p0, Lji;->j:Z

    const/4 v1, 0x7

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    invoke-direct {p0, v0}, Lji;->b(Lmcshim/awt/image/BufferedImage;)[I

    move-result-object v0

    .line 72
    iput-boolean v2, p0, Lji;->j:Z

    goto :goto_80

    :cond_4d
    const-string v1, "%blur%"

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 74
    iput-boolean v3, p0, Lji;->k:Z

    const/4 v1, 0x6

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    invoke-direct {p0, v0}, Lji;->b(Lmcshim/awt/image/BufferedImage;)[I

    move-result-object v0

    .line 76
    iput-boolean v2, p0, Lji;->k:Z

    goto :goto_80

    .line 78
    :cond_6b
    invoke-virtual {v0, p1}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_78

    .line 80
    iget-object v0, p0, Lji;->m:Lmcshim/awt/image/BufferedImage;

    invoke-direct {p0, v0}, Lji;->b(Lmcshim/awt/image/BufferedImage;)[I

    move-result-object v0

    goto :goto_80

    .line 82
    :cond_78
    invoke-direct {p0, v0}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    invoke-direct {p0, v0}, Lji;->b(Lmcshim/awt/image/BufferedImage;)[I

    move-result-object v0

    .line 86
    :goto_80
    iget-object v1, p0, Lji;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_85} :catch_86

    return-object v0

    :catch_86
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    iget-object v0, p0, Lji;->m:Lmcshim/awt/image/BufferedImage;

    invoke-direct {p0, v0}, Lji;->b(Lmcshim/awt/image/BufferedImage;)[I

    move-result-object v0

    .line 91
    iget-object v1, p0, Lji;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ljava/lang/String;)I
    .registers 7

    .line 112
    iget-object v0, p0, Lji;->l:Lik;

    iget-object v0, v0, Lik;->a:Li;

    .line 115
    iget-object v1, p0, Lji;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 116
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_13
    const/4 v1, 0x0

    .line 120
    :try_start_14
    iget-object v2, p0, Lji;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 121
    iget-object v2, p0, Lji;->e:Ljava/nio/IntBuffer;

    invoke-static {v2}, Lge;->a(Ljava/nio/IntBuffer;)V

    .line 122
    iget-object v2, p0, Lji;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const-string v3, "##"

    .line 124
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v3, 0x2

    .line 125
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    invoke-direct {p0, v0}, Lji;->c(Lmcshim/awt/image/BufferedImage;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lji;->a(Lmcshim/awt/image/BufferedImage;I)V

    goto :goto_8f

    :cond_41
    const-string v3, "%clamp%"

    .line 126
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5f

    .line 127
    iput-boolean v4, p0, Lji;->j:Z

    const/4 v3, 0x7

    .line 128
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lji;->a(Lmcshim/awt/image/BufferedImage;I)V

    .line 129
    iput-boolean v1, p0, Lji;->j:Z

    goto :goto_8f

    :cond_5f
    const-string v3, "%blur%"

    .line 130
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 131
    iput-boolean v4, p0, Lji;->k:Z

    const/4 v3, 0x6

    .line 132
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lji;->a(Lmcshim/awt/image/BufferedImage;I)V

    .line 133
    iput-boolean v1, p0, Lji;->k:Z

    goto :goto_8f

    .line 135
    :cond_7c
    invoke-virtual {v0, p1}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_88

    .line 137
    iget-object v0, p0, Lji;->m:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {p0, v0, v2}, Lji;->a(Lmcshim/awt/image/BufferedImage;I)V

    goto :goto_8f

    .line 139
    :cond_88
    invoke-direct {p0, v0}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lji;->a(Lmcshim/awt/image/BufferedImage;I)V

    .line 143
    :goto_8f
    iget-object v0, p0, Lji;->b:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_98} :catch_99

    return v2

    :catch_99
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    iget-object v0, p0, Lji;->e:Ljava/nio/IntBuffer;

    invoke-static {v0}, Lge;->a(Ljava/nio/IntBuffer;)V

    .line 148
    iget-object v0, p0, Lji;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 149
    iget-object v1, p0, Lji;->m:Lmcshim/awt/image/BufferedImage;

    invoke-virtual {p0, v1, v0}, Lji;->a(Lmcshim/awt/image/BufferedImage;I)V

    .line 150
    iget-object v1, p0, Lji;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public b()V
    .registers 14

    .line 475
    iget-object v0, p0, Lji;->l:Lik;

    iget-object v0, v0, Lik;->a:Li;

    .line 477
    iget-object v1, p0, Lji;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 478
    iget-object v3, p0, Lji;->d:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmcshim/awt/image/BufferedImage;

    .line 479
    invoke-virtual {p0, v3, v2}, Lji;->a(Lmcshim/awt/image/BufferedImage;I)V

    goto :goto_e

    .line 482
    :cond_2e
    iget-object v1, p0, Lji;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lek;

    .line 483
    iput-boolean v3, v2, Lek;->d:Z

    goto :goto_38

    .line 486
    :cond_48
    iget-object v1, p0, Lji;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x6

    const/4 v5, 0x7

    const-string v6, "%blur%"

    const/4 v7, 0x2

    const-string v8, "%clamp%"

    const-string v9, "##"

    const/4 v10, 0x1

    if-eqz v2, :cond_ca

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 489
    :try_start_68
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 490
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v4

    invoke-direct {p0, v4}, Lji;->c(Lmcshim/awt/image/BufferedImage;)Lmcshim/awt/image/BufferedImage;

    move-result-object v4

    goto :goto_b1

    .line 491
    :cond_7f
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_94

    .line 492
    iput-boolean v10, p0, Lji;->j:Z

    .line 493
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v4

    goto :goto_b1

    .line 494
    :cond_94
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 495
    iput-boolean v10, p0, Lji;->k:Z

    .line 496
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v4

    goto :goto_b1

    .line 498
    :cond_a9
    invoke-virtual {v0, v2}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v4

    .line 500
    :goto_b1
    iget-object v5, p0, Lji;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 501
    invoke-virtual {p0, v4, v2}, Lji;->a(Lmcshim/awt/image/BufferedImage;I)V

    .line 502
    iput-boolean v3, p0, Lji;->k:Z

    .line 503
    iput-boolean v3, p0, Lji;->j:Z
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_c4} :catch_c5

    goto :goto_52

    :catch_c5
    move-exception v2

    .line 505
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 508
    :cond_ca
    iget-object v1, p0, Lji;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 511
    :try_start_e0
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f7

    .line 512
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {p0, v11}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v11

    invoke-direct {p0, v11}, Lji;->c(Lmcshim/awt/image/BufferedImage;)Lmcshim/awt/image/BufferedImage;

    move-result-object v11

    goto :goto_129

    .line 513
    :cond_f7
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10c

    .line 514
    iput-boolean v10, p0, Lji;->j:Z

    .line 515
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {p0, v11}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v11

    goto :goto_129

    .line 516
    :cond_10c
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_121

    .line 517
    iput-boolean v10, p0, Lji;->k:Z

    .line 518
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {p0, v11}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v11

    goto :goto_129

    .line 520
    :cond_121
    invoke-virtual {v0, v2}, Li;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {p0, v11}, Lji;->a(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v11

    .line 522
    :goto_129
    iget-object v12, p0, Lji;->c:Ljava/util/HashMap;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-direct {p0, v11, v2}, Lji;->a(Lmcshim/awt/image/BufferedImage;[I)[I

    .line 523
    iput-boolean v3, p0, Lji;->k:Z

    .line 524
    iput-boolean v3, p0, Lji;->j:Z
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_138} :catch_139

    goto :goto_d4

    :catch_139
    move-exception v2

    .line 526
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d4

    :cond_13e
    return-void
.end method

.method public b(I)V
    .registers 3

    if-gez p1, :cond_3

    return-void

    :cond_3
    const/16 v0, 0xde1

    .line 539
    invoke-static {v0, p1}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 361
    iget-object v0, p0, Lji;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lek;

    if-eqz v0, :cond_22

    .line 363
    iget v1, v0, Lek;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lek;->b:I

    .line 364
    iget v1, v0, Lek;->b:I

    if-nez v1, :cond_22

    .line 365
    iget v1, v0, Lek;->c:I

    if-ltz v1, :cond_1d

    iget v0, v0, Lek;->c:I

    invoke-virtual {p0, v0}, Lji;->a(I)V

    .line 366
    :cond_1d
    iget-object v0, p0, Lji;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-void
.end method
