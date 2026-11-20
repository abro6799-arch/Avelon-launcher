###### Class com.mcport.b173.SkinUtil (com.mcport.b173.SkinUtil)
.class final Lcom/mcport/b173/SkinUtil;
.super Ljava/lang/Object;
.source "SkinUtil.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copy(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x4000

    :try_start_7
    new-array p1, p1, [B

    :goto_9
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_14

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_18

    goto :goto_9

    :cond_14
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw p0
.end method

.method static defaultSkin(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 p0, 0x0

    .line 21
    :try_start_1
    const-class v0, Lcom/mcport/b173/SkinUtil;

    const-string v1, "/mob/char.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_27

    :try_start_9
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {v0, p0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1b

    if-eqz v0, :cond_1a

    :try_start_17
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_27

    :cond_1a
    return-object v1

    :catchall_1b
    move-exception v1

    if-eqz v0, :cond_26

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v0

    :try_start_23
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    throw v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_27

    :catch_27
    return-object p0
.end method

.method static load(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 3

    .line 19
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static part(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IIIIIII)V
    .registers 13

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p3, p5

    add-int v2, p4, p6

    invoke-direct {v0, p3, p4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    mul-int p4, p7, p9

    mul-int v1, p8, p9

    add-int/2addr p7, p5

    mul-int/2addr p7, p9

    add-int/2addr p8, p6

    mul-int/2addr p8, p9

    invoke-direct {p3, p4, v1, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p2, v0, p3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static partMirror(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IIIIIII)V
    .registers 14

    .line 41
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, p7

    int-to-float v1, p5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p9

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-static/range {p0 .. p9}, Lcom/mcport/b173/SkinUtil;->part(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IIIIIII)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method static preview(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 15

    mul-int/lit8 v0, p1, 0x10

    mul-int/lit8 v1, p1, 0x20

    .line 26
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez p0, :cond_d

    return-object v0

    .line 28
    :cond_d
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v1, v11

    move-object v2, v12

    move-object v3, p0

    move v10, p1

    .line 29
    invoke-static/range {v1 .. v10}, Lcom/mcport/b173/SkinUtil;->part(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IIIIIII)V

    const/16 v4, 0x28

    .line 30
    invoke-static/range {v1 .. v10}, Lcom/mcport/b173/SkinUtil;->part(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IIIIIII)V

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/16 v7, 0xc

    const/16 v9, 0x8

    .line 31
    invoke-static/range {v1 .. v10}, Lcom/mcport/b173/SkinUtil;->part(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IIIIIII)V

    const/16 v4, 0x2c

    const/4 v6, 0x4

    const/4 v8, 0x0

    .line 32
    invoke-static/range {v1 .. v10}, Lcom/mcport/b173/SkinUtil;->part(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IIIIIII)V

    const/16 v8, 0xc

    .line 33
    invoke-static/range {v1 .. v10}, Lcom/mcport/b173/SkinUtil;->partMirror(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IIIIIII)V

    const/4 v4, 0x4

    const/4 v8, 0x4

    const/16 v9, 0x14

    .line 34
    invoke-static/range {v1 .. v10}, Lcom/mcport/b173/SkinUtil;->part(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IIIIIII)V

    const/16 v8, 0x8

    .line 35
    invoke-static/range {v1 .. v10}, Lcom/mcport/b173/SkinUtil;->partMirror(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IIIIIII)V

    return-object v0
.end method

.method static validate(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, "Not a readable PNG image."

    return-object p0

    .line 16
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1c

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x0

    return-object p0

    :cond_1e
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skins must be 64x32 (or 64x64) pixels; this one is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
