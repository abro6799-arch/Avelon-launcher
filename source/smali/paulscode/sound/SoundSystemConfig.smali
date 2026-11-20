###### Class paulscode.sound.SoundSystemConfig (paulscode.sound.SoundSystemConfig)
.class public Lpaulscode/sound/SoundSystemConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ATTENUATION_LINEAR:I = 0x2

.field public static final ATTENUATION_NONE:I = 0x0

.field public static final ATTENUATION_ROLLOFF:I = 0x1

.field public static final EXTENSION_MIDI:Ljava/lang/String; = ".*[mM][iI][dD][iI]?$"

.field public static final PREFIX_URL:Ljava/lang/String; = "^[hH][tT][tT][pP]://.*"

.field public static final THREAD_SYNC:Ljava/lang/Object;

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_STREAMING:I = 0x1

.field private static codecs:Ljava/util/LinkedList; = null

.field private static defaultAttenuationModel:I = 0x1

.field private static defaultFadeDistance:F = 1000.0f

.field private static defaultRolloffFactor:F = 0.03f

.field private static fileChunkSize:I = 0x100000

.field private static libraries:Ljava/util/LinkedList; = null

.field private static logger:Lpaulscode/sound/SoundSystemLogger; = null

.field private static masterGain:F = 1.0f

.field private static maxFileSize:I = 0x10000000

.field private static midiCodec:Z = false

.field private static numberNormalChannels:I = 0x1c

.field private static numberStreamingBuffers:I = 0x3

.field private static numberStreamingChannels:I = 0x4

.field private static soundFilesPackage:Ljava/lang/String; = "Sounds/"

.field private static streamingBufferSize:I = 0x20000


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpaulscode/sound/SoundSystemConfig;->THREAD_SYNC:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    .line 43
    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static addLibrary(Ljava/lang/Class;)V
    .registers 3

    if-eqz p0, :cond_2b

    .line 196
    const-class v0, Lpaulscode/sound/Library;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 198
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->libraries:Ljava/util/LinkedList;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lpaulscode/sound/SoundSystemConfig;->libraries:Ljava/util/LinkedList;

    .line 200
    :cond_15
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->libraries:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->libraries:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_22
    return-void

    .line 196
    :cond_23
    new-instance p0, Lpaulscode/sound/SoundSystemException;

    const-string v0, "The specified class does not extend class \'Library\' in method \'addLibrary\'"

    invoke-direct {p0, v0}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_2b
    new-instance p0, Lpaulscode/sound/SoundSystemException;

    const-string v0, "Parameter null in method \'addLibrary\'"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static errorMessage(Ljava/lang/String;)V
    .registers 4

    .line 648
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->logger:Lpaulscode/sound/SoundSystemLogger;

    if-eqz v0, :cond_a

    const-string v1, "SoundSystemConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lpaulscode/sound/SoundSystemLogger;->errorMessage(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a
    return-void
.end method

