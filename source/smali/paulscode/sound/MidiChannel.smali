###### Class paulscode.sound.MidiChannel (paulscode.sound.MidiChannel)
.class public Lpaulscode/sound/MidiChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmcshim/sound/midi/MetaEventListener;


# static fields
.field private static final CHANGE_VOLUME:I = 0x7

.field private static final END_OF_TRACK:I = 0x2f

.field private static final GET:Z = false

.field private static final SET:Z = true

.field private static final XXX:Z


# instance fields
.field protected fadeInGain:F

.field protected fadeInMilis:J

.field protected fadeOutGain:F

.field protected fadeOutMilis:J

.field private fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

.field private filenameURL:Lpaulscode/sound/FilenameURL;

.field private gain:F

.field protected lastFadeCheck:J

.field private loading:Z

.field private logger:Lpaulscode/sound/SoundSystemLogger;

.field private sequence:Lmcshim/sound/midi/Sequence;

.field private sequenceQueue:Ljava/util/LinkedList;

.field private final sequenceQueueLock:Ljava/lang/Object;

.field private sequencer:Lmcshim/sound/midi/Sequencer;

.field private sourcename:Ljava/lang/String;

.field private synthDevice:Lmcshim/sound/midi/MidiDevice;

.field private synthesizer:Lmcshim/sound/midi/Synthesizer;

.field private toLoop:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    .line 110
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->synthesizer:Lmcshim/sound/midi/Synthesizer;

    .line 115
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->synthDevice:Lmcshim/sound/midi/MidiDevice;

    .line 120
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->sequence:Lmcshim/sound/midi/Sequence;

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, p0, Lpaulscode/sound/MidiChannel;->toLoop:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 130
    iput v2, p0, Lpaulscode/sound/MidiChannel;->gain:F

    .line 135
    iput-boolean v1, p0, Lpaulscode/sound/MidiChannel;->loading:Z

    .line 140
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    .line 145
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lpaulscode/sound/MidiChannel;->sequenceQueueLock:Ljava/lang/Object;

    const/high16 v3, -0x40800000    # -1.0f

    .line 151
    iput v3, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    .line 157
    iput v2, p0, Lpaulscode/sound/MidiChannel;->fadeInGain:F

    const-wide/16 v2, 0x0

    .line 162
    iput-wide v2, p0, Lpaulscode/sound/MidiChannel;->fadeOutMilis:J

    .line 167
    iput-wide v2, p0, Lpaulscode/sound/MidiChannel;->fadeInMilis:J

    .line 172
    iput-wide v2, p0, Lpaulscode/sound/MidiChannel;->lastFadeCheck:J

    .line 177
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    .line 188
    invoke-direct {p0, v1, v1}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    .line 191
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 194
    new-instance v0, Lpaulscode/sound/FilenameURL;

    invoke-direct {v0, p3}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lpaulscode/sound/MidiChannel;->filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;

    .line 195
    invoke-direct {p0, v1, p2}, Lpaulscode/sound/MidiChannel;->sourcename(ZLjava/lang/String;)Ljava/lang/String;

    .line 196
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->setLooping(Z)V

    .line 199
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->init()V

    const/4 p1, 0x0

    .line 202
    invoke-direct {p0, v1, p1}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .registers 9

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    .line 110
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->synthesizer:Lmcshim/sound/midi/Synthesizer;

    .line 115
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->synthDevice:Lmcshim/sound/midi/MidiDevice;

    .line 120
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->sequence:Lmcshim/sound/midi/Sequence;

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, p0, Lpaulscode/sound/MidiChannel;->toLoop:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 130
    iput v2, p0, Lpaulscode/sound/MidiChannel;->gain:F

    .line 135
    iput-boolean v1, p0, Lpaulscode/sound/MidiChannel;->loading:Z

    .line 140
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    .line 145
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lpaulscode/sound/MidiChannel;->sequenceQueueLock:Ljava/lang/Object;

    const/high16 v3, -0x40800000    # -1.0f

    .line 151
    iput v3, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    .line 157
    iput v2, p0, Lpaulscode/sound/MidiChannel;->fadeInGain:F

    const-wide/16 v2, 0x0

    .line 162
    iput-wide v2, p0, Lpaulscode/sound/MidiChannel;->fadeOutMilis:J

    .line 167
    iput-wide v2, p0, Lpaulscode/sound/MidiChannel;->fadeInMilis:J

    .line 172
    iput-wide v2, p0, Lpaulscode/sound/MidiChannel;->lastFadeCheck:J

    .line 177
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    .line 218
    invoke-direct {p0, v1, v1}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    .line 221
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 224
    new-instance v0, Lpaulscode/sound/FilenameURL;

    invoke-direct {v0, p3, p4}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lpaulscode/sound/MidiChannel;->filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;

    .line 225
    invoke-direct {p0, v1, p2}, Lpaulscode/sound/MidiChannel;->sourcename(ZLjava/lang/String;)Ljava/lang/String;

    .line 226
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->setLooping(Z)V

    .line 229
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->init()V

    const/4 p1, 0x0

    .line 232
    invoke-direct {p0, v1, p1}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lpaulscode/sound/FilenameURL;)V
    .registers 8

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    .line 110
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->synthesizer:Lmcshim/sound/midi/Synthesizer;

    .line 115
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->synthDevice:Lmcshim/sound/midi/MidiDevice;

    .line 120
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->sequence:Lmcshim/sound/midi/Sequence;

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, p0, Lpaulscode/sound/MidiChannel;->toLoop:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 130
    iput v2, p0, Lpaulscode/sound/MidiChannel;->gain:F

    .line 135
    iput-boolean v1, p0, Lpaulscode/sound/MidiChannel;->loading:Z

    .line 140
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    .line 145
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lpaulscode/sound/MidiChannel;->sequenceQueueLock:Ljava/lang/Object;

    const/high16 v3, -0x40800000    # -1.0f

    .line 151
    iput v3, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    .line 157
    iput v2, p0, Lpaulscode/sound/MidiChannel;->fadeInGain:F

    const-wide/16 v2, 0x0

    .line 162
    iput-wide v2, p0, Lpaulscode/sound/MidiChannel;->fadeOutMilis:J

    .line 167
    iput-wide v2, p0, Lpaulscode/sound/MidiChannel;->fadeInMilis:J

    .line 172
    iput-wide v2, p0, Lpaulscode/sound/MidiChannel;->lastFadeCheck:J

    .line 177
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    .line 245
    invoke-direct {p0, v1, v1}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    .line 248
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 251
    invoke-direct {p0, v1, p3}, Lpaulscode/sound/MidiChannel;->filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;

    .line 252
    invoke-direct {p0, v1, p2}, Lpaulscode/sound/MidiChannel;->sourcename(ZLjava/lang/String;)Ljava/lang/String;

    .line 253
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->setLooping(Z)V

    .line 256
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->init()V

    const/4 p1, 0x0

    .line 259
    invoke-direct {p0, v1, p1}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    return-void
.end method

