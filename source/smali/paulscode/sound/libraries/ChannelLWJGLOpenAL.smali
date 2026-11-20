###### Class paulscode.sound.libraries.ChannelLWJGLOpenAL (paulscode.sound.libraries.ChannelLWJGLOpenAL)
.class public Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;
.super Lpaulscode/sound/Channel;
.source "SourceFile"


# instance fields
.field public ALSource:Ljava/nio/IntBuffer;

.field public ALformat:I

.field bufferBuffer:Ljava/nio/ByteBuffer;

.field public sampleRate:I


# direct methods
.method public constructor <init>(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 118
    invoke-direct {p0, p1}, Lpaulscode/sound/Channel;-><init>(I)V

    const/high16 p1, 0x500000

    .line 245
    invoke-static {p1}, Lorg/lwjgl/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->bufferBuffer:Ljava/nio/ByteBuffer;

    .line 119
    const-class p1, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;

    iput-object p1, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->libraryType:Ljava/lang/Class;

    .line 120
    iput-object p2, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    return-void
.end method

.method private checkALError()Z
    .registers 3

    .line 587
    invoke-static {}, Lorg/lwjgl/openal/AL10;->alGetError()I

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_30

    const-string v0, "An unrecognized error occurred."

    .line 607
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_10
    const-string v0, "Unable to allocate memory."

    .line 604
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_16
    const-string v0, "Illegal call."

    .line 601
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_1c
    const-string v0, "Invalid enumerated parameter value."

    .line 598
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_22
    const-string v0, "Invalid parameter."

    .line 595
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_28
    const-string v0, "Invalid name parameter."

    .line 592
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :cond_2e
    const/4 v0, 0x0

    return v0

    :pswitch_data_30
    .packed-switch 0xa001
        :pswitch_28
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public attachBuffer(Ljava/nio/IntBuffer;)Z
    .registers 5

    .line 164
    iget v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->channelType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    const-string v2, "Sound buffers may only be attached to normal sources."

    invoke-virtual {p0, v0, v2}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 170
    :cond_11
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    const/16 v2, 0x1009

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    invoke-static {v0, v2, p1}, Lorg/lwjgl/openal/AL10;->alSourcei(III)V

    .line 174
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result p1

    return p1
.end method

.method public buffersProcessed()I
    .registers 4

    .line 448
    iget v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->channelType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    return v2

    .line 452
    :cond_7
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    const/16 v1, 0x1016

    invoke-static {v0, v1}, Lorg/lwjgl/openal/AL10;->alGetSourcei(II)I

    move-result v0

    .line 456
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result v1

    if-eqz v1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public cleanup()V
    .registers 2

    .line 130
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_17

    .line 135
    :try_start_4
    invoke-static {v0}, Lorg/lwjgl/openal/AL10;->alSourceStop(Ljava/nio/IntBuffer;)V

    .line 136
    invoke-static {}, Lorg/lwjgl/openal/AL10;->alGetError()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_a

    .line 143
    :catch_a
    :try_start_a
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-static {v0}, Lorg/lwjgl/openal/AL10;->alDeleteSources(Ljava/nio/IntBuffer;)V

    .line 144
    invoke-static {}, Lorg/lwjgl/openal/AL10;->alGetError()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_12

    .line 148
    :catch_12
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    :cond_17
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    .line 152
    invoke-super {p0}, Lpaulscode/sound/Channel;->cleanup()V

    return-void
.end method

.method public close()V
    .registers 3

    .line 506
    :try_start_0
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0}, Lorg/lwjgl/openal/AL10;->alSourceStop(I)V

    .line 507
    invoke-static {}, Lorg/lwjgl/openal/AL10;->alGetError()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    .line 512
    :catch_d
    iget v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->channelType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 513
    invoke-virtual {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->flush()V

    :cond_15
    return-void
.end method

.method public feedRawAudioData([B)I
    .registers 9

    .line 386
    iget v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->channelType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    const-string v3, "Raw audio data can only be fed to streaming sources."

    invoke-virtual {p0, v0, v3}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_13

    return v3

    .line 390
    :cond_13
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 395
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    const/16 v4, 0x1016

    invoke-static {v0, v4}, Lorg/lwjgl/openal/AL10;->alGetSourcei(II)I

    move-result v0

    if-lez v0, :cond_50

    .line 399
    invoke-static {v0}, Lorg/lwjgl/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 400
    invoke-static {v2}, Lorg/lwjgl/openal/AL10;->alGenBuffers(Ljava/nio/IntBuffer;)V

    .line 401
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result v4

    const-string v5, "Error clearing stream buffers in method \'feedRawAudioData\'"

    invoke-virtual {p0, v4, v5}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    return v3

    .line 404
    :cond_3a
    iget-object v4, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-static {v4, v2}, Lorg/lwjgl/openal/AL10;->alSourceUnqueueBuffers(ILjava/nio/IntBuffer;)V

    .line 405
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result v4

    const-string v5, "Error unqueuing stream buffers in method \'feedRawAudioData\'"

    invoke-virtual {p0, v4, v5}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    return v3

    .line 411
    :cond_50
    invoke-static {v2}, Lorg/lwjgl/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 412
    invoke-static {v2}, Lorg/lwjgl/openal/AL10;->alGenBuffers(Ljava/nio/IntBuffer;)V

    .line 413
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result v4

    const-string v5, "Error generating stream buffers in method \'preLoadBuffers\'"

    invoke-virtual {p0, v4, v5}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    return v3

    .line 418
    :cond_64
    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    iget v5, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALformat:I

    iget v6, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->sampleRate:I

    invoke-static {v4, v5, p1, v6}, Lorg/lwjgl/openal/AL10;->alBufferData(IILjava/nio/ByteBuffer;I)V

    .line 419
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result p1

    if-eqz p1, :cond_76

    return v3

    .line 422
    :cond_76
    iget-object p1, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    invoke-static {p1, v2}, Lorg/lwjgl/openal/AL10;->alSourceQueueBuffers(ILjava/nio/IntBuffer;)V

    .line 423
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result p1

    if-eqz p1, :cond_86

    return v3

    .line 426
    :cond_86
    iget-object p1, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->attachedSource:Lpaulscode/sound/Source;

    if-eqz p1, :cond_aa

    iget-object p1, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->attachedSource:Lpaulscode/sound/Source;

    iget-object p1, p1, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    if-ne p1, p0, :cond_aa

    iget-object p1, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->attachedSource:Lpaulscode/sound/Source;

    invoke-virtual {p1}, Lpaulscode/sound/Source;->active()Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 430
    invoke-virtual {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->playing()Z

    move-result p1

    if-nez p1, :cond_aa

    .line 432
    iget-object p1, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    invoke-static {p1}, Lorg/lwjgl/openal/AL10;->alSourcePlay(I)V

    .line 433
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    :cond_aa
    return v0
.end method

.method public flush()V
    .registers 5

    .line 471
    iget v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->channelType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return-void

    .line 475
    :cond_6
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    const/16 v3, 0x1015

    invoke-static {v0, v3}, Lorg/lwjgl/openal/AL10;->alGetSourcei(II)I

    move-result v0

    .line 478
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result v3

    if-eqz v3, :cond_1a

    return-void

    .line 481
    :cond_1a
    invoke-static {v1}, Lorg/lwjgl/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    :goto_1e
    if-lez v0, :cond_33

    .line 486
    :try_start_20
    iget-object v3, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v3, v1}, Lorg/lwjgl/openal/AL10;->alSourceUnqueueBuffers(ILjava/nio/IntBuffer;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_33

    .line 492
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result v3

    if-eqz v3, :cond_30

    return-void

    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :catch_33
    :cond_33
    return-void
.end method

.method public pause()V
    .registers 3

    .line 533
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0}, Lorg/lwjgl/openal/AL10;->alSourcePause(I)V

    .line 534
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    return-void
.end method

.method public play()V
    .registers 3

    .line 523
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0}, Lorg/lwjgl/openal/AL10;->alSourcePlay(I)V

    .line 524
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    return-void
.end method

.method public playing()Z
    .registers 4

    .line 573
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    const/16 v2, 0x1010

    invoke-static {v0, v2}, Lorg/lwjgl/openal/AL10;->alGetSourcei(II)I

    move-result v0

    .line 575
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result v2

    if-eqz v2, :cond_14

    return v1

    :cond_14
    const/16 v2, 0x1012

    if-ne v0, v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public preLoadBuffers(Ljava/util/LinkedList;)Z
    .registers 12

    const-string v0, "Error creating buffers in method \'preLoadBuffers\'"

    const-string v1, "Error queuing buffers in method \'preLoadBuffers\'"

    .line 251
    iget v2, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->channelType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_c

    move v2, v4

    goto :goto_d

    :cond_c
    move v2, v3

    :goto_d
    const-string v5, "Buffers may only be queued for streaming sources."

    invoke-virtual {p0, v2, v5}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v3

    :cond_16
    if-nez p1, :cond_1a

    move v2, v4

    goto :goto_1b

    :cond_1a
    move v2, v3

    :goto_1b
    const-string v5, "Buffer List null in method \'preLoadBuffers\'"

    .line 255
    invoke-virtual {p0, v2, v5}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    return v3

    .line 262
    :cond_24
    invoke-virtual {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->playing()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 266
    iget-object v5, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-static {v5}, Lorg/lwjgl/openal/AL10;->alSourceStop(I)V

    .line 267
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    .line 270
    :cond_36
    iget-object v5, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    const/16 v6, 0x1016

    invoke-static {v5, v6}, Lorg/lwjgl/openal/AL10;->alGetSourcei(II)I

    move-result v5

    if-lez v5, :cond_6e

    .line 274
    invoke-static {v5}, Lorg/lwjgl/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v5

    .line 275
    invoke-static {v5}, Lorg/lwjgl/openal/AL10;->alGenBuffers(Ljava/nio/IntBuffer;)V

    .line 276
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result v6

    const-string v7, "Error clearing stream buffers in method \'preLoadBuffers\'"

    invoke-virtual {p0, v6, v7}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    return v3

    .line 279
    :cond_58
    iget-object v6, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-static {v6, v5}, Lorg/lwjgl/openal/AL10;->alSourceUnqueueBuffers(ILjava/nio/IntBuffer;)V

    .line 280
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result v5

    const-string v6, "Error unqueuing stream buffers in method \'preLoadBuffers\'"

    invoke-virtual {p0, v5, v6}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    return v3

    :cond_6e
    if-eqz v2, :cond_7c

    .line 287
    iget-object v2, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-static {v2}, Lorg/lwjgl/openal/AL10;->alSourcePlay(I)V

    .line 288
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    .line 291
    :cond_7c
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v2}, Lorg/lwjgl/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 292
    invoke-static {v2}, Lorg/lwjgl/openal/AL10;->alGenBuffers(Ljava/nio/IntBuffer;)V

    .line 293
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result v5

    const-string v6, "Error generating stream buffers in method \'preLoadBuffers\'"

    invoke-virtual {p0, v5, v6}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    return v3

    :cond_94
    move v5, v3

    .line 297
    :goto_95
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v5, v6, :cond_da

    .line 299
    iget-object v6, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->bufferBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 300
    iget-object v6, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->bufferBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-virtual {p1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    array-length v8, v8

    invoke-virtual {v6, v7, v3, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 301
    iget-object v6, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->bufferBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 304
    :try_start_b7
    invoke-virtual {v2, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    iget v7, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALformat:I

    iget-object v8, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->bufferBuffer:Ljava/nio/ByteBuffer;

    iget v9, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->sampleRate:I

    invoke-static {v6, v7, v8, v9}, Lorg/lwjgl/openal/AL10;->alBufferData(IILjava/nio/ByteBuffer;I)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c4} :catch_d2

    .line 314
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result v6

    invoke-virtual {p0, v6, v0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cf

    return v3

    :cond_cf
    add-int/lit8 v5, v5, 0x1

    goto :goto_95

    :catch_d2
    move-exception p1

    .line 309
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, p1}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->printStackTrace(Ljava/lang/Exception;)V

    return v3

    .line 321
    :cond_da
    :try_start_da
    iget-object p1, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    invoke-static {p1, v2}, Lorg/lwjgl/openal/AL10;->alSourceQueueBuffers(ILjava/nio/IntBuffer;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e3} :catch_105

    .line 329
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result p1

    invoke-virtual {p0, p1, v1}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ee

    return v3

    .line 333
    :cond_ee
    iget-object p1, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    invoke-static {p1}, Lorg/lwjgl/openal/AL10;->alSourcePlay(I)V

    .line 334
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result p1

    const-string v0, "Error playing source in method \'preLoadBuffers\'"

    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_104

    return v3

    :cond_104
    return v4

    :catch_105
    move-exception p1

    .line 325
    invoke-virtual {p0, v1}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0, p1}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->printStackTrace(Ljava/lang/Exception;)V

    return v3
.end method

.method public queueBuffer([B)Z
    .registers 8

    .line 351
    iget v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->channelType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    const-string v3, "Buffers may only be queued for streaming sources."

    invoke-virtual {p0, v0, v3}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 356
    :cond_12
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->bufferBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 357
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->bufferBuffer:Ljava/nio/ByteBuffer;

    array-length v3, p1

    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 358
    iget-object p1, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->bufferBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 360
    invoke-static {v2}, Lorg/lwjgl/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object p1

    .line 362
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0, p1}, Lorg/lwjgl/openal/AL10;->alSourceUnqueueBuffers(ILjava/nio/IntBuffer;)V

    .line 363
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result v0

    if-eqz v0, :cond_36

    return v1

    .line 366
    :cond_36
    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iget v3, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALformat:I

    iget-object v4, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->bufferBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->sampleRate:I

    invoke-static {v0, v3, v4, v5}, Lorg/lwjgl/openal/AL10;->alBufferData(IILjava/nio/ByteBuffer;I)V

    .line 367
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result v0

    if-eqz v0, :cond_4a

    return v1

    .line 370
    :cond_4a
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0, p1}, Lorg/lwjgl/openal/AL10;->alSourceQueueBuffers(ILjava/nio/IntBuffer;)V

    .line 371
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    move-result p1

    if-eqz p1, :cond_5a

    return v1

    :cond_5a
    return v2
.end method

.method public rewind()V
    .registers 3

    .line 556
    iget v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->channelType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 559
    :cond_6
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0}, Lorg/lwjgl/openal/AL10;->alSourceRewind(I)V

    .line 560
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    return-void
.end method

