###### Class paulscode.sound.Source (paulscode.sound.Source)
.class public Lpaulscode/sound/Source;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GET:Z = false

.field private static final SET:Z = true

.field private static final XXX:Z


# instance fields
.field private active:Z

.field public attModel:I

.field public channel:Lpaulscode/sound/Channel;

.field protected codec:Lpaulscode/sound/ICodec;

.field public distOrRoll:F

.field public distanceFromListener:F

.field protected fadeInGain:F

.field protected fadeInMilis:J

.field protected fadeOutGain:F

.field protected fadeOutMilis:J

.field public filenameURL:Lpaulscode/sound/FilenameURL;

.field public gain:F

.field protected lastFadeCheck:J

.field protected libraryType:Ljava/lang/Class;

.field private logger:Lpaulscode/sound/SoundSystemLogger;

.field private paused:Z

.field protected pitch:F

.field public position:Lpaulscode/sound/Vector3D;

.field public preLoad:Z

.field public priority:Z

.field public rawDataFormat:Lmcshim/sound/sampled/AudioFormat;

.field public rawDataStream:Z

.field protected reverseByteOrder:Z

.field protected soundBuffer:Lpaulscode/sound/SoundBuffer;

.field protected final soundSequenceLock:Ljava/lang/Object;

.field protected soundSequenceQueue:Ljava/util/LinkedList;

.field public sourceVolume:F

.field public sourcename:Ljava/lang/String;

.field private stopped:Z

.field public temporary:Z

.field public toLoop:Z

.field public toPlay:Z

.field public toStream:Z


# direct methods
.method public constructor <init>(Lmcshim/sound/sampled/AudioFormat;ZLjava/lang/String;FFFIF)V
    .registers 14

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Lpaulscode/sound/Library;

    iput-object v0, p0, Lpaulscode/sound/Source;->libraryType:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lpaulscode/sound/Source;->rawDataStream:Z

    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lpaulscode/sound/Source;->rawDataFormat:Lmcshim/sound/sampled/AudioFormat;

    .line 91
    iput-boolean v0, p0, Lpaulscode/sound/Source;->temporary:Z

    .line 97
    iput-boolean v0, p0, Lpaulscode/sound/Source;->priority:Z

    .line 102
    iput-boolean v0, p0, Lpaulscode/sound/Source;->toStream:Z

    .line 107
    iput-boolean v0, p0, Lpaulscode/sound/Source;->toLoop:Z

    .line 113
    iput-boolean v0, p0, Lpaulscode/sound/Source;->toPlay:Z

    const-string v2, ""

    .line 119
    iput-object v2, p0, Lpaulscode/sound/Source;->sourcename:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    .line 134
    iput v0, p0, Lpaulscode/sound/Source;->attModel:I

    const/4 v2, 0x0

    .line 139
    iput v2, p0, Lpaulscode/sound/Source;->distOrRoll:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 146
    iput v3, p0, Lpaulscode/sound/Source;->gain:F

    .line 151
    iput v3, p0, Lpaulscode/sound/Source;->sourceVolume:F

    .line 156
    iput v3, p0, Lpaulscode/sound/Source;->pitch:F

    .line 161
    iput v2, p0, Lpaulscode/sound/Source;->distanceFromListener:F

    .line 166
    iput-object v1, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    const/4 v2, 0x1

    .line 171
    iput-boolean v2, p0, Lpaulscode/sound/Source;->active:Z

    .line 176
    iput-boolean v2, p0, Lpaulscode/sound/Source;->stopped:Z

    .line 181
    iput-boolean v0, p0, Lpaulscode/sound/Source;->paused:Z

    .line 186
    iput-object v1, p0, Lpaulscode/sound/Source;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    .line 191
    iput-object v1, p0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    .line 196
    iput-boolean v0, p0, Lpaulscode/sound/Source;->reverseByteOrder:Z

    .line 201
    iput-object v1, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    .line 206
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lpaulscode/sound/Source;->soundSequenceLock:Ljava/lang/Object;

    .line 212
    iput-boolean v0, p0, Lpaulscode/sound/Source;->preLoad:Z

    const/high16 v4, -0x40800000    # -1.0f

    .line 218
    iput v4, p0, Lpaulscode/sound/Source;->fadeOutGain:F

    .line 224
    iput v3, p0, Lpaulscode/sound/Source;->fadeInGain:F

    const-wide/16 v3, 0x0

    .line 229
    iput-wide v3, p0, Lpaulscode/sound/Source;->fadeOutMilis:J

    .line 234
    iput-wide v3, p0, Lpaulscode/sound/Source;->fadeInMilis:J

    .line 239
    iput-wide v3, p0, Lpaulscode/sound/Source;->lastFadeCheck:J

    .line 326
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v3

    iput-object v3, p0, Lpaulscode/sound/Source;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 328
    iput-boolean p2, p0, Lpaulscode/sound/Source;->priority:Z

    .line 329
    iput-boolean v2, p0, Lpaulscode/sound/Source;->toStream:Z

    .line 330
    iput-boolean v0, p0, Lpaulscode/sound/Source;->toLoop:Z

    .line 331
    iput-object p3, p0, Lpaulscode/sound/Source;->sourcename:Ljava/lang/String;

    .line 332
    iput-object v1, p0, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    .line 333
    iput-object v1, p0, Lpaulscode/sound/Source;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    .line 334
    new-instance p2, Lpaulscode/sound/Vector3D;

    invoke-direct {p2, p4, p5, p6}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    iput-object p2, p0, Lpaulscode/sound/Source;->position:Lpaulscode/sound/Vector3D;

    .line 335
    iput p7, p0, Lpaulscode/sound/Source;->attModel:I

    .line 336
    iput p8, p0, Lpaulscode/sound/Source;->distOrRoll:F

    .line 337
    iput-boolean v0, p0, Lpaulscode/sound/Source;->temporary:Z

    .line 339
    iput-boolean v2, p0, Lpaulscode/sound/Source;->rawDataStream:Z

    .line 340
    iput-object p1, p0, Lpaulscode/sound/Source;->rawDataFormat:Lmcshim/sound/sampled/AudioFormat;

    return-void
