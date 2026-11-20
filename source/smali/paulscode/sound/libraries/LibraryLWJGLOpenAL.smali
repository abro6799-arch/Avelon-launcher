###### Class paulscode.sound.libraries.LibraryLWJGLOpenAL (paulscode.sound.libraries.LibraryLWJGLOpenAL)
.class public Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;
.super Lpaulscode/sound/Library;
.source "SourceFile"


# static fields
.field private static final GET:Z = false

.field private static final SET:Z = true

.field private static final XXX:Z = false

.field private static alPitchSupported:Z = true


# instance fields
.field private ALBufferMap:Ljava/util/HashMap;

.field private listenerOrientation:Ljava/nio/FloatBuffer;

.field private listenerPositionAL:Ljava/nio/FloatBuffer;

.field private listenerVelocity:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 147
    invoke-direct {p0}, Lpaulscode/sound/Library;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    .line 125
    iput-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    .line 129
    iput-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerVelocity:Ljava/nio/FloatBuffer;

    .line 133
    iput-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    return-void
.end method

.method public static alPitchSupported()Z
    .registers 1

    const/4 v0, 0x0

    .line 853
    invoke-static {v0, v0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->alPitchSupported(ZZ)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized alPitchSupported(ZZ)Z
    .registers 4

    const-class v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_8

    .line 865
    :try_start_6
    sput-boolean p1, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->alPitchSupported:Z

    .line 866
    :cond_8
    sget-boolean p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->alPitchSupported:Z
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_c

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private checkALError()Z
    .registers 3

    .line 822
    invoke-static {}, Lorg/lwjgl/openal/AL10;->alGetError()I

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_30

    const-string v0, "An unrecognized error occurred."

    .line 842
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_10
    const-string v0, "Unable to allocate memory."

    .line 839
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_16
    const-string v0, "Illegal call."

    .line 836
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_1c
    const-string v0, "Invalid enumerated parameter value."

    .line 833
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_22
    const-string v0, "Invalid parameter."

    .line 830
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :pswitch_28
    const-string v0, "Invalid name parameter."

    .line 827
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

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

.method public static getDescription()Ljava/lang/String;
    .registers 1

    const-string v0, "The LWJGL binding of OpenAL.  For more information, see http://www.lwjgl.org"

    return-object v0
.end method

.method public static getTitle()Ljava/lang/String;
    .registers 1

    const-string v0, "LWJGL OpenAL"

    return-object v0
.end method

.method public static libraryCompatible()Z
    .registers 2

    .line 251
    invoke-static {}, Lorg/lwjgl/openal/AL;->isCreated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 256
    :cond_8
    :try_start_8
    invoke-static {}, Lorg/lwjgl/openal/AL;->create()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_f

    .line 265
    :try_start_b
    invoke-static {}, Lorg/lwjgl/openal/AL;->destroy()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_e

    :catch_e
    return v1

    :catch_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cleanup()V
    .registers 4

    .line 310
    invoke-super {p0}, Lpaulscode/sound/Library;->cleanup()V

    .line 312
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 313
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 318
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 321
    iget-object v2, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_d

    .line 324
    invoke-static {v1}, Lorg/lwjgl/openal/AL10;->alDeleteBuffers(Ljava/nio/IntBuffer;)V

    .line 325
    invoke-direct {p0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->checkALError()Z

    .line 326
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_d

    .line 330
    :cond_2d
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 331
    invoke-static {}, Lorg/lwjgl/openal/AL;->destroy()V

    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    .line 334
    iput-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    .line 335
    iput-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    .line 336
    iput-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerVelocity:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public copySources(Ljava/util/HashMap;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    .line 680
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 681
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 686
    iget-object v1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    if-nez v1, :cond_1b

    .line 688
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    const-string v1, "Buffer Map was null in method \'copySources\'"

    .line 689
    invoke-virtual {p0, v1}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->importantMessage(Ljava/lang/String;)V

    .line 692
    :cond_1b
    iget-object v1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    if-nez v1, :cond_2b

    .line 694
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    const-string v1, "Open AL Buffer Map was null in method\'copySources\'"

    .line 695
    invoke-virtual {p0, v1}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->importantMessage(Ljava/lang/String;)V

    .line 700
    :cond_2b
    iget-object v1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 704
    :cond_30
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 706
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 707
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpaulscode/sound/Source;

    if-eqz v2, :cond_30

    .line 711
    iget-boolean v3, v2, Lpaulscode/sound/Source;->toStream:Z

    if-nez v3, :cond_5c

    .line 713
    iget-object v3, v2, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    invoke-virtual {p0, v3}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->loadSound(Lpaulscode/sound/FilenameURL;)Z

    .line 714
    iget-object v3, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    iget-object v4, v2, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    invoke-virtual {v4}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpaulscode/sound/SoundBuffer;

    goto :goto_5d

    :cond_5c
    const/4 v3, 0x0

    .line 716
    :goto_5d
    iget-boolean v4, v2, Lpaulscode/sound/Source;->toStream:Z

    if-nez v4, :cond_63

    if-eqz v3, :cond_30

    .line 717
    :cond_63
    iget-object v4, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->sourceMap:Ljava/util/HashMap;

    new-instance v5, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;

    iget-object v6, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    iget-object v8, v2, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    invoke-virtual {v8}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/IntBuffer;

    invoke-direct {v5, v6, v7, v2, v3}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;-><init>(Ljava/nio/FloatBuffer;Ljava/nio/IntBuffer;Lpaulscode/sound/Source;Lpaulscode/sound/SoundBuffer;)V

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_7e
    return-void
.end method

.method protected createChannel(I)Lpaulscode/sound/Channel;
    .registers 5

    const/4 v0, 0x1

    .line 285
    invoke-static {v0}, Lorg/lwjgl/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 288
    :try_start_6
    invoke-static {v0}, Lorg/lwjgl/openal/AL10;->alGenSources(Ljava/nio/IntBuffer;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_16

    .line 296
    invoke-static {}, Lorg/lwjgl/openal/AL10;->alGetError()I

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    .line 299
    :cond_10
    new-instance v1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    invoke-direct {v1, p1, v0}, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;-><init>(ILjava/nio/IntBuffer;)V

    return-object v1

    .line 292
    :catch_16
    invoke-static {}, Lorg/lwjgl/openal/AL10;->alGetError()I

    return-object v1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "LibraryLWJGLOpenAL"

    return-object v0
.end method

.method public init()V
    .registers 12

    const-string v0, "OpenAL: AL_PITCH not supported."

    const/4 v1, 0x6

    .line 162
    :try_start_3
    invoke-static {}, Lorg/lwjgl/openal/AL;->create()V

    .line 163
    invoke-direct {p0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->checkALError()Z

    move-result v2
    :try_end_a
    .catch Lorg/lwjgl/LWJGLException; {:try_start_3 .. :try_end_a} :catch_117

    const-string v3, "OpenAL did not initialize properly!"

    if-eqz v2, :cond_12

    .line 177
    invoke-virtual {p0, v3}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->importantMessage(Ljava/lang/String;)V

    goto :goto_17

    :cond_12
    const-string v4, "OpenAL initialized."

    .line 179
    invoke-virtual {p0, v4}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->message(Ljava/lang/String;)V

    :goto_17
    const/4 v4, 0x3

    .line 182
    invoke-static {v4}, Lorg/lwjgl/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    new-array v6, v4, [F

    iget-object v7, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listener:Lpaulscode/sound/ListenerData;

    iget-object v7, v7, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v7, v7, Lpaulscode/sound/Vector3D;->x:F

    const/4 v8, 0x0

    aput v7, v6, v8

    iget-object v7, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listener:Lpaulscode/sound/ListenerData;

    iget-object v7, v7, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v7, v7, Lpaulscode/sound/Vector3D;->y:F

    const/4 v9, 0x1

    aput v7, v6, v9

    iget-object v7, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listener:Lpaulscode/sound/ListenerData;

    iget-object v7, v7, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v7, v7, Lpaulscode/sound/Vector3D;->z:F

    const/4 v10, 0x2

    aput v7, v6, v10

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    .line 186
    invoke-static {v1}, Lorg/lwjgl/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    new-array v6, v1, [F

    iget-object v7, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listener:Lpaulscode/sound/ListenerData;

    iget-object v7, v7, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v7, v7, Lpaulscode/sound/Vector3D;->x:F

    aput v7, v6, v8

    iget-object v7, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listener:Lpaulscode/sound/ListenerData;

    iget-object v7, v7, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v7, v7, Lpaulscode/sound/Vector3D;->y:F

    aput v7, v6, v9

    iget-object v7, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listener:Lpaulscode/sound/ListenerData;

    iget-object v7, v7, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v7, v7, Lpaulscode/sound/Vector3D;->z:F

    aput v7, v6, v10

    iget-object v7, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listener:Lpaulscode/sound/ListenerData;

    iget-object v7, v7, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget v7, v7, Lpaulscode/sound/Vector3D;->x:F

    aput v7, v6, v4

    iget-object v7, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listener:Lpaulscode/sound/ListenerData;

    iget-object v7, v7, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget v7, v7, Lpaulscode/sound/Vector3D;->y:F

    const/4 v10, 0x4

    aput v7, v6, v10

    iget-object v7, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listener:Lpaulscode/sound/ListenerData;

    iget-object v7, v7, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget v7, v7, Lpaulscode/sound/Vector3D;->z:F

    const/4 v10, 0x5

    aput v7, v6, v10

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    .line 190
    invoke-static {v4}, Lorg/lwjgl/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    new-array v4, v4, [F

    fill-array-data v4, :array_12a

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerVelocity:Ljava/nio/FloatBuffer;

    .line 194
    iget-object v4, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 195
    iget-object v4, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 196
    iget-object v4, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerVelocity:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    const/16 v4, 0x1004

    .line 199
    iget-object v5, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    invoke-static {v4, v5}, Lorg/lwjgl/openal/AL10;->alListener(ILjava/nio/FloatBuffer;)V

    .line 200
    invoke-direct {p0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->checkALError()Z

    move-result v4

    if-nez v4, :cond_ad

    if-eqz v2, :cond_ab

    goto :goto_ad

    :cond_ab
    move v2, v8

    goto :goto_ae

    :cond_ad
    :goto_ad
    move v2, v9

    :goto_ae
    const/16 v4, 0x100f

    .line 201
    iget-object v5, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    invoke-static {v4, v5}, Lorg/lwjgl/openal/AL10;->alListener(ILjava/nio/FloatBuffer;)V

    .line 202
    invoke-direct {p0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->checkALError()Z

    move-result v4

    if-nez v4, :cond_c0

    if-eqz v2, :cond_be

    goto :goto_c0

    :cond_be
    move v2, v8

    goto :goto_c1

    :cond_c0
    :goto_c0
    move v2, v9

    :goto_c1
    const/16 v4, 0x1006

    .line 203
    iget-object v5, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerVelocity:Ljava/nio/FloatBuffer;

    invoke-static {v4, v5}, Lorg/lwjgl/openal/AL10;->alListener(ILjava/nio/FloatBuffer;)V

    .line 204
    invoke-direct {p0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->checkALError()Z

    move-result v4

    if-nez v4, :cond_d3

    if-eqz v2, :cond_d1

    goto :goto_d3

    :cond_d1
    move v2, v8

    goto :goto_d4

    :cond_d3
    :goto_d3
    move v2, v9

    :goto_d4
    if-nez v2, :cond_10c

    .line 217
    invoke-super {p0}, Lpaulscode/sound/Library;->init()V

    .line 220
    iget-object v1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->normalChannels:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;

    const/16 v2, 0xd

    .line 224
    :try_start_e3
    iget-object v1, v1, Lpaulscode/sound/libraries/ChannelLWJGLOpenAL;->ALSource:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    const/16 v3, 0x1003

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v4}, Lorg/lwjgl/openal/AL10;->alSourcef(IIF)V

    .line 226
    invoke-direct {p0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->checkALError()Z

    move-result v1

    if-nez v1, :cond_fa

    .line 234
    invoke-static {v9, v9}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->alPitchSupported(ZZ)Z

    return-void

    .line 228
    :cond_fa
    invoke-static {v9, v8}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->alPitchSupported(ZZ)Z

    .line 229
    new-instance v1, Lpaulscode/sound/SoundSystemException;

    invoke-direct {v1, v0, v2}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_103} :catch_103

    .line 239
    :catch_103
    invoke-static {v9, v8}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->alPitchSupported(ZZ)Z

    .line 240
    new-instance v1, Lpaulscode/sound/SoundSystemException;

    invoke-direct {v1, v0, v2}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 209
    :cond_10c
    invoke-virtual {p0, v3}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->importantMessage(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lpaulscode/sound/SoundSystemException;

    const-string v2, "Problem encountered while loading OpenAL or creating the listener.  Probably cause:  OpenAL not supported"

    invoke-direct {v0, v2, v1}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_117
    move-exception v0

    const-string v2, "Unable to initialize OpenAL.  Probable cause: OpenAL not supported."

    .line 168
    invoke-virtual {p0, v2}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->printStackTrace(Ljava/lang/Exception;)V

    .line 171
    new-instance v2, Lpaulscode/sound/SoundSystemException;

    invoke-virtual {v0}, Lorg/lwjgl/LWJGLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;I)V

    throw v2

    :array_12a
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public loadSound(Lpaulscode/sound/FilenameURL;)Z
    .registers 11

    .line 348
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    if-nez v0, :cond_10

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    const-string v0, "Buffer Map was null in method \'loadSound\'"

    .line 351
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->importantMessage(Ljava/lang/String;)V

    .line 354
    :cond_10
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    if-nez v0, :cond_20

    .line 356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    const-string v0, "Open AL Buffer Map was null in method\'loadSound\'"

    .line 357
    invoke-virtual {p0, v0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->importantMessage(Ljava/lang/String;)V

    :cond_20
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_26

    move v2, v0

    goto :goto_27

    :cond_26
    move v2, v1

    :goto_27
    const-string v3, "Filename/URL not specified in method \'loadSound\'"

    .line 362
    invoke-virtual {p0, v2, v3}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    return v1

    .line 367
    :cond_30
    iget-object v2, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3d

    return v0

    .line 370
    :cond_3d
    invoke-virtual {p1}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpaulscode/sound/SoundSystemConfig;->getCodec(Ljava/lang/String;)Lpaulscode/sound/ICodec;

    move-result-object v2

    if-nez v2, :cond_49

    move v3, v0

    goto :goto_4a

    :cond_49
    move v3, v1

    .line 371
    :goto_4a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No codec found for file \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' in method \'loadSound\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    return v1

    .line 376
    :cond_68
    invoke-virtual {p1}, Lpaulscode/sound/FilenameURL;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-interface {v2, v3}, Lpaulscode/sound/ICodec;->initialize(Ljava/net/URL;)Z

    .line 377
    invoke-interface {v2}, Lpaulscode/sound/ICodec;->readAll()Lpaulscode/sound/SoundBuffer;

    move-result-object v3

    .line 378
    invoke-interface {v2}, Lpaulscode/sound/ICodec;->cleanup()V

    if-nez v3, :cond_7a

    move v2, v0

    goto :goto_7b

    :cond_7a
    move v2, v1

    :goto_7b
    const-string v4, "Sound buffer null in method \'loadSound\'"

    .line 380
    invoke-virtual {p0, v2, v4}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    return v1

    .line 384
    :cond_84
    iget-object v2, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v2, v3, Lpaulscode/sound/SoundBuffer;->audioFormat:Lmcshim/sound/sampled/AudioFormat;

    .line 388
    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getChannels()I

    move-result v4

    const-string v5, "Illegal sample size in method \'loadSound\'"

    const/16 v6, 0x10

    const/16 v7, 0x8

    if-ne v4, v0, :cond_b1

    .line 390
    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v4

    if-ne v4, v7, :cond_a4

    const/16 v4, 0x1100

    goto :goto_c9

    .line 394
    :cond_a4
    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v4

    if-ne v4, v6, :cond_ad

    const/16 v4, 0x1101

    goto :goto_c9

    .line 400
    :cond_ad
    invoke-virtual {p0, v5}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    .line 404
    :cond_b1
    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getChannels()I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_15d

    .line 406
    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v4

    if-ne v4, v7, :cond_c1

    const/16 v4, 0x1102

    goto :goto_c9

    .line 410
    :cond_c1
    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v4

    if-ne v4, v6, :cond_159

    const/16 v4, 0x1103

    .line 427
    :goto_c9
    invoke-static {v0}, Lorg/lwjgl/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v5

    .line 428
    invoke-static {v5}, Lorg/lwjgl/openal/AL10;->alGenBuffers(Ljava/nio/IntBuffer;)V

    .line 429
    invoke-static {}, Lorg/lwjgl/openal/AL10;->alGetError()I

    move-result v6

    if-eqz v6, :cond_d8

    move v6, v0

    goto :goto_d9

    :cond_d8
    move v6, v1

    :goto_d9
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "alGenBuffers error when loading "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f2

    return v1

    .line 434
    :cond_f2
    iget-object v6, v3, Lpaulscode/sound/SoundBuffer;->audioData:[B

    array-length v6, v6

    invoke-static {v6}, Lorg/lwjgl/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 435
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 436
    iget-object v3, v3, Lpaulscode/sound/SoundBuffer;->audioData:[B

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 437
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 440
    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-virtual {v2}, Lmcshim/sound/sampled/AudioFormat;->getSampleRate()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v3, v4, v6, v2}, Lorg/lwjgl/openal/AL10;->alBufferData(IILjava/nio/ByteBuffer;I)V

    .line 443
    invoke-static {}, Lorg/lwjgl/openal/AL10;->alGetError()I

    move-result v2

    if-eqz v2, :cond_118

    move v2, v0

    goto :goto_119

    :cond_118
    move v2, v1

    :goto_119
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "alBufferData error when loading "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14f

    if-nez v5, :cond_135

    move v2, v0

    goto :goto_136

    :cond_135
    move v2, v1

    .line 447
    :goto_136
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sound buffer was not created for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorCheck(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14f

    return v1

    .line 452
    :cond_14f
    iget-object v1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 416
    :cond_159
    invoke-virtual {p0, v5}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1

    :cond_15d
    const-string p1, "File neither mono nor stereo in method \'loadSound\'"

    .line 422
    invoke-virtual {p0, p1}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return v1
.end method

.method public newSource(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;FFFIF)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v15, p4

    move-object/from16 v8, p5

    const-string v1, "\' was not created because an error occurred while loading "

    const-string v2, "Source \'"

    const/4 v3, 0x0

    if-nez p2, :cond_65

    .line 506
    iget-object v4, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/IntBuffer;

    if-nez v4, :cond_3b

    .line 511
    invoke-virtual {v0, v8}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->loadSound(Lpaulscode/sound/FilenameURL;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 521
    :cond_3b
    iget-object v4, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/IntBuffer;

    if-nez v4, :cond_66

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' was not created because a sound buffer was not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_65
    move-object v4, v3

    :cond_66
    if-nez p2, :cond_c2

    .line 536
    iget-object v3, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpaulscode/sound/SoundBuffer;

    if-nez v3, :cond_96

    .line 540
    invoke-virtual {v0, v8}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->loadSound(Lpaulscode/sound/FilenameURL;)Z

    move-result v3

    if-nez v3, :cond_96

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 549
    :cond_96
    iget-object v1, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpaulscode/sound/SoundBuffer;

    if-nez v1, :cond_c0

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' was not created because audio data was not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_c0
    move-object v9, v1

    goto :goto_c3

    :cond_c2
    move-object v9, v3

    .line 560
    :goto_c3
    iget-object v14, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->sourceMap:Ljava/util/HashMap;

    new-instance v13, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;

    iget-object v2, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    const/16 v16, 0x0

    move-object v1, v13

    move-object v3, v4

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v17, v13

    move/from16 v13, p9

    move-object v0, v14

    move/from16 v14, p10

    move/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;-><init>(Ljava/nio/FloatBuffer;Ljava/nio/IntBuffer;ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;Lpaulscode/sound/SoundBuffer;FFFIFZ)V

    move-object/from16 v1, p4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public quickPlay(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;FFFIFZ)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v15, p4

    move-object/from16 v8, p5

    const/4 v1, 0x0

    if-nez p2, :cond_40

    .line 614
    iget-object v2, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/IntBuffer;

    if-nez v2, :cond_1a

    .line 617
    invoke-virtual {v0, v8}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->loadSound(Lpaulscode/sound/FilenameURL;)Z

    .line 619
    :cond_1a
    iget-object v2, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/IntBuffer;

    if-nez v2, :cond_3e

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sound buffer was not created for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_3e
    move-object v3, v2

    goto :goto_41

    :cond_40
    move-object v3, v1

    :goto_41
    if-nez p2, :cond_9f

    .line 634
    iget-object v1, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpaulscode/sound/SoundBuffer;

    const-string v2, "Source \'"

    if-nez v1, :cond_75

    .line 638
    invoke-virtual {v0, v8}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->loadSound(Lpaulscode/sound/FilenameURL;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' was not created because an error occurred while loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 647
    :cond_75
    iget-object v1, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->bufferMap:Ljava/util/HashMap;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpaulscode/sound/SoundBuffer;

    if-nez v1, :cond_9f

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' was not created because audio data was not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_9f
    move-object v9, v1

    .line 657
    new-instance v14, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;

    iget-object v2, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    const/16 v16, 0x0

    move-object v1, v14

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v17, v14

    move/from16 v14, p10

    move/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;-><init>(Ljava/nio/FloatBuffer;Ljava/nio/IntBuffer;ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;Lpaulscode/sound/SoundBuffer;FFFIFZ)V

    .line 665
    iget-object v1, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->sourceMap:Ljava/util/HashMap;

    move-object/from16 v2, p4

    move-object/from16 v3, v17

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-virtual {v0, v3}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->play(Lpaulscode/sound/Source;)V

    if-eqz p11, :cond_d4

    const/4 v1, 0x1

    .line 668
    invoke-virtual {v3, v1}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;->setTemporary(Z)V

    :cond_d4
    return-void
.end method

.method public rawDataStream(Lmcshim/sound/sampled/AudioFormat;ZLjava/lang/String;FFFIF)V
    .registers 22

    move-object v0, p0

    .line 584
    iget-object v1, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->sourceMap:Ljava/util/HashMap;

    new-instance v12, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;

    iget-object v3, v0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    move-object v2, v12

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lpaulscode/sound/libraries/SourceLWJGLOpenAL;-><init>(Ljava/nio/FloatBuffer;Lmcshim/sound/sampled/AudioFormat;ZLjava/lang/String;FFFIF)V

    move-object/from16 v2, p3

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setListenerAngle(F)V
    .registers 4

    .line 755
    invoke-super {p0, p1}, Lpaulscode/sound/Library;->setListenerAngle(F)V

    .line 757
    iget-object p1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listener:Lpaulscode/sound/ListenerData;

    iget-object v0, v0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v0, v0, Lpaulscode/sound/Vector3D;->x:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 758
    iget-object p1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listener:Lpaulscode/sound/ListenerData;

    iget-object v0, v0, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v0, v0, Lpaulscode/sound/Vector3D;->z:F

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 p1, 0x100f

    .line 761
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    invoke-static {p1, v0}, Lorg/lwjgl/openal/AL10;->alListener(ILjava/nio/FloatBuffer;)V

    .line 763
    invoke-direct {p0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->checkALError()Z

    return-void
.end method

.method public setListenerData(Lpaulscode/sound/ListenerData;)V
    .registers 7

    .line 798
    invoke-super {p0, p1}, Lpaulscode/sound/Library;->setListenerData(Lpaulscode/sound/ListenerData;)V

    .line 800
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->x:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 801
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->y:F

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 802
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->z:F

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 v0, 0x1004

    .line 803
    iget-object v1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1}, Lorg/lwjgl/openal/AL10;->alListener(ILjava/nio/FloatBuffer;)V

    .line 805
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->x:F

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 806
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->y:F

    invoke-virtual {v0, v3, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 807
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->lookAt:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->z:F

    invoke-virtual {v0, v4, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 808
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->x:F

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 809
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    iget-object v1, p1, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget v1, v1, Lpaulscode/sound/Vector3D;->y:F

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 810
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    iget-object p1, p1, Lpaulscode/sound/ListenerData;->up:Lpaulscode/sound/Vector3D;

    iget p1, p1, Lpaulscode/sound/Vector3D;->z:F

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 p1, 0x100f

    .line 811
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    invoke-static {p1, v0}, Lorg/lwjgl/openal/AL10;->alListener(ILjava/nio/FloatBuffer;)V

    .line 813
    invoke-direct {p0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->checkALError()Z

    return-void
.end method

.method public setListenerOrientation(FFFFFF)V
    .registers 9

    .line 779
    invoke-super/range {p0 .. p6}, Lpaulscode/sound/Library;->setListenerOrientation(FFFFFF)V

    .line 780
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 781
    iget-object p1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 782
    iget-object p1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 783
    iget-object p1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 784
    iget-object p1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, p5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 785
    iget-object p1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 p1, 0x100f

    .line 786
    iget-object p2, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerOrientation:Ljava/nio/FloatBuffer;

    invoke-static {p1, p2}, Lorg/lwjgl/openal/AL10;->alListener(ILjava/nio/FloatBuffer;)V

    .line 787
    invoke-direct {p0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->checkALError()Z

    return-void
.end method

.method public setListenerPosition(FFF)V
    .registers 6

    .line 735
    invoke-super {p0, p1, p2, p3}, Lpaulscode/sound/Library;->setListenerPosition(FFF)V

    .line 737
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 738
    iget-object p1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 739
    iget-object p1, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/16 p1, 0x1004

    .line 742
    iget-object p2, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->listenerPositionAL:Ljava/nio/FloatBuffer;

    invoke-static {p1, p2}, Lorg/lwjgl/openal/AL10;->alListener(ILjava/nio/FloatBuffer;)V

    .line 744
    invoke-direct {p0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->checkALError()Z

    return-void
.end method

.method public setMasterVolume(F)V
    .registers 3

    .line 478
    invoke-super {p0, p1}, Lpaulscode/sound/Library;->setMasterVolume(F)V

    const/16 v0, 0x100a

    .line 480
    invoke-static {v0, p1}, Lorg/lwjgl/openal/AL10;->alListenerf(IF)V

    .line 481
    invoke-direct {p0}, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->checkALError()Z

    return-void
.end method

.method public unloadSound(Ljava/lang/String;)V
    .registers 3

    .line 467
    iget-object v0, p0, Lpaulscode/sound/libraries/LibraryLWJGLOpenAL;->ALBufferMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-super {p0, p1}, Lpaulscode/sound/Library;->unloadSound(Ljava/lang/String;)V

    return-void
.end method