.method static synthetic access$100(Lpaulscode/sound/MidiChannel;)Z
    .registers 1

    .line 57
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->checkFadeOut()Z

    move-result p0

    return p0
.end method

.method private declared-synchronized checkFadeOut()Z
    .registers 13

    monitor-enter p0

    .line 503
    :try_start_1
    iget v0, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_14

    iget v0, p0, Lpaulscode/sound/MidiChannel;->fadeInGain:F
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_8d

    cmpl-float v0, v0, v3

    if-nez v0, :cond_14

    .line 504
    monitor-exit p0

    return v2

    .line 506
    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 507
    iget-wide v6, p0, Lpaulscode/sound/MidiChannel;->lastFadeCheck:J

    sub-long v6, v4, v6

    .line 508
    iput-wide v4, p0, Lpaulscode/sound/MidiChannel;->lastFadeCheck:J

    .line 510
    iget v0, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    const-wide/16 v8, 0x0

    if-ltz v5, :cond_67

    .line 512
    iget-wide v10, p0, Lpaulscode/sound/MidiChannel;->fadeOutMilis:J

    cmp-long v3, v10, v8

    if-nez v3, :cond_42

    .line 514
    iput v4, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    .line 515
    iput v4, p0, Lpaulscode/sound/MidiChannel;->fadeInGain:F

    .line 516
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->incrementSequence()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 517
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->stop()V

    .line 518
    :cond_3a
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->rewind()V

    .line 519
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->resetGain()V
    :try_end_40
    .catchall {:try_start_14 .. :try_end_40} :catchall_8d

    .line 520
    monitor-exit p0

    return v2

    :cond_42
    long-to-float v3, v6

    long-to-float v5, v10

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    .line 526
    :try_start_46
    iput v0, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_61

    .line 529
    iput v1, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    .line 530
    iput v4, p0, Lpaulscode/sound/MidiChannel;->fadeInGain:F

    .line 531
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->incrementSequence()Z

    move-result v0

    if-nez v0, :cond_59

    .line 532
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->stop()V

    .line 533
    :cond_59
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->rewind()V

    .line 534
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->resetGain()V
    :try_end_5f
    .catchall {:try_start_46 .. :try_end_5f} :catchall_8d

    .line 535
    monitor-exit p0

    return v2

    .line 538
    :cond_61
    :try_start_61
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->resetGain()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_8d

    .line 539
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 542
    :cond_67
    :try_start_67
    iget v0, p0, Lpaulscode/sound/MidiChannel;->fadeInGain:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_8b

    .line 544
    iput v1, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    .line 545
    iget-wide v4, p0, Lpaulscode/sound/MidiChannel;->fadeInMilis:J

    cmp-long v8, v4, v8

    if-nez v8, :cond_7a

    .line 547
    iput v1, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    .line 548
    iput v3, p0, Lpaulscode/sound/MidiChannel;->fadeInGain:F

    goto :goto_88

    :cond_7a
    long-to-float v6, v6

    long-to-float v4, v4

    div-float/2addr v6, v4

    add-float/2addr v0, v6

    .line 553
    iput v0, p0, Lpaulscode/sound/MidiChannel;->fadeInGain:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_88

    .line 556
    iput v1, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    .line 557
    iput v3, p0, Lpaulscode/sound/MidiChannel;->fadeInGain:F

    .line 560
    :cond_88
    :goto_88
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->resetGain()V
    :try_end_8b
    .catchall {:try_start_67 .. :try_end_8b} :catchall_8d

    .line 563
    :cond_8b
    monitor-exit p0

    return v2

    :catchall_8d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1015
    :try_start_4
    iput-object p2, p0, Lpaulscode/sound/MidiChannel;->filenameURL:Lpaulscode/sound/FilenameURL;

    .line 1016
    :cond_6
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->filenameURL:Lpaulscode/sound/FilenameURL;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getSequencer()V
    .registers 2

    .line 1177
    :try_start_0
    invoke-static {}, Lmcshim/sound/midi/MidiSystem;->getSequencer()Lmcshim/sound/midi/Sequencer;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;
    :try_end_6
    .catch Lmcshim/sound/midi/MidiUnavailableException; {:try_start_0 .. :try_end_6} :catch_17

    if-eqz v0, :cond_1f

    .line 1182
    :try_start_8
    invoke-interface {v0}, Lmcshim/sound/midi/Sequencer;->getTransmitter()Lmcshim/sound/midi/Transmitter;
    :try_end_b
    .catch Lmcshim/sound/midi/MidiUnavailableException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_11

    :catch_c
    :try_start_c
    const-string v0, "Unable to get a transmitter from the default MIDI sequencer"

    .line 1186
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->message(Ljava/lang/String;)V

    .line 1189
    :goto_11
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v0}, Lmcshim/sound/midi/Sequencer;->open()V
    :try_end_16
    .catch Lmcshim/sound/midi/MidiUnavailableException; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    const-string v0, "Unable to open the default MIDI sequencer"

    .line 1194
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->message(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1195
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    .line 1198
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-nez v0, :cond_2b

    const-string v0, "Real Time Sequencer"

    .line 1199
    invoke-direct {p0, v0}, Lpaulscode/sound/MidiChannel;->openSequencer(Ljava/lang/String;)Lmcshim/sound/midi/Sequencer;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    .line 1200
    :cond_2b
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-nez v0, :cond_37

    const-string v0, "Java Sound Sequencer"

    .line 1201
    invoke-direct {p0, v0}, Lpaulscode/sound/MidiChannel;->openSequencer(Ljava/lang/String;)Lmcshim/sound/midi/Sequencer;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    .line 1202
    :cond_37
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-nez v0, :cond_40

    const-string v0, "Failed to find an available MIDI sequencer"

    .line 1204
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method private getSynthesizer()V
    .registers 3

    .line 1284
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-nez v0, :cond_a

    const-string v0, "Unable to load a Synthesizer in method \'getSynthesizer\', because variable \'sequencer\' is null"

    .line 1286
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 1292
    :cond_a
    instance-of v1, v0, Lmcshim/sound/midi/Synthesizer;

    if-eqz v1, :cond_14

    .line 1294
    check-cast v0, Lmcshim/sound/midi/Synthesizer;

    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->synthesizer:Lmcshim/sound/midi/Synthesizer;

    goto/16 :goto_9b

    .line 1300
    :cond_14
    :try_start_14
    invoke-static {}, Lmcshim/sound/midi/MidiSystem;->getSynthesizer()Lmcshim/sound/midi/Synthesizer;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->synthesizer:Lmcshim/sound/midi/Synthesizer;

    .line 1301
    invoke-interface {v0}, Lmcshim/sound/midi/Synthesizer;->open()V
    :try_end_1d
    .catch Lmcshim/sound/midi/MidiUnavailableException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_26

    :catch_1e
    const-string v0, "Unable to open the default synthesizer"

    .line 1305
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->message(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1306
    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->synthesizer:Lmcshim/sound/midi/Synthesizer;

    .line 1309
    :goto_26
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->synthesizer:Lmcshim/sound/midi/Synthesizer;

    if-nez v0, :cond_52

    const-string v0, "Java Sound Synthesizer"

    .line 1311
    invoke-direct {p0, v0}, Lpaulscode/sound/MidiChannel;->openMidiDevice(Ljava/lang/String;)Lmcshim/sound/midi/MidiDevice;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->synthDevice:Lmcshim/sound/midi/MidiDevice;

    if-nez v0, :cond_3c

    const-string v0, "Microsoft GS Wavetable"

    .line 1313
    invoke-direct {p0, v0}, Lpaulscode/sound/MidiChannel;->openMidiDevice(Ljava/lang/String;)Lmcshim/sound/midi/MidiDevice;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->synthDevice:Lmcshim/sound/midi/MidiDevice;

    .line 1314
    :cond_3c
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->synthDevice:Lmcshim/sound/midi/MidiDevice;

    if-nez v0, :cond_48

    const-string v0, "Gervill"

    .line 1315
    invoke-direct {p0, v0}, Lpaulscode/sound/MidiChannel;->openMidiDevice(Ljava/lang/String;)Lmcshim/sound/midi/MidiDevice;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/MidiChannel;->synthDevice:Lmcshim/sound/midi/MidiDevice;

    .line 1316
    :cond_48
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->synthDevice:Lmcshim/sound/midi/MidiDevice;

    if-nez v0, :cond_52

    const-string v0, "Failed to find an available MIDI synthesizer"

    .line 1318
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 1324
    :cond_52
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->synthesizer:Lmcshim/sound/midi/Synthesizer;

    if-nez v0, :cond_6c

    .line 1328
    :try_start_56
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v0}, Lmcshim/sound/midi/Sequencer;->getTransmitter()Lmcshim/sound/midi/Transmitter;

    move-result-object v0

    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->synthDevice:Lmcshim/sound/midi/MidiDevice;

    invoke-interface {v1}, Lmcshim/sound/midi/MidiDevice;->getReceiver()Lmcshim/sound/midi/Receiver;

    move-result-object v1

    invoke-interface {v0, v1}, Lmcshim/sound/midi/Transmitter;->setReceiver(Lmcshim/sound/midi/Receiver;)V
    :try_end_65
    .catch Lmcshim/sound/midi/MidiUnavailableException; {:try_start_56 .. :try_end_65} :catch_66

    goto :goto_9b

    :catch_66
    const-string v0, "Unable to link sequencer transmitter with MIDI device receiver"

    .line 1333
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    goto :goto_9b

    .line 1339
    :cond_6c
    invoke-interface {v0}, Lmcshim/sound/midi/Synthesizer;->getDefaultSoundbank()Lmcshim/sound/midi/Soundbank;

    move-result-object v0

    if-nez v0, :cond_86

    .line 1343
    :try_start_72
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v0}, Lmcshim/sound/midi/Sequencer;->getTransmitter()Lmcshim/sound/midi/Transmitter;

    move-result-object v0

    invoke-static {}, Lmcshim/sound/midi/MidiSystem;->getReceiver()Lmcshim/sound/midi/Receiver;

    move-result-object v1

    invoke-interface {v0, v1}, Lmcshim/sound/midi/Transmitter;->setReceiver(Lmcshim/sound/midi/Receiver;)V
    :try_end_7f
    .catch Lmcshim/sound/midi/MidiUnavailableException; {:try_start_72 .. :try_end_7f} :catch_80

    goto :goto_9b

    :catch_80
    const-string v0, "Unable to link sequencer transmitter with default receiver"

    .line 1348
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    goto :goto_9b

    .line 1356
    :cond_86
    :try_start_86
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v0}, Lmcshim/sound/midi/Sequencer;->getTransmitter()Lmcshim/sound/midi/Transmitter;

    move-result-object v0

    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->synthesizer:Lmcshim/sound/midi/Synthesizer;

    invoke-interface {v1}, Lmcshim/sound/midi/Synthesizer;->getReceiver()Lmcshim/sound/midi/Receiver;

    move-result-object v1

    invoke-interface {v0, v1}, Lmcshim/sound/midi/Transmitter;->setReceiver(Lmcshim/sound/midi/Receiver;)V
    :try_end_95
    .catch Lmcshim/sound/midi/MidiUnavailableException; {:try_start_86 .. :try_end_95} :catch_96

    goto :goto_9b

    :catch_96
    const-string v0, "Unable to link sequencer transmitter with synthesizer receiver"

    .line 1361
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    :goto_9b
    return-void