.end method

.method public constructor <init>(Lpaulscode/sound/Source;Lpaulscode/sound/SoundBuffer;)V
    .registers 7

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Lpaulscode/sound/Library;

    iput-object v0, p0, Lpaulscode/sound/Source;->libraryType:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lpaulscode/sound/Source;->rawDataStream:Z

    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lpaulscode/sound/Source;->rawDataFormat:Lmcshim/sound/sampled/AudioFormat;

    .line 91
    iput-boolean v0, p0, Lpaulscode/sound/Source;->temporary:Z

    .line 97
    iput-boolean v0, p0, Lpaulscode/sound/Source;->priority:Z

    .line 102
    iput-boolean v0, p0, Lpaulscode/sound/Source;->toStream:Z

    .line 107
    iput-boolean v0, p0, Lpaulscode/sound/Source;->toLoop:Z

    .line 113
    iput-boolean v0, p0, Lpaulscode/sound/Source;->toPlay:Z

    const-string v2, ""

    .line 119
    iput-object v2, p0, Lpaulscode/sound/Source;->sourcename:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    .line 134
    iput v0, p0, Lpaulscode/sound/Source;->attModel:I

    const/4 v2, 0x0

    .line 139
    iput v2, p0, Lpaulscode/sound/Source;->distOrRoll:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 146
    iput v3, p0, Lpaulscode/sound/Source;->gain:F

    .line 151
    iput v3, p0, Lpaulscode/sound/Source;->sourceVolume:F

    .line 156
    iput v3, p0, Lpaulscode/sound/Source;->pitch:F

    .line 161
    iput v2, p0, Lpaulscode/sound/Source;->distanceFromListener:F

    .line 166
    iput-object v1, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    const/4 v2, 0x1

    .line 171
    iput-boolean v2, p0, Lpaulscode/sound/Source;->active:Z

    .line 176
    iput-boolean v2, p0, Lpaulscode/sound/Source;->stopped:Z

    .line 181
    iput-boolean v0, p0, Lpaulscode/sound/Source;->paused:Z

    .line 186
    iput-object v1, p0, Lpaulscode/sound/Source;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    .line 191
    iput-object v1, p0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    .line 196
    iput-boolean v0, p0, Lpaulscode/sound/Source;->reverseByteOrder:Z

    .line 201
    iput-object v1, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    .line 206
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lpaulscode/sound/Source;->soundSequenceLock:Ljava/lang/Object;

    .line 212
    iput-boolean v0, p0, Lpaulscode/sound/Source;->preLoad:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 218
    iput v0, p0, Lpaulscode/sound/Source;->fadeOutGain:F

    .line 224
    iput v3, p0, Lpaulscode/sound/Source;->fadeInGain:F

    const-wide/16 v0, 0x0

    .line 229
    iput-wide v0, p0, Lpaulscode/sound/Source;->fadeOutMilis:J

    .line 234
    iput-wide v0, p0, Lpaulscode/sound/Source;->fadeInMilis:J

    .line 239
    iput-wide v0, p0, Lpaulscode/sound/Source;->lastFadeCheck:J

    .line 287
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/Source;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 289
    iget-boolean v0, p1, Lpaulscode/sound/Source;->priority:Z

    iput-boolean v0, p0, Lpaulscode/sound/Source;->priority:Z

    .line 290
    iget-boolean v0, p1, Lpaulscode/sound/Source;->toStream:Z

    iput-boolean v0, p0, Lpaulscode/sound/Source;->toStream:Z

    .line 291
    iget-boolean v0, p1, Lpaulscode/sound/Source;->toLoop:Z

    iput-boolean v0, p0, Lpaulscode/sound/Source;->toLoop:Z

    .line 292
    iget-object v0, p1, Lpaulscode/sound/Source;->sourcename:Ljava/lang/String;

    iput-object v0, p0, Lpaulscode/sound/Source;->sourcename:Ljava/lang/String;

    .line 293
    iget-object v0, p1, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    iput-object v0, p0, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    .line 294
    iget-object v0, p1, Lpaulscode/sound/Source;->position:Lpaulscode/sound/Vector3D;

    invoke-virtual {v0}, Lpaulscode/sound/Vector3D;->clone()Lpaulscode/sound/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/Source;->position:Lpaulscode/sound/Vector3D;

    .line 295
    iget v0, p1, Lpaulscode/sound/Source;->attModel:I

    iput v0, p0, Lpaulscode/sound/Source;->attModel:I

    .line 296
    iget v0, p1, Lpaulscode/sound/Source;->distOrRoll:F

    iput v0, p0, Lpaulscode/sound/Source;->distOrRoll:F

    .line 297
    iget-boolean v0, p1, Lpaulscode/sound/Source;->temporary:Z

    iput-boolean v0, p0, Lpaulscode/sound/Source;->temporary:Z

    .line 299
    iget v0, p1, Lpaulscode/sound/Source;->sourceVolume:F

    iput v0, p0, Lpaulscode/sound/Source;->sourceVolume:F

    .line 301
    iget-boolean v0, p1, Lpaulscode/sound/Source;->rawDataStream:Z

    iput-boolean v0, p0, Lpaulscode/sound/Source;->rawDataStream:Z

    .line 302
    iget-object p1, p1, Lpaulscode/sound/Source;->rawDataFormat:Lmcshim/sound/sampled/AudioFormat;

    iput-object p1, p0, Lpaulscode/sound/Source;->rawDataFormat:Lmcshim/sound/sampled/AudioFormat;

    .line 304
    iput-object p2, p0, Lpaulscode/sound/Source;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    .line 306
    iget-boolean p1, p0, Lpaulscode/sound/Source;->toStream:Z

    if-eqz p1, :cond_a2

    iget-object p1, p0, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    if-eqz p1, :cond_a2

    .line 307
    invoke-virtual {p1}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpaulscode/sound/SoundSystemConfig;->getCodec(Ljava/lang/String;)Lpaulscode/sound/ICodec;

    move-result-object p1

    iput-object p1, p0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    :cond_a2
    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;Lpaulscode/sound/SoundBuffer;FFFIFZ)V
    .registers 20

    move-object v0, p0

    move v1, p2

    move-object v2, p5

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v3, Lpaulscode/sound/Library;

    iput-object v3, v0, Lpaulscode/sound/Source;->libraryType:Ljava/lang/Class;

    const/4 v3, 0x0

    .line 81
    iput-boolean v3, v0, Lpaulscode/sound/Source;->rawDataStream:Z

    const/4 v4, 0x0

    .line 86
    iput-object v4, v0, Lpaulscode/sound/Source;->rawDataFormat:Lmcshim/sound/sampled/AudioFormat;

    .line 91
    iput-boolean v3, v0, Lpaulscode/sound/Source;->temporary:Z

    .line 97
    iput-boolean v3, v0, Lpaulscode/sound/Source;->priority:Z

    .line 102
    iput-boolean v3, v0, Lpaulscode/sound/Source;->toStream:Z

    .line 107
    iput-boolean v3, v0, Lpaulscode/sound/Source;->toLoop:Z

    .line 113
    iput-boolean v3, v0, Lpaulscode/sound/Source;->toPlay:Z

    const-string v5, ""

    .line 119
    iput-object v5, v0, Lpaulscode/sound/Source;->sourcename:Ljava/lang/String;

    .line 124
    iput-object v4, v0, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    .line 134
    iput v3, v0, Lpaulscode/sound/Source;->attModel:I

    const/4 v5, 0x0

    .line 139
    iput v5, v0, Lpaulscode/sound/Source;->distOrRoll:F

    const/high16 v6, 0x3f800000    # 1.0f

    .line 146
    iput v6, v0, Lpaulscode/sound/Source;->gain:F

    .line 151
    iput v6, v0, Lpaulscode/sound/Source;->sourceVolume:F

    .line 156
    iput v6, v0, Lpaulscode/sound/Source;->pitch:F

    .line 161
    iput v5, v0, Lpaulscode/sound/Source;->distanceFromListener:F

    .line 166
    iput-object v4, v0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    const/4 v5, 0x1

    .line 171
    iput-boolean v5, v0, Lpaulscode/sound/Source;->active:Z

    .line 176
    iput-boolean v5, v0, Lpaulscode/sound/Source;->stopped:Z

    .line 181
    iput-boolean v3, v0, Lpaulscode/sound/Source;->paused:Z

    .line 186
    iput-object v4, v0, Lpaulscode/sound/Source;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    .line 191
    iput-object v4, v0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    .line 196
    iput-boolean v3, v0, Lpaulscode/sound/Source;->reverseByteOrder:Z

    .line 201
    iput-object v4, v0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    .line 206
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lpaulscode/sound/Source;->soundSequenceLock:Ljava/lang/Object;

    .line 212
    iput-boolean v3, v0, Lpaulscode/sound/Source;->preLoad:Z

    const/high16 v3, -0x40800000    # -1.0f

    .line 218
    iput v3, v0, Lpaulscode/sound/Source;->fadeOutGain:F

    .line 224
    iput v6, v0, Lpaulscode/sound/Source;->fadeInGain:F

    const-wide/16 v3, 0x0

    .line 229
    iput-wide v3, v0, Lpaulscode/sound/Source;->fadeOutMilis:J

    .line 234
    iput-wide v3, v0, Lpaulscode/sound/Source;->fadeInMilis:J

    .line 239
    iput-wide v3, v0, Lpaulscode/sound/Source;->lastFadeCheck:J

    .line 262
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v3

    iput-object v3, v0, Lpaulscode/sound/Source;->logger:Lpaulscode/sound/SoundSystemLogger;

    move v3, p1

    .line 264
    iput-boolean v3, v0, Lpaulscode/sound/Source;->priority:Z

    .line 265
    iput-boolean v1, v0, Lpaulscode/sound/Source;->toStream:Z

    move v3, p3

    .line 266
    iput-boolean v3, v0, Lpaulscode/sound/Source;->toLoop:Z

    move-object v3, p4

    .line 267
    iput-object v3, v0, Lpaulscode/sound/Source;->sourcename:Ljava/lang/String;

    .line 268
    iput-object v2, v0, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    move-object v3, p6

    .line 269
    iput-object v3, v0, Lpaulscode/sound/Source;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    .line 270
    new-instance v3, Lpaulscode/sound/Vector3D;

    move v4, p7

    move v5, p8

    move/from16 v6, p9

    invoke-direct {v3, p7, p8, v6}, Lpaulscode/sound/Vector3D;-><init>(FFF)V

    iput-object v3, v0, Lpaulscode/sound/Source;->position:Lpaulscode/sound/Vector3D;

    move/from16 v3, p10

    .line 271
    iput v3, v0, Lpaulscode/sound/Source;->attModel:I

    move/from16 v3, p11

    .line 272
    iput v3, v0, Lpaulscode/sound/Source;->distOrRoll:F

    move/from16 v3, p12

    .line 273
    iput-boolean v3, v0, Lpaulscode/sound/Source;->temporary:Z

    if-eqz v1, :cond_92

    if-eqz v2, :cond_92

    .line 276
    invoke-virtual {p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpaulscode/sound/SoundSystemConfig;->getCodec(Ljava/lang/String;)Lpaulscode/sound/ICodec;

    move-result-object v1

    iput-object v1, v0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    :cond_92
    return-void
.end method

.method private declared-synchronized active(ZZ)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1054
    :try_start_4
    iput-boolean p2, p0, Lpaulscode/sound/Source;->active:Z

    .line 1055
    :cond_6
    iget-boolean p1, p0, Lpaulscode/sound/Source;->active:Z
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized paused(ZZ)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1076
    :try_start_4
    iput-boolean p2, p0, Lpaulscode/sound/Source;->paused:Z

    .line 1077
    :cond_6
    iget-boolean p1, p0, Lpaulscode/sound/Source;->paused:Z
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized stopped(ZZ)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1065
    :try_start_4
    iput-boolean p2, p0, Lpaulscode/sound/Source;->stopped:Z

    .line 1066
    :cond_6
    iget-boolean p1, p0, Lpaulscode/sound/Source;->stopped:Z
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public activate()V
    .registers 2

    const/4 v0, 0x1

    .line 1003
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/Source;->active(ZZ)Z

    return-void
.end method

.method public active()Z
    .registers 2

    const/4 v0, 0x0

    .line 1012
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/Source;->active(ZZ)Z

    move-result v0

    return v0
.end method

.method public changeSource(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;Lpaulscode/sound/SoundBuffer;FFFIFZ)V
    .registers 13

    .line 767
    iput-boolean p1, p0, Lpaulscode/sound/Source;->priority:Z

    .line 768
    iput-boolean p2, p0, Lpaulscode/sound/Source;->toStream:Z

    .line 769
    iput-boolean p3, p0, Lpaulscode/sound/Source;->toLoop:Z

    .line 770
    iput-object p4, p0, Lpaulscode/sound/Source;->sourcename:Ljava/lang/String;

    .line 771
    iput-object p5, p0, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    .line 772
    iput-object p6, p0, Lpaulscode/sound/Source;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    .line 773
    iget-object p1, p0, Lpaulscode/sound/Source;->position:Lpaulscode/sound/Vector3D;

    iput p7, p1, Lpaulscode/sound/Vector3D;->x:F

    .line 774
    iget-object p1, p0, Lpaulscode/sound/Source;->position:Lpaulscode/sound/Vector3D;

    iput p8, p1, Lpaulscode/sound/Vector3D;->y:F

    .line 775
    iget-object p1, p0, Lpaulscode/sound/Source;->position:Lpaulscode/sound/Vector3D;

    iput p9, p1, Lpaulscode/sound/Vector3D;->z:F

    .line 776
    iput p10, p0, Lpaulscode/sound/Source;->attModel:I

    .line 777
    iput p11, p0, Lpaulscode/sound/Source;->distOrRoll:F

    .line 778
    iput-boolean p12, p0, Lpaulscode/sound/Source;->temporary:Z

    return-void
.end method

.method public checkFadeOut()Z
    .registers 14

    .line 537
    iget-boolean v0, p0, Lpaulscode/sound/Source;->toStream:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 540
    :cond_6
    iget v0, p0, Lpaulscode/sound/Source;->fadeOutGain:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_17

    iget v0, p0, Lpaulscode/sound/Source;->fadeInGain:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_17

    return v1

    .line 543
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 544
    iget-wide v6, p0, Lpaulscode/sound/Source;->lastFadeCheck:J

    sub-long v6, v4, v6

    .line 545
    iput-wide v4, p0, Lpaulscode/sound/Source;->lastFadeCheck:J

    .line 547
    iget v0, p0, Lpaulscode/sound/Source;->fadeOutGain:F

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    if-ltz v5, :cond_65

    .line 549
    iget-wide v11, p0, Lpaulscode/sound/Source;->fadeOutMilis:J

    cmp-long v3, v11, v8

    if-nez v3, :cond_44

    .line 551
    iput v4, p0, Lpaulscode/sound/Source;->fadeOutGain:F

    .line 552
    iput v4, p0, Lpaulscode/sound/Source;->fadeInGain:F

    .line 553
    invoke-virtual {p0}, Lpaulscode/sound/Source;->incrementSoundSequence()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 554
    invoke-virtual {p0}, Lpaulscode/sound/Source;->stop()V

    .line 555
    :cond_3e
    invoke-virtual {p0}, Lpaulscode/sound/Source;->positionChanged()V

    .line 556
    iput-boolean v10, p0, Lpaulscode/sound/Source;->preLoad:Z

    return v1

    :cond_44
    long-to-float v3, v6

    long-to-float v5, v11

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    .line 562
    iput v0, p0, Lpaulscode/sound/Source;->fadeOutGain:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_61

    .line 565
    iput v2, p0, Lpaulscode/sound/Source;->fadeOutGain:F

    .line 566
    iput v4, p0, Lpaulscode/sound/Source;->fadeInGain:F

    .line 567
    invoke-virtual {p0}, Lpaulscode/sound/Source;->incrementSoundSequence()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 568
    invoke-virtual {p0}, Lpaulscode/sound/Source;->stop()V

    .line 569
    :cond_5b
    invoke-virtual {p0}, Lpaulscode/sound/Source;->positionChanged()V

    .line 570
    iput-boolean v10, p0, Lpaulscode/sound/Source;->preLoad:Z

    return v1

    .line 574
    :cond_61
    invoke-virtual {p0}, Lpaulscode/sound/Source;->positionChanged()V

    return v10

    .line 578
    :cond_65
    iget v0, p0, Lpaulscode/sound/Source;->fadeInGain:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_8a

    .line 580
    iput v2, p0, Lpaulscode/sound/Source;->fadeOutGain:F

    .line 581
    iget-wide v4, p0, Lpaulscode/sound/Source;->fadeInMilis:J

    cmp-long v1, v4, v8

    if-nez v1, :cond_78

    .line 583
    iput v2, p0, Lpaulscode/sound/Source;->fadeOutGain:F

    .line 584
    iput v3, p0, Lpaulscode/sound/Source;->fadeInGain:F

    goto :goto_86

    :cond_78
    long-to-float v1, v6

    long-to-float v4, v4

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 589
    iput v0, p0, Lpaulscode/sound/Source;->fadeInGain:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_86

    .line 592
    iput v2, p0, Lpaulscode/sound/Source;->fadeOutGain:F

    .line 593
    iput v3, p0, Lpaulscode/sound/Source;->fadeInGain:F

    .line 596
    :cond_86
    :goto_86
    invoke-virtual {p0}, Lpaulscode/sound/Source;->positionChanged()V

    return v10

    :cond_8a
    return v1
.end method

.method public cleanup()V
    .registers 3

    .line 349
    iget-object v0, p0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    if-eqz v0, :cond_7

    .line 350
    invoke-interface {v0}, Lpaulscode/sound/ICodec;->cleanup()V

    .line 352
    :cond_7
    iget-object v0, p0, Lpaulscode/sound/Source;->soundSequenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_a
    iget-object v1, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_11

    .line 355
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :cond_11
    const/4 v1, 0x0

    .line 356
    iput-object v1, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    .line 357
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_20

    .line 359
    iput-object v1, p0, Lpaulscode/sound/Source;->sourcename:Ljava/lang/String;

    .line 360
    iput-object v1, p0, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    .line 361
    iput-object v1, p0, Lpaulscode/sound/Source;->position:Lpaulscode/sound/Vector3D;

    .line 362
    iput-object v1, p0, Lpaulscode/sound/Source;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    .line 363
    iput-object v1, p0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    return-void

    :catchall_20
    move-exception v1

    .line 357
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public cull()V
    .registers 4

    const/4 v0, 0x0

    .line 986
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/Source;->active(ZZ)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    .line 988
    :cond_8
    invoke-virtual {p0}, Lpaulscode/sound/Source;->playing()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lpaulscode/sound/Source;->toLoop:Z

    if-eqz v1, :cond_15

    .line 989
    iput-boolean v2, p0, Lpaulscode/sound/Source;->toPlay:Z

    .line 990
    :cond_15
    iget-boolean v1, p0, Lpaulscode/sound/Source;->rawDataStream:Z

    if-eqz v1, :cond_1b

    .line 991
    iput-boolean v2, p0, Lpaulscode/sound/Source;->toPlay:Z

    .line 992
    :cond_1b
    invoke-direct {p0, v2, v0}, Lpaulscode/sound/Source;->active(ZZ)Z

    .line 993
    iget-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    if-eqz v0, :cond_25

    .line 994
    invoke-virtual {v0}, Lpaulscode/sound/Channel;->close()V

    :cond_25
    const/4 v0, 0x0

    .line 995
    iput-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    return-void
.end method

.method public dequeueSound(Ljava/lang/String;)V
    .registers 5

    .line 402
    iget-boolean v0, p0, Lpaulscode/sound/Source;->toStream:Z

    if-nez v0, :cond_a

    const-string p1, "Method \'dequeueSound\' may only be used for streaming and MIDI sources."

    .line 404
    invoke-virtual {p0, p1}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_a
    if-eqz p1, :cond_4c

    const-string v0, ""

    .line 408
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_4c

    .line 414
    :cond_15
    iget-object v0, p0, Lpaulscode/sound/Source;->soundSequenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_18
    iget-object v1, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_1f

    .line 417
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 418
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_49

    .line 419
    iget-object v1, p0, Lpaulscode/sound/Source;->soundSequenceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    :try_start_23
    iget-object v0, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_44

    .line 423
    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 424
    :cond_2b
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 426
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpaulscode/sound/FilenameURL;

    invoke-virtual {v2}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 428
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 433
    :cond_44
    monitor-exit v1

    return-void

    :catchall_46
    move-exception p1

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_23 .. :try_end_48} :catchall_46

    throw p1

    :catchall_49
    move-exception p1

    .line 418
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1

    :cond_4c
    :goto_4c
    const-string p1, "Filename not specified in method \'dequeueSound\'"

    .line 410
    invoke-virtual {p0, p1}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    return-void