.method public static declared-synchronized getCodec(Ljava/lang/String;)Lpaulscode/sound/ICodec;
    .registers 6

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 612
    :try_start_3
    sget-object v1, Lpaulscode/sound/SoundSystemConfig;->codecs:Ljava/util/LinkedList;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2a

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return-object v2

    .line 614
    :cond_a
    :try_start_a
    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 617
    :cond_e
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 618
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpaulscode/sound/SoundSystemConfig$Codec;

    .line 619
    iget-object v4, v3, Lpaulscode/sound/SoundSystemConfig$Codec;->extensionRegX:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Lpaulscode/sound/SoundSystemConfig$Codec;->getInstance()Lpaulscode/sound/ICodec;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_2a

    monitor-exit v0

    return-object p0

    .line 622
    :cond_28
    monitor-exit v0

    return-object v2

    :catchall_2a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDefaultAttenuation()I
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 430
    :try_start_3
    sget v1, Lpaulscode/sound/SoundSystemConfig;->defaultAttenuationModel:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefaultFadeDistance()F
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 468
    :try_start_3
    sget v1, Lpaulscode/sound/SoundSystemConfig;->defaultFadeDistance:F
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefaultRolloff()F
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 449
    :try_start_3
    sget v1, Lpaulscode/sound/SoundSystemConfig;->defaultRolloffFactor:F
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getFileChunkSize()I
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 569
    :try_start_3
    sget v1, Lpaulscode/sound/SoundSystemConfig;->fileChunkSize:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLibraries()Ljava/util/LinkedList;
    .registers 1

    .line 222
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->libraries:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static getLibraryDescription(Ljava/lang/Class;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const-string p0, "Parameter \'libraryClass\' null in method\'getLibrayDescription\'"

    .line 288
    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v0

    .line 291
    :cond_9
    const-class v1, Lpaulscode/sound/Library;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string p0, "The specified class does not extend class \'Library\' in method \'getLibraryDescription\'"

    .line 292
    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v0

    :cond_17
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getDescription"

    .line 296
    invoke-static {p0, v3, v2, v1}, Lpaulscode/sound/SoundSystemConfig;->runMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2a

    const-string p0, "Method \'Library.getDescription\' returned \'null\' in method \'getLibraryDescription\'"

    .line 298
    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v0

    .line 302
    :cond_2a
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getLibraryTitle(Ljava/lang/Class;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const-string p0, "Parameter \'libraryClass\' null in method\'getLibrayTitle\'"

    .line 262
    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v0

    .line 265
    :cond_9
    const-class v1, Lpaulscode/sound/Library;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string p0, "The specified class does not extend class \'Library\' in method \'getLibraryTitle\'"

    .line 266
    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v0

    :cond_17
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getTitle"

    .line 270
    invoke-static {p0, v3, v2, v1}, Lpaulscode/sound/SoundSystemConfig;->runMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2a

    const-string p0, "Method \'Library.getTitle\' returned \'null\' in method \'getLibraryTitle\'"

    .line 272
    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v0

    .line 276
    :cond_2a
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getLogger()Lpaulscode/sound/SoundSystemLogger;
    .registers 1

    .line 338
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->logger:Lpaulscode/sound/SoundSystemLogger;

    return-object v0
.end method

.method public static declared-synchronized getMasterGain()F
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 410
    :try_start_3
    sget v1, Lpaulscode/sound/SoundSystemConfig;->masterGain:F
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getMaxFileSize()I
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 548
    :try_start_3
    sget v1, Lpaulscode/sound/SoundSystemConfig;->maxFileSize:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getNumberNormalChannels()I
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 366
    :try_start_3
    sget v1, Lpaulscode/sound/SoundSystemConfig;->numberNormalChannels:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getNumberStreamingBuffers()I
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 527
    :try_start_3
    sget v1, Lpaulscode/sound/SoundSystemConfig;->numberStreamingBuffers:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getNumberStreamingChannels()I
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 391
    :try_start_3
    sget v1, Lpaulscode/sound/SoundSystemConfig;->numberStreamingChannels:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSoundFilesPackage()Ljava/lang/String;
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 487
    :try_start_3
    sget-object v1, Lpaulscode/sound/SoundSystemConfig;->soundFilesPackage:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getStreamingBufferSize()I
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 506
    :try_start_3
    sget v1, Lpaulscode/sound/SoundSystemConfig;->streamingBufferSize:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static libraryCompatible(Ljava/lang/Class;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const-string p0, "Parameter \'libraryClass\' null in method\'librayCompatible\'"

    .line 235
    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return v0

    .line 238
    :cond_9
    const-class v1, Lpaulscode/sound/Library;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string p0, "The specified class does not extend class \'Library\' in method \'libraryCompatible\'"

    .line 239
    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return v0

    :cond_17
    new-array v1, v0, [Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "libraryCompatible"

    .line 243
    invoke-static {p0, v3, v1, v2}, Lpaulscode/sound/SoundSystemConfig;->runMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_29

    const-string p0, "Method \'Library.libraryCompatible\' returned \'null\' in method \'libraryCompatible\'"

    .line 246
    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return v0

    .line 250
    :cond_29
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static midiCodec()Z
    .registers 1

    .line 632
    sget-boolean v0, Lpaulscode/sound/SoundSystemConfig;->midiCodec:Z

    return v0
.end method

.method public static removeLibrary(Ljava/lang/Class;)V
    .registers 2

    .line 210
    sget-object v0, Lpaulscode/sound/SoundSystemConfig;->libraries:Ljava/util/LinkedList;

    if-eqz v0, :cond_a

    if-nez p0, :cond_7

    goto :goto_a

    .line 212
    :cond_7
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_a
    :goto_a
    return-void
.end method

.method private static runMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const-string v0, "\' in method \'runMethod\'"

    const/4 v1, 0x0

    .line 670
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_7} :catch_a9
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_7} :catch_94
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_7f

    if-nez p0, :cond_20

    .line 682
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Method \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found for the class specified in method \'runMethod\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v1

    .line 688
    :cond_20
    :try_start_20
    invoke-virtual {p0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_24} :catch_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_24} :catch_55
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_24} :catch_4f
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_24} :catch_3a
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_20 .. :try_end_24} :catch_25

    return-object p0

    .line 702
    :catch_25
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "ExceptionInInitializerError thrown when attempting to invoke method \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v1

    .line 699
    :catch_3a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "NullPointerException thrown when attempting to invoke method \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v1

    :catch_4f
    const-string p0, "InvocationTargetException thrown while attempting to invoke method \'Library.getTitle\' in method \'getLibraryTitle\'"

    .line 696
    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v1

    .line 693
    :catch_55
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "IllegalArgumentException thrown when attempting to invoke method \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v1

    .line 690
    :catch_6a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "IllegalAccessException thrown when attempting to invoke method \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v1

    .line 678
    :catch_7f
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "NullPointerException thrown when attempting to call method \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v1

    .line 675
    :catch_94
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Access denied when attempting to call method \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v1

    .line 672
    :catch_a9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "NoSuchMethodException thrown when attempting to call method \'"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpaulscode/sound/SoundSystemConfig;->errorMessage(Ljava/lang/String;)V

    return-object v1
