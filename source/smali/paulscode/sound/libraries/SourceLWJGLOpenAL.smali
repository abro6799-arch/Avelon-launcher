###### Class paulscode.sound.libraries.SourceLWJGLOpenAL (paulscode.sound.libraries.SourceLWJGLOpenAL)
.class public Lpaulscode/sound/libraries/SourceLWJGLOpenAL;
.super Lpaulscode/sound/Source;
.source "SourceFile"


# instance fields
.field private channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

.field private listenerPosition:Ljava/nio/FloatBuffer;

.field private myBuffer:Ljava/nio/IntBuffer;

.field private sourcePosition:Ljava/nio/FloatBuffer;

.field private sourceVelocity:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/FloatBuffer;Ljava/nio/IntBuffer;Lpaulscode/sound/Source;Lpaulscode/sound/SoundBuffer;)V
    .registers 5

    .line 166
    invoke-direct {p0, p3, p4}, Lpaulscode/sound/Source;-><init>(Lpaulscode/sound/Source;Lpaulscode/sound/SoundBuffer;)V

    .line 97
    iget-object p3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    check-cast p3, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iput-object p3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    const/4 p3, 0x1

    .line 167
    iput-boolean p3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->reverseByteOrder:Z

    .line 168
    iget-object p4, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    if-eqz p4, :cond_15

    .line 169
    iget-object p4, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    invoke-interface {p4, p3}, Lpaulscode/sound/ICodec;->reverseByteOrder(Z)V

    .line 170
    :cond_15
    iput-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->listenerPosition:Ljava/nio/FloatBuffer;

    .line 171
    iput-object p2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->myBuffer:Ljava/nio/IntBuffer;

    .line 172
    const-class p1, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;

    iput-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->libraryType:Ljava/lang/Class;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 173
    iput p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->pitch:F

    .line 174
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->resetALInformation()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;Ljava/nio/IntBuffer;ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;Lpaulscode/sound/SoundBuffer;FFFIFZ)V
    .registers 29

    move-object v13, p0

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    move/from16 v12, p14

    .line 144
    invoke-direct/range {v0 .. v12}, Lpaulscode/sound/Source;-><init>(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;Lpaulscode/sound/SoundBuffer;FFFIFZ)V

    .line 97
    iget-object v0, v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    check-cast v0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iput-object v0, v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->reverseByteOrder:Z

    .line 147
    iget-object v1, v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    if-eqz v1, :cond_2f

    .line 148
    iget-object v1, v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    invoke-interface {v1, v0}, Lpaulscode/sound/ICodec;->reverseByteOrder(Z)V

    :cond_2f
    move-object v0, p1

    .line 149
    iput-object v0, v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->listenerPosition:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p2

    .line 150
    iput-object v0, v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->myBuffer:Ljava/nio/IntBuffer;

    .line 151
    const-class v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;

    iput-object v0, v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->libraryType:Ljava/lang/Class;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 152
    iput v0, v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->pitch:F

    .line 153
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->resetALInformation()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;Lmcshim/sound/sampled/AudioFormat;ZLjava/lang/String;FFFIF)V
    .registers 20

    move-object v9, p0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 195
    invoke-direct/range {v0 .. v8}, Lpaulscode/sound/Source;-><init>(Lmcshim/sound/sampled/AudioFormat;ZLjava/lang/String;FFFIF)V

    .line 97
    iget-object v0, v9, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    check-cast v0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iput-object v0, v9, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, v9, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->reverseByteOrder:Z

    move-object v0, p1

    .line 198
    iput-object v0, v9, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->listenerPosition:Ljava/nio/FloatBuffer;

    .line 199
    const-class v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;

    iput-object v0, v9, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->libraryType:Ljava/lang/Class;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 200
    iput v0, v9, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->pitch:F

    .line 201
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->resetALInformation()V

    return-void
.end method

.method private calculateDistance()V
    .registers 8

    .line 705
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->listenerPosition:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_37

    .line 708
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->position:Lpaulscode/sound/Vector3D;

    iget v0, v0, Lpaulscode/sound/Vector3D;->x:F

    iget-object v1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->listenerPosition:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 709
    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->position:Lpaulscode/sound/Vector3D;

    iget v2, v2, Lpaulscode/sound/Vector3D;->y:F

    iget-object v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->listenerPosition:Ljava/nio/FloatBuffer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    .line 710
    iget-object v4, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->position:Lpaulscode/sound/Vector3D;

    iget v4, v4, Lpaulscode/sound/Vector3D;->z:F

    iget-object v5, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->listenerPosition:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    .line 711
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->distanceFromListener:F

    :cond_37
    return-void