.end method

.method private incrementSequence()Z
    .registers 7

    .line 572
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequenceQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_3
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    const/4 v2, 0x0

    if-eqz v1, :cond_65

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_65

    .line 578
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpaulscode/sound/FilenameURL;

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lpaulscode/sound/MidiChannel;->filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;

    .line 581
    invoke-direct {p0, v3, v3}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    .line 584
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-nez v1, :cond_25

    .line 587
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->getSequencer()V

    goto :goto_39

    .line 592
    :cond_25
    invoke-interface {v1}, Lmcshim/sound/midi/Sequencer;->stop()V

    .line 594
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v4, v5}, Lmcshim/sound/midi/Sequencer;->setMicrosecondPosition(J)V

    .line 596
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v1, p0}, Lmcshim/sound/midi/Sequencer;->removeMetaEventListener(Lmcshim/sound/midi/MetaEventListener;)V
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_67

    const-wide/16 v4, 0x64

    .line 598
    :try_start_36
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_39} :catch_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_67

    .line 601
    :catch_39
    :goto_39
    :try_start_39
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-nez v1, :cond_47

    const-string v1, "Unable to set the sequence in method \'incrementSequence\', because there wasn\'t a sequencer to use."

    .line 603
    invoke-virtual {p0, v1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    .line 608
    invoke-direct {p0, v3, v2}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    .line 611
    monitor-exit v0

    return v2

    :cond_47
    const/4 v1, 0x0

    .line 614
    invoke-direct {p0, v2, v1}, Lpaulscode/sound/MidiChannel;->filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;

    move-result-object v1

    invoke-virtual {v1}, Lpaulscode/sound/FilenameURL;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v1}, Lpaulscode/sound/MidiChannel;->setSequence(Ljava/net/URL;)V

    .line 616
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v1}, Lmcshim/sound/midi/Sequencer;->start()V

    .line 619
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->resetGain()V

    .line 621
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v1, p0}, Lmcshim/sound/midi/Sequencer;->addMetaEventListener(Lmcshim/sound/midi/MetaEventListener;)Z

    .line 624
    invoke-direct {p0, v3, v2}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    .line 627
    monitor-exit v0

    return v3

    .line 629
    :cond_65
    monitor-exit v0

    return v2

    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_39 .. :try_end_69} :catchall_67

    throw v1
.end method

