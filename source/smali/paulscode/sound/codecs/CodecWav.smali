###### Class paulscode.sound.codecs.CodecWav (paulscode.sound.codecs.CodecWav)
.class public Lpaulscode/sound/codecs/CodecWav;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpaulscode/sound/ICodec;


# static fields
.field private static final GET:Z = false

.field private static final SET:Z = true

.field private static final XXX:Z


# instance fields
.field private endOfStream:Z

.field private initialized:Z

.field private logger:Lpaulscode/sound/SoundSystemLogger;

.field private myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lpaulscode/sound/codecs/CodecWav;->endOfStream:Z

    .line 81
    iput-boolean v0, p0, Lpaulscode/sound/codecs/CodecWav;->initialized:Z

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lpaulscode/sound/codecs/CodecWav;->myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;

    .line 105
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/codecs/CodecWav;->logger:Lpaulscode/sound/SoundSystemLogger;

    return-void
.end method

.method private static appendByteArrays([B[BI)[B
    .registers 6

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    const/4 v0, 0x0

    if-nez p0, :cond_f

    .line 501
    new-array p0, p2, [B

    .line 503
    invoke-static {p1, v0, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27

    :cond_f
    if-nez p1, :cond_1a

    .line 509
    array-length p1, p0

    new-array p1, p1, [B

    .line 511
    array-length p2, p0

    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p1

    goto :goto_27

    .line 517
    :cond_1a
    array-length v1, p0

    add-int/2addr v1, p2

    new-array v1, v1, [B

    .line 518
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    array-length p0, p0

    invoke-static {p1, v0, v1, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v1

    :goto_27
    return-object p0
.end method

.method private static convertAudioBytes([BZ)[B
    .registers 4

    .line 447
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 448
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 449
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 450
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2d

    .line 453
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    .line 454
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    .line 455
    :goto_1f
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 457
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto :goto_1f

    .line 462
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 464
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2d

    .line 467
    :cond_3b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 469
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p0

    if-nez p0, :cond_51

    .line 471
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    new-array p0, p0, [B

    .line 472
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 473
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p0

    .line 478
    :cond_51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized endOfStream(ZZ)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 416
    :try_start_4
    iput-boolean p2, p0, Lpaulscode/sound/codecs/CodecWav;->endOfStream:Z

    .line 417
    :cond_6
    iget-boolean p1, p0, Lpaulscode/sound/codecs/CodecWav;->endOfStream:Z
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private errorMessage(Ljava/lang/String;)V
    .registers 5

    .line 535
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecWav;->logger:Lpaulscode/sound/SoundSystemLogger;

    const-string v1, "CodecWav"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lpaulscode/sound/SoundSystemLogger;->errorMessage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private declared-synchronized initialized(ZZ)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 403
    :try_start_4
    iput-boolean p2, p0, Lpaulscode/sound/codecs/CodecWav;->initialized:Z

    .line 404
    :cond_6
    iget-boolean p1, p0, Lpaulscode/sound/codecs/CodecWav;->initialized:Z
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private printStackTrace(Ljava/lang/Exception;)V
    .registers 4

    .line 544
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecWav;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->printStackTrace(Ljava/lang/Exception;I)V

    return-void
.end method

.method private static trimArray([BI)[B
    .registers 4

    if-eqz p0, :cond_c

    .line 430
    array-length v0, p0

    if-le v0, p1, :cond_c

    .line 432
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 433
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .registers 2

    .line 372
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecWav;->myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;

    if-eqz v0, :cond_7

    .line 375
    :try_start_4
    invoke-virtual {v0}, Lmcshim/sound/sampled/AudioInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lpaulscode/sound/codecs/CodecWav;->myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;

    return-void
.end method

.method public endOfStream()Z
    .registers 2

    const/4 v0, 0x0

    .line 364
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/codecs/CodecWav;->endOfStream(ZZ)Z

    move-result v0

    return v0
.end method

.method public getAudioFormat()Lmcshim/sound/sampled/AudioFormat;
    .registers 2

    .line 389
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecWav;->myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 391
    :cond_6
    invoke-virtual {v0}, Lmcshim/sound/sampled/AudioInputStream;->getFormat()Lmcshim/sound/sampled/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/net/URL;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, v0, v1}, Lpaulscode/sound/codecs/CodecWav;->initialized(ZZ)Z

    .line 117
    invoke-virtual {p0}, Lpaulscode/sound/codecs/CodecWav;->cleanup()V

    if-nez p1, :cond_13

    const-string p1, "url null in method \'initialize\'"

    .line 121
    invoke-direct {p0, p1}, Lpaulscode/sound/codecs/CodecWav;->errorMessage(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lpaulscode/sound/codecs/CodecWav;->cleanup()V

    return v1

    .line 128
    :cond_13
    :try_start_13
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lmcshim/sound/sampled/AudioSystem;->getAudioInputStream(Ljava/io/InputStream;)Lmcshim/sound/sampled/AudioInputStream;

    move-result-object p1

    iput-object p1, p0, Lpaulscode/sound/codecs/CodecWav;->myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;
    :try_end_22
    .catch Lmcshim/sound/sampled/UnsupportedAudioFileException; {:try_start_13 .. :try_end_22} :catch_33
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_22} :catch_29

    .line 145
    invoke-direct {p0, v0, v1}, Lpaulscode/sound/codecs/CodecWav;->endOfStream(ZZ)Z

    .line 146
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/codecs/CodecWav;->initialized(ZZ)Z

    return v0

    :catch_29
    move-exception p1

    const-string v0, "Error setting up audio input stream in method \'initialize\'"

    .line 139
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecWav;->errorMessage(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p1}, Lpaulscode/sound/codecs/CodecWav;->printStackTrace(Ljava/lang/Exception;)V

    return v1

    :catch_33
    move-exception p1

    const-string v0, "Unsupported audio format in method \'initialize\'"

    .line 133
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecWav;->errorMessage(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1}, Lpaulscode/sound/codecs/CodecWav;->printStackTrace(Ljava/lang/Exception;)V

    return v1
.end method

.method public initialized()Z
    .registers 2

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/codecs/CodecWav;->initialized(ZZ)Z

    move-result v0

    return v0
.end method

.method public read()Lpaulscode/sound/SoundBuffer;
    .registers 10

    .line 167
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecWav;->myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 171
    :cond_6
    invoke-virtual {v0}, Lmcshim/sound/sampled/AudioInputStream;->getFormat()Lmcshim/sound/sampled/AudioFormat;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "Audio Format null in method \'read\'"

    .line 176
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecWav;->errorMessage(Ljava/lang/String;)V

    return-object v1

    .line 184
    :cond_12
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getStreamingBufferSize()I

    move-result v2

    new-array v3, v2, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_1a
    const/4 v6, 0x1

    .line 191
    :try_start_1b
    invoke-direct {p0, v4, v4}, Lpaulscode/sound/codecs/CodecWav;->endOfStream(ZZ)Z

    move-result v7

    if-nez v7, :cond_33

    if-ge v5, v2, :cond_33

    .line 193
    iget-object v7, p0, Lpaulscode/sound/codecs/CodecWav;->myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;

    sub-int v8, v2, v5

    invoke-virtual {v7, v3, v5, v8}, Lmcshim/sound/sampled/AudioInputStream;->read([BII)I

    move-result v7

    if-gtz v7, :cond_31

    .line 197
    invoke-direct {p0, v6, v6}, Lpaulscode/sound/codecs/CodecWav;->endOfStream(ZZ)Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_30} :catch_4f

    goto :goto_33

    :cond_31
    add-int/2addr v5, v7

    goto :goto_1a

    :cond_33
    :goto_33
    if-gtz v5, :cond_36

    return-object v1

    :cond_36
    if-ge v5, v2, :cond_3c

    .line 217
    invoke-static {v3, v5}, Lpaulscode/sound/codecs/CodecWav;->trimArray([BI)[B

    move-result-object v3

    .line 221
    :cond_3c
    invoke-virtual {v0}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_45

    move v4, v6

    :cond_45
    invoke-static {v3, v4}, Lpaulscode/sound/codecs/CodecWav;->convertAudioBytes([BZ)[B

    move-result-object v1

    .line 225
    new-instance v2, Lpaulscode/sound/SoundBuffer;

    invoke-direct {v2, v1, v0}, Lpaulscode/sound/SoundBuffer;-><init>([BLmcshim/sound/sampled/AudioFormat;)V

    return-object v2

    .line 207
    :catch_4f
    invoke-direct {p0, v6, v6}, Lpaulscode/sound/codecs/CodecWav;->endOfStream(ZZ)Z

    return-object v1
.end method

.method public readAll()Lpaulscode/sound/SoundBuffer;
    .registers 12

    .line 241
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecWav;->myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "Audio input stream null in method \'readAll\'"

    .line 243
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecWav;->errorMessage(Ljava/lang/String;)V

    return-object v1

    .line 246
    :cond_b
    invoke-virtual {v0}, Lmcshim/sound/sampled/AudioInputStream;->getFormat()Lmcshim/sound/sampled/AudioFormat;

    move-result-object v0

    if-nez v0, :cond_17

    const-string v0, "Audio Format null in method \'readAll\'"

    .line 251
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecWav;->errorMessage(Ljava/lang/String;)V

    return-object v1

    .line 259
    :cond_17
    invoke-virtual {v0}, Lmcshim/sound/sampled/AudioFormat;->getChannels()I

    move-result v2

    iget-object v3, p0, Lpaulscode/sound/codecs/CodecWav;->myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;

    invoke-virtual {v3}, Lmcshim/sound/sampled/AudioInputStream;->getFrameLength()J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/2addr v2, v3

    invoke-virtual {v0}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_5d

    .line 265
    invoke-virtual {v0}, Lmcshim/sound/sampled/AudioFormat;->getChannels()I

    move-result v2

    iget-object v5, p0, Lpaulscode/sound/codecs/CodecWav;->myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;

    invoke-virtual {v5}, Lmcshim/sound/sampled/AudioInputStream;->getFrameLength()J

    move-result-wide v5

    long-to-int v5, v5

    mul-int/2addr v2, v5

    invoke-virtual {v0}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v5

    mul-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x8

    new-array v5, v2, [B

    move v6, v4

    .line 276
    :goto_44
    :try_start_44
    iget-object v7, p0, Lpaulscode/sound/codecs/CodecWav;->myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;

    sub-int v8, v2, v6

    invoke-virtual {v7, v5, v6, v8}, Lmcshim/sound/sampled/AudioInputStream;->read([BII)I

    move-result v7
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4c} :catch_53

    const/4 v8, -0x1

    if-eq v7, v8, :cond_95

    if-ge v6, v2, :cond_95

    add-int/2addr v6, v7

    goto :goto_44

    :catch_53
    move-exception v0

    const-string v2, "Exception thrown while reading from the AudioInputStream (location #1)."

    .line 283
    invoke-direct {p0, v2}, Lpaulscode/sound/codecs/CodecWav;->errorMessage(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecWav;->printStackTrace(Ljava/lang/Exception;)V

    return-object v1

    .line 298
    :cond_5d
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getFileChunkSize()I

    move-result v2

    new-array v5, v2, [B

    move-object v6, v1

    move v7, v4

    .line 301
    :goto_65
    invoke-direct {p0, v4, v4}, Lpaulscode/sound/codecs/CodecWav;->endOfStream(ZZ)Z

    move-result v8

    if-nez v8, :cond_94

    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getMaxFileSize()I

    move-result v8

    if-ge v7, v8, :cond_94

    move v8, v4

    :goto_72
    if-ge v8, v2, :cond_8e

    .line 312
    :try_start_74
    iget-object v9, p0, Lpaulscode/sound/codecs/CodecWav;->myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;

    sub-int v10, v2, v8

    invoke-virtual {v9, v5, v8, v10}, Lmcshim/sound/sampled/AudioInputStream;->read([BII)I

    move-result v9

    if-gtz v9, :cond_82

    .line 316
    invoke-direct {p0, v3, v3}, Lpaulscode/sound/codecs/CodecWav;->endOfStream(ZZ)Z
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_81} :catch_84

    goto :goto_8e

    :cond_82
    add-int/2addr v8, v9

    goto :goto_72

    :catch_84
    move-exception v0

    const-string v2, "Exception thrown while reading from the AudioInputStream (location #2)."

    .line 324
    invoke-direct {p0, v2}, Lpaulscode/sound/codecs/CodecWav;->errorMessage(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecWav;->printStackTrace(Ljava/lang/Exception;)V

    return-object v1

    :cond_8e
    :goto_8e
    add-int/2addr v7, v8

    .line 334
    invoke-static {v6, v5, v8}, Lpaulscode/sound/codecs/CodecWav;->appendByteArrays([B[BI)[B

    move-result-object v6

    goto :goto_65

    :cond_94
    move-object v5, v6

    .line 340
    :cond_95
    invoke-virtual {v0}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_9e

    goto :goto_9f

    :cond_9e
    move v3, v4

    :goto_9f
    invoke-static {v5, v3}, Lpaulscode/sound/codecs/CodecWav;->convertAudioBytes([BZ)[B

    move-result-object v1

    .line 344
    new-instance v2, Lpaulscode/sound/SoundBuffer;

    invoke-direct {v2, v1, v0}, Lpaulscode/sound/SoundBuffer;-><init>([BLmcshim/sound/sampled/AudioFormat;)V

    .line 349
    :try_start_a8
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecWav;->myAudioInputStream:Lmcshim/sound/sampled/AudioInputStream;

    invoke-virtual {v0}, Lmcshim/sound/sampled/AudioInputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ad} :catch_ad

    :catch_ad
    return-object v2
.end method

.method public reverseByteOrder(Z)V
    .registers 2

    return-void
.end method