.end method

.method private calculateGain()V
    .registers 5

    .line 722
    iget v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->attModel:I

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_36

    .line 724
    iget v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->distanceFromListener:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_11

    .line 726
    iput v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->gain:F

    goto :goto_25

    .line 728
    :cond_11
    iget v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->distanceFromListener:F

    iget v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->distOrRoll:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1c

    .line 730
    iput v1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->gain:F

    goto :goto_25

    .line 734
    :cond_1c
    iget v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->distanceFromListener:F

    iget v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->distOrRoll:F

    div-float/2addr v0, v3

    sub-float v0, v2, v0

    iput v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->gain:F

    .line 736
    :goto_25
    iget v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->gain:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2d

    .line 737
    iput v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->gain:F

    .line 738
    :cond_2d
    iget v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->gain:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_38

    .line 739
    iput v1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->gain:F

    goto :goto_38

    .line 743
    :cond_36
    iput v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->gain:F

    :cond_38
    :goto_38
    return-void
.end method

.method private checkALError()Z
    .registers 3

    .line 753
    invoke-static {}, Lorg/lwjgl/openal/AL10;->alGetError()I

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_30

    const-string v0, "An unrecognized error occurred."

    .line 773
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_10
    const-string v0, "Unable to allocate memory."

    .line 770
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_16
    const-string v0, "Illegal call."

    .line 767
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_1c
    const-string v0, "Invalid enumerated parameter value."

    .line 764
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_22
    const-string v0, "Invalid parameter."

    .line 761
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_28
    const-string v0, "Invalid name parameter."

    .line 758
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

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

.method private checkPitch()V
    .registers 4

    .line 409
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    iget-object v0, v0, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    if-ne v0, p0, :cond_2b

    invoke-static {}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->alPitchSupported()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    if-eqz v0, :cond_2b

    iget-object v0, v0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_2b

    .line 413
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object v0, v0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    const/16 v1, 0x1003

    iget v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->pitch:F

    invoke-static {v0, v1, v2}, Lorg/lwjgl/openal/AL10;->alSourcef(IIF)V

    .line 415
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkALError()Z

    :cond_2b
    return-void
.end method