.method public setAudioFormat(Lmcshim/sound/sampled/AudioFormat;)V
    .registers 7

    .line 184
    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Illegal sample size in method \'setAudioFormat\'"

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-ne v0, v1, :cond_23

    .line 186
    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-ne v0, v4, :cond_16

    const/16 v0, 0x1100

    goto :goto_3b

    .line 190
    :cond_16
    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-ne v0, v3, :cond_1f

    const/16 v0, 0x1101

    goto :goto_3b

    .line 196
    :cond_1f
    invoke-virtual {p0, v2}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 201
    :cond_23
    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_49

    .line 203
    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-ne v0, v4, :cond_33

    const/16 v0, 0x1102

    goto :goto_3b

    .line 207
    :cond_33
    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-ne v0, v3, :cond_45

    const/16 v0, 0x1103

    .line 224
    :goto_3b
    iput v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALformat:I

    .line 225
    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getSampleRate()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->sampleRate:I

    return-void

    .line 213
    :cond_45
    invoke-virtual {p0, v2}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_49
    const-string p1, "Audio data neither mono nor stereo in method \'setAudioFormat\'"

    .line 220
    invoke-virtual {p0, p1}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setFormat(II)V
    .registers 3

    .line 235
    iput p1, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALformat:I

    .line 236
    iput p2, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->sampleRate:I

    return-void
.end method

.method public stop()V
    .registers 3

    .line 544
    iget-object v0, p0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0}, Lorg/lwjgl/openal/AL10;->alSourceStop(I)V

    .line 545
    invoke-direct {p0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->checkALError()Z

    return-void
.end method