.end method

.method protected errorCheck(ZLjava/lang/String;)Z
    .registers 6

    .line 1119
    iget-object v0, p0, Lpaulscode/sound/Source;->logger:Lpaulscode/sound/SoundSystemLogger;

    invoke-virtual {p0}, Lpaulscode/sound/Source;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lpaulscode/sound/SoundSystemLogger;->errorCheck(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected errorMessage(Ljava/lang/String;)V
    .registers 5

    .line 1128
    iget-object v0, p0, Lpaulscode/sound/Source;->logger:Lpaulscode/sound/SoundSystemLogger;

    invoke-virtual {p0}, Lpaulscode/sound/Source;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lpaulscode/sound/SoundSystemLogger;->errorMessage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public fadeOut(Lpaulscode/sound/FilenameURL;J)V
    .registers 7

    .line 449
    iget-boolean v0, p0, Lpaulscode/sound/Source;->toStream:Z

    if-nez v0, :cond_a

    const-string p1, "Method \'fadeOut\' may only be used for streaming and MIDI sources."

    .line 451
    invoke-virtual {p0, p1}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_a
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_16

    const-string p1, "Miliseconds may not be negative in method \'fadeOut\'."

    .line 457
    invoke-virtual {p0, p1}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 462
    :cond_16
    iput-wide p2, p0, Lpaulscode/sound/Source;->fadeOutMilis:J

    .line 463
    iput-wide v0, p0, Lpaulscode/sound/Source;->fadeInMilis:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 464
    iput p2, p0, Lpaulscode/sound/Source;->fadeOutGain:F

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lpaulscode/sound/Source;->lastFadeCheck:J

    .line 467
    iget-object p2, p0, Lpaulscode/sound/Source;->soundSequenceLock:Ljava/lang/Object;

    monitor-enter p2

    .line 469
    :try_start_27
    iget-object p3, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    if-eqz p3, :cond_2e

    .line 470
    invoke-virtual {p3}, Ljava/util/LinkedList;->clear()V

    :cond_2e
    if-eqz p1, :cond_40

    .line 474
    iget-object p3, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    if-nez p3, :cond_3b

    .line 475
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    .line 476
    :cond_3b
    iget-object p3, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_40
    monitor-exit p2

    return-void

    :catchall_42
    move-exception p1

    monitor-exit p2
    :try_end_44
    .catchall {:try_start_27 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public fadeOutIn(Lpaulscode/sound/FilenameURL;JJ)V
    .registers 9

    .line 496
    iget-boolean v0, p0, Lpaulscode/sound/Source;->toStream:Z

    if-nez v0, :cond_a

    const-string p1, "Method \'fadeOutIn\' may only be used for streaming and MIDI sources."

    .line 498
    invoke-virtual {p0, p1}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez p1, :cond_12

    const-string p1, "Filename/URL not specified in method \'fadeOutIn\'."

    .line 504
    invoke-virtual {p0, p1}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_12
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_48

    cmp-long v0, p4, v0

    if-gez v0, :cond_1d

    goto :goto_48

    .line 514
    :cond_1d
    iput-wide p2, p0, Lpaulscode/sound/Source;->fadeOutMilis:J

    .line 515
    iput-wide p4, p0, Lpaulscode/sound/Source;->fadeInMilis:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 516
    iput p2, p0, Lpaulscode/sound/Source;->fadeOutGain:F

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lpaulscode/sound/Source;->lastFadeCheck:J

    .line 519
    iget-object p2, p0, Lpaulscode/sound/Source;->soundSequenceLock:Ljava/lang/Object;

    monitor-enter p2

    .line 521
    :try_start_2e
    iget-object p3, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    if-nez p3, :cond_39

    .line 522
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    .line 523
    :cond_39
    iget-object p3, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->clear()V

    .line 524
    iget-object p3, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 525
    monitor-exit p2

    return-void

    :catchall_45
    move-exception p1

    monitor-exit p2
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_45

    throw p1

    :cond_48
    :goto_48
    const-string p1, "Miliseconds may not be negative in method \'fadeOutIn\'."

    .line 509
    invoke-virtual {p0, p1}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public feedRawAudioData(Lpaulscode/sound/Channel;[B)I
    .registers 6

    const/4 v0, 0x0

    .line 789
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/Source;->active(ZZ)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    .line 791
    iput-boolean v2, p0, Lpaulscode/sound/Source;->toPlay:Z

    const/4 p1, -0x1

    return p1

    .line 794
    :cond_c
    iget-object v1, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    if-eq v1, p1, :cond_1f

    .line 796
    iput-object p1, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    .line 797
    invoke-virtual {p1}, Lpaulscode/sound/Channel;->close()V

    .line 798
    iget-object p1, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    iget-object v1, p0, Lpaulscode/sound/Source;->rawDataFormat:Lmcshim/sound/sampled/AudioFormat;

    invoke-virtual {p1, v1}, Lpaulscode/sound/Channel;->setAudioFormat(Lmcshim/sound/sampled/AudioFormat;)V

    .line 799
    invoke-virtual {p0}, Lpaulscode/sound/Source;->positionChanged()V

    .line 803
    :cond_1f
    invoke-direct {p0, v2, v0}, Lpaulscode/sound/Source;->stopped(ZZ)Z

    .line 804
    invoke-direct {p0, v2, v0}, Lpaulscode/sound/Source;->paused(ZZ)Z

    .line 806
    iget-object p1, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    invoke-virtual {p1, p2}, Lpaulscode/sound/Channel;->feedRawAudioData([B)I

    move-result p1

    return p1
.end method

.method public flush()V
    .registers 2

    .line 974
    iget-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    if-eqz v0, :cond_8

    .line 975
    invoke-virtual {v0}, Lpaulscode/sound/Channel;->flush()V

    goto :goto_d

    :cond_8
    const-string v0, "Channel null in method \'flush\'"

    .line 977
    invoke-virtual {p0, v0}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public getClassName()Ljava/lang/String;
    .registers 4

    .line 1086
    iget-object v0, p0, Lpaulscode/sound/Source;->libraryType:Ljava/lang/Class;

    invoke-static {v0}, Lpaulscode/sound/SoundSystemConfig;->getLibraryTitle(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No Sound"

    .line 1088
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Source"

    if-eqz v1, :cond_11

    return-object v2

    .line 1091
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistanceFromListener()F
    .registers 2

    .line 711
    iget v0, p0, Lpaulscode/sound/Source;->distanceFromListener:F

    return v0
.end method

.method public getPitch()F
    .registers 2

    .line 734
    iget v0, p0, Lpaulscode/sound/Source;->pitch:F

    return v0
.end method

.method protected importantMessage(Ljava/lang/String;)V
    .registers 4

    .line 1108
    iget-object v0, p0, Lpaulscode/sound/Source;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->importantMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public incrementSoundSequence()Z
    .registers 4

    .line 611
    iget-boolean v0, p0, Lpaulscode/sound/Source;->toStream:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "Method \'incrementSoundSequence\' may only be used for streaming and MIDI sources."

    .line 613
    invoke-virtual {p0, v0}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    return v1

    .line 618
    :cond_b
    iget-object v0, p0, Lpaulscode/sound/Source;->soundSequenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_e
    iget-object v2, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_38

    .line 622
    iget-object v2, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpaulscode/sound/FilenameURL;

    iput-object v1, p0, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    .line 623
    iget-object v1, p0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    if-eqz v1, :cond_29

    .line 624
    invoke-interface {v1}, Lpaulscode/sound/ICodec;->cleanup()V

    .line 625
    :cond_29
    iget-object v1, p0, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    invoke-virtual {v1}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpaulscode/sound/SoundSystemConfig;->getCodec(Ljava/lang/String;)Lpaulscode/sound/ICodec;

    move-result-object v1

    iput-object v1, p0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    .line 626
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 628
    :cond_38
    monitor-exit v0

    return v1

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_e .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public listenerMoved()V
    .registers 1

    return-void
.end method

.method protected message(Ljava/lang/String;)V
    .registers 4

    .line 1099
    iget-object v0, p0, Lpaulscode/sound/Source;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->message(Ljava/lang/String;I)V

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 924
    iput-boolean v0, p0, Lpaulscode/sound/Source;->toPlay:Z

    const/4 v0, 0x1

    .line 925
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/Source;->paused(ZZ)Z

    .line 926
    iget-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    if-eqz v0, :cond_f

    .line 927
    invoke-virtual {v0}, Lpaulscode/sound/Channel;->pause()V

    goto :goto_14

    :cond_f
    const-string v0, "Channel null in method \'pause\'"

    .line 929
    invoke-virtual {p0, v0}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    :goto_14
    return-void
.end method

.method public paused()Z
    .registers 2

    const/4 v0, 0x0

    .line 1044
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/Source;->paused(ZZ)Z

    move-result v0

    return v0
.end method

.method public play(Lpaulscode/sound/Channel;)V
    .registers 5

    const/4 v0, 0x0

    .line 815
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/Source;->active(ZZ)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_f

    .line 817
    iget-boolean p1, p0, Lpaulscode/sound/Source;->toLoop:Z

    if-eqz p1, :cond_e

    .line 818
    iput-boolean v2, p0, Lpaulscode/sound/Source;->toPlay:Z

    :cond_e
    return-void

    .line 821
    :cond_f
    iget-object v1, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    if-eq v1, p1, :cond_18

    .line 823
    iput-object p1, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    .line 824
    invoke-virtual {p1}, Lpaulscode/sound/Channel;->close()V

    .line 827
    :cond_18
    invoke-direct {p0, v2, v0}, Lpaulscode/sound/Source;->stopped(ZZ)Z

    .line 828
    invoke-direct {p0, v2, v0}, Lpaulscode/sound/Source;->paused(ZZ)Z

    return-void
.end method

.method public playing()Z
    .registers 3

    .line 1021
    iget-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    if-eq v0, p0, :cond_a

    goto :goto_1e

    .line 1023
    :cond_a
    invoke-virtual {p0}, Lpaulscode/sound/Source;->paused()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lpaulscode/sound/Source;->stopped()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1e

    .line 1026
    :cond_17
    iget-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    invoke-virtual {v0}, Lpaulscode/sound/Channel;->playing()Z

    move-result v0

    return v0

    :cond_1e
    :goto_1e
    return v1
.end method

.method public positionChanged()V
    .registers 1

    return-void
.end method

.method public preLoad()Z
    .registers 5

    .line 894
    iget-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 897
    :cond_6
    iget-object v0, p0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    if-nez v0, :cond_b

    return v1

    .line 900
    :cond_b
    iget-object v0, p0, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    invoke-virtual {v0}, Lpaulscode/sound/FilenameURL;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 902
    iget-object v2, p0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    invoke-interface {v2, v0}, Lpaulscode/sound/ICodec;->initialize(Ljava/net/URL;)Z

    .line 904
    :goto_16
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getNumberStreamingBuffers()I

    move-result v0

    if-ge v1, v0, :cond_39

    .line 906
    iget-object v0, p0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    invoke-interface {v0}, Lpaulscode/sound/ICodec;->read()Lpaulscode/sound/SoundBuffer;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 909
    iget-object v2, p0, Lpaulscode/sound/Source;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    iget-object v2, v2, Lpaulscode/sound/SoundBuffer;->audioData:[B

    if-eqz v2, :cond_33

    .line 910
    iget-object v2, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    iget-object v3, p0, Lpaulscode/sound/Source;->soundBuffer:Lpaulscode/sound/SoundBuffer;

    iget-object v3, v3, Lpaulscode/sound/SoundBuffer;->audioData:[B

    invoke-virtual {v2, v3}, Lpaulscode/sound/Channel;->queueBuffer([B)Z

    .line 911
    :cond_33
    invoke-virtual {v0}, Lpaulscode/sound/SoundBuffer;->cleanup()V

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method protected printStackTrace(Ljava/lang/Exception;)V
    .registers 4

    .line 1137
    iget-object v0, p0, Lpaulscode/sound/Source;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->printStackTrace(Ljava/lang/Exception;I)V

    return-void
.end method

.method public queueSound(Lpaulscode/sound/FilenameURL;)V
    .registers 4

    .line 374
    iget-boolean v0, p0, Lpaulscode/sound/Source;->toStream:Z

    if-nez v0, :cond_a

    const-string p1, "Method \'queueSound\' may only be used for streaming and MIDI sources."

    .line 376
    invoke-virtual {p0, p1}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez p1, :cond_12

    const-string p1, "File not specified in method \'queueSound\'"

    .line 382
    invoke-virtual {p0, p1}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 386
    :cond_12
    iget-object v0, p0, Lpaulscode/sound/Source;->soundSequenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_15
    iget-object v1, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    if-nez v1, :cond_20

    .line 389
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    .line 390
    :cond_20
    iget-object v1, p0, Lpaulscode/sound/Source;->soundSequenceQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 391
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public reverseByteOrderRequired()Z
    .registers 2

    .line 744
    iget-boolean v0, p0, Lpaulscode/sound/Source;->reverseByteOrder:Z

    return v0
.end method

.method public rewind()V
    .registers 3

    const/4 v0, 0x0

    .line 951
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/Source;->paused(ZZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 953
    invoke-virtual {p0}, Lpaulscode/sound/Source;->stop()V

    .line 955
    :cond_a
    iget-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    if-eqz v0, :cond_26

    .line 957
    invoke-virtual {p0}, Lpaulscode/sound/Source;->playing()Z

    move-result v0

    .line 958
    iget-object v1, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    invoke-virtual {v1}, Lpaulscode/sound/Channel;->rewind()V

    .line 959
    iget-boolean v1, p0, Lpaulscode/sound/Source;->toStream:Z

    if-eqz v1, :cond_2b

    if-eqz v0, :cond_2b

    .line 961
    invoke-virtual {p0}, Lpaulscode/sound/Source;->stop()V

    .line 962
    iget-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    invoke-virtual {p0, v0}, Lpaulscode/sound/Source;->play(Lpaulscode/sound/Channel;)V

    goto :goto_2b

    :cond_26
    const-string v0, "Channel null in method \'rewind\'"

    .line 966
    invoke-virtual {p0, v0}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public setAttenuation(I)V
    .registers 2

    .line 692
    iput p1, p0, Lpaulscode/sound/Source;->attModel:I

    return-void
.end method

.method public setDistOrRoll(F)V
    .registers 2

    .line 702
    iput p1, p0, Lpaulscode/sound/Source;->distOrRoll:F

    return-void
.end method

.method public setLooping(Z)V
    .registers 2

    .line 683
    iput-boolean p1, p0, Lpaulscode/sound/Source;->toLoop:Z

    return-void
.end method

.method public setPitch(F)V
    .registers 4

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_8

    :goto_6
    move p1, v0

    goto :goto_f

    :cond_8
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_f

    goto :goto_6

    .line 725
    :cond_f
    :goto_f
    iput p1, p0, Lpaulscode/sound/Source;->pitch:F

    return-void
.end method

.method public setPosition(FFF)V
    .registers 5

    .line 655
    iget-object v0, p0, Lpaulscode/sound/Source;->position:Lpaulscode/sound/Vector3D;

    iput p1, v0, Lpaulscode/sound/Vector3D;->x:F

    .line 656
    iget-object p1, p0, Lpaulscode/sound/Source;->position:Lpaulscode/sound/Vector3D;

    iput p2, p1, Lpaulscode/sound/Vector3D;->y:F

    .line 657
    iget-object p1, p0, Lpaulscode/sound/Source;->position:Lpaulscode/sound/Vector3D;

    iput p3, p1, Lpaulscode/sound/Vector3D;->z:F

    return-void
.end method

.method public setPriority(Z)V
    .registers 2

    .line 674
    iput-boolean p1, p0, Lpaulscode/sound/Source;->priority:Z

    return-void
.end method

.method public setTemporary(Z)V
    .registers 2

    .line 638
    iput-boolean p1, p0, Lpaulscode/sound/Source;->temporary:Z

    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v0, 0x0

    .line 937
    iput-boolean v0, p0, Lpaulscode/sound/Source;->toPlay:Z

    const/4 v1, 0x1

    .line 938
    invoke-direct {p0, v1, v1}, Lpaulscode/sound/Source;->stopped(ZZ)Z

    .line 939
    invoke-direct {p0, v1, v0}, Lpaulscode/sound/Source;->paused(ZZ)Z

    .line 940
    iget-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    if-eqz v0, :cond_12

    .line 941
    invoke-virtual {v0}, Lpaulscode/sound/Channel;->stop()V

    goto :goto_17

    :cond_12
    const-string v0, "Channel null in method \'stop\'"

    .line 943
    invoke-virtual {p0, v0}, Lpaulscode/sound/Source;->errorMessage(Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method public stopped()Z
    .registers 2

    const/4 v0, 0x0

    .line 1035
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/Source;->stopped(ZZ)Z

    move-result v0

    return v0
.end method

.method public stream()Z
    .registers 8

    .line 838
    iget-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 841
    :cond_6
    iget-boolean v0, p0, Lpaulscode/sound/Source;->preLoad:Z

    if-eqz v0, :cond_16

    .line 843
    iget-boolean v0, p0, Lpaulscode/sound/Source;->rawDataStream:Z

    if-eqz v0, :cond_11

    .line 844
    iput-boolean v1, p0, Lpaulscode/sound/Source;->preLoad:Z

    goto :goto_16

    .line 846
    :cond_11
    invoke-virtual {p0}, Lpaulscode/sound/Source;->preLoad()Z

    move-result v0

    return v0

    .line 849
    :cond_16
    :goto_16
    iget-boolean v0, p0, Lpaulscode/sound/Source;->rawDataStream:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    .line 851
    invoke-virtual {p0}, Lpaulscode/sound/Source;->stopped()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lpaulscode/sound/Source;->paused()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_36

    .line 853
    :cond_28
    iget-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    invoke-virtual {v0}, Lpaulscode/sound/Channel;->buffersProcessed()I

    move-result v0

    if-lez v0, :cond_75

    .line 854
    iget-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    invoke-virtual {v0}, Lpaulscode/sound/Channel;->processBuffer()Z

    goto :goto_75

    :cond_36
    :goto_36
    return v2

    .line 858
    :cond_37
    iget-object v0, p0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    if-nez v0, :cond_3c

    return v1

    .line 860
    :cond_3c
    invoke-virtual {p0}, Lpaulscode/sound/Source;->stopped()Z

    move-result v0

    if-eqz v0, :cond_43

    return v1

    .line 863
    :cond_43
    invoke-virtual {p0}, Lpaulscode/sound/Source;->paused()Z

    move-result v0

    if-eqz v0, :cond_4a

    return v2

    .line 866
    :cond_4a
    iget-object v0, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    invoke-virtual {v0}, Lpaulscode/sound/Channel;->buffersProcessed()I

    move-result v0

    move v3, v1

    :goto_51
    if-ge v3, v0, :cond_75

    .line 871
    iget-object v4, p0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    invoke-interface {v4}, Lpaulscode/sound/ICodec;->read()Lpaulscode/sound/SoundBuffer;

    move-result-object v4

    if-eqz v4, :cond_69

    .line 874
    iget-object v5, v4, Lpaulscode/sound/SoundBuffer;->audioData:[B

    if-eqz v5, :cond_66

    .line 876
    iget-object v5, p0, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    iget-object v6, v4, Lpaulscode/sound/SoundBuffer;->audioData:[B

    invoke-virtual {v5, v6}, Lpaulscode/sound/Channel;->queueBuffer([B)Z

    .line 878
    :cond_66
    invoke-virtual {v4}, Lpaulscode/sound/SoundBuffer;->cleanup()V

    .line 881
    :cond_69
    iget-object v4, p0, Lpaulscode/sound/Source;->codec:Lpaulscode/sound/ICodec;

    invoke-interface {v4}, Lpaulscode/sound/ICodec;->endOfStream()Z

    move-result v4

    if-eqz v4, :cond_72

    return v1

    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_75
    :goto_75
    return v2
.end method