.method private init()V
    .registers 3

    .line 268
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->getSequencer()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 271
    invoke-direct {p0, v0, v1}, Lpaulscode/sound/MidiChannel;->filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;

    move-result-object v0

    invoke-virtual {v0}, Lpaulscode/sound/FilenameURL;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lpaulscode/sound/MidiChannel;->setSequence(Ljava/net/URL;)V

    .line 274
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->getSynthesizer()V

    .line 278
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->resetGain()V

    return-void
.end method

.method private declared-synchronized loading(ZZ)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 943
    :try_start_4
    iput-boolean p2, p0, Lpaulscode/sound/MidiChannel;->loading:Z

    .line 944
    :cond_6
    iget-boolean p1, p0, Lpaulscode/sound/MidiChannel;->loading:Z
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private openMidiDevice(Ljava/lang/String;)Lmcshim/sound/midi/MidiDevice;
    .registers 8

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Searching for MIDI device with name containing \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->message(Ljava/lang/String;)V

    .line 1405
    invoke-static {}, Lmcshim/sound/midi/MidiSystem;->getMidiDeviceInfo()[Lmcshim/sound/midi/MidiDevice$Info;

    move-result-object v0

    const/4 v2, 0x0

    .line 1406
    :goto_1b
    array-length v3, v0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_74

    .line 1411
    :try_start_1f
    aget-object v3, v0, v2

    invoke-static {v3}, Lmcshim/sound/midi/MidiSystem;->getMidiDevice(Lmcshim/sound/midi/MidiDevice$Info;)Lmcshim/sound/midi/MidiDevice;

    move-result-object v3
    :try_end_25
    .catch Lmcshim/sound/midi/MidiUnavailableException; {:try_start_1f .. :try_end_25} :catch_26

    goto :goto_2c

    :catch_26
    const-string v3, "    Problem in method \'getMidiDevice\':  MIDIUnavailableException was thrown"

    .line 1415
    invoke-virtual {p0, v3}, Lpaulscode/sound/MidiChannel;->message(Ljava/lang/String;)V

    move-object v3, v4

    :goto_2c
    if-eqz v3, :cond_71

    .line 1419
    aget-object v5, v0, v2

    invoke-virtual {v5}, Lmcshim/sound/midi/MidiDevice$Info;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 1422
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "    Found MIDI device named \'"

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lmcshim/sound/midi/MidiDevice$Info;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->message(Ljava/lang/String;)V

    .line 1424
    instance-of p1, v3, Lmcshim/sound/midi/Synthesizer;

    if-eqz p1, :cond_5d

    const-string p1, "        *this is a Synthesizer instance"

    .line 1425
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->message(Ljava/lang/String;)V

    .line 1426
    :cond_5d
    instance-of p1, v3, Lmcshim/sound/midi/Sequencer;

    if-eqz p1, :cond_66

    const-string p1, "        *this is a Sequencer instance"

    .line 1427
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->message(Ljava/lang/String;)V

    .line 1430
    :cond_66
    :try_start_66
    invoke-interface {v3}, Lmcshim/sound/midi/MidiDevice;->open()V
    :try_end_69
    .catch Lmcshim/sound/midi/MidiUnavailableException; {:try_start_66 .. :try_end_69} :catch_6b

    move-object v4, v3

    goto :goto_70

    :catch_6b
    const-string p1, "    Unable to open this MIDI device"

    .line 1434
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->message(Ljava/lang/String;)V

    :goto_70
    return-object v4

    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_74
    const-string p1, "    MIDI device not found"

    .line 1440
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->message(Ljava/lang/String;)V

    return-object v4
.end method

.method private openSequencer(Ljava/lang/String;)Lmcshim/sound/midi/Sequencer;
    .registers 3

    .line 1377
    invoke-direct {p0, p1}, Lpaulscode/sound/MidiChannel;->openMidiDevice(Ljava/lang/String;)Lmcshim/sound/midi/MidiDevice;

    move-result-object p1

    check-cast p1, Lmcshim/sound/midi/Sequencer;

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 1382
    :cond_a
    :try_start_a
    invoke-interface {p1}, Lmcshim/sound/midi/Sequencer;->getTransmitter()Lmcshim/sound/midi/Transmitter;
    :try_end_d
    .catch Lmcshim/sound/midi/MidiUnavailableException; {:try_start_a .. :try_end_d} :catch_e

    return-object p1

    :catch_e
    const-string p1, "    Unable to get a transmitter from this sequencer"

    .line 1386
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->message(Ljava/lang/String;)V

    return-object v0
.end method

.method private reset()V
    .registers 4

    .line 852
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequenceQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_3
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_a

    .line 855
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 856
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_4c

    .line 859
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-nez v0, :cond_13

    .line 862
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->getSequencer()V

    goto :goto_27

    .line 867
    :cond_13
    invoke-interface {v0}, Lmcshim/sound/midi/Sequencer;->stop()V

    .line 869
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lmcshim/sound/midi/Sequencer;->setMicrosecondPosition(J)V

    .line 871
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v0, p0}, Lmcshim/sound/midi/Sequencer;->removeMetaEventListener(Lmcshim/sound/midi/MetaEventListener;)V

    const-wide/16 v0, 0x64

    .line 873
    :try_start_24
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_27

    .line 876
    :catch_27
    :goto_27
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-nez v0, :cond_31

    const-string v0, "Unable to set the sequence in method \'reset\', because there wasn\'t a sequencer to use."

    .line 878
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_31
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 885
    invoke-direct {p0, v0, v1}, Lpaulscode/sound/MidiChannel;->filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;

    move-result-object v0

    invoke-virtual {v0}, Lpaulscode/sound/FilenameURL;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lpaulscode/sound/MidiChannel;->setSequence(Ljava/net/URL;)V

    .line 887
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v0}, Lmcshim/sound/midi/Sequencer;->start()V

    .line 890
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->resetGain()V

    .line 892
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v0, p0}, Lmcshim/sound/midi/Sequencer;->addMetaEventListener(Lmcshim/sound/midi/MetaEventListener;)Z

    return-void

    :catchall_4c
    move-exception v1

    .line 856
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private setSequence(Ljava/net/URL;)V
    .registers 3

    .line 1217
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-nez v0, :cond_a

    const-string p1, "Unable to update the sequence in method \'setSequence\', because variable \'sequencer\' is null"

    .line 1219
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez p1, :cond_12

    const-string p1, "Unable to load Midi file in method \'setSequence\'."

    .line 1227
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 1233
    :cond_12
    :try_start_12
    invoke-static {p1}, Lmcshim/sound/midi/MidiSystem;->getSequence(Ljava/net/URL;)Lmcshim/sound/midi/Sequence;

    move-result-object p1

    iput-object p1, p0, Lpaulscode/sound/MidiChannel;->sequence:Lmcshim/sound/midi/Sequence;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_44
    .catch Lmcshim/sound/midi/InvalidMidiDataException; {:try_start_12 .. :try_end_18} :catch_3a

    if-nez p1, :cond_20

    const-string p1, "MidiSystem \'getSequence\' method returned null in method \'setSequence\'."

    .line 1251
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    goto :goto_25

    .line 1258
    :cond_20
    :try_start_20
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v0, p1}, Lmcshim/sound/midi/Sequencer;->setSequence(Lmcshim/sound/midi/Sequence;)V
    :try_end_25
    .catch Lmcshim/sound/midi/InvalidMidiDataException; {:try_start_20 .. :try_end_25} :catch_30
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception p1

    const-string v0, "Problem setting sequence from MIDI file in method \'setSequence\'."

    .line 1269
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->printStackTrace(Ljava/lang/Exception;)V

    return-void

    :catch_30
    move-exception p1

    const-string v0, "Invalid MIDI data encountered, or not a MIDI file in method \'setSequence\' (2)."

    .line 1262
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->printStackTrace(Ljava/lang/Exception;)V

    return-void

    :catch_3a
    move-exception p1

    const-string v0, "Invalid MIDI data encountered, or not a MIDI file in method \'setSequence\' (1)."

    .line 1244
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->printStackTrace(Ljava/lang/Exception;)V

    return-void

    :catch_44
    move-exception p1

    const-string v0, "Input failed while reading from MIDI file in method \'setSequence\'."

    .line 1237
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->printStackTrace(Ljava/lang/Exception;)V

    return-void
