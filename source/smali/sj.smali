###### Class defpackage.sj (sj)
.class public Lsj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:[I

.field private c:I

.field private d:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>(Lkv;Ljava/lang/String;Lji;)V
    .registers 34

    move-object/from16 v1, p0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v2, v0, [I

    .line 20
    iput-object v2, v1, Lsj;->b:[I

    const/4 v2, 0x0

    .line 21
    iput v2, v1, Lsj;->a:I

    const/16 v3, 0x400

    .line 23
    invoke-static {v3}, Lge;->d(I)Ljava/nio/IntBuffer;

    move-result-object v3

    iput-object v3, v1, Lsj;->d:Ljava/nio/IntBuffer;

    .line 28
    :try_start_16
    const-class v3, Lji;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lmcshim/imageio/ImageIO;->read(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v3
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_22} :catch_15c

    .line 32
    invoke-virtual {v3}, Lmcshim/awt/image/BufferedImage;->getWidth()I

    move-result v12

    .line 33
    invoke-virtual {v3}, Lmcshim/awt/image/BufferedImage;->getHeight()I

    move-result v8

    mul-int v4, v12, v8

    .line 34
    new-array v13, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    move v7, v12

    move-object v9, v13

    move v11, v12

    .line 35
    invoke-virtual/range {v4 .. v11}, Lmcshim/awt/image/BufferedImage;->getRGB(IIII[III)[I

    move v4, v2

    :goto_39
    const/16 v5, 0x20

    const/16 v6, 0x8

    if-ge v4, v0, :cond_76

    .line 38
    rem-int/lit8 v8, v4, 0x10

    .line 39
    div-int/lit8 v9, v4, 0x10

    const/4 v10, 0x7

    :goto_44
    if-ltz v10, :cond_69

    mul-int/lit8 v11, v8, 0x8

    add-int/2addr v11, v10

    move v14, v2

    const/4 v15, 0x1

    :goto_4b
    if-ge v14, v6, :cond_62

    if-eqz v15, :cond_62

    mul-int/lit8 v16, v9, 0x8

    add-int v16, v16, v14

    mul-int v16, v16, v12

    add-int v16, v11, v16

    .line 48
    aget v2, v13, v16

    and-int/lit16 v2, v2, 0xff

    if-lez v2, :cond_5e

    const/4 v15, 0x0

    :cond_5e
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    goto :goto_4b

    :cond_62
    if-nez v15, :cond_65

    goto :goto_69

    :cond_65
    add-int/lit8 v10, v10, -0x1

    const/4 v2, 0x0

    goto :goto_44

    :cond_69
    :goto_69
    const/4 v2, 0x2

    if-ne v4, v5, :cond_6d

    move v10, v2

    .line 57
    :cond_6d
    iget-object v5, v1, Lsj;->b:[I

    add-int/2addr v10, v2

    aput v10, v5, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_39

    :cond_76
    move-object/from16 v2, p3

    .line 61
    invoke-virtual {v2, v3}, Lji;->a(Lmcshim/awt/image/BufferedImage;)I

    move-result v2

    iput v2, v1, Lsj;->a:I

    const/16 v2, 0x120

    .line 63
    invoke-static {v2}, Lge;->a(I)I

    move-result v2

    iput v2, v1, Lsj;->c:I

    .line 64
    sget-object v2, Lnw;->a:Lnw;

    const/4 v3, 0x0

    :goto_89
    const/16 v4, 0x1300

    if-ge v3, v0, :cond_f4

    .line 66
    iget v8, v1, Lsj;->c:I

    add-int/2addr v8, v3

    invoke-static {v8, v4}, Lorg/lwjgl/opengl/GL11;->glNewList(II)V

    .line 67
    invoke-virtual {v2}, Lnw;->b()V

    .line 68
    rem-int/lit8 v4, v3, 0x10

    mul-int/2addr v4, v6

    .line 69
    div-int/lit8 v8, v3, 0x10

    mul-int/2addr v8, v6

    const-wide/16 v18, 0x0

    const v9, 0x40ffae14    # 7.99f

    float-to-double v10, v9

    const-wide/16 v22, 0x0

    int-to-float v4, v4

    const/high16 v12, 0x43000000    # 128.0f

    div-float v13, v4, v12

    const/4 v14, 0x0

    add-float/2addr v13, v14

    float-to-double v6, v13

    int-to-float v8, v8

    add-float v13, v8, v9

    div-float/2addr v13, v12

    add-float/2addr v13, v14

    float-to-double v0, v13

    move-object/from16 v17, v2

    move-wide/from16 v20, v10

    move-wide/from16 v24, v6

    move-wide/from16 v26, v0

    .line 76
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    add-float/2addr v4, v9

    div-float/2addr v4, v12

    add-float/2addr v4, v14

    move-wide/from16 v28, v6

    float-to-double v5, v4

    move-wide/from16 v18, v10

    move-wide/from16 v24, v5

    .line 77
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const-wide/16 v20, 0x0

    div-float/2addr v8, v12

    add-float/2addr v8, v14

    float-to-double v0, v8

    move-wide/from16 v26, v0

    .line 78
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const-wide/16 v18, 0x0

    move-wide/from16 v24, v28

    .line 79
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 82
    invoke-virtual {v2}, Lnw;->a()V

    move-object/from16 v1, p0

    .line 84
    iget-object v0, v1, Lsj;->b:[I

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-static {v0, v14, v14}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 85
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glEndList()V

    add-int/lit8 v3, v3, 0x1

    const/16 v0, 0x100

    const/16 v5, 0x20

    const/16 v6, 0x8

    goto :goto_89

    :cond_f4
    move v2, v5

    const/4 v0, 0x0

    :goto_f6
    if-ge v0, v2, :cond_15b

    shr-int/lit8 v3, v0, 0x3

    const/4 v5, 0x1

    and-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x55

    shr-int/lit8 v6, v0, 0x2

    and-int/2addr v6, v5

    mul-int/lit16 v6, v6, 0xaa

    add-int/2addr v6, v3

    shr-int/lit8 v7, v0, 0x1

    and-int/2addr v7, v5

    mul-int/lit16 v7, v7, 0xaa

    add-int/2addr v7, v3

    shr-int/lit8 v8, v0, 0x0

    and-int/2addr v8, v5

    mul-int/lit16 v8, v8, 0xaa

    add-int/2addr v8, v3

    const/4 v3, 0x6

    if-ne v0, v3, :cond_115

    add-int/lit8 v6, v6, 0x55

    :cond_115
    const/16 v3, 0x10

    if-lt v0, v3, :cond_11d

    move-object/from16 v3, p1

    move v9, v5

    goto :goto_120

    :cond_11d
    move-object/from16 v3, p1

    const/4 v9, 0x0

    .line 98
    :goto_120
    iget-boolean v10, v3, Lkv;->g:Z

    if-eqz v10, :cond_139

    mul-int/lit8 v6, v6, 0x1e

    mul-int/lit8 v10, v7, 0x3b

    add-int/2addr v10, v6

    mul-int/lit8 v11, v8, 0xb

    add-int/2addr v10, v11

    .line 99
    div-int/lit8 v10, v10, 0x64

    mul-int/lit8 v7, v7, 0x46

    add-int/2addr v7, v6

    .line 100
    div-int/lit8 v7, v7, 0x64

    mul-int/lit8 v8, v8, 0x46

    add-int/2addr v6, v8

    .line 101
    div-int/lit8 v8, v6, 0x64

    move v6, v10

    :cond_139
    if-eqz v9, :cond_141

    .line 110
    div-int/lit8 v6, v6, 0x4

    .line 111
    div-int/lit8 v7, v7, 0x4

    .line 112
    div-int/lit8 v8, v8, 0x4

    .line 114
    :cond_141
    iget v9, v1, Lsj;->c:I

    const/16 v10, 0x100

    add-int/2addr v9, v10

    add-int/2addr v9, v0

    invoke-static {v9, v4}, Lorg/lwjgl/opengl/GL11;->glNewList(II)V

    int-to-float v6, v6

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v6, v9

    int-to-float v7, v7

    div-float/2addr v7, v9

    int-to-float v8, v8

    div-float/2addr v8, v9

    .line 115
    invoke-static {v6, v7, v8}, Lorg/lwjgl/opengl/GL11;->glColor3f(FFF)V

    .line 116
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glEndList()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f6

    :cond_15b
    return-void

    :catch_15c
    move-exception v0

    .line 30
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    move v1, v0

    .line 190
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa7

    if-ne v2, v3, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 194
    :cond_16
    sget-object v2, Lfp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_29

    .line 196
    iget-object v3, p0, Lsj;->b:[I

    add-int/lit8 v2, v2, 0x20

    aget v2, v3, v2

    add-int/2addr v1, v2

    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2c
    return v1
.end method

.method public a(Ljava/lang/String;I)I
    .registers 12

    const-string v0, "\n"

    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 252
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_1a

    move p1, v3

    .line 254
    :goto_c
    array-length v1, v0

    if-ge v3, v1, :cond_19

    .line 255
    aget-object v1, v0, v3

    invoke-virtual {p0, v1, p2}, Lsj;->a(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr p1, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_19
    return p1

    :cond_1a
    const-string v0, " "

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v1, v3

    move v2, v1

    .line 262
    :cond_22
    :goto_22
    array-length v4, p1

    if-ge v1, v4, :cond_a6

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move v1, v5

    .line 264
    :goto_3a
    array-length v5, p1

    if-ge v1, v5, :cond_6e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lsj;->a(Ljava/lang/String;)I

    move-result v5

    if-ge v5, p2, :cond_6e

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v8, v4

    move-object v4, v1

    move v1, v8

    goto :goto_3a

    .line 267
    :cond_6e
    :goto_6e
    invoke-virtual {p0, v4}, Lsj;->a(Ljava/lang/String;)I

    move-result v5

    if-le v5, p2, :cond_98

    move v5, v3

    :goto_75
    add-int/lit8 v6, v5, 0x1

    .line 269
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lsj;->a(Ljava/lang/String;)I

    move-result v7

    if-gt v7, p2, :cond_83

    move v5, v6

    goto :goto_75

    .line 272
    :cond_83
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_93

    add-int/lit8 v2, v2, 0x8

    .line 275
    :cond_93
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6e

    .line 277
    :cond_98
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_22

    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_22

    :cond_a6
    const/16 p1, 0x8

    if-ge v2, p1, :cond_ac

    add-int/lit8 v2, v2, 0x8

    :cond_ac
    return v2
.end method

.method public a(Ljava/lang/String;III)V
    .registers 11

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    .line 121
    invoke-virtual/range {v0 .. v5}, Lsj;->a(Ljava/lang/String;IIIZ)V

    .line 122
    invoke-virtual {p0, p1, p2, p3, p4}, Lsj;->b(Ljava/lang/String;III)V

    return-void
.end method

.method public a(Ljava/lang/String;IIII)V
    .registers 20

    move-object v6, p0

    move-object v0, p1

    move/from16 v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    const-string v1, "\n"

    .line 217
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 218
    array-length v1, v10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_31

    move/from16 v11, p3

    move v12, v3

    .line 219
    :goto_16
    array-length v0, v10

    if-ge v12, v0, :cond_30

    .line 220
    aget-object v1, v10, v12

    move-object v0, p0

    move/from16 v2, p2

    move v3, v11

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lsj;->a(Ljava/lang/String;IIII)V

    .line 221
    aget-object v0, v10, v12

    invoke-virtual {p0, v0, v8}, Lsj;->a(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v11, v0

    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_30
    return-void

    :cond_31
    const-string v1, " "

    .line 225
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move/from16 v2, p3

    move v4, v3

    .line 227
    :cond_3a
    :goto_3a
    array-length v5, v0

    if-ge v4, v5, :cond_c8

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    move v4, v10

    .line 229
    :goto_52
    array-length v10, v0

    if-ge v4, v10, :cond_86

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v0, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lsj;->a(Ljava/lang/String;)I

    move-result v10

    if-ge v10, v8, :cond_86

    .line 230
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v13, v5

    move-object v5, v4

    move v4, v13

    goto :goto_52

    .line 232
    :cond_86
    :goto_86
    invoke-virtual {p0, v5}, Lsj;->a(Ljava/lang/String;)I

    move-result v10

    if-le v10, v8, :cond_b7

    move v10, v3

    :goto_8d
    add-int/lit8 v11, v10, 0x1

    .line 234
    invoke-virtual {v5, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lsj;->a(Ljava/lang/String;)I

    move-result v12

    if-gt v12, v8, :cond_9b

    move v10, v11

    goto :goto_8d

    .line 237
    :cond_9b
    invoke-virtual {v5, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_b2

    .line 238
    invoke-virtual {v5, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11, v7, v2, v9}, Lsj;->b(Ljava/lang/String;III)V

    add-int/lit8 v2, v2, 0x8

    .line 241
    :cond_b2
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_86

    .line 243
    :cond_b7
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3a

    .line 244
    invoke-virtual {p0, v5, v7, v2, v9}, Lsj;->b(Ljava/lang/String;III)V

    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_3a

    :cond_c8
    return-void
.end method

.method public a(Ljava/lang/String;IIIZ)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p5, :cond_f

    const/high16 v0, -0x1000000

    and-int/2addr v0, p4

    const v1, 0xfcfcfc

    and-int/2addr p4, v1

    shr-int/lit8 p4, p4, 0x2

    add-int/2addr p4, v0

    :cond_f
    const/16 v0, 0xde1

    .line 139
    iget v1, p0, Lsj;->a:I

    invoke-static {v0, v1}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    shr-int/lit8 v0, p4, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    shr-int/lit8 v2, p4, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v1

    and-int/lit16 v3, p4, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v1

    shr-int/lit8 p4, p4, 0x18

    and-int/lit16 p4, p4, 0xff

    int-to-float p4, p4

    div-float/2addr p4, v1

    const/4 v1, 0x0

    cmpl-float v4, p4, v1

    if-nez v4, :cond_35

    const/high16 p4, 0x3f800000    # 1.0f

    .line 147
    :cond_35
    invoke-static {v0, v2, v3, p4}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 150
    iget-object p4, p0, Lsj;->d:Ljava/nio/IntBuffer;

    invoke-virtual {p4}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 151
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    int-to-float p2, p2

    int-to-float p3, p3

    .line 152
    invoke-static {p2, p3, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/4 p2, 0x0

    move p3, p2

    .line 153
    :goto_47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p3, p4, :cond_d3

    .line 154
    :goto_4d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 v0, p3, 0x1

    if-le p4, v0, :cond_9d

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p4

    const/16 v1, 0xa7

    if-ne p4, v1, :cond_9d

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result p4

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0, p4}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    const/16 v0, 0xf

    if-ltz p4, :cond_71

    if-le p4, v0, :cond_72

    :cond_71
    move p4, v0

    .line 157
    :cond_72
    iget-object v0, p0, Lsj;->d:Ljava/nio/IntBuffer;

    iget v1, p0, Lsj;->c:I

    add-int/lit16 v1, v1, 0x100

    add-int/2addr v1, p4

    if-eqz p5, :cond_7e

    const/16 p4, 0x10

    goto :goto_7f

    :cond_7e
    move p4, p2

    :goto_7f
    add-int/2addr v1, p4

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 159
    iget-object p4, p0, Lsj;->d:Ljava/nio/IntBuffer;

    invoke-virtual {p4}, Ljava/nio/IntBuffer;->remaining()I

    move-result p4

    if-nez p4, :cond_9a

    .line 160
    iget-object p4, p0, Lsj;->d:Ljava/nio/IntBuffer;

    invoke-virtual {p4}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 161
    iget-object p4, p0, Lsj;->d:Ljava/nio/IntBuffer;

    invoke-static {p4}, Lorg/lwjgl/opengl/GL11;->glCallLists(Ljava/nio/IntBuffer;)V

    .line 162
    iget-object p4, p0, Lsj;->d:Ljava/nio/IntBuffer;

    invoke-virtual {p4}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    :cond_9a
    add-int/lit8 p3, p3, 0x2

    goto :goto_4d

    .line 168
    :cond_9d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p3, p4, :cond_b9

    .line 169
    sget-object p4, Lfp;->a:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-virtual {p4, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ltz p3, :cond_b9

    .line 171
    iget-object p4, p0, Lsj;->d:Ljava/nio/IntBuffer;

    iget v1, p0, Lsj;->c:I

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {p4, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 175
    :cond_b9
    iget-object p3, p0, Lsj;->d:Ljava/nio/IntBuffer;

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->remaining()I

    move-result p3

    if-nez p3, :cond_d0

    .line 176
    iget-object p3, p0, Lsj;->d:Ljava/nio/IntBuffer;

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 177
    iget-object p3, p0, Lsj;->d:Ljava/nio/IntBuffer;

    invoke-static {p3}, Lorg/lwjgl/opengl/GL11;->glCallLists(Ljava/nio/IntBuffer;)V

    .line 178
    iget-object p3, p0, Lsj;->d:Ljava/nio/IntBuffer;

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    :cond_d0
    move p3, v0

    goto/16 :goto_47

    .line 181
    :cond_d3
    iget-object p1, p0, Lsj;->d:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 182
    iget-object p1, p0, Lsj;->d:Ljava/nio/IntBuffer;

    invoke-static {p1}, Lorg/lwjgl/opengl/GL11;->glCallLists(Ljava/nio/IntBuffer;)V

    .line 183
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method

.method public b(Ljava/lang/String;III)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 126
    invoke-virtual/range {v0 .. v5}, Lsj;->a(Ljava/lang/String;IIIZ)V

    return-void
.end method