.end method

.method public static declared-synchronized setCodec(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    const/4 v1, 0x2

    if-eqz p0, :cond_61

    if-eqz p1, :cond_59

    .line 584
    :try_start_8
    const-class v1, Lpaulscode/sound/ICodec;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 587
    sget-object v1, Lpaulscode/sound/SoundSystemConfig;->codecs:Ljava/util/LinkedList;

    if-nez v1, :cond_1b

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lpaulscode/sound/SoundSystemConfig;->codecs:Ljava/util/LinkedList;

    .line 589
    :cond_1b
    sget-object v1, Lpaulscode/sound/SoundSystemConfig;->codecs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 592
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 593
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpaulscode/sound/SoundSystemConfig$Codec;

    .line 594
    iget-object v2, v2, Lpaulscode/sound/SoundSystemConfig$Codec;->extensionRegX:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_21

    .line 596
    :cond_39
    sget-object v1, Lpaulscode/sound/SoundSystemConfig;->codecs:Ljava/util/LinkedList;

    new-instance v2, Lpaulscode/sound/SoundSystemConfig$Codec;

    invoke-direct {v2, p0, p1}, Lpaulscode/sound/SoundSystemConfig$Codec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string p1, ".*[mM][iI][dD][iI]?$"

    .line 600
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4e

    const/4 p0, 0x1

    sput-boolean p0, Lpaulscode/sound/SoundSystemConfig;->midiCodec:Z
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_69

    .line 601
    :cond_4e
    monitor-exit v0

    return-void

    .line 584
    :cond_50
    :try_start_50
    new-instance p0, Lpaulscode/sound/SoundSystemException;

    const-string p1, "The specified class does not implement interface \'ICodec\' in method \'setCodec\'"

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 583
    :cond_59
    new-instance p0, Lpaulscode/sound/SoundSystemException;

    const-string p1, "Parameter \'iCodecClass\' null in method \'setCodec\'."

    invoke-direct {p0, p1, v1}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 582
    :cond_61
    new-instance p0, Lpaulscode/sound/SoundSystemException;

    const-string p1, "Parameter \'extension\' null in method \'setCodec\'."

    invoke-direct {p0, p1, v1}, Lpaulscode/sound/SoundSystemException;-><init>(Ljava/lang/String;I)V

    throw p0
    :try_end_69
    .catchall {:try_start_50 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDefaultAttenuation(I)V
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 421
    :try_start_3
    sput p0, Lpaulscode/sound/SoundSystemConfig;->defaultAttenuationModel:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 422
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDefaultFadeDistance(F)V
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 459
    :try_start_3
    sput p0, Lpaulscode/sound/SoundSystemConfig;->defaultFadeDistance:F
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 460
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDefaultRolloff(F)V
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 440
    :try_start_3
    sput p0, Lpaulscode/sound/SoundSystemConfig;->defaultRolloffFactor:F
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 441
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setFileChunkSize(I)V
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 559
    :try_start_3
    sput p0, Lpaulscode/sound/SoundSystemConfig;->fileChunkSize:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 560
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setLogger(Lpaulscode/sound/SoundSystemLogger;)V
    .registers 1

    .line 329
    sput-object p0, Lpaulscode/sound/SoundSystemConfig;->logger:Lpaulscode/sound/SoundSystemLogger;

    return-void
.end method

.method public static declared-synchronized setMasterGain(F)V
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 401
    :try_start_3
    sput p0, Lpaulscode/sound/SoundSystemConfig;->masterGain:F
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 402
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setMaxFileSize(I)V
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 539
    :try_start_3
    sput p0, Lpaulscode/sound/SoundSystemConfig;->maxFileSize:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 540
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setNumberNormalChannels(I)V
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 356
    :try_start_3
    sput p0, Lpaulscode/sound/SoundSystemConfig;->numberNormalChannels:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 357
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setNumberStreamingBuffers(I)V
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 518
    :try_start_3
    sput p0, Lpaulscode/sound/SoundSystemConfig;->numberStreamingBuffers:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 519
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setNumberStreamingChannels(I)V
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 382
    :try_start_3
    sput p0, Lpaulscode/sound/SoundSystemConfig;->numberStreamingChannels:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 383
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setSoundFilesPackage(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 478
    :try_start_3
    sput-object p0, Lpaulscode/sound/SoundSystemConfig;->soundFilesPackage:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 479
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setStreamingBufferSize(I)V
    .registers 2

    const-class v0, Lpaulscode/sound/SoundSystemConfig;

    monitor-enter v0

    .line 497
    :try_start_3
    sput p0, Lpaulscode/sound/SoundSystemConfig;->streamingBufferSize:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 498
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

###### Class paulscode.sound.SoundSystemConfig.Codec (paulscode.sound.SoundSystemConfig$Codec)
.class Lpaulscode/sound/SoundSystemConfig$Codec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public extensionRegX:Ljava/lang/String;

.field public iCodecClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 7

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 741
    iput-object v0, p0, Lpaulscode/sound/SoundSystemConfig$Codec;->extensionRegX:Ljava/lang/String;

    if-eqz p1, :cond_63

    .line 743
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_63

    const-string v0, ".*"

    .line 746
    iput-object v0, p0, Lpaulscode/sound/SoundSystemConfig$Codec;->extensionRegX:Ljava/lang/String;

    const/4 v0, 0x0

    .line 748
    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4e

    add-int/lit8 v1, v0, 0x1

    .line 750
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lpaulscode/sound/SoundSystemConfig$Codec;->extensionRegX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/SoundSystemConfig$Codec;->extensionRegX:Ljava/lang/String;

    move v0, v1

    goto :goto_14

    .line 754
    :cond_4e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lpaulscode/sound/SoundSystemConfig$Codec;->extensionRegX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpaulscode/sound/SoundSystemConfig$Codec;->extensionRegX:Ljava/lang/String;

    .line 757
    :cond_63
    iput-object p2, p0, Lpaulscode/sound/SoundSystemConfig$Codec;->iCodecClass:Ljava/lang/Class;

    return-void
.end method

.method private instantiationErrorMessage()V
    .registers 2

    const-string v0, "Unrecognized ICodec implementation in method \'getInstance\'.  Ensure that the implementing class has one public, parameterless constructor."

    .line 790
    invoke-static {v0}, Lpaulscode/sound/SoundSystemConfig;->access$000(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getInstance()Lpaulscode/sound/ICodec;
    .registers 3

    .line 761
    iget-object v0, p0, Lpaulscode/sound/SoundSystemConfig$Codec;->iCodecClass:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 765
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_a} :catch_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_a} :catch_1b
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_6 .. :try_end_a} :catch_17
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_a} :catch_13

    if-nez v0, :cond_10

    .line 782
    invoke-direct {p0}, Lpaulscode/sound/SoundSystemConfig$Codec;->instantiationErrorMessage()V

    return-object v1

    .line 786
    :cond_10
    check-cast v0, Lpaulscode/sound/ICodec;

    return-object v0

    .line 776
    :catch_13
    invoke-direct {p0}, Lpaulscode/sound/SoundSystemConfig$Codec;->instantiationErrorMessage()V

    return-object v1

    .line 773
    :catch_17
    invoke-direct {p0}, Lpaulscode/sound/SoundSystemConfig$Codec;->instantiationErrorMessage()V

    return-object v1

    .line 770
    :catch_1b
    invoke-direct {p0}, Lpaulscode/sound/SoundSystemConfig$Codec;->instantiationErrorMessage()V

    return-object v1

    .line 767
    :catch_1f
    invoke-direct {p0}, Lpaulscode/sound/SoundSystemConfig$Codec;->instantiationErrorMessage()V

    return-object v1
.end method