.end method

.method private declared-synchronized sourcename(ZLjava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 974
    :try_start_4
    iput-object p2, p0, Lpaulscode/sound/MidiChannel;->sourcename:Ljava/lang/String;

    .line 975
    :cond_6
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->sourcename:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized toLoop(ZZ)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 922
    :try_start_4
    iput-boolean p2, p0, Lpaulscode/sound/MidiChannel;->toLoop:Z

    .line 923
    :cond_6
    iget-boolean p1, p0, Lpaulscode/sound/MidiChannel;->toLoop:Z
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
.method public cleanup()V
    .registers 8

    const/4 v0, 0x1

    .line 286
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    .line 287
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->setLooping(Z)V

    .line 289
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-eqz v1, :cond_18

    .line 293
    :try_start_b
    invoke-interface {v1}, Lmcshim/sound/midi/Sequencer;->stop()V

    .line 294
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v1}, Lmcshim/sound/midi/Sequencer;->close()V

    .line 295
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v1, p0}, Lmcshim/sound/midi/Sequencer;->removeMetaEventListener(Lmcshim/sound/midi/MetaEventListener;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    const/4 v1, 0x0

    .line 301
    iput-object v1, p0, Lpaulscode/sound/MidiChannel;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 302
    iput-object v1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    .line 303
    iput-object v1, p0, Lpaulscode/sound/MidiChannel;->synthesizer:Lmcshim/sound/midi/Synthesizer;

    .line 304
    iput-object v1, p0, Lpaulscode/sound/MidiChannel;->sequence:Lmcshim/sound/midi/Sequence;

    .line 306
    iget-object v2, p0, Lpaulscode/sound/MidiChannel;->sequenceQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    :try_start_24
    iget-object v3, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    if-eqz v3, :cond_2b

    .line 309
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 310
    :cond_2b
    iput-object v1, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    .line 311
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_70

    .line 314
    iget-object v2, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    const/4 v3, 0x0

    if-eqz v2, :cond_6a

    .line 319
    :try_start_33
    invoke-virtual {v2}, Lpaulscode/sound/MidiChannel$FadeThread;->kill()V

    .line 320
    iget-object v2, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    invoke-virtual {v2}, Lpaulscode/sound/MidiChannel$FadeThread;->interrupt()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_3d

    move v2, v3

    goto :goto_3e

    :catch_3d
    move v2, v0

    :goto_3e
    if-nez v2, :cond_56

    move v4, v3

    :goto_41
    const/16 v5, 0x32

    if-ge v4, v5, :cond_56

    .line 332
    iget-object v5, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    invoke-virtual {v5}, Lpaulscode/sound/MidiChannel$FadeThread;->alive()Z

    move-result v5

    if-nez v5, :cond_4e

    goto :goto_56

    :cond_4e
    const-wide/16 v5, 0x64

    .line 334
    :try_start_50
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_53} :catch_53

    :catch_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_56
    :goto_56
    if-nez v2, :cond_60

    .line 339
    iget-object v2, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    invoke-virtual {v2}, Lpaulscode/sound/MidiChannel$FadeThread;->alive()Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_60
    const-string v2, "MIDI fade effects thread did not die!"

    .line 341
    invoke-virtual {p0, v2}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    const-string v2, "Ignoring errors... continuing clean-up."

    .line 342
    invoke-virtual {p0, v2}, Lpaulscode/sound/MidiChannel;->message(Ljava/lang/String;)V

    .line 346
    :cond_6a
    iput-object v1, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    .line 348
    invoke-direct {p0, v0, v3}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    return-void

    :catchall_70
    move-exception v0

    .line 311
    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v0
.end method

