###### Class defpackage.hj (hj)
.class public Lhj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/text/DateFormat;

.field private static b:Ljava/nio/ByteBuffer;

.field private static c:[B

.field private static d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH.mm.ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhj;->a:Ljava/text/DateFormat;

    return-void
.end method

.method public static a(Ljava/io/File;II)Ljava/lang/String;
    .registers 16

    const-string v0, ""

    .line 27
    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "screenshots"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 30
    sget-object p0, Lhj;->b:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    mul-int v2, p1, p2

    if-ge p0, v2, :cond_22

    :cond_18
    mul-int p0, p1, p2

    mul-int/lit8 p0, p0, 0x3

    .line 31
    invoke-static {p0}, Lorg/lwjgl/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sput-object p0, Lhj;->b:Ljava/nio/ByteBuffer;

    .line 34
    :cond_22
    sget-object p0, Lhj;->d:[I

    if-eqz p0, :cond_2d

    array-length p0, p0

    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    if-ge p0, v2, :cond_39

    :cond_2d
    mul-int p0, p1, p2

    mul-int/lit8 v2, p0, 0x3

    .line 35
    new-array v2, v2, [B

    sput-object v2, Lhj;->c:[B

    .line 36
    new-array p0, p0, [I

    sput-object p0, Lhj;->d:[I

    :cond_39
    const/16 p0, 0xd05

    const/4 v2, 0x1

    .line 38
    invoke-static {p0, v2}, Lorg/lwjgl/opengl/GL11;->glPixelStorei(II)V

    const/16 p0, 0xcf5

    .line 39
    invoke-static {p0, v2}, Lorg/lwjgl/opengl/GL11;->glPixelStorei(II)V

    .line 41
    sget-object p0, Lhj;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x1907

    const/16 v8, 0x1401

    .line 42
    sget-object v9, Lhj;->b:Ljava/nio/ByteBuffer;

    move v5, p1

    move v6, p2

    invoke-static/range {v3 .. v9}, Lorg/lwjgl/opengl/GL11;->glReadPixels(IIIIIILjava/nio/ByteBuffer;)V

    .line 43
    sget-object p0, Lhj;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lhj;->a:Ljava/text/DateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move v3, v2

    .line 48
    :goto_73
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v2, :cond_81

    move-object v6, v0

    goto :goto_92

    :cond_81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_aa

    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 52
    :cond_aa
    sget-object p0, Lhj;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Lhj;->c:[B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    move v0, p0

    :goto_b3
    if-ge v0, p1, :cond_e9

    move v1, p0

    :goto_b6
    if-ge v1, p2, :cond_e6

    sub-int v3, p2, v1

    sub-int/2addr v3, v2

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    .line 56
    sget-object v5, Lhj;->c:[B

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v6, v3, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, 0x1

    .line 57
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v3, v3, 0x2

    .line 58
    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v5, v6, 0x10

    const/high16 v6, -0x1000000

    or-int/2addr v5, v6

    shl-int/lit8 v6, v7, 0x8

    or-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 60
    sget-object v5, Lhj;->d:[I

    mul-int v6, v1, p1

    add-int/2addr v6, v0

    aput v3, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    :cond_e6
    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    .line 63
    :cond_e9
    new-instance p0, Lmcshim/awt/image/BufferedImage;

    invoke-direct {p0, p1, p2, v2}, Lmcshim/awt/image/BufferedImage;-><init>(III)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 64
    sget-object v10, Lhj;->d:[I

    const/4 v11, 0x0

    move-object v5, p0

    move v8, p1

    move v9, p2

    move v12, p1

    invoke-virtual/range {v5 .. v12}, Lmcshim/awt/image/BufferedImage;->setRGB(IIII[III)V

    const-string p1, "png"

    .line 65
    invoke-static {p0, p1, v4}, Lmcshim/imageio/ImageIO;->write(Lmcshim/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Saved screenshot as "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_114} :catch_115

    return-object p0

    :catch_115
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to save: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
