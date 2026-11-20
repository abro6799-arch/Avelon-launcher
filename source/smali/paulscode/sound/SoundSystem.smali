###### Class paulscode.sound.SoundSystem (paulscode.sound.SoundSystem)
.class public Lpaulscode/sound/SoundSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GET:Z = false

.field private static final SET:Z = true

.field private static final XXX:Z

.field private static currentLibrary:Ljava/lang/Class;

.field private static initialized:Z

.field private static lastException:Lpaulscode/sound/SoundSystemException;


# instance fields
.field protected className:Ljava/lang/String;

.field protected commandQueue:Ljava/util/List;

.field protected commandThread:Lpaulscode/sound/CommandThread;

.field protected logger:Lpaulscode/sound/SoundSystemLogger;

.field public randomNumberGenerator:Ljava/util/Random;

.field protected soundLibrary:Lpaulscode/sound/Library;

.field private sourcePlayList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SoundSystem"

    .line 116
    iput-object v0, p0, Lpaulscode/sound/SoundSystem;->className:Ljava/lang/String;

    .line 143
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/SoundSystem;->logger:Lpaulscode/sound/SoundSystemLogger;

    if-nez v0, :cond_19

    .line 147
    new-instance v0, Lpaulscode/sound/SoundSystemLogger;

    invoke-direct {v0}, Lpaulscode/sound/SoundSystemLogger;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/SoundSystem;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 148
    invoke-static {v0}, Lpaulscode/sound/SoundSystemConfig;->setLogger(Lpaulscode/sound/SoundSystemLogger;)V

    .line 151
    :cond_19
    invoke-virtual {p0}, Lpaulscode/sound/SoundSystem;->linkDefaultLibrariesAndCodecs()V

    .line 153
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLibraries()Ljava/util/LinkedList;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    .line 157
    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 159
    :goto_27
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 161
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 164
    :try_start_33
    invoke-virtual {p0, v2}, Lpaulscode/sound/SoundSystem;->init(Ljava/lang/Class;)V
    :try_end_36
    .catch Lpaulscode/sound/SoundSystemException; {:try_start_33 .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception v2

    .line 169
    iget-object v3, p0, Lpaulscode/sound/SoundSystem;->logger:Lpaulscode/sound/SoundSystemLogger;

    invoke-virtual {v3, v2, v1}, Lpaulscode/sound/SoundSystemLogger;->printExceptionMessage(Ljava/lang/Exception;I)V

    goto :goto_27

    .line 175
    :cond_3e
    :try_start_3e
    const-class v0, Lpaulscode/sound/Library;

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->init(Ljava/lang/Class;)V
    :try_end_43
    .catch Lpaulscode/sound/SoundSystemException; {:try_start_3e .. :try_end_43} :catch_44

    return-void

    :catch_44
    move-exception v0

    .line 180
    iget-object v2, p0, Lpaulscode/sound/SoundSystem;->logger:Lpaulscode/sound/SoundSystemLogger;

    invoke-virtual {v2, v0, v1}, Lpaulscode/sound/SoundSystemLogger;->printExceptionMessage(Ljava/lang/Exception;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SoundSystem"

    .line 116
    iput-object v0, p0, Lpaulscode/sound/SoundSystem;->className:Ljava/lang/String;

    .line 193
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/SoundSystem;->logger:Lpaulscode/sound/SoundSystemLogger;

    if-nez v0, :cond_19

    .line 197
    new-instance v0, Lpaulscode/sound/SoundSystemLogger;

    invoke-direct {v0}, Lpaulscode/sound/SoundSystemLogger;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/SoundSystem;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 198
    invoke-static {v0}, Lpaulscode/sound/SoundSystemConfig;->setLogger(Lpaulscode/sound/SoundSystemLogger;)V

    .line 200
    :cond_19
    invoke-virtual {p0}, Lpaulscode/sound/SoundSystem;->linkDefaultLibrariesAndCodecs()V

    .line 202
    invoke-virtual {p0, p1}, Lpaulscode/sound/SoundSystem;->init(Ljava/lang/Class;)V

    return-void
.end method

.method private CommandActivate(Ljava/lang/String;)V
    .registers 3

    .line 2117
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 2118
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->activate(Ljava/lang/String;)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandActivate\'"

    const/4 v0, 0x0

    .line 2120
    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandCheckFadeVolumes()V
    .registers 3

    .line 1659
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1660
    invoke-virtual {v0}, Lpaulscode/sound/Library;->checkFadeVolumes()V

    goto :goto_e

    :cond_8
    const-string v0, "Variable \'soundLibrary\' null in method \'CommandCheckFadeVolumes\'"

    const/4 v1, 0x0

    .line 1662
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandCull(Ljava/lang/String;)V
    .registers 3

    .line 2103
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 2104
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->cull(Ljava/lang/String;)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandCull\'"

    const/4 v0, 0x0

    .line 2106
    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandDequeueSound(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1588
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1589
    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/Library;->dequeueSound(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandDequeueSound\'"

    const/4 p2, 0x0

    .line 1591
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandFadeOut(Ljava/lang/String;Lpaulscode/sound/FilenameURL;J)V
    .registers 6

    .line 1612
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1613
    invoke-virtual {v0, p1, p2, p3, p4}, Lpaulscode/sound/Library;->fadeOut(Ljava/lang/String;Lpaulscode/sound/FilenameURL;J)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandFadeOut\'"

    const/4 p2, 0x0

    .line 1615
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandFadeOutIn(Ljava/lang/String;Lpaulscode/sound/FilenameURL;JJ)V
    .registers 14

    .line 1637
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_c

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 1638
    invoke-virtual/range {v0 .. v6}, Lpaulscode/sound/Library;->fadeOutIn(Ljava/lang/String;Lpaulscode/sound/FilenameURL;JJ)V

    goto :goto_12

    :cond_c
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandFadeOutIn\'"

    const/4 p2, 0x0

    .line 1641
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_12
    return-void
.end method

.method private CommandFeedRawAudioData(Ljava/lang/String;[B)V
    .registers 4

    .line 1909
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1910
    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/Library;->feedRawAudioData(Ljava/lang/String;[B)I

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandFeedRawAudioData\'"

    const/4 p2, 0x0

    .line 1912
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandFlush(Ljava/lang/String;)V
    .registers 3

    .line 1965
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1966
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->flush(Ljava/lang/String;)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandFlush\'"

    const/4 v0, 0x0

    .line 1968
    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandInitialize()V
    .registers 6

    const-string v0, " did not load properly.  Library was null after initialization."

    const/4 v1, 0x1

    .line 1512
    :try_start_3
    iget-object v2, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    const-string v3, "Library null after initialization in method \'CommandInitialize\'"

    invoke-virtual {p0, v2, v3, v1}, Lpaulscode/sound/SoundSystem;->errorCheck(ZLjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1523
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    invoke-virtual {v0}, Lpaulscode/sound/Library;->init()V

    goto :goto_3a

    .line 1516
    :cond_18
    new-instance v2, Lpaulscode/sound/SoundSystemException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lpaulscode/sound/SoundSystem;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;I)V

    .line 1520
    invoke-static {v1, v2}, Lpaulscode/sound/SoundSystem;->lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;

    .line 1521
    throw v2
    :try_end_33
    .catch Lpaulscode/sound/SoundSystemException; {:try_start_3 .. :try_end_33} :catch_33

    :catch_33
    move-exception v0

    .line 1527
    invoke-static {v1, v0}, Lpaulscode/sound/SoundSystem;->lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;

    .line 1528
    invoke-static {v1, v1}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    :goto_3a
    return-void
.end method

.method private CommandLoadSound(Lpaulscode/sound/FilenameURL;)V
    .registers 3

    .line 1539
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1540
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->loadSound(Lpaulscode/sound/FilenameURL;)Z

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandLoadSound\'"

    const/4 v0, 0x0

    .line 1542
    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandMoveListener(FFF)V
    .registers 5

    .line 2017
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 2018
    invoke-virtual {v0, p1, p2, p3}, Lpaulscode/sound/Library;->moveListener(FFF)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandMoveListener\'"

    const/4 p2, 0x0

    .line 2020
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandNewLibrary(Ljava/lang/Class;)V
    .registers 8

    const-string v0, "The specified library did not load properly"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1426
    invoke-static {v1, v2}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    .line 1429
    iget-object v3, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    .line 1431
    invoke-static {v1, v4}, Lpaulscode/sound/SoundSystem;->currentLibrary(ZLjava/lang/Class;)Ljava/lang/Class;

    .line 1434
    iget-object v3, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    invoke-virtual {v3}, Lpaulscode/sound/Library;->cleanup()V

    .line 1435
    iput-object v4, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    const-string v3, "Switching to "

    goto :goto_1b

    :cond_19
    const-string v3, "Initializing "

    .line 1437
    :goto_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lpaulscode/sound/SoundSystemConfig;->getLibraryTitle(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    .line 1439
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lpaulscode/sound/SoundSystemConfig;->getLibraryDescription(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    .line 1444
    :try_start_4b
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Library;

    iput-object p1, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;
    :try_end_53
    .catch Ljava/lang/InstantiationException; {:try_start_4b .. :try_end_53} :catch_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_53} :catch_5c
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_4b .. :try_end_53} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_4b .. :try_end_53} :catch_54

    goto :goto_63

    .line 1460
    :catch_54
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    goto :goto_63

    .line 1456
    :catch_58
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    goto :goto_63

    .line 1452
    :catch_5c
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    goto :goto_63

    .line 1448
    :catch_60
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    .line 1463
    :goto_63
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-nez p1, :cond_68

    move v2, v1

    :cond_68
    const-string p1, "Library null after initialization in method \'newLibrary\'"

    invoke-virtual {p0, v2, p1, v1}, Lpaulscode/sound/SoundSystem;->errorCheck(ZLjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 1466
    new-instance p1, Lpaulscode/sound/SoundSystemException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpaulscode/sound/SoundSystem;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not load properly.  Library was null after initialization."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {p1, v0, v2}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, p1}, Lpaulscode/sound/SoundSystem;->lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;

    const-string p1, "Switching to silent mode"

    .line 1470
    invoke-virtual {p0, p1, v1}, Lpaulscode/sound/SoundSystem;->importantMessage(Ljava/lang/String;I)V

    .line 1474
    :try_start_91
    new-instance p1, Lpaulscode/sound/Library;

    invoke-direct {p1}, Lpaulscode/sound/Library;-><init>()V

    iput-object p1, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;
    :try_end_98
    .catch Lpaulscode/sound/SoundSystemException; {:try_start_91 .. :try_end_98} :catch_99

    goto :goto_a7

    .line 1478
    :catch_99
    new-instance p1, Lpaulscode/sound/SoundSystemException;

    const-string v0, "Silent mode did not load properly.  Library was null after initialization."

    invoke-direct {p1, v0, v2}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, p1}, Lpaulscode/sound/SoundSystem;->lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;

    .line 1482
    invoke-static {v1, v1}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    return-void

    .line 1489
    :cond_a7
    :goto_a7
    :try_start_a7
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    invoke-virtual {p1}, Lpaulscode/sound/Library;->init()V
    :try_end_ac
    .catch Lpaulscode/sound/SoundSystemException; {:try_start_a7 .. :try_end_ac} :catch_b3

    .line 1498
    invoke-static {v1, v4}, Lpaulscode/sound/SoundSystem;->lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;

    .line 1499
    invoke-static {v1, v1}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    return-void

    :catch_b3
    move-exception p1

    .line 1493
    invoke-static {v1, p1}, Lpaulscode/sound/SoundSystem;->lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;

    .line 1494
    invoke-static {v1, v1}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    return-void
.end method

.method private CommandNewSource(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;FFFIF)V
    .registers 24

    move-object v0, p0

    .line 1686
    iget-object v1, v0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v1, :cond_41

    .line 1688
    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*[mM][iI][dD][iI]?$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->midiCodec()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1692
    iget-object v1, v0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual {v1, v5, v6, v7}, Lpaulscode/sound/Library;->loadMidi(ZLjava/lang/String;Lpaulscode/sound/FilenameURL;)V

    goto :goto_47

    :cond_23
    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 1696
    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Lpaulscode/sound/Library;->newSource(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;FFFIF)V

    goto :goto_47

    :cond_41
    const-string v1, "Variable \'soundLibrary\' null in method \'CommandNewSource\'"

    const/4 v2, 0x0

    .line 1702
    invoke-virtual {p0, v1, v2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_47
    return-void
.end method

.method private CommandPause(Ljava/lang/String;)V
    .registers 3

    .line 1923
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1924
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->pause(Ljava/lang/String;)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandPause\'"

    const/4 v0, 0x0

    .line 1926
    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandPlay(Ljava/lang/String;)V
    .registers 3

    .line 1892
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1893
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->play(Ljava/lang/String;)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandPlay\'"

    const/4 v0, 0x0

    .line 1895
    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandQueueSound(Ljava/lang/String;Lpaulscode/sound/FilenameURL;)V
    .registers 4

    .line 1571
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1572
    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/Library;->queueSound(Ljava/lang/String;Lpaulscode/sound/FilenameURL;)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandQueueSound\'"

    const/4 p2, 0x0

    .line 1574
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandQuickPlay(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;FFFIFZ)V
    .registers 26

    move-object v0, p0

    .line 1753
    iget-object v1, v0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v1, :cond_44

    .line 1755
    invoke-virtual/range {p5 .. p5}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*[mM][iI][dD][iI]?$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->midiCodec()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1758
    iget-object v1, v0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual {v1, v5, v6, v7}, Lpaulscode/sound/Library;->loadMidi(ZLjava/lang/String;Lpaulscode/sound/FilenameURL;)V

    goto :goto_4a

    :cond_23
    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 1762
    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lpaulscode/sound/Library;->quickPlay(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;FFFIFZ)V

    goto :goto_4a

    :cond_44
    const-string v1, "Variable \'soundLibrary\' null in method \'CommandQuickPlay\'"

    const/4 v2, 0x0

    .line 1768
    invoke-virtual {p0, v1, v2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_4a
    return-void
.end method

.method private CommandRawDataStream(Lmcshim/sound/sampled/AudioFormat;ZLjava/lang/String;FFFIF)V
    .registers 19

    move-object v0, p0

    .line 1723
    iget-object v1, v0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v1, :cond_14

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 1724
    invoke-virtual/range {v1 .. v9}, Lpaulscode/sound/Library;->rawDataStream(Lmcshim/sound/sampled/AudioFormat;ZLjava/lang/String;FFFIF)V

    goto :goto_1a

    :cond_14
    const-string v1, "Variable \'soundLibrary\' null in method \'CommandRawDataStream\'"

    const/4 v2, 0x0

    .line 1727
    invoke-virtual {p0, v1, v2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_1a
    return-void
.end method

.method private CommandRemoveSource(Ljava/lang/String;)V
    .registers 3

    .line 2001
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 2002
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->removeSource(Ljava/lang/String;)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandRemoveSource\'"

    const/4 v0, 0x0

    .line 2004
    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandRewind(Ljava/lang/String;)V
    .registers 3

    .line 1951
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1952
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->rewind(Ljava/lang/String;)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandRewind\'"

    const/4 v0, 0x0

    .line 1954
    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandSetAttenuation(Ljava/lang/String;I)V
    .registers 4

    .line 1861
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1862
    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/Library;->setAttenuation(Ljava/lang/String;I)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandSetAttenuation\'"

    const/4 p2, 0x0

    .line 1864
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandSetDistOrRoll(Ljava/lang/String;F)V
    .registers 4

    .line 1877
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1878
    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/Library;->setDistOrRoll(Ljava/lang/String;F)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandSetDistOrRoll\'"

    const/4 p2, 0x0

    .line 1880
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandSetListenerAngle(F)V
    .registers 3

    .line 2064
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 2065
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->setListenerAngle(F)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandSetListenerAngle\'"

    const/4 v0, 0x0

    .line 2067
    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandSetListenerOrientation(FFFFFF)V
    .registers 14

    .line 2086
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_e

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2087
    invoke-virtual/range {v0 .. v6}, Lpaulscode/sound/Library;->setListenerOrientation(FFFFFF)V

    goto :goto_14

    :cond_e
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandSetListenerOrientation\'"

    const/4 p2, 0x0

    .line 2090
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_14
    return-void
.end method

.method private CommandSetListenerPosition(FFF)V
    .registers 5

    .line 2033
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 2034
    invoke-virtual {v0, p1, p2, p3}, Lpaulscode/sound/Library;->setListenerPosition(FFF)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandSetListenerPosition\'"

    const/4 p2, 0x0

    .line 2036
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandSetLooping(Ljava/lang/String;Z)V
    .registers 4

    .line 1844
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1845
    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/Library;->setLooping(Ljava/lang/String;Z)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandSetLooping\'"

    const/4 p2, 0x0

    .line 1847
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandSetMasterVolume(F)V
    .registers 3

    .line 2132
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 2133
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->setMasterVolume(F)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandSetMasterVolume\'"

    const/4 v0, 0x0

    .line 2135
    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandSetPitch(Ljava/lang/String;F)V
    .registers 4

    .line 1813
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1814
    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/Library;->setPitch(Ljava/lang/String;F)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandSetPitch\'"

    const/4 p2, 0x0

    .line 1816
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandSetPosition(Ljava/lang/String;FFF)V
    .registers 6

    .line 1783
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1784
    invoke-virtual {v0, p1, p2, p3, p4}, Lpaulscode/sound/Library;->setPosition(Ljava/lang/String;FFF)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandMoveSource\'"

    const/4 p2, 0x0

    .line 1786
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandSetPriority(Ljava/lang/String;Z)V
    .registers 4

    .line 1829
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1830
    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/Library;->setPriority(Ljava/lang/String;Z)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandSetPriority\'"

    const/4 p2, 0x0

    .line 1832
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandSetTemporary(Ljava/lang/String;Z)V
    .registers 4

    .line 1987
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1988
    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/Library;->setTemporary(Ljava/lang/String;Z)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandSetActive\'"

    const/4 p2, 0x0

    .line 1990
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandSetVolume(Ljava/lang/String;F)V
    .registers 4

    .line 1798
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1799
    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/Library;->setVolume(Ljava/lang/String;F)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandSetVolume\'"

    const/4 p2, 0x0

    .line 1801
    invoke-virtual {p0, p1, p2}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandStop(Ljava/lang/String;)V
    .registers 3

    .line 1937
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1938
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->stop(Ljava/lang/String;)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandStop\'"

    const/4 v0, 0x0

    .line 1940
    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandTurnListener(F)V
    .registers 3

    .line 2049
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 2050
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->turnListener(F)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandTurnListener\'"

    const/4 v0, 0x0

    .line 2052
    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private CommandUnloadSound(Ljava/lang/String;)V
    .registers 3

    .line 1553
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_8

    .line 1554
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->unloadSound(Ljava/lang/String;)V

    goto :goto_e

    :cond_8
    const-string p1, "Variable \'soundLibrary\' null in method \'CommandLoadSound\'"

    const/4 v0, 0x0

    .line 1556
    invoke-virtual {p0, p1, v0}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    :goto_e
    return-void
.end method

.method private copySources(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 8

    .line 2494
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2495
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2500
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2504
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2506
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2507
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpaulscode/sound/Source;

    if-eqz v3, :cond_d

    .line 2509
    new-instance v4, Lpaulscode/sound/Source;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lpaulscode/sound/Source;-><init>(Lpaulscode/sound/Source;Lpaulscode/sound/SoundBuffer;)V

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2b
    return-object v1
.end method

.method public static currentLibrary()Ljava/lang/Class;
    .registers 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2550
    invoke-static {v0, v1}, Lpaulscode/sound/SoundSystem;->currentLibrary(ZLjava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static currentLibrary(ZLjava/lang/Class;)Ljava/lang/Class;
    .registers 4

    .line 2606
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->THREAD_SYNC:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_8

    .line 2609
    :try_start_6
    sput-object p1, Lpaulscode/sound/SoundSystem;->currentLibrary:Ljava/lang/Class;

    .line 2610
    :cond_8
    sget-object p0, Lpaulscode/sound/SoundSystem;->currentLibrary:Ljava/lang/Class;

    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    .line 2611
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static getLastException()Lpaulscode/sound/SoundSystemException;
    .registers 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2568
    invoke-static {v0, v1}, Lpaulscode/sound/SoundSystem;->lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;

    move-result-object v0

    return-object v0
.end method

.method public static initialized()Z
    .registers 1

    const/4 v0, 0x0

    .line 2559
    invoke-static {v0, v0}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    move-result v0

    return v0
.end method

.method private static initialized(ZZ)Z
    .registers 4

    .line 2589
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->THREAD_SYNC:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_8

    .line 2592
    :try_start_6
    sput-boolean p1, Lpaulscode/sound/SoundSystem;->initialized:Z

    .line 2593
    :cond_8
    sget-boolean p0, Lpaulscode/sound/SoundSystem;->initialized:Z

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 2594
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw p0
.end method

.method private static lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;
    .registers 4

    .line 2624
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->THREAD_SYNC:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_8

    .line 2627
    :try_start_6
    sput-object p1, Lpaulscode/sound/SoundSystem;->lastException:Lpaulscode/sound/SoundSystemException;

    .line 2628
    :cond_8
    sget-object p0, Lpaulscode/sound/SoundSystem;->lastException:Lpaulscode/sound/SoundSystemException;

    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    .line 2629
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static libraryCompatible(Ljava/lang/Class;)Z
    .registers 5

    .line 2522
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    if-nez v0, :cond_e

    .line 2526
    new-instance v0, Lpaulscode/sound/SoundSystemLogger;

    invoke-direct {v0}, Lpaulscode/sound/SoundSystemLogger;-><init>()V

    .line 2527
    invoke-static {v0}, Lpaulscode/sound/SoundSystemConfig;->setLogger(Lpaulscode/sound/SoundSystemLogger;)V

    :cond_e
    const-string v1, ""

    const/4 v2, 0x0

    .line 2529
    invoke-virtual {v0, v1, v2}, Lpaulscode/sound/SoundSystemLogger;->message(Ljava/lang/String;I)V

    .line 2530
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Checking if "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->getLibraryTitle(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is compatible..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lpaulscode/sound/SoundSystemLogger;->message(Ljava/lang/String;I)V

    .line 2534
    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->libraryCompatible(Ljava/lang/Class;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_3b

    const-string v2, "...yes"

    .line 2537
    invoke-virtual {v0, v2, v1}, Lpaulscode/sound/SoundSystemLogger;->message(Ljava/lang/String;I)V

    goto :goto_40

    :cond_3b
    const-string v2, "...no"

    .line 2539
    invoke-virtual {v0, v2, v1}, Lpaulscode/sound/SoundSystemLogger;->message(Ljava/lang/String;I)V

    :goto_40
    return p0
.end method

.method public static setException(Lpaulscode/sound/SoundSystemException;)V
    .registers 2

    const/4 v0, 0x1

    .line 2578
    invoke-static {v0, p0}, Lpaulscode/sound/SoundSystem;->lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;

    return-void
.end method

.method protected static snooze(J)V
    .registers 2

    .line 2639
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method


# virtual methods
.method public CommandQueue(Lpaulscode/sound/CommandObject;)Z
    .registers 21

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    .line 2176
    sget-object v14, Lpaulscode/sound/SoundSystemConfig;->THREAD_SYNC:Ljava/lang/Object;

    monitor-enter v14

    const/4 v15, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_2bb

    move v0, v12

    .line 2185
    :goto_c
    :try_start_c
    iget-object v1, v13, Lpaulscode/sound/SoundSystem;->commandQueue:Ljava/util/List;

    if-eqz v1, :cond_275

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_275

    .line 2188
    iget-object v1, v13, Lpaulscode/sound/SoundSystem;->commandQueue:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpaulscode/sound/CommandObject;

    if-eqz v1, :cond_270

    .line 2192
    iget v2, v1, Lpaulscode/sound/CommandObject;->Command:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    packed-switch v2, :pswitch_data_2cc

    :pswitch_27
    goto/16 :goto_270

    .line 2362
    :pswitch_29
    iget-object v1, v1, Lpaulscode/sound/CommandObject;->classArgs:[Ljava/lang/Class;

    aget-object v1, v1, v12

    invoke-direct {v13, v1}, Lpaulscode/sound/SoundSystem;->CommandNewLibrary(Ljava/lang/Class;)V

    goto/16 :goto_270

    .line 2358
    :pswitch_32
    iget-object v1, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v1, v1, v12

    invoke-direct {v13, v1}, Lpaulscode/sound/SoundSystem;->CommandSetMasterVolume(F)V

    goto/16 :goto_270

    .line 2349
    :pswitch_3b
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v2, v2, v12

    iget-object v5, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v5, v5, v15

    iget-object v6, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v4, v6, v4

    iget-object v6, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v6, v6, v3

    iget-object v3, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    const/4 v7, 0x4

    aget v7, v3, v7

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    const/4 v3, 0x5

    aget v8, v1, v3

    move-object/from16 v1, p0

    move v3, v5

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lpaulscode/sound/SoundSystem;->CommandSetListenerOrientation(FFFFFF)V

    goto/16 :goto_270

    .line 2345
    :pswitch_60
    iget-object v1, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v1, v1, v12

    invoke-direct {v13, v1}, Lpaulscode/sound/SoundSystem;->CommandSetListenerAngle(F)V

    goto/16 :goto_270

    .line 2342
    :pswitch_69
    iget-object v1, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v1, v1, v12

    invoke-direct {v13, v1}, Lpaulscode/sound/SoundSystem;->CommandTurnListener(F)V

    goto/16 :goto_270

    .line 2336
    :pswitch_72
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v2, v2, v12

    iget-object v3, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v3, v3, v15

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v1, v1, v4

    invoke-direct {v13, v2, v3, v1}, Lpaulscode/sound/SoundSystem;->CommandSetListenerPosition(FFF)V

    goto/16 :goto_270

    .line 2331
    :pswitch_83
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v2, v2, v12

    iget-object v3, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v3, v3, v15

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v1, v1, v4

    invoke-direct {v13, v2, v3, v1}, Lpaulscode/sound/SoundSystem;->CommandMoveListener(FFF)V

    goto/16 :goto_270

    .line 2328
    :pswitch_94
    iget-object v1, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-direct {v13, v1}, Lpaulscode/sound/SoundSystem;->CommandRemoveSource(Ljava/lang/String;)V

    goto/16 :goto_270

    .line 2324
    :pswitch_9d
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v2, v2, v12

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    aget-boolean v1, v1, v12

    invoke-direct {v13, v2, v1}, Lpaulscode/sound/SoundSystem;->CommandSetTemporary(Ljava/lang/String;Z)V

    goto/16 :goto_270

    .line 2321
    :pswitch_aa
    iget-object v0, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v0, v0, v12

    invoke-direct {v13, v0}, Lpaulscode/sound/SoundSystem;->CommandActivate(Ljava/lang/String;)V

    move v0, v15

    goto/16 :goto_c

    .line 2317
    :pswitch_b4
    iget-object v1, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-direct {v13, v1}, Lpaulscode/sound/SoundSystem;->CommandCull(Ljava/lang/String;)V

    goto/16 :goto_270

    .line 2314
    :pswitch_bd
    iget-object v1, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-direct {v13, v1}, Lpaulscode/sound/SoundSystem;->CommandFlush(Ljava/lang/String;)V

    goto/16 :goto_270

    .line 2311
    :pswitch_c6
    iget-object v1, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-direct {v13, v1}, Lpaulscode/sound/SoundSystem;->CommandRewind(Ljava/lang/String;)V

    goto/16 :goto_270

    .line 2308
    :pswitch_cf
    iget-object v1, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-direct {v13, v1}, Lpaulscode/sound/SoundSystem;->CommandStop(Ljava/lang/String;)V

    goto/16 :goto_270

    .line 2305
    :pswitch_d8
    iget-object v1, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-direct {v13, v1}, Lpaulscode/sound/SoundSystem;->CommandPause(Ljava/lang/String;)V

    goto/16 :goto_270

    .line 2301
    :pswitch_e1
    iget-object v2, v13, Lpaulscode/sound/SoundSystem;->sourcePlayList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_270

    .line 2298
    :pswitch_e8
    iget-object v2, v13, Lpaulscode/sound/SoundSystem;->sourcePlayList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_270

    .line 2289
    :pswitch_ef
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v2, v2, v12

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v1, v1, v12

    invoke-direct {v13, v2, v1}, Lpaulscode/sound/SoundSystem;->CommandSetDistOrRoll(Ljava/lang/String;F)V

    goto/16 :goto_270

    .line 2285
    :pswitch_fc
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v2, v2, v12

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->intArgs:[I

    aget v1, v1, v12

    invoke-direct {v13, v2, v1}, Lpaulscode/sound/SoundSystem;->CommandSetAttenuation(Ljava/lang/String;I)V

    goto/16 :goto_270

    .line 2281
    :pswitch_109
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v2, v2, v12

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    aget-boolean v1, v1, v12

    invoke-direct {v13, v2, v1}, Lpaulscode/sound/SoundSystem;->CommandSetLooping(Ljava/lang/String;Z)V

    goto/16 :goto_270

    .line 2277
    :pswitch_116
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v2, v2, v12

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    aget-boolean v1, v1, v12

    invoke-direct {v13, v2, v1}, Lpaulscode/sound/SoundSystem;->CommandSetPriority(Ljava/lang/String;Z)V

    goto/16 :goto_270

    .line 2273
    :pswitch_123
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v2, v2, v12

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v1, v1, v12

    invoke-direct {v13, v2, v1}, Lpaulscode/sound/SoundSystem;->CommandSetPitch(Ljava/lang/String;F)V

    goto/16 :goto_270

    .line 2269
    :pswitch_130
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v2, v2, v12

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v1, v1, v12

    invoke-direct {v13, v2, v1}, Lpaulscode/sound/SoundSystem;->CommandSetVolume(Ljava/lang/String;F)V

    goto/16 :goto_270

    .line 2263
    :pswitch_13d
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v2, v2, v12

    iget-object v3, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v3, v3, v12

    iget-object v5, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v5, v5, v15

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v1, v1, v4

    invoke-direct {v13, v2, v3, v5, v1}, Lpaulscode/sound/SoundSystem;->CommandSetPosition(Ljava/lang/String;FFF)V

    goto/16 :goto_270

    .line 2250
    :pswitch_152
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    aget-boolean v2, v2, v12

    iget-object v5, v1, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    aget-boolean v5, v5, v15

    iget-object v6, v1, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    aget-boolean v6, v6, v4

    iget-object v7, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v7, v7, v12

    iget-object v8, v1, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    aget-object v8, v8, v12

    check-cast v8, Lpaulscode/sound/FilenameURL;

    iget-object v9, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v9, v9, v12

    iget-object v10, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v10, v10, v15

    iget-object v11, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v11, v11, v4

    iget-object v4, v1, Lpaulscode/sound/CommandObject;->intArgs:[I

    aget v16, v4, v12

    iget-object v4, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v17, v4, v3

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    aget-boolean v18, v1, v3

    move-object/from16 v1, p0

    move v3, v5

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move/from16 v10, v16

    move/from16 v11, v17

    move v15, v12

    move/from16 v12, v18

    invoke-direct/range {v1 .. v12}, Lpaulscode/sound/SoundSystem;->CommandQuickPlay(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;FFFIFZ)V

    goto/16 :goto_271

    :pswitch_195
    move v15, v12

    .line 2239
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    aget-object v2, v2, v15

    check-cast v2, Lmcshim/sound/sampled/AudioFormat;

    iget-object v5, v1, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    aget-boolean v5, v5, v15

    iget-object v6, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v6, v6, v15

    iget-object v7, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v7, v7, v15

    iget-object v8, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v9, v9, v4

    iget-object v4, v1, Lpaulscode/sound/CommandObject;->intArgs:[I

    aget v10, v4, v15

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v11, v1, v3

    move-object/from16 v1, p0

    move v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    invoke-direct/range {v1 .. v9}, Lpaulscode/sound/SoundSystem;->CommandRawDataStream(Lmcshim/sound/sampled/AudioFormat;ZLjava/lang/String;FFFIF)V

    goto/16 :goto_271

    :pswitch_1c7
    move v15, v12

    .line 2227
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    aget-boolean v2, v2, v15

    iget-object v5, v1, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    iget-object v6, v1, Lpaulscode/sound/CommandObject;->boolArgs:[Z

    aget-boolean v6, v6, v4

    iget-object v7, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v7, v7, v15

    iget-object v8, v1, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    aget-object v8, v8, v15

    check-cast v8, Lpaulscode/sound/FilenameURL;

    iget-object v9, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v9, v9, v15

    iget-object v10, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    iget-object v11, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v11, v11, v4

    iget-object v4, v1, Lpaulscode/sound/CommandObject;->intArgs:[I

    aget v12, v4, v15

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->floatArgs:[F

    aget v17, v1, v3

    move-object/from16 v1, p0

    move v3, v5

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move/from16 v11, v17

    invoke-direct/range {v1 .. v11}, Lpaulscode/sound/SoundSystem;->CommandNewSource(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;FFFIF)V

    goto/16 :goto_271

    :pswitch_205
    move v15, v12

    .line 2224
    invoke-direct/range {p0 .. p0}, Lpaulscode/sound/SoundSystem;->CommandCheckFadeVolumes()V

    goto/16 :goto_271

    :pswitch_20b
    move v15, v12

    .line 2218
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v2, v2, v15

    iget-object v3, v1, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    aget-object v3, v3, v15

    check-cast v3, Lpaulscode/sound/FilenameURL;

    iget-object v4, v1, Lpaulscode/sound/CommandObject;->longArgs:[J

    aget-wide v5, v4, v15

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->longArgs:[J

    const/4 v4, 0x1

    aget-wide v7, v1, v4

    move-object/from16 v1, p0

    move-wide v4, v5

    move-wide v6, v7

    invoke-direct/range {v1 .. v7}, Lpaulscode/sound/SoundSystem;->CommandFadeOutIn(Ljava/lang/String;Lpaulscode/sound/FilenameURL;JJ)V

    goto :goto_271

    :pswitch_227
    move v15, v12

    .line 2213
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v2, v2, v15

    iget-object v3, v1, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    aget-object v3, v3, v15

    check-cast v3, Lpaulscode/sound/FilenameURL;

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->longArgs:[J

    aget-wide v4, v1, v15

    invoke-direct {v13, v2, v3, v4, v5}, Lpaulscode/sound/SoundSystem;->CommandFadeOut(Ljava/lang/String;Lpaulscode/sound/FilenameURL;J)V

    goto :goto_271

    :pswitch_23a
    move v15, v12

    .line 2209
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v2, v2, v15

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-direct {v13, v2, v1}, Lpaulscode/sound/SoundSystem;->CommandDequeueSound(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_271

    :pswitch_248
    move v15, v12

    .line 2205
    iget-object v2, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v2, v2, v15

    iget-object v1, v1, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    aget-object v1, v1, v15

    check-cast v1, Lpaulscode/sound/FilenameURL;

    invoke-direct {v13, v2, v1}, Lpaulscode/sound/SoundSystem;->CommandQueueSound(Ljava/lang/String;Lpaulscode/sound/FilenameURL;)V

    goto :goto_271

    :pswitch_257
    move v15, v12

    .line 2202
    iget-object v1, v1, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v1, v1, v15

    invoke-direct {v13, v1}, Lpaulscode/sound/SoundSystem;->CommandUnloadSound(Ljava/lang/String;)V

    goto :goto_271

    :pswitch_260
    move v15, v12

    .line 2198
    iget-object v1, v1, Lpaulscode/sound/CommandObject;->objectArgs:[Ljava/lang/Object;

    aget-object v1, v1, v15

    check-cast v1, Lpaulscode/sound/FilenameURL;

    invoke-direct {v13, v1}, Lpaulscode/sound/SoundSystem;->CommandLoadSound(Lpaulscode/sound/FilenameURL;)V

    goto :goto_271

    :pswitch_26b
    move v15, v12

    .line 2195
    invoke-direct/range {p0 .. p0}, Lpaulscode/sound/SoundSystem;->CommandInitialize()V

    goto :goto_271

    :cond_270
    :goto_270
    move v15, v12

    :goto_271
    move v12, v15

    const/4 v15, 0x1

    goto/16 :goto_c

    :cond_275
    move v15, v12

    if-eqz v0, :cond_27d

    .line 2374
    iget-object v0, v13, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    invoke-virtual {v0}, Lpaulscode/sound/Library;->replaySources()V

    .line 2379
    :cond_27d
    :goto_27d
    iget-object v0, v13, Lpaulscode/sound/SoundSystem;->sourcePlayList:Ljava/util/List;

    if-eqz v0, :cond_2ae

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2ae

    .line 2382
    iget-object v0, v13, Lpaulscode/sound/SoundSystem;->sourcePlayList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpaulscode/sound/CommandObject;

    if-eqz v0, :cond_27d

    .line 2386
    iget v1, v0, Lpaulscode/sound/CommandObject;->Command:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2a6

    const/16 v2, 0x16

    if-eq v1, v2, :cond_29c

    goto :goto_27d

    .line 2392
    :cond_29c
    iget-object v1, v0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v1, v1, v15

    iget-object v0, v0, Lpaulscode/sound/CommandObject;->buffer:[B

    invoke-direct {v13, v1, v0}, Lpaulscode/sound/SoundSystem;->CommandFeedRawAudioData(Ljava/lang/String;[B)V

    goto :goto_27d

    .line 2389
    :cond_2a6
    iget-object v0, v0, Lpaulscode/sound/CommandObject;->stringArgs:[Ljava/lang/String;

    aget-object v0, v0, v15

    invoke-direct {v13, v0}, Lpaulscode/sound/SoundSystem;->CommandPlay(Ljava/lang/String;)V

    goto :goto_27d

    .line 2400
    :cond_2ae
    iget-object v0, v13, Lpaulscode/sound/SoundSystem;->commandQueue:Ljava/util/List;

    if-eqz v0, :cond_2b9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2b9

    const/4 v15, 0x1

    :cond_2b9
    monitor-exit v14

    return v15

    :cond_2bb
    move v15, v12

    .line 2405
    iget-object v1, v13, Lpaulscode/sound/SoundSystem;->commandQueue:Ljava/util/List;

    if-nez v1, :cond_2c2

    .line 2406
    monitor-exit v14

    return v15

    .line 2408
    :cond_2c2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2411
    monitor-exit v14

    const/4 v0, 0x1

    return v0

    :catchall_2c8
    move-exception v0

    .line 2413
    monitor-exit v14
    :try_end_2ca
    .catchall {:try_start_c .. :try_end_2ca} :catchall_2c8

    throw v0

    nop

    :pswitch_data_2cc
    .packed-switch 0x1
        :pswitch_26b
        :pswitch_260
        :pswitch_27
        :pswitch_257
        :pswitch_248
        :pswitch_23a
        :pswitch_227
        :pswitch_20b
        :pswitch_205
        :pswitch_1c7
        :pswitch_195
        :pswitch_152
        :pswitch_13d
        :pswitch_130
        :pswitch_123
        :pswitch_116
        :pswitch_109
        :pswitch_fc
        :pswitch_ef
        :pswitch_27
        :pswitch_e8
        :pswitch_e1
        :pswitch_d8
        :pswitch_cf
        :pswitch_c6
        :pswitch_bd
        :pswitch_b4
        :pswitch_aa
        :pswitch_9d
        :pswitch_94
        :pswitch_83
        :pswitch_72
        :pswitch_69
        :pswitch_60
        :pswitch_3b
        :pswitch_32
        :pswitch_29
    .end packed-switch
.end method

.method protected ManageSources()V
    .registers 1

    return-void
.end method

.method public activate(Ljava/lang/String;)V
    .registers 4

    .line 1140
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, p1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1141
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public backgroundMusic(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 19

    move-object v0, p0

    .line 616
    new-instance v14, Lpaulscode/sound/CommandObject;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v7, Lpaulscode/sound/FilenameURL;

    move-object/from16 v1, p2

    invoke-direct {v7, v1}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v14

    move/from16 v5, p3

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v13}, Lpaulscode/sound/CommandObject;-><init>(IZZZLjava/lang/String;Ljava/lang/Object;FFFIFZ)V

    invoke-virtual {p0, v14}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 620
    new-instance v1, Lpaulscode/sound/CommandObject;

    const/16 v2, 0x15

    move-object/from16 v3, p1

    invoke-direct {v1, v2, v3}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 622
    iget-object v1, v0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public backgroundMusic(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;Z)V
    .registers 20

    move-object v0, p0

    .line 639
    new-instance v14, Lpaulscode/sound/CommandObject;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v7, Lpaulscode/sound/FilenameURL;

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-direct {v7, v1, v5}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v14

    move/from16 v5, p4

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v13}, Lpaulscode/sound/CommandObject;-><init>(IZZZLjava/lang/String;Ljava/lang/Object;FFFIFZ)V

    invoke-virtual {p0, v14}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 645
    new-instance v1, Lpaulscode/sound/CommandObject;

    const/16 v2, 0x15

    move-object/from16 v3, p1

    invoke-direct {v1, v2, v3}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 647
    iget-object v1, v0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public checkFadeVolumes()V
    .registers 3

    .line 596
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lpaulscode/sound/CommandObject;-><init>(I)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 598
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v0}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public cleanup()V
    .registers 8

    const-string v0, ""

    const/4 v1, 0x0

    .line 253
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lpaulscode/sound/SoundSystem;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " shutting down..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    const/4 v2, 0x1

    .line 259
    :try_start_1d
    iget-object v3, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v3}, Lpaulscode/sound/CommandThread;->kill()V

    .line 260
    iget-object v3, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v3}, Lpaulscode/sound/CommandThread;->interrupt()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_29

    move v3, v1

    goto :goto_2a

    :catch_29
    move v3, v2

    :goto_2a
    if-nez v3, :cond_42

    move v4, v1

    :goto_2d
    const/16 v5, 0x32

    if-ge v4, v5, :cond_42

    .line 272
    iget-object v5, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v5}, Lpaulscode/sound/CommandThread;->alive()Z

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_42

    :cond_3a
    const-wide/16 v5, 0x64

    .line 274
    invoke-static {v5, v6}, Lpaulscode/sound/SoundSystem;->snooze(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_42
    :goto_42
    const-string v4, "Ignoring errors... continuing clean-up."

    if-nez v3, :cond_4e

    .line 279
    iget-object v3, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v3}, Lpaulscode/sound/CommandThread;->alive()Z

    move-result v3

    if-eqz v3, :cond_56

    :cond_4e
    const-string v3, "Command thread did not die!"

    .line 281
    invoke-virtual {p0, v3, v1}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    .line 282
    invoke-virtual {p0, v4, v1}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    .line 285
    :cond_56
    invoke-static {v2, v1}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    const/4 v3, 0x0

    .line 286
    invoke-static {v2, v3}, Lpaulscode/sound/SoundSystem;->currentLibrary(ZLjava/lang/Class;)Ljava/lang/Class;

    .line 290
    :try_start_5d
    iget-object v5, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v5, :cond_6d

    .line 291
    invoke-virtual {v5}, Lpaulscode/sound/Library;->cleanup()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_64} :catch_65

    goto :goto_6d

    :catch_65
    const-string v5, "Problem during Library.cleanup()!"

    .line 295
    invoke-virtual {p0, v5, v1}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    .line 296
    invoke-virtual {p0, v4, v1}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    .line 302
    :cond_6d
    :goto_6d
    :try_start_6d
    iget-object v5, p0, Lpaulscode/sound/SoundSystem;->commandQueue:Ljava/util/List;

    if-eqz v5, :cond_7d

    .line 303
    invoke-interface {v5}, Ljava/util/List;->clear()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_75

    goto :goto_7d

    :catch_75
    const-string v5, "Unable to clear the command queue!"

    .line 307
    invoke-virtual {p0, v5, v1}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    .line 308
    invoke-virtual {p0, v4, v1}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    .line 314
    :cond_7d
    :goto_7d
    :try_start_7d
    iget-object v5, p0, Lpaulscode/sound/SoundSystem;->sourcePlayList:Ljava/util/List;

    if-eqz v5, :cond_8d

    .line 315
    invoke-interface {v5}, Ljava/util/List;->clear()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_84} :catch_85

    goto :goto_8d

    :catch_85
    const-string v5, "Unable to clear the source management list!"

    .line 319
    invoke-virtual {p0, v5, v1}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    .line 320
    invoke-virtual {p0, v4, v1}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    .line 324
    :cond_8d
    :goto_8d
    iput-object v3, p0, Lpaulscode/sound/SoundSystem;->randomNumberGenerator:Ljava/util/Random;

    .line 325
    iput-object v3, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    .line 326
    iput-object v3, p0, Lpaulscode/sound/SoundSystem;->commandQueue:Ljava/util/List;

    .line 327
    iput-object v3, p0, Lpaulscode/sound/SoundSystem;->sourcePlayList:Ljava/util/List;

    .line 328
    iput-object v3, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    const-string v3, "Author: Paul Lamb, www.paulscode.com"

    .line 330
    invoke-virtual {p0, v3, v2}, Lpaulscode/sound/SoundSystem;->importantMessage(Ljava/lang/String;I)V

    .line 331
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    return-void
.end method

.method public cull(Ljava/lang/String;)V
    .registers 4

    .line 1129
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, p1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1130
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public dequeueSound(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 455
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1, p2}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 458
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method protected errorCheck(ZLjava/lang/String;I)Z
    .registers 6

    .line 2673
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->logger:Lpaulscode/sound/SoundSystemLogger;

    iget-object v1, p0, Lpaulscode/sound/SoundSystem;->className:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2, p3}, Lpaulscode/sound/SoundSystemLogger;->errorCheck(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected errorMessage(Ljava/lang/String;I)V
    .registers 5

    .line 2683
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->logger:Lpaulscode/sound/SoundSystemLogger;

    iget-object v1, p0, Lpaulscode/sound/SoundSystem;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lpaulscode/sound/SoundSystemLogger;->errorMessage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public fadeOut(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    if-eqz p2, :cond_8

    .line 483
    new-instance v0, Lpaulscode/sound/FilenameURL;

    invoke-direct {v0, p2}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move-object v4, v0

    .line 485
    new-instance p2, Lpaulscode/sound/CommandObject;

    const/4 v2, 0x7

    move-object v1, p2

    move-object v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {p0, p2}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 488
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public fadeOut(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;J)V
    .registers 13

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 513
    new-instance v0, Lpaulscode/sound/FilenameURL;

    invoke-direct {v0, p2, p3}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move-object v4, v0

    .line 515
    new-instance p2, Lpaulscode/sound/CommandObject;

    const/4 v2, 0x7

    move-object v1, p2

    move-object v3, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {p0, p2}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 518
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public fadeOutIn(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 16

    .line 544
    new-instance v8, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x8

    new-instance v3, Lpaulscode/sound/FilenameURL;

    invoke-direct {v3, p2}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    move-object v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v8}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 549
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public fadeOutIn(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;JJ)V
    .registers 18

    move-object v0, p0

    .line 574
    new-instance v9, Lpaulscode/sound/CommandObject;

    const/16 v2, 0x8

    new-instance v4, Lpaulscode/sound/FilenameURL;

    move-object v1, p2

    move-object v3, p3

    invoke-direct {v4, p2, p3}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v1, v9

    move-object v3, p1

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v9}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 579
    iget-object v1, v0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public feedRawAudioData(Ljava/lang/String;[B)V
    .registers 5

    .line 1072
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p1, p2}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1074
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public flush(Ljava/lang/String;)V
    .registers 4

    .line 1118
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1119
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public getListenerData()Lpaulscode/sound/ListenerData;
    .registers 3

    .line 1262
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->THREAD_SYNC:Ljava/lang/Object;

    monitor-enter v0

    .line 1264
    :try_start_3
    iget-object v1, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    invoke-virtual {v1}, Lpaulscode/sound/Library;->getListenerData()Lpaulscode/sound/ListenerData;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    .line 1265
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getMasterVolume()F
    .registers 2

    .line 1252
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getMasterGain()F

    move-result v0

    return v0
.end method

.method public getPitch(Ljava/lang/String;)F
    .registers 3

    .line 1001
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v0, :cond_9

    .line 1002
    invoke-virtual {v0, p1}, Lpaulscode/sound/Library;->getPitch(Ljava/lang/String;)F

    move-result p1

    return p1

    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getVolume(Ljava/lang/String;)F
    .registers 4

    .line 973
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->THREAD_SYNC:Ljava/lang/Object;

    monitor-enter v0

    .line 975
    :try_start_3
    iget-object v1, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v1, :cond_d

    .line 976
    invoke-virtual {v1, p1}, Lpaulscode/sound/Library;->getVolume(Ljava/lang/String;)F

    move-result p1

    monitor-exit v0

    return p1

    .line 978
    :cond_d
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_10
    move-exception p1

    .line 979
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method protected importantMessage(Ljava/lang/String;I)V
    .registers 4

    .line 2661
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->logger:Lpaulscode/sound/SoundSystemLogger;

    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/SoundSystemLogger;->importantMessage(Ljava/lang/String;I)V

    return-void
.end method

.method protected init(Ljava/lang/Class;)V
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    .line 226
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting up "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lpaulscode/sound/SoundSystem;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    .line 230
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lpaulscode/sound/SoundSystem;->randomNumberGenerator:Ljava/util/Random;

    .line 232
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lpaulscode/sound/SoundSystem;->commandQueue:Ljava/util/List;

    .line 234
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lpaulscode/sound/SoundSystem;->sourcePlayList:Ljava/util/List;

    .line 237
    new-instance v2, Lpaulscode/sound/CommandThread;

    invoke-direct {v2, p0}, Lpaulscode/sound/CommandThread;-><init>(Lpaulscode/sound/SoundSystem;)V

    iput-object v2, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    .line 238
    invoke-virtual {v2}, Lpaulscode/sound/CommandThread;->start()V

    const-wide/16 v2, 0xc8

    .line 240
    invoke-static {v2, v3}, Lpaulscode/sound/SoundSystem;->snooze(J)V

    .line 242
    invoke-virtual {p0, p1}, Lpaulscode/sound/SoundSystem;->newLibrary(Ljava/lang/Class;)Z

    .line 243
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    return-void
.end method

.method public interruptCommandThread()V
    .registers 3

    .line 343
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    if-nez v0, :cond_b

    const-string v0, "Command Thread null in method \'interruptCommandThread\'"

    const/4 v1, 0x0

    .line 345
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    return-void

    .line 350
    :cond_b
    invoke-virtual {v0}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method protected linkDefaultLibrariesAndCodecs()V
    .registers 1

    return-void
.end method

.method public loadSound(Ljava/lang/String;)V
    .registers 4

    .line 364
    new-instance v0, Lpaulscode/sound/CommandObject;

    new-instance v1, Lpaulscode/sound/FilenameURL;

    invoke-direct {v1, p1}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-direct {v0, p1, v1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 367
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public loadSound(Ljava/net/URL;Ljava/lang/String;)V
    .registers 5

    .line 381
    new-instance v0, Lpaulscode/sound/CommandObject;

    new-instance v1, Lpaulscode/sound/FilenameURL;

    invoke-direct {v1, p1, p2}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-direct {v0, p1, v1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 384
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method protected message(Ljava/lang/String;I)V
    .registers 4

    .line 2651
    iget-object v0, p0, Lpaulscode/sound/SoundSystem;->logger:Lpaulscode/sound/SoundSystemLogger;

    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/SoundSystemLogger;->message(Ljava/lang/String;I)V

    return-void
.end method

.method public moveListener(FFF)V
    .registers 6

    .line 1181
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x1f

    invoke-direct {v0, v1, p1, p2, p3}, Lpaulscode/sound/CommandObject;-><init>(IFFF)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1183
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public newLibrary(Ljava/lang/Class;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1386
    invoke-static {v0, v1}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    .line 1388
    new-instance v2, Lpaulscode/sound/CommandObject;

    const/16 v3, 0x25

    invoke-direct {v2, v3, p1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/Class;)V

    invoke-virtual {p0, v2}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1390
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    move p1, v1

    .line 1392
    :goto_15
    invoke-static {v1, v1}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    move-result v2

    if-nez v2, :cond_2c

    const/16 v2, 0x64

    if-ge p1, v2, :cond_2c

    const-wide/16 v2, 0x190

    .line 1394
    invoke-static {v2, v3}, Lpaulscode/sound/SoundSystem;->snooze(J)V

    .line 1395
    iget-object v2, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v2}, Lpaulscode/sound/CommandThread;->interrupt()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    .line 1398
    :cond_2c
    invoke-static {v1, v1}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p1, 0x0

    .line 1409
    invoke-static {v1, p1}, Lpaulscode/sound/SoundSystem;->lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;

    move-result-object p1

    if-nez p1, :cond_3a

    return v0

    .line 1411
    :cond_3a
    throw p1

    .line 1400
    :cond_3b
    new-instance p1, Lpaulscode/sound/SoundSystemException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpaulscode/sound/SoundSystem;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not load after 30 seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p1, v1, v2}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;I)V

    .line 1404
    invoke-static {v0, p1}, Lpaulscode/sound/SoundSystem;->lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;

    .line 1405
    throw p1
.end method

.method public newSource(ZLjava/lang/String;Ljava/lang/String;ZFFFIF)V
    .registers 24

    move-object v0, p0

    .line 668
    new-instance v13, Lpaulscode/sound/CommandObject;

    const/16 v2, 0xa

    const/4 v4, 0x0

    new-instance v7, Lpaulscode/sound/FilenameURL;

    move-object/from16 v1, p3

    invoke-direct {v7, v1}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/lang/String;)V

    move-object v1, v13

    move v3, p1

    move/from16 v5, p4

    move-object/from16 v6, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lpaulscode/sound/CommandObject;-><init>(IZZZLjava/lang/String;Ljava/lang/Object;FFFIF)V

    invoke-virtual {p0, v13}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 672
    iget-object v1, v0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public newSource(ZLjava/lang/String;Ljava/net/URL;Ljava/lang/String;ZFFFIF)V
    .registers 25

    move-object v0, p0

    .line 694
    new-instance v13, Lpaulscode/sound/CommandObject;

    const/16 v2, 0xa

    const/4 v4, 0x0

    new-instance v7, Lpaulscode/sound/FilenameURL;

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    invoke-direct {v7, v1, v3}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v1, v13

    move v3, p1

    move/from16 v5, p5

    move-object/from16 v6, p2

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lpaulscode/sound/CommandObject;-><init>(IZZZLjava/lang/String;Ljava/lang/Object;FFFIF)V

    invoke-virtual {p0, v13}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 699
    iget-object v1, v0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public newStreamingSource(ZLjava/lang/String;Ljava/lang/String;ZFFFIF)V
    .registers 24

    move-object v0, p0

    .line 723
    new-instance v13, Lpaulscode/sound/CommandObject;

    const/16 v2, 0xa

    const/4 v4, 0x1

    new-instance v7, Lpaulscode/sound/FilenameURL;

    move-object/from16 v1, p3

    invoke-direct {v7, v1}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/lang/String;)V

    move-object v1, v13

    move v3, p1

    move/from16 v5, p4

    move-object/from16 v6, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lpaulscode/sound/CommandObject;-><init>(IZZZLjava/lang/String;Ljava/lang/Object;FFFIF)V

    invoke-virtual {p0, v13}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 727
    iget-object v1, v0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public newStreamingSource(ZLjava/lang/String;Ljava/net/URL;Ljava/lang/String;ZFFFIF)V
    .registers 25

    move-object v0, p0

    .line 750
    new-instance v13, Lpaulscode/sound/CommandObject;

    const/16 v2, 0xa

    const/4 v4, 0x1

    new-instance v7, Lpaulscode/sound/FilenameURL;

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    invoke-direct {v7, v1, v3}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v1, v13

    move v3, p1

    move/from16 v5, p5

    move-object/from16 v6, p2

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lpaulscode/sound/CommandObject;-><init>(IZZZLjava/lang/String;Ljava/lang/Object;FFFIF)V

    invoke-virtual {p0, v13}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 754
    iget-object v1, v0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .registers 4

    .line 1091
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1092
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public play(Ljava/lang/String;)V
    .registers 4

    .line 1082
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1083
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public playing()Z
    .registers 6

    .line 2457
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->THREAD_SYNC:Ljava/lang/Object;

    monitor-enter v0

    .line 2459
    :try_start_3
    iget-object v1, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2460
    monitor-exit v0

    return v2

    .line 2462
    :cond_a
    invoke-virtual {v1}, Lpaulscode/sound/Library;->getSources()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_12

    .line 2464
    monitor-exit v0

    return v2

    .line 2466
    :cond_12
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2467
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2471
    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2473
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2474
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpaulscode/sound/Source;

    if-eqz v4, :cond_1a

    .line 2476
    invoke-virtual {v4}, Lpaulscode/sound/Source;->playing()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2477
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2480
    :cond_37
    monitor-exit v0

    return v2

    :catchall_39
    move-exception v1

    .line 2481
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public playing(Ljava/lang/String;)Z
    .registers 5

    .line 2437
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->THREAD_SYNC:Ljava/lang/Object;

    monitor-enter v0

    .line 2439
    :try_start_3
    iget-object v1, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2440
    monitor-exit v0

    return v2

    .line 2442
    :cond_a
    invoke-virtual {v1}, Lpaulscode/sound/Library;->getSources()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-nez p1, :cond_18

    .line 2445
    monitor-exit v0

    return v2

    .line 2447
    :cond_18
    invoke-virtual {p1}, Lpaulscode/sound/Source;->playing()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1e
    move-exception p1

    .line 2448
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public queueSound(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 419
    new-instance v0, Lpaulscode/sound/CommandObject;

    new-instance v1, Lpaulscode/sound/FilenameURL;

    invoke-direct {v1, p2}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x5

    invoke-direct {v0, p2, p1, v1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 422
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public queueSound(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .registers 6

    .line 439
    new-instance v0, Lpaulscode/sound/CommandObject;

    new-instance v1, Lpaulscode/sound/FilenameURL;

    invoke-direct {v1, p2, p3}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    const/4 p2, 0x5

    invoke-direct {v0, p2, p1, v1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 442
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public quickPlay(ZLjava/lang/String;ZFFFIF)Ljava/lang/String;
    .registers 25

    move-object/from16 v0, p0

    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    new-instance v2, Lpaulscode/sound/CommandObject;

    const/16 v4, 0xc

    const/4 v6, 0x0

    new-instance v9, Lpaulscode/sound/FilenameURL;

    move-object/from16 v3, p2

    invoke-direct {v9, v3}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x1

    move-object v3, v2

    move/from16 v5, p1

    move/from16 v7, p3

    move-object v8, v1

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-direct/range {v3 .. v15}, Lpaulscode/sound/CommandObject;-><init>(IZZZLjava/lang/String;Ljava/lang/Object;FFFIFZ)V

    invoke-virtual {v0, v2}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 810
    new-instance v2, Lpaulscode/sound/CommandObject;

    const/16 v3, 0x15

    invoke-direct {v2, v3, v1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 812
    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v2}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-object v1
.end method

.method public quickPlay(ZLjava/net/URL;Ljava/lang/String;ZFFFIF)Ljava/lang/String;
    .registers 26

    move-object/from16 v0, p0

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 844
    new-instance v2, Lpaulscode/sound/CommandObject;

    const/16 v4, 0xc

    const/4 v6, 0x0

    new-instance v9, Lpaulscode/sound/FilenameURL;

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct {v9, v3, v5}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    const/4 v15, 0x1

    move-object v3, v2

    move/from16 v5, p1

    move/from16 v7, p4

    move-object v8, v1

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct/range {v3 .. v15}, Lpaulscode/sound/CommandObject;-><init>(IZZZLjava/lang/String;Ljava/lang/Object;FFFIFZ)V

    invoke-virtual {v0, v2}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 849
    new-instance v2, Lpaulscode/sound/CommandObject;

    const/16 v3, 0x15

    invoke-direct {v2, v3, v1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 851
    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v2}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-object v1
.end method

.method public quickStream(ZLjava/lang/String;ZFFFIF)Ljava/lang/String;
    .registers 25

    move-object/from16 v0, p0

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 887
    new-instance v2, Lpaulscode/sound/CommandObject;

    const/16 v4, 0xc

    const/4 v6, 0x1

    new-instance v9, Lpaulscode/sound/FilenameURL;

    move-object/from16 v3, p2

    invoke-direct {v9, v3}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x1

    move-object v3, v2

    move/from16 v5, p1

    move/from16 v7, p3

    move-object v8, v1

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-direct/range {v3 .. v15}, Lpaulscode/sound/CommandObject;-><init>(IZZZLjava/lang/String;Ljava/lang/Object;FFFIFZ)V

    invoke-virtual {v0, v2}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 891
    new-instance v2, Lpaulscode/sound/CommandObject;

    const/16 v3, 0x15

    invoke-direct {v2, v3, v1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 893
    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v2}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-object v1
.end method

.method public quickStream(ZLjava/net/URL;Ljava/lang/String;ZFFFIF)Ljava/lang/String;
    .registers 26

    move-object/from16 v0, p0

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 927
    new-instance v2, Lpaulscode/sound/CommandObject;

    const/16 v4, 0xc

    const/4 v6, 0x1

    new-instance v9, Lpaulscode/sound/FilenameURL;

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct {v9, v3, v5}, Lpaulscode/sound/FilenameURL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    const/4 v15, 0x1

    move-object v3, v2

    move/from16 v5, p1

    move/from16 v7, p4

    move-object v8, v1

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct/range {v3 .. v15}, Lpaulscode/sound/CommandObject;-><init>(IZZZLjava/lang/String;Ljava/lang/Object;FFFIFZ)V

    invoke-virtual {v0, v2}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 932
    new-instance v2, Lpaulscode/sound/CommandObject;

    const/16 v3, 0x15

    invoke-direct {v2, v3, v1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 934
    iget-object v2, v0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v2}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-object v1
.end method

.method public rawDataStream(Lmcshim/sound/sampled/AudioFormat;ZLjava/lang/String;FFFIF)V
    .registers 21

    move-object v0, p0

    .line 775
    new-instance v11, Lpaulscode/sound/CommandObject;

    const/16 v2, 0xb

    move-object v1, v11

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/Object;ZLjava/lang/String;FFFIF)V

    invoke-virtual {p0, v11}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 778
    iget-object v1, v0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {v1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public removeSource(Ljava/lang/String;)V
    .registers 4

    .line 1169
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x1e

    invoke-direct {v0, v1, p1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1171
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public removeTemporarySources()V
    .registers 3

    .line 2423
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->THREAD_SYNC:Ljava/lang/Object;

    monitor-enter v0

    .line 2425
    :try_start_3
    iget-object v1, p0, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-eqz v1, :cond_a

    .line 2426
    invoke-virtual {v1}, Lpaulscode/sound/Library;->removeTemporarySources()V

    .line 2427
    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public rewind(Ljava/lang/String;)V
    .registers 4

    .line 1109
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1110
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public setAttenuation(Ljava/lang/String;I)V
    .registers 5

    .line 1039
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p1, p2}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1041
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public setDistOrRoll(Ljava/lang/String;F)V
    .registers 5

    .line 1052
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p1, p2}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;F)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1054
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public setListenerAngle(F)V
    .registers 4

    .line 1214
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x22

    invoke-direct {v0, v1, p1}, Lpaulscode/sound/CommandObject;-><init>(IF)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1216
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public setListenerOrientation(FFFFFF)V
    .registers 16

    .line 1230
    new-instance v8, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x23

    move-object v0, v8

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lpaulscode/sound/CommandObject;-><init>(IFFFFFF)V

    invoke-virtual {p0, v8}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1232
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public setListenerPosition(FFF)V
    .registers 6

    .line 1193
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x20

    invoke-direct {v0, v1, p1, p2, p3}, Lpaulscode/sound/CommandObject;-><init>(IFFF)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1195
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public setLooping(Ljava/lang/String;Z)V
    .registers 5

    .line 1026
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p1, p2}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1028
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public setMasterVolume(F)V
    .registers 4

    .line 1241
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x24

    invoke-direct {v0, v1, p1}, Lpaulscode/sound/CommandObject;-><init>(IF)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1243
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public setPitch(Ljava/lang/String;F)V
    .registers 5

    .line 989
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p1, p2}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;F)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 991
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public setPosition(Ljava/lang/String;FFF)V
    .registers 12

    .line 949
    new-instance v6, Lpaulscode/sound/CommandObject;

    const/16 v1, 0xd

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;FFF)V

    invoke-virtual {p0, v6}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 951
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public setPriority(Ljava/lang/String;Z)V
    .registers 5

    .line 1015
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p1, p2}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1017
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public setTemporary(Ljava/lang/String;Z)V
    .registers 5

    .line 1158
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p1, p2}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1160
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public setVolume(Ljava/lang/String;F)V
    .registers 5

    .line 960
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p1, p2}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;F)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 962
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .registers 4

    .line 1100
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1101
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public switchLibrary(Ljava/lang/Class;)Z
    .registers 19

    move-object/from16 v1, p0

    const-string v0, " did not load properly.  Library was null after initialization."

    const-string v2, "("

    const-string v3, "Switching to "

    .line 1277
    sget-object v4, Lpaulscode/sound/SoundSystemConfig;->THREAD_SYNC:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1279
    :try_start_d
    invoke-static {v6, v5}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    const-string v7, ""

    .line 1290
    iget-object v8, v1, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    const/4 v9, 0x0

    if-eqz v8, :cond_50

    .line 1292
    invoke-static {v6, v9}, Lpaulscode/sound/SoundSystem;->currentLibrary(ZLjava/lang/Class;)Ljava/lang/Class;

    .line 1293
    iget-object v8, v1, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    invoke-virtual {v8}, Lpaulscode/sound/Library;->getSources()Ljava/util/HashMap;

    move-result-object v8

    invoke-direct {v1, v8}, Lpaulscode/sound/SoundSystem;->copySources(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v8

    .line 1294
    iget-object v10, v1, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    invoke-virtual {v10}, Lpaulscode/sound/Library;->getListenerData()Lpaulscode/sound/ListenerData;

    move-result-object v10

    .line 1295
    iget-object v11, v1, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    invoke-virtual {v11}, Lpaulscode/sound/Library;->getMidiChannel()Lpaulscode/sound/MidiChannel;

    move-result-object v11

    if-eqz v11, :cond_45

    .line 1299
    invoke-virtual {v11}, Lpaulscode/sound/MidiChannel;->getLooping()Z

    move-result v7

    .line 1300
    invoke-virtual {v11}, Lpaulscode/sound/MidiChannel;->getSourcename()Ljava/lang/String;

    move-result-object v12

    .line 1301
    invoke-virtual {v11}, Lpaulscode/sound/MidiChannel;->getFilenameURL()Lpaulscode/sound/FilenameURL;

    move-result-object v13

    move v14, v6

    move-object/from16 v16, v12

    move v12, v7

    move-object/from16 v7, v16

    goto :goto_48

    :cond_45
    move v14, v5

    move v12, v6

    move-object v13, v9

    .line 1304
    :goto_48
    iget-object v15, v1, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    invoke-virtual {v15}, Lpaulscode/sound/Library;->cleanup()V

    .line 1305
    iput-object v9, v1, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    goto :goto_56

    :cond_50
    move v14, v5

    move v12, v6

    move-object v8, v9

    move-object v10, v8

    move-object v11, v10

    move-object v13, v11

    :goto_56
    const-string v15, ""

    .line 1307
    invoke-virtual {v1, v15, v5}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    .line 1308
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lpaulscode/sound/SoundSystemConfig;->getLibraryTitle(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    .line 1310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lpaulscode/sound/SoundSystemConfig;->getLibraryDescription(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V
    :try_end_86
    .catchall {:try_start_d .. :try_end_86} :catchall_108

    .line 1315
    :try_start_86
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpaulscode/sound/Library;

    iput-object v2, v1, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;
    :try_end_8e
    .catch Ljava/lang/InstantiationException; {:try_start_86 .. :try_end_8e} :catch_a1
    .catch Ljava/lang/IllegalAccessException; {:try_start_86 .. :try_end_8e} :catch_9b
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_86 .. :try_end_8e} :catch_95
    .catch Ljava/lang/SecurityException; {:try_start_86 .. :try_end_8e} :catch_8f
    .catchall {:try_start_86 .. :try_end_8e} :catchall_108

    goto :goto_a6

    :catch_8f
    :try_start_8f
    const-string v2, "The specified library did not load properly"

    .line 1331
    invoke-virtual {v1, v2, v6}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    goto :goto_a6

    :catch_95
    const-string v2, "The specified library did not load properly"

    .line 1327
    invoke-virtual {v1, v2, v6}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    goto :goto_a6

    :catch_9b
    const-string v2, "The specified library did not load properly"

    .line 1323
    invoke-virtual {v1, v2, v6}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    goto :goto_a6

    :catch_a1
    const-string v2, "The specified library did not load properly"

    .line 1319
    invoke-virtual {v1, v2, v6}, Lpaulscode/sound/SoundSystem;->errorMessage(Ljava/lang/String;I)V

    .line 1334
    :goto_a6
    iget-object v2, v1, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    if-nez v2, :cond_ac

    move v2, v6

    goto :goto_ad

    :cond_ac
    move v2, v5

    :goto_ad
    const-string v3, "Library null after initialization in method \'switchLibrary\'"

    invoke-virtual {v1, v2, v3, v6}, Lpaulscode/sound/SoundSystem;->errorCheck(ZLjava/lang/String;I)Z

    move-result v2
    :try_end_b3
    .catchall {:try_start_8f .. :try_end_b3} :catchall_108

    if-nez v2, :cond_ea

    .line 1348
    :try_start_b5
    iget-object v0, v1, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    invoke-virtual {v0}, Lpaulscode/sound/Library;->init()V
    :try_end_ba
    .catch Lpaulscode/sound/SoundSystemException; {:try_start_b5 .. :try_end_ba} :catch_e2
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_108

    .line 1357
    :try_start_ba
    iget-object v0, v1, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    invoke-virtual {v0, v10}, Lpaulscode/sound/Library;->setListenerData(Lpaulscode/sound/ListenerData;)V

    if-eqz v14, :cond_d0

    if-eqz v11, :cond_c6

    .line 1361
    invoke-virtual {v11}, Lpaulscode/sound/MidiChannel;->cleanup()V

    .line 1362
    :cond_c6
    new-instance v0, Lpaulscode/sound/MidiChannel;

    invoke-direct {v0, v12, v7, v13}, Lpaulscode/sound/MidiChannel;-><init>(ZLjava/lang/String;Lpaulscode/sound/FilenameURL;)V

    .line 1364
    iget-object v2, v1, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    invoke-virtual {v2, v0}, Lpaulscode/sound/Library;->setMidiChannel(Lpaulscode/sound/MidiChannel;)V

    .line 1366
    :cond_d0
    iget-object v0, v1, Lpaulscode/sound/SoundSystem;->soundLibrary:Lpaulscode/sound/Library;

    invoke-virtual {v0, v8}, Lpaulscode/sound/Library;->copySources(Ljava/util/HashMap;)V

    const-string v0, ""

    .line 1368
    invoke-virtual {v1, v0, v5}, Lpaulscode/sound/SoundSystem;->message(Ljava/lang/String;I)V

    .line 1370
    invoke-static {v6, v9}, Lpaulscode/sound/SoundSystem;->lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;

    .line 1371
    invoke-static {v6, v6}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    .line 1373
    monitor-exit v4

    return v6

    :catch_e2
    move-exception v0

    .line 1352
    invoke-static {v6, v0}, Lpaulscode/sound/SoundSystem;->lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;

    .line 1353
    invoke-static {v6, v6}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    .line 1354
    throw v0

    .line 1337
    :cond_ea
    new-instance v2, Lpaulscode/sound/SoundSystemException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lpaulscode/sound/SoundSystem;->className:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;I)V

    .line 1341
    invoke-static {v6, v2}, Lpaulscode/sound/SoundSystem;->lastException(ZLpaulscode/sound/SoundSystemException;)Lpaulscode/sound/SoundSystemException;

    .line 1342
    invoke-static {v6, v6}, Lpaulscode/sound/SoundSystem;->initialized(ZZ)Z

    .line 1343
    throw v2

    :catchall_108
    move-exception v0

    .line 1374
    monitor-exit v4
    :try_end_10a
    .catchall {:try_start_ba .. :try_end_10a} :catchall_108

    throw v0
.end method

.method public turnListener(F)V
    .registers 4

    .line 1204
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/16 v1, 0x21

    invoke-direct {v0, v1, p1}, Lpaulscode/sound/CommandObject;-><init>(IF)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 1206
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method

.method public unloadSound(Ljava/lang/String;)V
    .registers 4

    .line 399
    new-instance v0, Lpaulscode/sound/CommandObject;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lpaulscode/sound/CommandObject;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 401
    iget-object p1, p0, Lpaulscode/sound/SoundSystem;->commandThread:Lpaulscode/sound/CommandThread;

    invoke-virtual {p1}, Lpaulscode/sound/CommandThread;->interrupt()V

    return-void
.end method