.method public dequeueSound(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_34

    const-string v0, ""

    .line 379
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_34

    .line 385
    :cond_b
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequenceQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_e
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_2f

    .line 389
    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 390
    :cond_16
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 392
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpaulscode/sound/FilenameURL;

    invoke-virtual {v2}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 394
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 399
    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_31

    throw p1

    :cond_34
    :goto_34
    const-string p1, "Filename not specified in method \'dequeueSound\'"

    .line 381
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    return-void
.end method

.method protected errorCheck(ZLjava/lang/String;)Z
    .registers 6

    .line 1470
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->logger:Lpaulscode/sound/SoundSystemLogger;

    const-string v1, "MidiChannel"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lpaulscode/sound/SoundSystemLogger;->errorCheck(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected errorMessage(Ljava/lang/String;)V
    .registers 5

    .line 1479
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->logger:Lpaulscode/sound/SoundSystemLogger;

    const-string v1, "MidiChannel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lpaulscode/sound/SoundSystemLogger;->errorMessage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public fadeOut(Lpaulscode/sound/FilenameURL;J)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_c

    const-string p1, "Miliseconds may not be negative in method \'fadeOut\'."

    .line 417
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 422
    :cond_c
    iput-wide p2, p0, Lpaulscode/sound/MidiChannel;->fadeOutMilis:J

    .line 423
    iput-wide v0, p0, Lpaulscode/sound/MidiChannel;->fadeInMilis:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 424
    iput p2, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lpaulscode/sound/MidiChannel;->lastFadeCheck:J

    .line 427
    iget-object p2, p0, Lpaulscode/sound/MidiChannel;->sequenceQueueLock:Ljava/lang/Object;

    monitor-enter p2

    .line 429
    :try_start_1d
    iget-object p3, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    if-eqz p3, :cond_24

    .line 430
    invoke-virtual {p3}, Ljava/util/LinkedList;->clear()V

    :cond_24
    if-eqz p1, :cond_36

    .line 434
    iget-object p3, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    if-nez p3, :cond_31

    .line 435
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    .line 436
    :cond_31
    iget-object p3, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_36
    monitor-exit p2
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_4c

    .line 439
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    if-nez p1, :cond_46

    .line 441
    new-instance p1, Lpaulscode/sound/MidiChannel$FadeThread;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lpaulscode/sound/MidiChannel$FadeThread;-><init>(Lpaulscode/sound/MidiChannel;Lpaulscode/sound/MidiChannel$1;)V

    iput-object p1, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    .line 442
    invoke-virtual {p1}, Lpaulscode/sound/MidiChannel$FadeThread;->start()V

    .line 444
    :cond_46
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    invoke-virtual {p1}, Lpaulscode/sound/MidiChannel$FadeThread;->interrupt()V

    return-void

    :catchall_4c
    move-exception p1

    .line 438
    :try_start_4d
    monitor-exit p2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public fadeOutIn(Lpaulscode/sound/FilenameURL;JJ)V
    .registers 9

    if-nez p1, :cond_8

    const-string p1, "Filename/URL not specified in method \'fadeOutIn\'."

    .line 464
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    return-void

    :cond_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_52

    cmp-long v0, p4, v0

    if-gez v0, :cond_13

    goto :goto_52

    .line 474
    :cond_13
    iput-wide p2, p0, Lpaulscode/sound/MidiChannel;->fadeOutMilis:J

    .line 475
    iput-wide p4, p0, Lpaulscode/sound/MidiChannel;->fadeInMilis:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 476
    iput p2, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lpaulscode/sound/MidiChannel;->lastFadeCheck:J

    .line 479
    iget-object p2, p0, Lpaulscode/sound/MidiChannel;->sequenceQueueLock:Ljava/lang/Object;

    monitor-enter p2

    .line 481
    :try_start_24
    iget-object p3, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    if-nez p3, :cond_2f

    .line 482
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    .line 483
    :cond_2f
    iget-object p3, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->clear()V

    .line 484
    iget-object p3, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 485
    monitor-exit p2
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_4f

    .line 486
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    if-nez p1, :cond_49

    .line 488
    new-instance p1, Lpaulscode/sound/MidiChannel$FadeThread;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lpaulscode/sound/MidiChannel$FadeThread;-><init>(Lpaulscode/sound/MidiChannel;Lpaulscode/sound/MidiChannel$1;)V

    iput-object p1, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    .line 489
    invoke-virtual {p1}, Lpaulscode/sound/MidiChannel$FadeThread;->start()V

    .line 491
    :cond_49
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->fadeThread:Lpaulscode/sound/MidiChannel$FadeThread;

    invoke-virtual {p1}, Lpaulscode/sound/MidiChannel$FadeThread;->interrupt()V

    return-void

    :catchall_4f
    move-exception p1

    .line 485
    :try_start_50
    monitor-exit p2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p1

    :cond_52
    :goto_52
    const-string p1, "Miliseconds may not be negative in method \'fadeOutIn\'."

    .line 469
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public getFilename()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 993
    invoke-direct {p0, v0, v1}, Lpaulscode/sound/MidiChannel;->filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;

    move-result-object v0

    invoke-virtual {v0}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilenameURL()Lpaulscode/sound/FilenameURL;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1002
    invoke-direct {p0, v0, v1}, Lpaulscode/sound/MidiChannel;->filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;

    move-result-object v0

    return-object v0
.end method

.method public getLooping()Z
    .registers 2

    const/4 v0, 0x0

    .line 910
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/MidiChannel;->toLoop(ZZ)Z

    move-result v0

    return v0
.end method

.method public getSourcename()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 962
    invoke-direct {p0, v0, v1}, Lpaulscode/sound/MidiChannel;->sourcename(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .registers 2

    .line 766
    iget v0, p0, Lpaulscode/sound/MidiChannel;->gain:F

    return v0
.end method

.method protected importantMessage(Ljava/lang/String;)V
    .registers 4

    .line 1459
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->importantMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public loading()Z
    .registers 2

    const/4 v0, 0x0

    .line 931
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    move-result v0

    return v0
.end method

.method protected message(Ljava/lang/String;)V
    .registers 4

    .line 1450
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->message(Ljava/lang/String;I)V

    return-void
.end method

.method public meta(Lmcshim/sound/midi/MetaMessage;)V
    .registers 4

    .line 1025
    invoke-virtual {p1}, Lmcshim/sound/midi/MetaMessage;->getType()I

    move-result p1

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_63

    .line 1028
    iget-boolean p1, p0, Lpaulscode/sound/MidiChannel;->toLoop:Z

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_38

    .line 1032
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->checkFadeOut()Z

    move-result p1

    if-nez p1, :cond_28

    .line 1036
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->incrementSequence()Z

    move-result p1

    if-nez p1, :cond_63

    .line 1041
    :try_start_1a
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {p1, v0, v1}, Lmcshim/sound/midi/Sequencer;->setMicrosecondPosition(J)V

    .line 1042
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {p1}, Lmcshim/sound/midi/Sequencer;->start()V

    .line 1044
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->resetGain()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_27} :catch_63

    goto :goto_63

    .line 1049
    :cond_28
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-eqz p1, :cond_63

    .line 1054
    :try_start_2c
    invoke-interface {p1, v0, v1}, Lmcshim/sound/midi/Sequencer;->setMicrosecondPosition(J)V

    .line 1055
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {p1}, Lmcshim/sound/midi/Sequencer;->start()V

    .line 1057
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->resetGain()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_63

    goto :goto_63

    .line 1065
    :cond_38
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->checkFadeOut()Z

    move-result p1

    if-nez p1, :cond_54

    .line 1067
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->incrementSequence()Z

    move-result p1

    if-nez p1, :cond_63

    .line 1072
    :try_start_44
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {p1}, Lmcshim/sound/midi/Sequencer;->stop()V

    .line 1074
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {p1, v0, v1}, Lmcshim/sound/midi/Sequencer;->setMicrosecondPosition(J)V

    .line 1076
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {p1, p0}, Lmcshim/sound/midi/Sequencer;->removeMetaEventListener(Lmcshim/sound/midi/MetaEventListener;)V

    goto :goto_63

    .line 1086
    :cond_54
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {p1}, Lmcshim/sound/midi/Sequencer;->stop()V

    .line 1088
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {p1, v0, v1}, Lmcshim/sound/midi/Sequencer;->setMicrosecondPosition(J)V

    .line 1090
    iget-object p1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {p1, p0}, Lmcshim/sound/midi/Sequencer;->removeMetaEventListener(Lmcshim/sound/midi/MetaEventListener;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_63} :catch_63

    :catch_63
    :cond_63
    :goto_63
    return-void
.end method

.method public pause()V
    .registers 3

    .line 701
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->loading()Z

    move-result v0

    if-nez v0, :cond_24

    .line 704
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-nez v0, :cond_b

    return-void

    .line 710
    :cond_b
    :try_start_b
    invoke-interface {v0}, Lmcshim/sound/midi/Sequencer;->stop()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_24

    :catch_f
    move-exception v0

    const-string v1, "Exception in method \'pause\'"

    .line 714
    invoke-virtual {p0, v1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->printStackTrace(Ljava/lang/Exception;)V

    .line 716
    new-instance v1, Lpaulscode/sound/SoundSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-static {v1}, Lpaulscode/sound/SoundSystem;->setException(Lpaulscode/sound/SoundSystemException;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public play()V
    .registers 3

    .line 641
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->loading()Z

    move-result v0

    if-nez v0, :cond_29

    .line 644
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-nez v0, :cond_b

    return-void

    .line 650
    :cond_b
    :try_start_b
    invoke-interface {v0}, Lmcshim/sound/midi/Sequencer;->start()V

    .line 652
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v0, p0}, Lmcshim/sound/midi/Sequencer;->addMetaEventListener(Lmcshim/sound/midi/MetaEventListener;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_29

    :catch_14
    move-exception v0

    const-string v1, "Exception in method \'play\'"

    .line 656
    invoke-virtual {p0, v1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->printStackTrace(Ljava/lang/Exception;)V

    .line 658
    new-instance v1, Lpaulscode/sound/SoundSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;)V

    .line 660
    invoke-static {v1}, Lpaulscode/sound/SoundSystem;->setException(Lpaulscode/sound/SoundSystemException;)V

    :cond_29
    :goto_29
    return-void
.end method

.method protected printStackTrace(Ljava/lang/Exception;)V
    .registers 4

    .line 1488
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->printStackTrace(Ljava/lang/Exception;I)V

    return-void
.end method

.method public queueSound(Lpaulscode/sound/FilenameURL;)V
    .registers 4

    if-nez p1, :cond_8

    const-string p1, "Filename/URL not specified in method \'queueSound\'"

    .line 359
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 363
    :cond_8
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequenceQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_b
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    if-nez v1, :cond_16

    .line 366
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    .line 367
    :cond_16
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequenceQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 368
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public resetGain()V
    .registers 10

    .line 1104
    iget v0, p0, Lpaulscode/sound/MidiChannel;->gain:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 1105
    iput v1, p0, Lpaulscode/sound/MidiChannel;->gain:F

    .line 1106
    :cond_9
    iget v0, p0, Lpaulscode/sound/MidiChannel;->gain:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    .line 1107
    iput v1, p0, Lpaulscode/sound/MidiChannel;->gain:F

    .line 1109
    :cond_13
    iget v0, p0, Lpaulscode/sound/MidiChannel;->gain:F

    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getMasterGain()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lpaulscode/sound/MidiChannel;->fadeInGain:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42fe0000    # 127.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1112
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->synthesizer:Lmcshim/sound/midi/Synthesizer;

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eqz v1, :cond_3f

    .line 1114
    invoke-interface {v1}, Lmcshim/sound/midi/Synthesizer;->getChannels()[Lmcshim/sound/midi/MidiChannel;

    move-result-object v1

    :goto_32
    if-eqz v1, :cond_a3

    .line 1115
    array-length v4, v1

    if-ge v3, v4, :cond_a3

    .line 1117
    aget-object v4, v1, v3

    invoke-interface {v4, v2, v0}, Lmcshim/sound/midi/MidiChannel;->controlChange(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 1120
    :cond_3f
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->synthDevice:Lmcshim/sound/midi/MidiDevice;

    const-wide/16 v4, -0x1

    const/16 v6, 0xb0

    const/16 v7, 0x10

    if-eqz v1, :cond_69

    .line 1124
    :try_start_49
    new-instance v1, Lmcshim/sound/midi/ShortMessage;

    invoke-direct {v1}, Lmcshim/sound/midi/ShortMessage;-><init>()V

    :goto_4e
    if-ge v3, v7, :cond_a3

    .line 1127
    invoke-virtual {v1, v6, v3, v2, v0}, Lmcshim/sound/midi/ShortMessage;->setMessage(IIII)V

    .line 1129
    iget-object v8, p0, Lpaulscode/sound/MidiChannel;->synthDevice:Lmcshim/sound/midi/MidiDevice;

    invoke-interface {v8}, Lmcshim/sound/midi/MidiDevice;->getReceiver()Lmcshim/sound/midi/Receiver;

    move-result-object v8

    invoke-interface {v8, v1, v4, v5}, Lmcshim/sound/midi/Receiver;->send(Lmcshim/sound/midi/MidiMessage;J)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5c} :catch_5f

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :catch_5f
    move-exception v0

    const-string v1, "Error resetting gain on MIDI device"

    .line 1134
    invoke-virtual {p0, v1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_a3

    .line 1138
    :cond_69
    iget-object v1, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-eqz v1, :cond_86

    instance-of v8, v1, Lmcshim/sound/midi/Synthesizer;

    if-eqz v8, :cond_86

    .line 1140
    check-cast v1, Lmcshim/sound/midi/Synthesizer;

    iput-object v1, p0, Lpaulscode/sound/MidiChannel;->synthesizer:Lmcshim/sound/midi/Synthesizer;

    .line 1141
    invoke-interface {v1}, Lmcshim/sound/midi/Synthesizer;->getChannels()[Lmcshim/sound/midi/MidiChannel;

    move-result-object v1

    :goto_79
    if-eqz v1, :cond_a3

    .line 1142
    array-length v4, v1

    if-ge v3, v4, :cond_a3

    .line 1144
    aget-object v4, v1, v3

    invoke-interface {v4, v2, v0}, Lmcshim/sound/midi/MidiChannel;->controlChange(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    .line 1151
    :cond_86
    :try_start_86
    invoke-static {}, Lmcshim/sound/midi/MidiSystem;->getReceiver()Lmcshim/sound/midi/Receiver;

    move-result-object v1

    .line 1152
    new-instance v8, Lmcshim/sound/midi/ShortMessage;

    invoke-direct {v8}, Lmcshim/sound/midi/ShortMessage;-><init>()V

    :goto_8f
    if-ge v3, v7, :cond_a3

    .line 1155
    invoke-virtual {v8, v6, v3, v2, v0}, Lmcshim/sound/midi/ShortMessage;->setMessage(IIII)V

    .line 1157
    invoke-interface {v1, v8, v4, v5}, Lmcshim/sound/midi/Receiver;->send(Lmcshim/sound/midi/MidiMessage;J)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_97} :catch_9a

    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    :catch_9a
    move-exception v0

    const-string v1, "Error resetting gain on default receiver"

    .line 1162
    invoke-virtual {p0, v1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->printStackTrace(Ljava/lang/Exception;)V

    :cond_a3
    :goto_a3
    return-void
.end method

.method public rewind()V
    .registers 4

    .line 728
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->loading()Z

    move-result v0

    if-nez v0, :cond_26

    .line 731
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-wide/16 v1, 0x0

    .line 737
    :try_start_d
    invoke-interface {v0, v1, v2}, Lmcshim/sound/midi/Sequencer;->setMicrosecondPosition(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_26

    :catch_11
    move-exception v0

    const-string v1, "Exception in method \'rewind\'"

    .line 741
    invoke-virtual {p0, v1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->printStackTrace(Ljava/lang/Exception;)V

    .line 743
    new-instance v1, Lpaulscode/sound/SoundSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-static {v1}, Lpaulscode/sound/SoundSystem;->setException(Lpaulscode/sound/SoundSystemException;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public setFilenameURL(Lpaulscode/sound/FilenameURL;)V
    .registers 3

    const/4 v0, 0x1

    .line 984
    invoke-direct {p0, v0, p1}, Lpaulscode/sound/MidiChannel;->filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;

    return-void
.end method

.method public setLooping(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 901
    invoke-direct {p0, v0, p1}, Lpaulscode/sound/MidiChannel;->toLoop(ZZ)Z

    return-void
.end method

.method public setSourcename(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 953
    invoke-direct {p0, v0, p1}, Lpaulscode/sound/MidiChannel;->sourcename(ZLjava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setVolume(F)V
    .registers 2

    .line 756
    iput p1, p0, Lpaulscode/sound/MidiChannel;->gain:F

    .line 757
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->resetGain()V

    return-void
.end method

.method public stop()V
    .registers 4

    .line 670
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel;->loading()Z

    move-result v0

    if-nez v0, :cond_30

    .line 673
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    if-nez v0, :cond_b

    return-void

    .line 679
    :cond_b
    :try_start_b
    invoke-interface {v0}, Lmcshim/sound/midi/Sequencer;->stop()V

    .line 681
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lmcshim/sound/midi/Sequencer;->setMicrosecondPosition(J)V

    .line 683
    iget-object v0, p0, Lpaulscode/sound/MidiChannel;->sequencer:Lmcshim/sound/midi/Sequencer;

    invoke-interface {v0, p0}, Lmcshim/sound/midi/Sequencer;->removeMetaEventListener(Lmcshim/sound/midi/MetaEventListener;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1b

    goto :goto_30

    :catch_1b
    move-exception v0

    const-string v1, "Exception in method \'stop\'"

    .line 687
    invoke-virtual {p0, v1}, Lpaulscode/sound/MidiChannel;->errorMessage(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0, v0}, Lpaulscode/sound/MidiChannel;->printStackTrace(Ljava/lang/Exception;)V

    .line 689
    new-instance v1, Lpaulscode/sound/SoundSystemException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;)V

    .line 691
    invoke-static {v1}, Lpaulscode/sound/SoundSystem;->setException(Lpaulscode/sound/SoundSystemException;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public switchSource(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    .line 781
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    .line 784
    new-instance v1, Lpaulscode/sound/FilenameURL;

    invoke-direct {v1, p3}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lpaulscode/sound/MidiChannel;->filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;

    .line 785
    invoke-direct {p0, v0, p2}, Lpaulscode/sound/MidiChannel;->sourcename(ZLjava/lang/String;)Ljava/lang/String;

    .line 786
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->setLooping(Z)V

    .line 788
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->reset()V

    const/4 p1, 0x0

    .line 791
    invoke-direct {p0, v0, p1}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    return-void
.end method

.method public switchSource(ZLjava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    .line 809
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    .line 812
    new-instance v1, Lpaulscode/sound/FilenameURL;

    invoke-direct {v1, p3, p4}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lpaulscode/sound/MidiChannel;->filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;

    .line 813
    invoke-direct {p0, v0, p2}, Lpaulscode/sound/MidiChannel;->sourcename(ZLjava/lang/String;)Ljava/lang/String;

    .line 814
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->setLooping(Z)V

    .line 816
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->reset()V

    const/4 p1, 0x0

    .line 819
    invoke-direct {p0, v0, p1}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    return-void
.end method

.method public switchSource(ZLjava/lang/String;Lpaulscode/sound/FilenameURL;)V
    .registers 5

    const/4 v0, 0x1

    .line 834
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    .line 837
    invoke-direct {p0, v0, p3}, Lpaulscode/sound/MidiChannel;->filenameURL(ZLpaulscode/sound/FilenameURL;)Lpaulscode/sound/FilenameURL;

    .line 838
    invoke-direct {p0, v0, p2}, Lpaulscode/sound/MidiChannel;->sourcename(ZLjava/lang/String;)Ljava/lang/String;

    .line 839
    invoke-virtual {p0, p1}, Lpaulscode/sound/MidiChannel;->setLooping(Z)V

    .line 841
    invoke-direct {p0}, Lpaulscode/sound/MidiChannel;->reset()V

    const/4 p1, 0x0

    .line 844
    invoke-direct {p0, v0, p1}, Lpaulscode/sound/MidiChannel;->loading(ZZ)Z

    return-void
.end method

###### Class paulscode.sound.MidiChannel.AnonymousClass1 (paulscode.sound.MidiChannel$1)
.class synthetic Lpaulscode/sound/MidiChannel$1;
.super Ljava/lang/Object;
.source "SourceFile"

###### Class paulscode.sound.MidiChannel.FadeThread (paulscode.sound.MidiChannel$FadeThread)
.class Lpaulscode/sound/MidiChannel$FadeThread;
.super Lpaulscode/sound/SimpleThread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lpaulscode/sound/MidiChannel;


# direct methods
.method private constructor <init>(Lpaulscode/sound/MidiChannel;)V
    .registers 2

    .line 1495
    iput-object p1, p0, Lpaulscode/sound/MidiChannel$FadeThread;->this$0:Lpaulscode/sound/MidiChannel;

    invoke-direct {p0}, Lpaulscode/sound/SimpleThread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lpaulscode/sound/MidiChannel;Lpaulscode/sound/MidiChannel$1;)V
    .registers 3

    .line 1495
    invoke-direct {p0, p1}, Lpaulscode/sound/MidiChannel$FadeThread;-><init>(Lpaulscode/sound/MidiChannel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1504
    :goto_0
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel$FadeThread;->dying()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1507
    iget-object v0, p0, Lpaulscode/sound/MidiChannel$FadeThread;->this$0:Lpaulscode/sound/MidiChannel;

    iget v0, v0, Lpaulscode/sound/MidiChannel;->fadeOutGain:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_20

    iget-object v0, p0, Lpaulscode/sound/MidiChannel$FadeThread;->this$0:Lpaulscode/sound/MidiChannel;

    iget v0, v0, Lpaulscode/sound/MidiChannel;->fadeInGain:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_20

    const-wide/32 v0, 0x36ee80

    .line 1508
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/MidiChannel$FadeThread;->snooze(J)V

    .line 1509
    :cond_20
    iget-object v0, p0, Lpaulscode/sound/MidiChannel$FadeThread;->this$0:Lpaulscode/sound/MidiChannel;

    invoke-static {v0}, Lpaulscode/sound/MidiChannel;->access$100(Lpaulscode/sound/MidiChannel;)Z

    const-wide/16 v0, 0x32

    .line 1511
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/MidiChannel$FadeThread;->snooze(J)V

    goto :goto_0

    .line 1514
    :cond_2b
    invoke-virtual {p0}, Lpaulscode/sound/MidiChannel$FadeThread;->cleanup()V

    return-void
.end method