.method private resetALInformation()V
    .registers 6

    const/4 v0, 0x3

    .line 688
    invoke-static {v0}, Lorg/lwjgl/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    new-array v2, v0, [F

    iget-object v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->position:Lpaulscode/sound/Vector3D;

    iget v3, v3, Lpaulscode/sound/Vector3D;->x:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->position:Lpaulscode/sound/Vector3D;

    iget v3, v3, Lpaulscode/sound/Vector3D;->y:F

    const/4 v4, 0x1

    aput v3, v2, v4

    iget-object v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->position:Lpaulscode/sound/Vector3D;

    iget v3, v3, Lpaulscode/sound/Vector3D;->z:F

    const/4 v4, 0x2

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->sourcePosition:Ljava/nio/FloatBuffer;

    .line 690
    invoke-static {v0}, Lorg/lwjgl/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    new-array v0, v0, [F

    fill-array-data v0, :array_40

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->sourceVelocity:Ljava/nio/FloatBuffer;

    .line 694
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->sourcePosition:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 695
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->sourceVelocity:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 697
    invoke-virtual {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->positionChanged()V

    return-void

    nop

    :array_40
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public changeSource(Ljava/nio/FloatBuffer;Ljava/nio/IntBuffer;ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;Lpaulscode/sound/SoundBuffer;FFFIFZ)V
    .registers 29

    move-object v13, p0

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    move/from16 v12, p14

    .line 239
    invoke-super/range {v0 .. v12}, Lpaulscode/sound/Source;->changeSource(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;Lpaulscode/sound/SoundBuffer;FFFIFZ)V

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->reverseByteOrder:Z

    move-object v0, p1

    .line 243
    iput-object v0, v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->listenerPosition:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p2

    .line 244
    iput-object v0, v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->myBuffer:Ljava/nio/IntBuffer;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 245
    iput v0, v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->pitch:F

    .line 246
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->resetALInformation()V

    return-void
.end method

.method public cleanup()V
    .registers 1

    .line 211
    invoke-super {p0}, Lpaulscode/sound/Source;->cleanup()V

    return-void
.end method

.method public incrementSoundSequence()Z
    .registers 9

    .line 259
    iget-boolean v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->toStream:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "Method \'incrementSoundSequence\' may only be used for streaming sources."

    .line 261
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    .line 265
    :cond_b
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->soundSequenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_e
    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->soundSequenceQueue:Ljava/util/LinkedList;

    if-eqz v2, :cond_bd

    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->soundSequenceQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_bd

    .line 269
    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->soundSequenceQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpaulscode/sound/FilenameURL;

    iput-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->filenameURL:Lpaulscode/sound/FilenameURL;

    .line 270
    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    if-eqz v2, :cond_2d

    .line 271
    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    invoke-interface {v2}, Lpaulscode/sound/ICodec;->cleanup()V

    .line 272
    :cond_2d
    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->filenameURL:Lpaulscode/sound/FilenameURL;

    invoke-virtual {v2}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpaulscode/sound/SoundSystemConfig;->getCodec(Ljava/lang/String;)Lpaulscode/sound/ICodec;

    move-result-object v2

    iput-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    .line 273
    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    const/4 v3, 0x1

    if-eqz v2, :cond_bb

    .line 275
    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    invoke-interface {v2, v3}, Lpaulscode/sound/ICodec;->reverseByteOrder(Z)V

    .line 276
    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    invoke-interface {v2}, Lpaulscode/sound/ICodec;->getAudioFormat()Lmcshim/sound/sampled/AudioFormat;

    move-result-object v2

    if-nez v2, :cond_56

    .line 277
    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    iget-object v4, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->filenameURL:Lpaulscode/sound/FilenameURL;

    invoke-virtual {v4}, Lpaulscode/sound/FilenameURL;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-interface {v2, v4}, Lpaulscode/sound/ICodec;->initialize(Ljava/net/URL;)Z

    .line 279
    :cond_56
    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    invoke-interface {v2}, Lpaulscode/sound/ICodec;->getAudioFormat()Lmcshim/sound/sampled/AudioFormat;

    move-result-object v2

    if-nez v2, :cond_65

    const-string v2, "Audio Format null in method \'incrementSoundSequence\'"

    .line 283
    invoke-virtual {p0, v2}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    .line 285
    monitor-exit v0

    return v1

    .line 289
    :cond_65
    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getChannels()I

    move-result v4

    const/16 v5, 0x10

    const/16 v6, 0x8

    if-ne v4, v3, :cond_88

    .line 291
    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v4

    if-ne v4, v6, :cond_78

    const/16 v1, 0x1100

    goto :goto_a0

    .line 295
    :cond_78
    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v4

    if-ne v4, v5, :cond_81

    const/16 v1, 0x1101

    goto :goto_a0

    :cond_81
    const-string v2, "Illegal sample size in method \'incrementSoundSequence\'"

    .line 301
    invoke-virtual {p0, v2}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    .line 303
    monitor-exit v0

    return v1

    .line 306
    :cond_88
    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getChannels()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_b4

    .line 308
    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v4

    if-ne v4, v6, :cond_98

    const/16 v1, 0x1102

    goto :goto_a0

    .line 312
    :cond_98
    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v4

    if-ne v4, v5, :cond_ad

    const/16 v1, 0x1103

    .line 331
    :goto_a0
    iget-object v4, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v4, v1, v2}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->setFormat(II)V

    .line 333
    iput-boolean v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->preLoad:Z

    goto :goto_bb

    :cond_ad
    const-string v2, "Illegal sample size in method \'incrementSoundSequence\'"

    .line 318
    invoke-virtual {p0, v2}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    .line 320
    monitor-exit v0

    return v1

    :cond_b4
    const-string v2, "Audio data neither mono nor stereo in method \'incrementSoundSequence\'"

    .line 325
    invoke-virtual {p0, v2}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    .line 327
    monitor-exit v0

    return v1

    .line 335
    :cond_bb
    :goto_bb
    monitor-exit v0

    return v3

    .line 337
    :cond_bd
    monitor-exit v0

    return v1

    :catchall_bf
    move-exception v1

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_e .. :try_end_c1} :catchall_bf

    throw v1
.end method

.method public listenerMoved()V
    .registers 1

    .line 347
    invoke-virtual {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->positionChanged()V

    return-void
.end method

.method public play(Lpaulscode/sound/Channel;)V
    .registers 8

    .line 507
    invoke-virtual {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->active()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 509
    iget-boolean p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->toLoop:Z

    if-eqz p1, :cond_d

    .line 510
    iput-boolean v1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->toPlay:Z

    :cond_d
    return-void

    :cond_e
    if-nez p1, :cond_16

    const-string p1, "Unable to play source, because channel was null"

    .line 516
    invoke-virtual {p0, p1}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 520
    :cond_16
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    .line 521
    :goto_1e
    iget-object v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    iget-object v3, v3, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    if-eq v3, p0, :cond_29

    move v0, v1

    .line 524
    :cond_29
    invoke-virtual {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->paused()Z

    move-result v3

    .line 526
    invoke-super {p0, p1}, Lpaulscode/sound/Source;->play(Lpaulscode/sound/Channel;)V

    .line 528
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    check-cast p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iput-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    if-eqz v0, :cond_e8

    .line 534
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->position:Lpaulscode/sound/Vector3D;

    iget p1, p1, Lpaulscode/sound/Vector3D;->x:F

    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->position:Lpaulscode/sound/Vector3D;

    iget v0, v0, Lpaulscode/sound/Vector3D;->y:F

    iget-object v4, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->position:Lpaulscode/sound/Vector3D;

    iget v4, v4, Lpaulscode/sound/Vector3D;->z:F

    invoke-virtual {p0, p1, v0, v4}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->setPosition(FFF)V

    .line 535
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkPitch()V

    .line 538
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    if-eqz p1, :cond_d5

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    if-eqz p1, :cond_d5

    .line 540
    invoke-static {}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->alPitchSupported()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 542
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    const/16 v0, 0x1003

    iget v4, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->pitch:F

    invoke-static {p1, v0, v4}, Lorg/lwjgl/openal/AL10;->alSourcef(IIF)V

    .line 544
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkALError()Z

    .line 546
    :cond_6a
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    const/16 v0, 0x1004

    iget-object v4, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->sourcePosition:Ljava/nio/FloatBuffer;

    invoke-static {p1, v0, v4}, Lorg/lwjgl/openal/AL10;->alSource(IILjava/nio/FloatBuffer;)V

    .line 548
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkALError()Z

    .line 549
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    const/16 v0, 0x1006

    iget-object v4, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->sourceVelocity:Ljava/nio/FloatBuffer;

    invoke-static {p1, v0, v4}, Lorg/lwjgl/openal/AL10;->alSource(IILjava/nio/FloatBuffer;)V

    .line 551
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkALError()Z

    .line 552
    iget p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->attModel:I

    const/16 v0, 0x1021

    if-ne p1, v1, :cond_a2

    .line 553
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    iget v4, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->distOrRoll:F

    invoke-static {p1, v0, v4}, Lorg/lwjgl/openal/AL10;->alSourcef(IIF)V

    goto :goto_ae

    .line 556
    :cond_a2
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    const/4 v4, 0x0

    invoke-static {p1, v0, v4}, Lorg/lwjgl/openal/AL10;->alSourcef(IIF)V

    .line 558
    :goto_ae
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkALError()Z

    .line 559
    iget-boolean p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->toLoop:Z

    const/16 v0, 0x1007

    if-eqz p1, :cond_c7

    iget-boolean p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->toStream:Z

    if-nez p1, :cond_c7

    .line 560
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    invoke-static {p1, v0, v1}, Lorg/lwjgl/openal/AL10;->alSourcei(III)V

    goto :goto_d2

    .line 563
    :cond_c7
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    invoke-static {p1, v0, v2}, Lorg/lwjgl/openal/AL10;->alSourcei(III)V

    .line 565
    :goto_d2
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkALError()Z

    .line 567
    :cond_d5
    iget-boolean p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->toStream:Z

    if-nez p1, :cond_e8

    .line 571
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->myBuffer:Ljava/nio/IntBuffer;

    if-nez p1, :cond_e3

    const-string p1, "No sound buffer to play"

    .line 573
    invoke-virtual {p0, p1}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 577
    :cond_e3
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    invoke-virtual {v0, p1}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->attachBuffer(Ljava/nio/IntBuffer;)Z

    .line 582
    :cond_e8
    invoke-virtual {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->playing()Z

    move-result p1

    if-nez p1, :cond_180

    .line 584
    iget-boolean p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->toStream:Z

    if-eqz p1, :cond_170

    if-nez v3, :cond_170

    .line 586
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    if-nez p1, :cond_fe

    const-string p1, "Decoder null in method \'play\'"

    .line 588
    invoke-virtual {p0, p1}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 591
    :cond_fe
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    invoke-interface {p1}, Lpaulscode/sound/ICodec;->getAudioFormat()Lmcshim/sound/sampled/AudioFormat;

    move-result-object p1

    if-nez p1, :cond_111

    .line 592
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->filenameURL:Lpaulscode/sound/FilenameURL;

    invoke-virtual {v0}, Lpaulscode/sound/FilenameURL;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-interface {p1, v0}, Lpaulscode/sound/ICodec;->initialize(Ljava/net/URL;)Z

    .line 594
    :cond_111
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    invoke-interface {p1}, Lpaulscode/sound/ICodec;->getAudioFormat()Lmcshim/sound/sampled/AudioFormat;

    move-result-object p1

    if-nez p1, :cond_11f

    const-string p1, "Audio Format null in method \'play\'"

    .line 598
    invoke-virtual {p0, p1}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 603
    :cond_11f
    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    const-string v2, "Illegal sample size in method \'play\'"

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-ne v0, v1, :cond_141

    .line 605
    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-ne v0, v4, :cond_134

    const/16 v0, 0x1100

    goto :goto_159

    .line 609
    :cond_134
    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-ne v0, v3, :cond_13d

    const/16 v0, 0x1101

    goto :goto_159

    .line 615
    :cond_13d
    invoke-virtual {p0, v2}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 619
    :cond_141
    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getChannels()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_16a

    .line 621
    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-ne v0, v4, :cond_151

    const/16 v0, 0x1102

    goto :goto_159

    .line 625
    :cond_151
    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    if-ne v0, v3, :cond_166

    const/16 v0, 0x1103

    .line 643
    :goto_159
    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    invoke-virtual {p1}, Lmcshim/sound/sampled/AudioFormat;->getSampleRate()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v2, v0, p1}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->setFormat(II)V

    .line 645
    iput-boolean v1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->preLoad:Z

    goto :goto_170

    .line 631
    :cond_166
    invoke-virtual {p0, v2}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_16a
    const-string p1, "Audio data neither mono nor stereo in method \'play\'"

    .line 637
    invoke-virtual {p0, p1}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 647
    :cond_170
    :goto_170
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    invoke-virtual {p1}, Lpaulscode/sound/Channel;->play()V

    .line 648
    iget p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->pitch:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_180

    .line 649
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkPitch()V

    :cond_180
    return-void
.end method

.method public positionChanged()V
    .registers 4

    .line 389
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->calculateDistance()V

    .line 390
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->calculateGain()V

    .line 392
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    iget-object v0, v0, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    if-ne v0, p0, :cond_38

    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    if-eqz v0, :cond_38

    iget-object v0, v0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_38

    .line 395
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object v0, v0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iget v1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->gain:F

    iget v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->sourceVolume:F

    mul-float/2addr v1, v2

    iget v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->fadeOutGain:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->fadeInGain:F

    mul-float/2addr v1, v2

    const/16 v2, 0x100a

    invoke-static {v0, v2, v1}, Lorg/lwjgl/openal/AL10;->alSourcef(IIF)V

    .line 399
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkALError()Z

    .line 401
    :cond_38
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkPitch()V

    return-void
.end method

.method public preLoad()Z
    .registers 5

    .line 660
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 663
    :cond_6
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->filenameURL:Lpaulscode/sound/FilenameURL;

    invoke-virtual {v2}, Lpaulscode/sound/FilenameURL;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v0, v2}, Lpaulscode/sound/ICodec;->initialize(Ljava/net/URL;)Z

    .line 664
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move v2, v1

    .line 665
    :goto_17
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getNumberStreamingBuffers()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 667
    iget-object v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->codec:Lpaulscode/sound/ICodec;

    invoke-interface {v3}, Lpaulscode/sound/ICodec;->read()Lpaulscode/sound/SoundBuffer;

    move-result-object v3

    iput-object v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    .line 669
    iget-object v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    iget-object v3, v3, Lpaulscode/sound/SoundBuffer;->audioData:[B

    if-nez v3, :cond_30

    goto :goto_3a

    .line 672
    :cond_30
    iget-object v3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    iget-object v3, v3, Lpaulscode/sound/SoundBuffer;->audioData:[B

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 674
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->positionChanged()V

    .line 676
    iget-object v2, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    invoke-virtual {v2, v0}, Lpaulscode/sound/Channel;->preLoadBuffers(Ljava/util/LinkedList;)Z

    .line 678
    iput-boolean v1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->preLoad:Z

    const/4 v0, 0x1

    return v0
.end method

.method public setAttenuation(I)V
    .registers 5

    .line 449
    invoke-super {p0, p1}, Lpaulscode/sound/Source;->setAttenuation(I)V

    .line 451
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    iget-object v0, v0, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    if-ne v0, p0, :cond_38

    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    if-eqz v0, :cond_38

    iget-object v0, v0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    const/16 v1, 0x1021

    const/4 v2, 0x0

    if-ne p1, v0, :cond_29

    .line 456
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    iget v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->distOrRoll:F

    invoke-static {p1, v1, v0}, Lorg/lwjgl/openal/AL10;->alSourcef(IIF)V

    goto :goto_35

    .line 459
    :cond_29
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lorg/lwjgl/openal/AL10;->alSourcef(IIF)V

    .line 461
    :goto_35
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkALError()Z

    :cond_38
    return-void
.end method

.method public setDistOrRoll(F)V
    .registers 6

    .line 473
    invoke-super {p0, p1}, Lpaulscode/sound/Source;->setDistOrRoll(F)V

    .line 475
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    iget-object v0, v0, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    if-ne v0, p0, :cond_38

    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    if-eqz v0, :cond_38

    iget-object v0, v0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_38

    .line 479
    iget v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->attModel:I

    const/4 v1, 0x1

    const/16 v2, 0x1021

    const/4 v3, 0x0

    if-ne v0, v1, :cond_29

    .line 480
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object v0, v0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0, v2, p1}, Lorg/lwjgl/openal/AL10;->alSourcef(IIF)V

    goto :goto_35

    .line 483
    :cond_29
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v2, v0}, Lorg/lwjgl/openal/AL10;->alSourcef(IIF)V

    .line 485
    :goto_35
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkALError()Z

    :cond_38
    return-void
.end method

.method public setLooping(Z)V
    .registers 4

    .line 426
    invoke-super {p0, p1}, Lpaulscode/sound/Source;->setLooping(Z)V

    .line 429
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    iget-object v0, v0, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    if-ne v0, p0, :cond_35

    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    if-eqz v0, :cond_35

    iget-object v0, v0, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_35

    const/16 v0, 0x1007

    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 433
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/lwjgl/openal/AL10;->alSourcei(III)V

    goto :goto_32

    .line 436
    :cond_27
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    invoke-static {p1, v0, v1}, Lorg/lwjgl/openal/AL10;->alSourcei(III)V

    .line 438
    :goto_32
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkALError()Z

    :cond_35
    return-void
.end method

.method public setPitch(F)V
    .registers 2

    .line 496
    invoke-super {p0, p1}, Lpaulscode/sound/Source;->setPitch(F)V

    .line 497
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkPitch()V

    return-void
.end method

.method public setPosition(FFF)V
    .registers 6

    .line 359
    invoke-super {p0, p1, p2, p3}, Lpaulscode/sound/Source;->setPosition(FFF)V

    .line 362
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->sourcePosition:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_b

    .line 363
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->resetALInformation()V

    goto :goto_e

    .line 365
    :cond_b
    invoke-virtual {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->positionChanged()V

    .line 368
    :goto_e
    iget-object v0, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->sourcePosition:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 369
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->sourcePosition:Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 370
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->sourcePosition:Ljava/nio/FloatBuffer;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 373
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    if-eqz p1, :cond_44

    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channel:Lpaulscode/sound/Channel;

    iget-object p1, p1, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    if-ne p1, p0, :cond_44

    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    if-eqz p1, :cond_44

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    if-eqz p1, :cond_44

    .line 377
    iget-object p1, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->channelOpenAL:Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    iget-object p1, p1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    const/16 p2, 0x1004

    iget-object p3, p0, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->sourcePosition:Ljava/nio/FloatBuffer;

    invoke-static {p1, p2, p3}, Lorg/lwjgl/openal/AL10;->alSource(IILjava/nio/FloatBuffer;)V

    .line 379
    invoke-direct {p0}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->checkALError()Z

    :cond_44
    return-void
.end method
