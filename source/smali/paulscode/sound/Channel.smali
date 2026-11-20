###### Class paulscode.sound.Channel (paulscode.sound.Channel)
.class public Lpaulscode/sound/Channel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public attachedSource:Lpaulscode/sound/Source;

.field public channelType:I

.field protected libraryType:Ljava/lang/Class;

.field private logger:Lpaulscode/sound/SoundSystemLogger;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lpaulscode/sound/Library;

    iput-object v0, p0, Lpaulscode/sound/Channel;->libraryType:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    .line 81
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/Channel;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 83
    iput p1, p0, Lpaulscode/sound/Channel;->channelType:I

    return-void
.end method


# virtual methods
.method public buffersProcessed()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public cleanup()V
    .registers 2

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lpaulscode/sound/Channel;->logger:Lpaulscode/sound/SoundSystemLogger;

    return-void
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method protected errorCheck(ZLjava/lang/String;)Z
    .registers 6

    .line 239
    iget-object v0, p0, Lpaulscode/sound/Channel;->logger:Lpaulscode/sound/SoundSystemLogger;

    invoke-virtual {p0}, Lpaulscode/sound/Channel;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lpaulscode/sound/SoundSystemLogger;->errorCheck(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected errorMessage(Ljava/lang/String;)V
    .registers 5

    .line 248
    iget-object v0, p0, Lpaulscode/sound/Channel;->logger:Lpaulscode/sound/SoundSystemLogger;

    invoke-virtual {p0}, Lpaulscode/sound/Channel;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lpaulscode/sound/SoundSystemLogger;->errorMessage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public feedRawAudioData([B)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public getClassName()Ljava/lang/String;
    .registers 4

    .line 205
    iget-object v0, p0, Lpaulscode/sound/Channel;->libraryType:Ljava/lang/Class;

    invoke-static {v0}, Lpaulscode/sound/SoundSystemConfig;->getLibraryTitle(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No Sound"

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Channel"

    if-eqz v1, :cond_11

    return-object v2

    .line 210
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected importantMessage(Ljava/lang/String;)V
    .registers 4

    .line 228
    iget-object v0, p0, Lpaulscode/sound/Channel;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->importantMessage(Ljava/lang/String;I)V

    return-void
.end method

.method protected message(Ljava/lang/String;)V
    .registers 4

    .line 219
    iget-object v0, p0, Lpaulscode/sound/Channel;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->message(Ljava/lang/String;I)V

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public play()V
    .registers 1

    return-void
.end method

.method public playing()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public preLoadBuffers(Ljava/util/LinkedList;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method protected printStackTrace(Ljava/lang/Exception;)V
    .registers 4

    .line 257
    iget-object v0, p0, Lpaulscode/sound/Channel;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->printStackTrace(Ljava/lang/Exception;I)V

    return-void
.end method

.method public processBuffer()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public queueBuffer([B)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public rewind()V
    .registers 1

    return-void
.end method

.method public setAudioFormat(Lmcshim/sound/sampled/AudioFormat;)V
    .registers 2

    return-void
.end method

.method public stop()V
    .registers 1

    return-void
.end method
