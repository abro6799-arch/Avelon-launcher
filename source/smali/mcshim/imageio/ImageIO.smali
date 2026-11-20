###### Class mcshim.imageio.ImageIO (mcshim.imageio.ImageIO)
.class public final Lmcshim/imageio/ImageIO;
.super Ljava/lang/Object;
.source "ImageIO.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chunk(Ljava/io/DataOutputStream;I[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    array-length v0, p2

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 179
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/4 v2, 0x3

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v0, p2}, Ljava/util/zip/CRC32;->update([B)V

    .line 180
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public static decodePNG(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x4000

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    const-wide v3, -0x76afb1b8f2f5e5f6L    # -8.091055181950927E-264

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    return-object v2

    .line 42
    :cond_1d
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v20, v2

    move v4, v3

    move v13, v4

    move v14, v13

    move v15, v14

    move/from16 v21, v15

    .line 44
    :goto_2b
    invoke-static {v0}, Lmcshim/imageio/ImageIO;->readInt(Ljava/io/DataInputStream;)I

    move-result v5

    invoke-static {v0}, Lmcshim/imageio/ImageIO;->readInt(Ljava/io/DataInputStream;)I

    move-result v6

    if-ltz v5, :cond_1ce

    .line 46
    new-array v5, v5, [B

    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    const v7, 0x49484452

    if-ne v6, v7, :cond_68

    .line 48
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v21

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v13

    .line 50
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    goto/16 :goto_1cb

    :cond_68
    const v7, 0x504c5445

    if-ne v6, v7, :cond_70

    move-object v2, v5

    goto/16 :goto_1cb

    :cond_70
    const v7, 0x74524e53

    if-ne v6, v7, :cond_79

    move-object/from16 v20, v5

    goto/16 :goto_1cb

    :cond_79
    const v7, 0x49444154    # 803861.25f

    if-ne v6, v7, :cond_83

    .line 53
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_1c5

    :cond_83
    const v5, 0x49454e44    # 808164.25f

    if-ne v6, v5, :cond_1c5

    if-lez v15, :cond_1bd

    if-lez v14, :cond_1bd

    .line 57
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 58
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 59
    invoke-virtual {v1, v0}, Ljava/util/zip/Inflater;->setInput([B)V

    const/4 v0, 0x3

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x2

    if-nez v13, :cond_a1

    :goto_9e
    move/from16 v22, v11

    goto :goto_b0

    :cond_a1
    if-ne v13, v10, :cond_a6

    move/from16 v22, v0

    goto :goto_b0

    :cond_a6
    if-ne v13, v0, :cond_a9

    goto :goto_9e

    :cond_a9
    if-ne v13, v12, :cond_ae

    move/from16 v22, v10

    goto :goto_b0

    :cond_ae
    move/from16 v22, v12

    :goto_b0
    mul-int v5, v22, v21

    const/16 v6, 0x8

    .line 61
    div-int/2addr v5, v6

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v23

    mul-int v5, v15, v14

    .line 62
    new-array v9, v5, [I

    const/4 v8, 0x6

    if-nez v4, :cond_f0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    const/16 v16, 0x1

    move-object v4, v1

    move-object v5, v9

    move v6, v15

    move v7, v14

    move v8, v0

    move-object v0, v9

    move v9, v3

    move v3, v10

    move v10, v11

    move/from16 v11, v16

    move-object/from16 p0, v0

    move v0, v12

    move v12, v15

    move/from16 v25, v13

    move v13, v14

    move/from16 v26, v14

    move/from16 v14, v21

    move/from16 v27, v15

    move/from16 v15, v25

    move/from16 v16, v22

    move/from16 v17, v23

    move-object/from16 v18, v2

    move-object/from16 v19, v20

    .line 65
    :try_start_e7
    invoke-static/range {v4 .. v19}, Lmcshim/imageio/ImageIO;->decodePass(Ljava/util/zip/Inflater;[IIIIIIIIIIIII[B[B)V

    move-object/from16 v32, p0

    :goto_ec
    move/from16 v3, v27

    goto/16 :goto_19b

    :cond_f0
    move/from16 v28, v0

    move v0, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    move-object v15, v9

    move v14, v10

    const/4 v13, 0x7

    new-array v12, v13, [[I

    .line 67
    filled-new-array {v3, v3, v6, v6}, [I

    move-result-object v4

    aput-object v4, v12, v3

    filled-new-array {v0, v3, v6, v6}, [I

    move-result-object v4

    aput-object v4, v12, v11

    filled-new-array {v3, v0, v0, v6}, [I

    move-result-object v4

    aput-object v4, v12, v14

    filled-new-array {v14, v3, v0, v0}, [I

    move-result-object v4

    aput-object v4, v12, v28

    filled-new-array {v3, v14, v14, v0}, [I

    move-result-object v4

    aput-object v4, v12, v0

    filled-new-array {v11, v3, v14, v14}, [I

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v12, v5

    filled-new-array {v3, v11, v11, v14}, [I

    move-result-object v4

    const/4 v10, 0x6

    aput-object v4, v12, v10

    move v9, v3

    :goto_12b
    if-ge v9, v13, :cond_197

    .line 68
    aget-object v4, v12, v9

    .line 69
    aget v8, v4, v3

    move/from16 v7, v27

    sub-int v5, v7, v8

    aget v16, v4, v14

    add-int v5, v5, v16

    sub-int/2addr v5, v11

    div-int v17, v5, v16

    aget v18, v4, v11

    move/from16 v6, v26

    sub-int v5, v6, v18

    aget v19, v4, v28

    add-int v5, v5, v19

    sub-int/2addr v5, v11

    div-int v24, v5, v19

    if-lez v17, :cond_17a

    if-gtz v24, :cond_14e

    goto :goto_17a

    :cond_14e
    move-object v4, v1

    move-object v5, v15

    move/from16 v26, v6

    move v6, v7

    move v3, v7

    move/from16 v7, v26

    move/from16 v27, v9

    move/from16 v9, v18

    move/from16 v10, v16

    move/from16 v29, v11

    move/from16 v11, v19

    move-object/from16 v30, v12

    move/from16 v12, v17

    move/from16 v31, v13

    move/from16 v13, v24

    move/from16 v14, v21

    move-object/from16 v32, v15

    move/from16 v15, v25

    move/from16 v16, v22

    move/from16 v17, v23

    move-object/from16 v18, v2

    move-object/from16 v19, v20

    .line 71
    invoke-static/range {v4 .. v19}, Lmcshim/imageio/ImageIO;->decodePass(Ljava/util/zip/Inflater;[IIIIIIIIIIIII[B[B)V
    :try_end_179
    .catch Ljava/util/zip/DataFormatException; {:try_start_e7 .. :try_end_179} :catch_1b0
    .catchall {:try_start_e7 .. :try_end_179} :catchall_1ae

    goto :goto_187

    :cond_17a
    :goto_17a
    move/from16 v26, v6

    move v3, v7

    move/from16 v27, v9

    move/from16 v29, v11

    move-object/from16 v30, v12

    move/from16 v31, v13

    move-object/from16 v32, v15

    :goto_187
    add-int/lit8 v9, v27, 0x1

    move/from16 v27, v3

    move/from16 v11, v29

    move-object/from16 v12, v30

    move/from16 v13, v31

    move-object/from16 v15, v32

    const/4 v3, 0x0

    const/4 v10, 0x6

    const/4 v14, 0x2

    goto :goto_12b

    :cond_197
    move-object/from16 v32, v15

    goto/16 :goto_ec

    .line 75
    :goto_19b
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    move/from16 v5, v25

    if-eq v5, v0, :cond_1a3

    const/4 v0, 0x6

    .line 77
    :cond_1a3
    new-instance v0, Lmcshim/awt/image/BufferedImage;

    move/from16 v6, v26

    move-object/from16 v1, v32

    const/4 v2, 0x2

    invoke-direct {v0, v3, v6, v2, v1}, Lmcshim/awt/image/BufferedImage;-><init>(III[I)V

    return-object v0

    :catchall_1ae
    move-exception v0

    goto :goto_1b9

    :catch_1b0
    move-exception v0

    .line 74
    :try_start_1b1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupt PNG data"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1b9
    .catchall {:try_start_1b1 .. :try_end_1b9} :catchall_1ae

    .line 75
    :goto_1b9
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    throw v0

    .line 56
    :cond_1bd
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad PNG header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c5
    :goto_1c5
    move v5, v13

    move v6, v14

    move v3, v15

    move v15, v3

    move v13, v5

    move v14, v6

    :goto_1cb
    const/4 v3, 0x0

    goto/16 :goto_2b

    .line 45
    :cond_1ce
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad PNG chunk"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodePass(Ljava/util/zip/Inflater;[IIIIIIIIIIIII[B[B)V
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p8

    move/from16 v2, p13

    mul-int v3, v1, p12

    mul-int v3, v3, p10

    add-int/lit8 v3, v3, 0x7

    .line 92
    div-int/lit8 v3, v3, 0x8

    .line 93
    new-array v4, v3, [B

    new-array v5, v3, [B

    const/4 v10, 0x1

    new-array v11, v10, [B

    const/4 v12, 0x0

    move/from16 v15, p9

    move-object v14, v4

    move-object v13, v5

    move v9, v12

    :goto_1b
    if-ge v9, v15, :cond_d9

    .line 95
    invoke-static {v0, v11}, Lmcshim/imageio/ImageIO;->inflateFully(Ljava/util/zip/Inflater;[B)V

    invoke-static {v0, v13}, Lmcshim/imageio/ImageIO;->inflateFully(Ljava/util/zip/Inflater;[B)V

    aget-byte v4, v11, v12

    and-int/lit16 v4, v4, 0xff

    move v5, v12

    :goto_28
    if-ge v5, v3, :cond_a1

    if-lt v5, v2, :cond_33

    sub-int v6, v5, v2

    .line 98
    aget-byte v6, v13, v6

    and-int/lit16 v6, v6, 0xff

    goto :goto_34

    :cond_33
    move v6, v12

    :goto_34
    aget-byte v7, v14, v5

    and-int/lit16 v7, v7, 0xff

    if-lt v5, v2, :cond_41

    sub-int v8, v5, v2

    aget-byte v8, v14, v8

    and-int/lit16 v8, v8, 0xff

    goto :goto_42

    :cond_41
    move v8, v12

    :goto_42
    aget-byte v12, v13, v5

    and-int/lit16 v12, v12, 0xff

    if-eqz v4, :cond_94

    if-eq v4, v10, :cond_91

    const/4 v10, 0x2

    if-eq v4, v10, :cond_8e

    const/4 v10, 0x3

    if-eq v4, v10, :cond_88

    const/4 v10, 0x4

    if-ne v4, v10, :cond_74

    add-int v10, v6, v7

    sub-int/2addr v10, v8

    sub-int v16, v10, v6

    .line 104
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v16, v10, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v0, v2, :cond_6c

    if-gt v0, v10, :cond_6c

    goto :goto_71

    :cond_6c
    if-gt v2, v10, :cond_70

    move v6, v7

    goto :goto_71

    :cond_70
    move v6, v8

    :goto_71
    add-int/2addr v12, v6

    const/4 v0, 0x1

    goto :goto_95

    .line 106
    :cond_74
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad PNG filter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    add-int/2addr v6, v7

    const/4 v0, 0x1

    ushr-int/lit8 v2, v6, 0x1

    add-int/2addr v12, v2

    goto :goto_95

    :cond_8e
    const/4 v0, 0x1

    add-int/2addr v12, v7

    goto :goto_95

    :cond_91
    move v0, v10

    add-int/2addr v12, v6

    goto :goto_95

    :cond_94
    move v0, v10

    :goto_95
    int-to-byte v2, v12

    .line 108
    aput-byte v2, v13, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p13

    move v10, v0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    goto :goto_28

    :cond_a1
    move v0, v10

    mul-int v2, v9, p7

    add-int v2, p5, v2

    mul-int v2, v2, p2

    const/4 v10, 0x0

    :goto_a9
    if-ge v10, v1, :cond_c8

    add-int v4, v2, p4

    mul-int v5, v10, p6

    add-int v12, v4, v5

    move-object v4, v13

    move v5, v10

    move/from16 v6, p10

    move/from16 v7, p11

    move-object/from16 v8, p14

    move/from16 v16, v9

    move-object/from16 v9, p15

    .line 112
    invoke-static/range {v4 .. v9}, Lmcshim/imageio/ImageIO;->pixel([BIII[B[B)I

    move-result v4

    aput v4, p1, v12

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v16

    goto :goto_a9

    :cond_c8
    move/from16 v16, v9

    add-int/lit8 v9, v16, 0x1

    move/from16 v2, p13

    move v10, v0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v17, v14

    move-object v14, v13

    move-object/from16 v13, v17

    goto/16 :goto_1b

    :cond_d9
    return-void
.end method

.method public static encodePNG(Lmcshim/awt/image/BufferedImage;Ljava/io/OutputStream;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual/range {p0 .. p0}, Lmcshim/awt/image/BufferedImage;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lmcshim/awt/image/BufferedImage;->getHeight()I

    move-result v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v3, v8

    move v4, v9

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lmcshim/awt/image/BufferedImage;->getRGB(IIII[III)[I

    move-result-object v0

    .line 151
    invoke-virtual/range {p0 .. p0}, Lmcshim/awt/image/BufferedImage;->getType()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1e

    move v1, v3

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    if-eqz v1, :cond_23

    const/4 v4, 0x4

    goto :goto_24

    :cond_23
    const/4 v4, 0x3

    .line 153
    :goto_24
    new-instance v5, Ljava/io/DataOutputStream;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide v6, -0x76afb1b8f2f5e5f6L    # -8.091055181950927E-264

    .line 154
    invoke-virtual {v5, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 155
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v10, 0x6

    if-eqz v1, :cond_4d

    move v11, v10

    goto :goto_4e

    :cond_4d
    const/4 v11, 0x2

    :goto_4e
    invoke-virtual {v7, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const v7, 0x49484452

    .line 157
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v5, v7, v6}, Lmcshim/imageio/ImageIO;->chunk(Ljava/io/DataOutputStream;I[B)V

    .line 158
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    new-instance v7, Ljava/util/zip/DeflaterOutputStream;

    new-instance v11, Ljava/util/zip/Deflater;

    invoke-direct {v11, v10}, Ljava/util/zip/Deflater;-><init>(I)V

    invoke-direct {v7, v6, v11}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    mul-int/2addr v4, v8

    add-int/2addr v4, v3

    .line 160
    new-array v4, v4, [B

    move v10, v2

    :goto_78
    if-ge v10, v9, :cond_d5

    .line 162
    aput-byte v3, v4, v2

    move v11, v2

    move v13, v11

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move v12, v3

    :goto_83
    if-ge v11, v8, :cond_c9

    mul-int v17, v10, v8

    add-int v17, v17, v11

    .line 165
    aget v3, v0, v17

    shr-int/lit8 v2, v3, 0x10

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v18, v0

    shr-int/lit8 v0, v3, 0x8

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v8

    and-int/lit16 v8, v3, 0xff

    ushr-int/lit8 v3, v3, 0x18

    add-int/lit8 v20, v12, 0x1

    sub-int v13, v2, v13

    int-to-byte v13, v13

    .line 166
    aput-byte v13, v4, v12

    add-int/lit8 v12, v20, 0x1

    sub-int v13, v0, v14

    int-to-byte v13, v13

    aput-byte v13, v4, v20

    add-int/lit8 v13, v12, 0x1

    sub-int v14, v8, v15

    int-to-byte v14, v14

    aput-byte v14, v4, v12

    if-eqz v1, :cond_ba

    add-int/lit8 v12, v13, 0x1

    sub-int v14, v3, v16

    int-to-byte v14, v14

    .line 167
    aput-byte v14, v4, v13

    goto :goto_bb

    :cond_ba
    move v12, v13

    :goto_bb
    add-int/lit8 v11, v11, 0x1

    move v14, v0

    move v13, v2

    move/from16 v16, v3

    move v15, v8

    move-object/from16 v0, v18

    move/from16 v8, v19

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_83

    :cond_c9
    move-object/from16 v18, v0

    move/from16 v19, v8

    .line 170
    invoke-virtual {v7, v4}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_78

    .line 172
    :cond_d5
    invoke-virtual {v7}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    const v0, 0x49444154    # 803861.25f

    .line 173
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v5, v0, v1}, Lmcshim/imageio/ImageIO;->chunk(Ljava/io/DataOutputStream;I[B)V

    const v0, 0x49454e44    # 808164.25f

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 174
    invoke-static {v5, v0, v1}, Lmcshim/imageio/ImageIO;->chunk(Ljava/io/DataOutputStream;I[B)V

    .line 175
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method private static inflateFully(Ljava/util/zip/Inflater;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_31

    .line 83
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    if-nez v1, :cond_2f

    .line 84
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_2f

    :cond_1f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PNG dict"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    new-instance p0, Ljava/io/IOException;

    const-string p1, "truncated PNG"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    :goto_2f
    add-int/2addr v0, v1

    goto :goto_1

    :cond_31
    return-void
.end method

.method private static pixel([BIII[B[B)I
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/16 v8, 0x10

    const/16 v9, 0xff

    if-eqz v2, :cond_e0

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eq v2, v7, :cond_7d

    if-eq v2, v11, :cond_51

    if-eq v2, v10, :cond_3c

    mul-int/lit8 v2, p1, 0x4

    .line 143
    invoke-static {v0, v2, v1}, Lmcshim/imageio/ImageIO;->sample([BII)I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v4, v1}, Lmcshim/imageio/ImageIO;->sample([BII)I

    move-result v4

    add-int/lit8 v5, v2, 0x2

    invoke-static {v0, v5, v1}, Lmcshim/imageio/ImageIO;->sample([BII)I

    move-result v5

    add-int/2addr v2, v11

    invoke-static {v0, v2, v1}, Lmcshim/imageio/ImageIO;->sample([BII)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v3, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v4, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v5

    return v0

    :cond_3c
    mul-int/lit8 v2, p1, 0x2

    .line 142
    invoke-static {v0, v2, v1}, Lmcshim/imageio/ImageIO;->sample([BII)I

    move-result v3

    add-int/2addr v2, v5

    invoke-static {v0, v2, v1}, Lmcshim/imageio/ImageIO;->sample([BII)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v3, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0

    .line 138
    :cond_51
    invoke-static/range {p0 .. p2}, Lmcshim/imageio/ImageIO;->sample([BII)I

    move-result v0

    if-eqz v3, :cond_69

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v2, v1, 0x2

    .line 139
    array-length v7, v3

    if-ge v2, v7, :cond_69

    aget-byte v6, v3, v1

    and-int/2addr v6, v9

    add-int/2addr v1, v5

    aget-byte v1, v3, v1

    and-int/2addr v1, v9

    aget-byte v2, v3, v2

    and-int/2addr v2, v9

    goto :goto_6b

    :cond_69
    move v1, v6

    move v2, v1

    :goto_6b
    if-eqz v4, :cond_73

    .line 140
    array-length v3, v4

    if-ge v0, v3, :cond_73

    aget-byte v0, v4, v0

    and-int/2addr v9, v0

    :cond_73
    shl-int/lit8 v0, v9, 0x18

    shl-int/lit8 v3, v6, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0

    :cond_7d
    mul-int/lit8 v2, p1, 0x3

    .line 132
    invoke-static {v0, v2, v1}, Lmcshim/imageio/ImageIO;->sample([BII)I

    move-result v3

    add-int/lit8 v12, v2, 0x1

    invoke-static {v0, v12, v1}, Lmcshim/imageio/ImageIO;->sample([BII)I

    move-result v13

    add-int/lit8 v14, v2, 0x2

    invoke-static {v0, v14, v1}, Lmcshim/imageio/ImageIO;->sample([BII)I

    move-result v15

    if-eqz v4, :cond_d3

    .line 133
    array-length v8, v4

    const/4 v10, 0x6

    if-lt v8, v10, :cond_d3

    .line 134
    aget-byte v8, v4, v6

    and-int/2addr v8, v9

    shl-int/lit8 v8, v8, 0x8

    aget-byte v5, v4, v5

    and-int/2addr v5, v9

    or-int/2addr v5, v8

    aget-byte v7, v4, v7

    and-int/2addr v7, v9

    shl-int/lit8 v7, v7, 0x8

    aget-byte v8, v4, v11

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/4 v8, 0x4

    aget-byte v8, v4, v8

    and-int/2addr v8, v9

    shl-int/lit8 v8, v8, 0x8

    const/4 v10, 0x5

    aget-byte v4, v4, v10

    and-int/2addr v4, v9

    or-int/2addr v4, v8

    const/16 v8, 0x10

    if-ne v1, v8, :cond_bb

    .line 135
    invoke-static {v0, v2}, Lmcshim/imageio/ImageIO;->raw16([BI)I

    move-result v2

    goto :goto_bc

    :cond_bb
    move v2, v3

    :goto_bc
    if-ne v1, v8, :cond_c3

    invoke-static {v0, v12}, Lmcshim/imageio/ImageIO;->raw16([BI)I

    move-result v10

    goto :goto_c4

    :cond_c3
    move v10, v13

    :goto_c4
    if-ne v1, v8, :cond_cb

    invoke-static {v0, v14}, Lmcshim/imageio/ImageIO;->raw16([BI)I

    move-result v0

    goto :goto_cc

    :cond_cb
    move v0, v15

    :goto_cc
    if-ne v2, v5, :cond_d3

    if-ne v10, v7, :cond_d3

    if-ne v0, v4, :cond_d3

    goto :goto_d4

    :cond_d3
    move v6, v9

    :goto_d4
    shl-int/lit8 v0, v6, 0x18

    const/16 v1, 0x10

    shl-int/lit8 v1, v3, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v13, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v15

    return v0

    .line 129
    :cond_e0
    invoke-static/range {p0 .. p2}, Lmcshim/imageio/ImageIO;->sample([BII)I

    move-result v2

    invoke-static {v2, v1}, Lmcshim/imageio/ImageIO;->scale(II)I

    move-result v3

    if-eqz v4, :cond_101

    .line 130
    array-length v8, v4

    if-lt v8, v7, :cond_101

    aget-byte v7, v4, v6

    and-int/2addr v7, v9

    shl-int/lit8 v7, v7, 0x8

    aget-byte v4, v4, v5

    and-int/2addr v4, v9

    or-int/2addr v4, v7

    const/16 v5, 0x10

    if-ne v1, v5, :cond_fe

    invoke-static/range {p0 .. p1}, Lmcshim/imageio/ImageIO;->raw16([BI)I

    move-result v2

    :cond_fe
    if-ne v2, v4, :cond_101

    goto :goto_102

    :cond_101
    move v6, v9

    :goto_102
    shl-int/lit8 v0, v6, 0x18

    shl-int/lit8 v1, v3, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method private static raw16([BI)I
    .registers 3

    mul-int/lit8 p1, p1, 0x2

    .line 125
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static read(Ljava/io/File;)Lmcshim/awt/image/BufferedImage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lmcshim/imageio/ImageIO;->read(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_f

    .line 19
    :try_start_2
    invoke-static {p0}, Lmcshim/imageio/ImageIO;->decodePNG(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_a

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_9

    :catch_9
    return-object v0

    :catchall_a
    move-exception v0

    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_e

    :catch_e
    throw v0

    .line 18
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/net/URL;)Lmcshim/awt/image/BufferedImage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_b

    .line 23
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lmcshim/imageio/ImageIO;->read(Ljava/io/InputStream;)Lmcshim/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    .line 22
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "input == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readInt(Ljava/io/DataInputStream;)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    return p0
.end method

.method private static sample([BII)I
    .registers 6

    const/16 v0, 0x8

    if-ne p2, v0, :cond_9

    .line 119
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_9
    const/16 v1, 0x10

    if-ne p2, v1, :cond_1a

    .line 120
    invoke-static {p0, p1}, Lmcshim/imageio/ImageIO;->raw16([BI)I

    move-result p0

    mul-int/lit16 p0, p0, 0xff

    add-int/lit16 p0, p0, 0x7fff

    const p1, 0xffff

    div-int/2addr p0, p1

    return p0

    .line 121
    :cond_1a
    div-int v1, v0, p2

    div-int v2, p1, v1

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    rem-int/2addr p1, v1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    mul-int/2addr p1, p2

    sub-int/2addr v0, p1

    shr-int/2addr p0, v0

    shl-int p1, v1, p2

    sub-int/2addr p1, v1

    and-int/2addr p0, p1

    return p0
.end method

.method private static scale(II)I
    .registers 3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_17

    const/16 v0, 0x10

    if-ne p1, v0, :cond_9

    goto :goto_17

    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    mul-int/lit16 p0, p0, 0xff

    return p0

    :cond_f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_15

    mul-int/lit8 p0, p0, 0x55

    return p0

    :cond_15
    mul-int/lit8 p0, p0, 0x11

    :cond_17
    :goto_17
    return p0
.end method

.method public static write(Lmcshim/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    instance-of p1, p0, Lmcshim/awt/image/BufferedImage;

    if-nez p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 29
    :cond_6
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_10
    check-cast p0, Lmcshim/awt/image/BufferedImage;

    invoke-static {p0, p1}, Lmcshim/imageio/ImageIO;->encodePNG(Lmcshim/awt/image/BufferedImage;Ljava/io/OutputStream;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_1a
    move-exception p0

    :try_start_1b
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_23
    throw p0
.end method
