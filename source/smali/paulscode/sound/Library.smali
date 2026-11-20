###### Class paulscode.sound.Library (paulscode.sound.Library)
.class public Lpaulscode/sound/Library;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected bufferMap:Ljava/util/HashMap;

.field protected listener:Lpaulscode/sound/ListenerData;

.field private logger:Lpaulscode/sound/SoundSystemLogger;

.field private midiChannel:Lpaulscode/sound/MidiChannel;

.field private nextNormalChannel:I

.field private nextStreamingChannel:I

.field private normalChannelSourceNames:[Ljava/lang/String;

.field protected normalChannels:Ljava/util/List;

.field protected sourceMap:Ljava/util/HashMap;

.field protected streamThread:Lpaulscode/sound/StreamThread;

.field private streamingChannelSourceNames:[Ljava/lang/String;

.field protected streamingChannels:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 13

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lpaulscode/sound/Library;->bufferMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lpaulscode/sound/Library;->nextStreamingChannel:I

    .line 108
    iput v0, p0, Lpaulscode/sound/Library;->nextNormalChannel:I

    .line 124
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/Library;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/Library;->bufferMap:Ljava/util/HashMap;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    .line 132
    new-instance v0, Lpaulscode/sound/ListenerData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lpaulscode/sound/ListenerData;-><init>(FFFFFFFFFF)V

    iput-object v0, p0, Lpaulscode/sound/Library;->listener:Lpaulscode/sound/ListenerData;

    .line 137
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/Library;->streamingChannels:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/Library;->normalChannels:Ljava/util/List;

    .line 139
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getNumberStreamingChannels()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lpaulscode/sound/Library;->streamingChannelSourceNames:[Ljava/lang/String;

    .line 141
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getNumberNormalChannels()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lpaulscode/sound/Library;->normalChannelSourceNames:[Ljava/lang/String;

    .line 144
    new-instance v0, Lpaulscode/sound/StreamThread;

    invoke-direct {v0}, Lpaulscode/sound/StreamThread;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/Library;->streamThread:Lpaulscode/sound/StreamThread;

    .line 145
    invoke-virtual {v0}, Lpaulscode/sound/StreamThread;->start()V

    return-void
.end method

.method public static getDescription()Ljava/lang/String;
    .registers 1

    const-string v0, "Silent Mode"

    return-object v0
.end method

.method private getNextChannel(Lpaulscode/sound/Source;)Lpaulscode/sound/Channel;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1000
    :cond_4
    iget-object v1, p1, Lpaulscode/sound/Source;->sourcename:Ljava/lang/String;

    if-nez v1, :cond_9

    return-object v0

    .line 1011
    :cond_9
    iget-boolean v2, p1, Lpaulscode/sound/Source;->toStream:Z

    if-eqz v2, :cond_14

    .line 1013
    iget v2, p0, Lpaulscode/sound/Library;->nextStreamingChannel:I

    .line 1014
    iget-object v3, p0, Lpaulscode/sound/Library;->streamingChannels:Ljava/util/List;

    .line 1015
    iget-object v4, p0, Lpaulscode/sound/Library;->streamingChannelSourceNames:[Ljava/lang/String;

    goto :goto_1a

    .line 1019
    :cond_14
    iget v2, p0, Lpaulscode/sound/Library;->nextNormalChannel:I

    .line 1020
    iget-object v3, p0, Lpaulscode/sound/Library;->normalChannels:Ljava/util/List;

    .line 1021
    iget-object v4, p0, Lpaulscode/sound/Library;->normalChannelSourceNames:[Ljava/lang/String;

    .line 1024
    :goto_1a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_20
    if-ge v7, v5, :cond_34

    .line 1029
    aget-object v8, v4, v7

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 1030
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Channel;

    return-object p1

    :cond_31
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_34
    move v8, v2

    move v7, v6

    :goto_36
    if-ge v7, v5, :cond_75

    .line 1038
    aget-object v9, v4, v8

    if-nez v9, :cond_3e

    move-object v9, v0

    goto :goto_46

    .line 1042
    :cond_3e
    iget-object v10, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpaulscode/sound/Source;

    :goto_46
    if-eqz v9, :cond_57

    .line 1044
    invoke-virtual {v9}, Lpaulscode/sound/Source;->playing()Z

    move-result v9

    if-nez v9, :cond_4f

    goto :goto_57

    :cond_4f
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v5, :cond_54

    move v8, v6

    :cond_54
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 1046
    :cond_57
    :goto_57
    iget-boolean p1, p1, Lpaulscode/sound/Source;->toStream:Z

    if-eqz p1, :cond_64

    add-int/lit8 p1, v8, 0x1

    .line 1048
    iput p1, p0, Lpaulscode/sound/Library;->nextStreamingChannel:I

    if-lt p1, v5, :cond_6c

    .line 1050
    iput v6, p0, Lpaulscode/sound/Library;->nextStreamingChannel:I

    goto :goto_6c

    :cond_64
    add-int/lit8 p1, v8, 0x1

    .line 1054
    iput p1, p0, Lpaulscode/sound/Library;->nextNormalChannel:I

    if-lt p1, v5, :cond_6c

    .line 1056
    iput v6, p0, Lpaulscode/sound/Library;->nextNormalChannel:I

    .line 1058
    :cond_6c
    :goto_6c
    aput-object v1, v4, v8

    .line 1059
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Channel;

    return-object p1

    :cond_75
    move v7, v6

    :goto_76
    if-ge v7, v5, :cond_b9

    .line 1070
    aget-object v8, v4, v2

    if-nez v8, :cond_7e

    move-object v8, v0

    goto :goto_86

    .line 1074
    :cond_7e
    iget-object v9, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpaulscode/sound/Source;

    :goto_86
    if-eqz v8, :cond_9b

    .line 1076
    invoke-virtual {v8}, Lpaulscode/sound/Source;->playing()Z

    move-result v9

    if-eqz v9, :cond_9b

    iget-boolean v8, v8, Lpaulscode/sound/Source;->priority:Z

    if-nez v8, :cond_93

    goto :goto_9b

    :cond_93
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v5, :cond_98

    move v2, v6

    :cond_98
    add-int/lit8 v7, v7, 0x1

    goto :goto_76

    .line 1078
    :cond_9b
    :goto_9b
    iget-boolean p1, p1, Lpaulscode/sound/Source;->toStream:Z

    if-eqz p1, :cond_a8

    add-int/lit8 p1, v2, 0x1

    .line 1080
    iput p1, p0, Lpaulscode/sound/Library;->nextStreamingChannel:I

    if-lt p1, v5, :cond_b0

    .line 1082
    iput v6, p0, Lpaulscode/sound/Library;->nextStreamingChannel:I

    goto :goto_b0

    :cond_a8
    add-int/lit8 p1, v2, 0x1

    .line 1086
    iput p1, p0, Lpaulscode/sound/Library;->nextNormalChannel:I

    if-lt p1, v5, :cond_b0

    .line 1088
    iput v6, p0, Lpaulscode/sound/Library;->nextNormalChannel:I

    .line 1090
    :cond_b0
    :goto_b0
    aput-object v1, v4, v2

    .line 1091
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Channel;

    return-object p1

    :cond_b9
    return-object v0
.end method

.method public static getTitle()Ljava/lang/String;
    .registers 1

    const-string v0, "No Sound"

    return-object v0
.end method

.method public static libraryCompatible()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public activate(Ljava/lang/String;)V
    .registers 3

    .line 695
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_14

    .line 698
    invoke-virtual {p1}, Lpaulscode/sound/Source;->activate()V

    .line 699
    iget-boolean v0, p1, Lpaulscode/sound/Source;->toPlay:Z

    if-eqz v0, :cond_14

    .line 700
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->play(Lpaulscode/sound/Source;)V

    :cond_14
    return-void
.end method

.method public checkFadeVolumes()V
    .registers 3

    .line 1241
    iget-object v0, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    if-eqz v0, :cond_7

    .line 1242
    invoke-virtual {v0}, Lpaulscode/sound/MidiChannel;->resetGain()V

    :cond_7
    const/4 v0, 0x0

    .line 1245
    :goto_8
    iget-object v1, p0, Lpaulscode/sound/Library;->streamingChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 1247
    iget-object v1, p0, Lpaulscode/sound/Library;->streamingChannels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpaulscode/sound/Channel;

    if-eqz v1, :cond_21

    .line 1250
    iget-object v1, v1, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    if-eqz v1, :cond_21

    .line 1252
    invoke-virtual {v1}, Lpaulscode/sound/Source;->checkFadeOut()Z

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_24
    return-void
.end method

.method public cleanup()V
    .registers 5

    .line 161
    iget-object v0, p0, Lpaulscode/sound/Library;->streamThread:Lpaulscode/sound/StreamThread;

    invoke-virtual {v0}, Lpaulscode/sound/StreamThread;->kill()V

    .line 162
    iget-object v0, p0, Lpaulscode/sound/Library;->streamThread:Lpaulscode/sound/StreamThread;

    invoke-virtual {v0}, Lpaulscode/sound/StreamThread;->interrupt()V

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    const/16 v2, 0x32

    if-ge v1, v2, :cond_21

    .line 167
    iget-object v2, p0, Lpaulscode/sound/Library;->streamThread:Lpaulscode/sound/StreamThread;

    invoke-virtual {v2}, Lpaulscode/sound/StreamThread;->alive()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_21

    :cond_19
    const-wide/16 v2, 0x64

    .line 171
    :try_start_1b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1e

    :catch_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 177
    :cond_21
    :goto_21
    iget-object v1, p0, Lpaulscode/sound/Library;->streamThread:Lpaulscode/sound/StreamThread;

    invoke-virtual {v1}, Lpaulscode/sound/StreamThread;->alive()Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "Stream thread did not die!"

    .line 179
    invoke-virtual {p0, v1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    const-string v1, "Ignoring errors... continuing clean-up."

    .line 180
    invoke-virtual {p0, v1}, Lpaulscode/sound/Library;->message(Ljava/lang/String;)V

    .line 183
    :cond_33
    iget-object v1, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    .line 185
    invoke-virtual {v1}, Lpaulscode/sound/MidiChannel;->cleanup()V

    .line 186
    iput-object v2, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    .line 190
    :cond_3d
    iget-object v1, p0, Lpaulscode/sound/Library;->streamingChannels:Ljava/util/List;

    if-eqz v1, :cond_5f

    .line 192
    :goto_41
    iget-object v1, p0, Lpaulscode/sound/Library;->streamingChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    .line 194
    iget-object v1, p0, Lpaulscode/sound/Library;->streamingChannels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpaulscode/sound/Channel;

    .line 195
    invoke-virtual {v1}, Lpaulscode/sound/Channel;->close()V

    .line 196
    invoke-virtual {v1}, Lpaulscode/sound/Channel;->cleanup()V

    goto :goto_41

    .line 199
    :cond_58
    iget-object v1, p0, Lpaulscode/sound/Library;->streamingChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 200
    iput-object v2, p0, Lpaulscode/sound/Library;->streamingChannels:Ljava/util/List;

    .line 202
    :cond_5f
    iget-object v1, p0, Lpaulscode/sound/Library;->normalChannels:Ljava/util/List;

    if-eqz v1, :cond_81

    .line 204
    :goto_63
    iget-object v1, p0, Lpaulscode/sound/Library;->normalChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7a

    .line 206
    iget-object v1, p0, Lpaulscode/sound/Library;->normalChannels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpaulscode/sound/Channel;

    .line 207
    invoke-virtual {v1}, Lpaulscode/sound/Channel;->close()V

    .line 208
    invoke-virtual {v1}, Lpaulscode/sound/Channel;->cleanup()V

    goto :goto_63

    .line 211
    :cond_7a
    iget-object v0, p0, Lpaulscode/sound/Library;->normalChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iput-object v2, p0, Lpaulscode/sound/Library;->normalChannels:Ljava/util/List;

    .line 215
    :cond_81
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 221
    :cond_8b
    :goto_8b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    iget-object v3, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpaulscode/sound/Source;

    if-eqz v1, :cond_8b

    .line 226
    invoke-virtual {v1}, Lpaulscode/sound/Source;->cleanup()V

    goto :goto_8b

    .line 228
    :cond_a5
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 229
    iput-object v2, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    .line 231
    iput-object v2, p0, Lpaulscode/sound/Library;->listener:Lpaulscode/sound/ListenerData;

    .line 232
    iput-object v2, p0, Lpaulscode/sound/Library;->streamThread:Lpaulscode/sound/StreamThread;

    return-void
.end method

.method public copySources(Ljava/util/HashMap;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 924
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 925
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 930
    iget-object v1, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 933
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 935
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 936
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpaulscode/sound/Source;

    if-eqz v2, :cond_10

    .line 939
    iget-object v3, v2, Lpaulscode/sound/Source;->filenameURL:Lpaulscode/sound/FilenameURL;

    invoke-virtual {p0, v3}, Lpaulscode/sound/Library;->loadSound(Lpaulscode/sound/FilenameURL;)Z

    .line 940
    iget-object v3, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    new-instance v4, Lpaulscode/sound/Source;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lpaulscode/sound/Source;-><init>(Lpaulscode/sound/Source;Lpaulscode/sound/SoundBuffer;)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_35
    return-void
.end method

.method protected createChannel(I)Lpaulscode/sound/Channel;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public cull(Ljava/lang/String;)V
    .registers 3

    .line 684
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_d

    .line 686
    invoke-virtual {p1}, Lpaulscode/sound/Source;->cull()V

    :cond_d
    return-void
.end method

.method public dequeueSound(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1159
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1161
    iget-object p1, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    invoke-virtual {p1, p2}, Lpaulscode/sound/MidiChannel;->dequeueSound(Ljava/lang/String;)V

    goto :goto_19

    .line 1165
    :cond_c
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_19

    .line 1167
    invoke-virtual {p1, p2}, Lpaulscode/sound/Source;->dequeueSound(Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void
.end method

.method protected errorCheck(ZLjava/lang/String;)Z
    .registers 6

    .line 1448
    iget-object v0, p0, Lpaulscode/sound/Library;->logger:Lpaulscode/sound/SoundSystemLogger;

    invoke-virtual {p0}, Lpaulscode/sound/Library;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lpaulscode/sound/SoundSystemLogger;->errorCheck(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected errorMessage(Ljava/lang/String;)V
    .registers 5

    .line 1457
    iget-object v0, p0, Lpaulscode/sound/Library;->logger:Lpaulscode/sound/SoundSystemLogger;

    invoke-virtual {p0}, Lpaulscode/sound/Library;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lpaulscode/sound/SoundSystemLogger;->errorMessage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public fadeOut(Ljava/lang/String;Lpaulscode/sound/FilenameURL;J)V
    .registers 6

    .line 1187
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1189
    iget-object p1, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    invoke-virtual {p1, p2, p3, p4}, Lpaulscode/sound/MidiChannel;->fadeOut(Lpaulscode/sound/FilenameURL;J)V

    goto :goto_19

    .line 1193
    :cond_c
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_19

    .line 1195
    invoke-virtual {p1, p2, p3, p4}, Lpaulscode/sound/Source;->fadeOut(Lpaulscode/sound/FilenameURL;J)V

    :cond_19
    :goto_19
    return-void
.end method

.method public fadeOutIn(Ljava/lang/String;Lpaulscode/sound/FilenameURL;JJ)V
    .registers 14

    .line 1216
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1218
    iget-object v1, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v1 .. v6}, Lpaulscode/sound/MidiChannel;->fadeOutIn(Lpaulscode/sound/FilenameURL;JJ)V

    goto :goto_20

    .line 1222
    :cond_f
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lpaulscode/sound/Source;

    if-eqz v0, :cond_20

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 1224
    invoke-virtual/range {v0 .. v5}, Lpaulscode/sound/Source;->fadeOutIn(Lpaulscode/sound/FilenameURL;JJ)V

    :cond_20
    :goto_20
    return-void
.end method

.method public feedRawAudioData(Ljava/lang/String;[B)I
    .registers 6

    const/4 v0, -0x1

    if-eqz p1, :cond_3d

    const-string v1, ""

    .line 459
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_3d

    .line 466
    :cond_c
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string p1, "Raw audio data can not be fed to the MIDI channel."

    .line 468
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    return v0

    .line 474
    :cond_18
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpaulscode/sound/Source;

    if-nez v0, :cond_38

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found in method \'feedRawAudioData\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    .line 480
    :cond_38
    invoke-virtual {p0, v0, p2}, Lpaulscode/sound/Library;->feedRawAudioData(Lpaulscode/sound/Source;[B)I

    move-result p1

    return p1

    :cond_3d
    :goto_3d
    const-string p1, "Sourcename not specified in method \'feedRawAudioData\'"

    .line 461
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    return v0
.end method

.method public feedRawAudioData(Lpaulscode/sound/Source;[B)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_9

    const-string p1, "Source parameter null in method \'feedRawAudioData\'"

    .line 496
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    return v0

    .line 500
    :cond_9
    iget-boolean v1, p1, Lpaulscode/sound/Source;->toStream:Z

    if-nez v1, :cond_13

    const-string p1, "Only a streaming source may be specified in method \'feedRawAudioData\'"

    .line 502
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    return v0

    .line 506
    :cond_13
    iget-boolean v1, p1, Lpaulscode/sound/Source;->rawDataStream:Z

    if-nez v1, :cond_1d

    const-string p1, "Streaming source already associated with a file or URL in method\'feedRawAudioData\'"

    .line 508
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    return v0

    .line 513
    :cond_1d
    invoke-virtual {p1}, Lpaulscode/sound/Source;->playing()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    if-nez v0, :cond_28

    goto :goto_2f

    .line 529
    :cond_28
    iget-object v0, p1, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    invoke-virtual {p1, v0, p2}, Lpaulscode/sound/Source;->feedRawAudioData(Lpaulscode/sound/Channel;[B)I

    move-result p1

    return p1

    .line 516
    :cond_2f
    :goto_2f
    iget-object v0, p1, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    iget-object v0, v0, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    if-ne v0, p1, :cond_3c

    .line 518
    iget-object v0, p1, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    goto :goto_40

    .line 520
    :cond_3c
    invoke-direct {p0, p1}, Lpaulscode/sound/Library;->getNextChannel(Lpaulscode/sound/Source;)Lpaulscode/sound/Channel;

    move-result-object v0

    .line 522
    :goto_40
    invoke-virtual {p1, v0, p2}, Lpaulscode/sound/Source;->feedRawAudioData(Lpaulscode/sound/Channel;[B)I

    move-result p2

    .line 523
    iput-object p1, v0, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    .line 524
    iget-object v0, p0, Lpaulscode/sound/Library;->streamThread:Lpaulscode/sound/StreamThread;

    invoke-virtual {v0, p1}, Lpaulscode/sound/StreamThread;->watch(Lpaulscode/sound/Source;)V

    .line 525
    iget-object p1, p0, Lpaulscode/sound/Library;->streamThread:Lpaulscode/sound/StreamThread;

    invoke-virtual {p1}, Lpaulscode/sound/StreamThread;->interrupt()V

    return p2
.end method

.method public flush(Ljava/lang/String;)V
    .registers 3

    .line 667
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "You can not flush the MIDI channel"

    .line 668
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    goto :goto_19

    .line 671
    :cond_c
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_19

    .line 673
    invoke-virtual {p1}, Lpaulscode/sound/Source;->flush()V

    :cond_19
    :goto_19
    return-void
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Library"

    return-object v0
.end method

.method public getListenerData()Lpaulscode/sound/ListenerData;
    .registers 2

    .line 1392
    iget-object v0, p0, Lpaulscode/sound/Library;->listener:Lpaulscode/sound/ListenerData;

    return-object v0
.end method

.method public getMidiChannel()Lpaulscode/sound/MidiChannel;
    .registers 2

    .line 1339
    iget-object v0, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    return-object v0
.end method

.method public getPitch(Ljava/lang/String;)F
    .registers 3

    .line 796
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 798
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_15

    .line 800
    invoke-virtual {p1}, Lpaulscode/sound/Source;->getPitch()F

    move-result p1

    return p1

    :cond_15
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getSource(Ljava/lang/String;)Lpaulscode/sound/Source;
    .registers 3

    .line 1329
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    return-object p1
.end method

.method public getSources()Ljava/util/HashMap;
    .registers 2

    .line 1383
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getVolume(Ljava/lang/String;)F
    .registers 3

    .line 751
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 753
    iget-object p1, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    invoke-virtual {p1}, Lpaulscode/sound/MidiChannel;->getVolume()F

    move-result p1

    return p1

    .line 757
    :cond_d
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_1a

    .line 759
    iget p1, p1, Lpaulscode/sound/Source;->sourceVolume:F

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method protected importantMessage(Ljava/lang/String;)V
    .registers 4

    .line 1437
    iget-object v0, p0, Lpaulscode/sound/Library;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->importantMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public init()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 243
    :goto_2
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getNumberStreamingChannels()I

    move-result v2

    if-ge v1, v2, :cond_18

    const/4 v2, 0x1

    .line 245
    invoke-virtual {p0, v2}, Lpaulscode/sound/Library;->createChannel(I)Lpaulscode/sound/Channel;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_18

    .line 248
    :cond_10
    iget-object v3, p0, Lpaulscode/sound/Library;->streamingChannels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_18
    :goto_18
    move v1, v0

    .line 251
    :goto_19
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getNumberNormalChannels()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 253
    invoke-virtual {p0, v0}, Lpaulscode/sound/Library;->createChannel(I)Lpaulscode/sound/Channel;

    move-result-object v2

    if-nez v2, :cond_26

    goto :goto_2e

    .line 256
    :cond_26
    iget-object v3, p0, Lpaulscode/sound/Library;->normalChannels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2e
    :goto_2e
    return-void
.end method

.method public listenerMoved()V
    .registers 4

    .line 1360
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1361
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1366
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1368
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1369
    iget-object v2, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpaulscode/sound/Source;

    if-eqz v1, :cond_a

    .line 1372
    invoke-virtual {v1}, Lpaulscode/sound/Source;->listenerMoved()V

    goto :goto_a

    :cond_24
    return-void
.end method

.method public loadMidi(ZLjava/lang/String;Lpaulscode/sound/FilenameURL;)V
    .registers 6

    if-nez p3, :cond_8

    const-string p1, "Filename/URL not specified in method \'loadMidi\'."

    .line 1270
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 1274
    :cond_8
    invoke-virtual {p3}, Lpaulscode/sound/FilenameURL;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*[mM][iI][dD][iI]?$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string p1, "Filename/identifier doesn\'t end in \'.mid\' or\'.midi\' in method loadMidi."

    .line 1277
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    return-void

    .line 1282
    :cond_1a
    iget-object v0, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    if-nez v0, :cond_26

    .line 1284
    new-instance v0, Lpaulscode/sound/MidiChannel;

    invoke-direct {v0, p1, p2, p3}, Lpaulscode/sound/MidiChannel;-><init>(ZLjava/lang/String;Lpaulscode/sound/FilenameURL;)V

    iput-object v0, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    goto :goto_29

    .line 1288
    :cond_26
    invoke-virtual {v0, p1, p2, p3}, Lpaulscode/sound/MidiChannel;->switchSource(ZLjava/lang/String;Lpaulscode/sound/FilenameURL;)V

    :goto_29
    return-void
.end method

.method public loadSound(Lpaulscode/sound/FilenameURL;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method protected message(Ljava/lang/String;)V
    .registers 4

    .line 1428
    iget-object v0, p0, Lpaulscode/sound/Library;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->message(Ljava/lang/String;I)V

    return-void
.end method

.method public midiSourcename(Ljava/lang/String;)Z
    .registers 4

    .line 1309
    iget-object v0, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    if-nez p1, :cond_8

    goto :goto_25

    .line 1312
    :cond_8
    invoke-virtual {v0}, Lpaulscode/sound/MidiChannel;->getSourcename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_25

    .line 1315
    :cond_17
    iget-object v0, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    invoke-virtual {v0}, Lpaulscode/sound/MidiChannel;->getSourcename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    return p1

    :cond_25
    :goto_25
    return v1
.end method

.method public moveListener(FFF)V
    .registers 5

    .line 813
    iget-object v0, p0, Lpaulscode/sound/Library;->listener:Lpaulscode/sound/ListenerData;

    iget-object v0, v0, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget v0, v0, Lpaulscode/sound/Vector3D;->x:F

    add-float/2addr v0, p1

    iget-object p1, p0, Lpaulscode/sound/Library;->listener:Lpaulscode/sound/ListenerData;

    iget-object p1, p1, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget p1, p1, Lpaulscode/sound/Vector3D;->y:F

    add-float/2addr p1, p2

    iget-object p2, p0, Lpaulscode/sound/Library;->listener:Lpaulscode/sound/ListenerData;

    iget-object p2, p2, Lpaulscode/sound/ListenerData;->position:Lpaulscode/sound/Vector3D;

    iget p2, p2, Lpaulscode/sound/Vector3D;->z:F

    add-float/2addr p2, p3

    invoke-virtual {p0, v0, p1, p2}, Lpaulscode/sound/Library;->setListenerPosition(FFF)V

    return-void
.end method

.method public newSource(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;FFFIF)V
    .registers 27

    move-object/from16 v0, p0

    .line 340
    iget-object v1, v0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    new-instance v15, Lpaulscode/sound/Source;

    const/4 v8, 0x0

    const/4 v14, 0x0

    move-object v2, v15

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v2 .. v14}, Lpaulscode/sound/Source;-><init>(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;Lpaulscode/sound/SoundBuffer;FFFIFZ)V

    move-object/from16 v2, p4

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_25

    const-string v0, ""

    .line 626
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_25

    .line 631
    :cond_b
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 633
    iget-object p1, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    invoke-virtual {p1}, Lpaulscode/sound/MidiChannel;->pause()V

    goto :goto_24

    .line 637
    :cond_17
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_24

    .line 639
    invoke-virtual {p1}, Lpaulscode/sound/Source;->pause()V

    :cond_24
    :goto_24
    return-void

    :cond_25
    :goto_25
    const-string p1, "Sourcename not specified in method \'stop\'"

    .line 628
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public play(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_3b

    const-string v0, ""

    .line 538
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3b

    .line 544
    :cond_b
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 546
    iget-object p1, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    invoke-virtual {p1}, Lpaulscode/sound/MidiChannel;->play()V

    goto :goto_3a

    .line 550
    :cond_17
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpaulscode/sound/Source;

    if-nez v0, :cond_37

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found in method \'play\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    .line 556
    :cond_37
    invoke-virtual {p0, v0}, Lpaulscode/sound/Library;->play(Lpaulscode/sound/Source;)V

    :goto_3a
    return-void

    :cond_3b
    :goto_3b
    const-string p1, "Sourcename not specified in method \'play\'"

    .line 540
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public play(Lpaulscode/sound/Source;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 571
    :cond_3
    iget-boolean v0, p1, Lpaulscode/sound/Source;->rawDataStream:Z

    if-eqz v0, :cond_8

    return-void

    .line 574
    :cond_8
    invoke-virtual {p1}, Lpaulscode/sound/Source;->active()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 577
    :cond_f
    invoke-virtual {p1}, Lpaulscode/sound/Source;->playing()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 579
    invoke-direct {p0, p1}, Lpaulscode/sound/Library;->getNextChannel(Lpaulscode/sound/Source;)Lpaulscode/sound/Channel;

    move-result-object v0

    if-eqz p1, :cond_3d

    if-eqz v0, :cond_3d

    .line 583
    iget-object v1, p1, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    if-eqz v1, :cond_2a

    iget-object v1, p1, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    iget-object v1, v1, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    if-eq v1, p1, :cond_2a

    const/4 v1, 0x0

    .line 585
    iput-object v1, p1, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    .line 586
    :cond_2a
    iput-object p1, v0, Lpaulscode/sound/Channel;->attachedSource:Lpaulscode/sound/Source;

    .line 587
    invoke-virtual {p1, v0}, Lpaulscode/sound/Source;->play(Lpaulscode/sound/Channel;)V

    .line 588
    iget-boolean v0, p1, Lpaulscode/sound/Source;->toStream:Z

    if-eqz v0, :cond_3d

    .line 590
    iget-object v0, p0, Lpaulscode/sound/Library;->streamThread:Lpaulscode/sound/StreamThread;

    invoke-virtual {v0, p1}, Lpaulscode/sound/StreamThread;->watch(Lpaulscode/sound/Source;)V

    .line 591
    iget-object p1, p0, Lpaulscode/sound/Library;->streamThread:Lpaulscode/sound/StreamThread;

    invoke-virtual {p1}, Lpaulscode/sound/StreamThread;->interrupt()V

    :cond_3d
    return-void
.end method

.method protected printStackTrace(Ljava/lang/Exception;)V
    .registers 4

    .line 1466
    iget-object v0, p0, Lpaulscode/sound/Library;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->printStackTrace(Ljava/lang/Exception;I)V

    return-void
.end method

.method public queueSound(Ljava/lang/String;Lpaulscode/sound/FilenameURL;)V
    .registers 4

    .line 1138
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1140
    iget-object p1, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    invoke-virtual {p1, p2}, Lpaulscode/sound/MidiChannel;->queueSound(Lpaulscode/sound/FilenameURL;)V

    goto :goto_19

    .line 1144
    :cond_c
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_19

    .line 1146
    invoke-virtual {p1, p2}, Lpaulscode/sound/Source;->queueSound(Lpaulscode/sound/FilenameURL;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public quickPlay(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;FFFIFZ)V
    .registers 28

    move-object/from16 v0, p0

    .line 365
    iget-object v1, v0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    new-instance v15, Lpaulscode/sound/Source;

    const/4 v8, 0x0

    move-object v2, v15

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v2 .. v14}, Lpaulscode/sound/Source;-><init>(ZZZLjava/lang/String;Lpaulscode/sound/FilenameURL;Lpaulscode/sound/SoundBuffer;FFFIFZ)V

    move-object/from16 v2, p4

    invoke-virtual {v1, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public rawDataStream(Lmcshim/sound/sampled/AudioFormat;ZLjava/lang/String;FFFIF)V
    .registers 21

    move-object v0, p0

    .line 317
    iget-object v1, v0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    new-instance v11, Lpaulscode/sound/Source;

    move-object v2, v11

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lpaulscode/sound/Source;-><init>(Lmcshim/sound/sampled/AudioFormat;ZLjava/lang/String;FFFIF)V

    move-object v2, p3

    invoke-virtual {v1, p3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeSource(Ljava/lang/String;)V
    .registers 3

    .line 951
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpaulscode/sound/Source;

    if-eqz v0, :cond_d

    .line 953
    invoke-virtual {v0}, Lpaulscode/sound/Source;->cleanup()V

    .line 954
    :cond_d
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeTemporarySources()V
    .registers 4

    .line 962
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 963
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 968
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 970
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 971
    iget-object v2, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpaulscode/sound/Source;

    if-eqz v1, :cond_a

    .line 972
    iget-boolean v2, v1, Lpaulscode/sound/Source;->temporary:Z

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lpaulscode/sound/Source;->playing()Z

    move-result v2

    if-nez v2, :cond_a

    .line 975
    invoke-virtual {v1}, Lpaulscode/sound/Source;->cleanup()V

    .line 976
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_31
    return-void
.end method

.method public replaySources()V
    .registers 5

    .line 1108
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1109
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1114
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1117
    iget-object v2, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpaulscode/sound/Source;

    if-eqz v2, :cond_a

    .line 1120
    iget-boolean v3, v2, Lpaulscode/sound/Source;->toPlay:Z

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lpaulscode/sound/Source;->playing()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1122
    invoke-virtual {p0, v1}, Lpaulscode/sound/Library;->play(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1123
    iput-boolean v1, v2, Lpaulscode/sound/Source;->toPlay:Z

    goto :goto_a

    :cond_31
    return-void
.end method

.method public rewind(Ljava/lang/String;)V
    .registers 3

    .line 649
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 651
    iget-object p1, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    invoke-virtual {p1}, Lpaulscode/sound/MidiChannel;->rewind()V

    goto :goto_19

    .line 655
    :cond_c
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_19

    .line 657
    invoke-virtual {p1}, Lpaulscode/sound/Source;->rewind()V

    :cond_19
    :goto_19
    return-void
.end method

.method public setAttenuation(Ljava/lang/String;I)V
    .registers 4

    .line 432
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_d

    .line 434
    invoke-virtual {p1, p2}, Lpaulscode/sound/Source;->setAttenuation(I)V

    :cond_d
    return-void
.end method

.method public setDistOrRoll(Ljava/lang/String;F)V
    .registers 4

    .line 444
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_d

    .line 446
    invoke-virtual {p1, p2}, Lpaulscode/sound/Source;->setDistOrRoll(F)V

    :cond_d
    return-void
.end method

.method public setListenerAngle(F)V
    .registers 4

    .line 860
    iget-object v0, p0, Lpaulscode/sound/Library;->listener:Lpaulscode/sound/ListenerData;

    invoke-virtual {v0, p1}, Lpaulscode/sound/ListenerData;->setAngle(F)V

    .line 862
    iget-object p1, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 863
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 868
    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 870
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 871
    iget-object v1, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpaulscode/sound/Source;

    if-eqz v0, :cond_f

    .line 873
    invoke-virtual {v0}, Lpaulscode/sound/Source;->positionChanged()V

    goto :goto_f

    :cond_29
    return-void
.end method

.method public setListenerData(Lpaulscode/sound/ListenerData;)V
    .registers 3

    .line 913
    iget-object v0, p0, Lpaulscode/sound/Library;->listener:Lpaulscode/sound/ListenerData;

    invoke-virtual {v0, p1}, Lpaulscode/sound/ListenerData;->setData(Lpaulscode/sound/ListenerData;)V

    return-void
.end method

.method public setListenerOrientation(FFFFFF)V
    .registers 14

    .line 889
    iget-object v0, p0, Lpaulscode/sound/Library;->listener:Lpaulscode/sound/ListenerData;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lpaulscode/sound/ListenerData;->setOrientation(FFFFFF)V

    .line 891
    iget-object p1, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 892
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 897
    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 899
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 900
    iget-object p3, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpaulscode/sound/Source;

    if-eqz p2, :cond_15

    .line 902
    invoke-virtual {p2}, Lpaulscode/sound/Source;->positionChanged()V

    goto :goto_15

    :cond_2f
    return-void
.end method

.method public setListenerPosition(FFF)V
    .registers 5

    .line 826
    iget-object v0, p0, Lpaulscode/sound/Library;->listener:Lpaulscode/sound/ListenerData;

    invoke-virtual {v0, p1, p2, p3}, Lpaulscode/sound/ListenerData;->setPosition(FFF)V

    .line 828
    iget-object p1, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 829
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 834
    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_29

    .line 836
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 837
    iget-object p3, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpaulscode/sound/Source;

    if-eqz p2, :cond_f

    .line 839
    invoke-virtual {p2}, Lpaulscode/sound/Source;->positionChanged()V

    goto :goto_f

    :cond_29
    return-void
.end method

.method public setLooping(Ljava/lang/String;Z)V
    .registers 4

    .line 420
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_d

    .line 422
    invoke-virtual {p1, p2}, Lpaulscode/sound/Source;->setLooping(Z)V

    :cond_d
    return-void
.end method

.method public setMasterVolume(F)V
    .registers 2

    .line 710
    invoke-static {p1}, Lpaulscode/sound/SoundSystemConfig;->setMasterGain(F)V

    .line 711
    iget-object p1, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    if-eqz p1, :cond_a

    .line 712
    invoke-virtual {p1}, Lpaulscode/sound/MidiChannel;->resetGain()V

    :cond_a
    return-void
.end method

.method public setMidiChannel(Lpaulscode/sound/MidiChannel;)V
    .registers 3

    .line 1349
    iget-object v0, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    if-eqz v0, :cond_9

    if-eq v0, p1, :cond_9

    .line 1350
    invoke-virtual {v0}, Lpaulscode/sound/MidiChannel;->cleanup()V

    .line 1352
    :cond_9
    iput-object p1, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    return-void
.end method

.method public setPitch(Ljava/lang/String;F)V
    .registers 5

    .line 772
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 774
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_25

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_18

    :goto_16
    move p2, v0

    goto :goto_1f

    :cond_18
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_1f

    goto :goto_16

    .line 783
    :cond_1f
    :goto_1f
    invoke-virtual {p1, p2}, Lpaulscode/sound/Source;->setPitch(F)V

    .line 784
    invoke-virtual {p1}, Lpaulscode/sound/Source;->positionChanged()V

    :cond_25
    return-void
.end method

.method public setPosition(Ljava/lang/String;FFF)V
    .registers 6

    .line 394
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_d

    .line 396
    invoke-virtual {p1, p2, p3, p4}, Lpaulscode/sound/Source;->setPosition(FFF)V

    :cond_d
    return-void
.end method

.method public setPriority(Ljava/lang/String;Z)V
    .registers 4

    .line 407
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_d

    .line 409
    invoke-virtual {p1, p2}, Lpaulscode/sound/Source;->setPriority(Z)V

    :cond_d
    return-void
.end method

.method public setTemporary(Ljava/lang/String;Z)V
    .registers 4

    .line 380
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_d

    .line 382
    invoke-virtual {p1, p2}, Lpaulscode/sound/Source;->setTemporary(Z)V

    :cond_d
    return-void
.end method

.method public setVolume(Ljava/lang/String;F)V
    .registers 5

    .line 722
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 724
    iget-object p1, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    invoke-virtual {p1, p2}, Lpaulscode/sound/MidiChannel;->setVolume(F)V

    goto :goto_29

    .line 728
    :cond_c
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_29

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_1d

    :goto_1b
    move p2, v0

    goto :goto_24

    :cond_1d
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_24

    goto :goto_1b

    .line 737
    :cond_24
    :goto_24
    iput p2, p1, Lpaulscode/sound/Source;->sourceVolume:F

    .line 738
    invoke-virtual {p1}, Lpaulscode/sound/Source;->positionChanged()V

    :cond_29
    :goto_29
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_25

    const-string v0, ""

    .line 603
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_25

    .line 608
    :cond_b
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->midiSourcename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 610
    iget-object p1, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    invoke-virtual {p1}, Lpaulscode/sound/MidiChannel;->stop()V

    goto :goto_24

    .line 614
    :cond_17
    iget-object v0, p0, Lpaulscode/sound/Library;->sourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpaulscode/sound/Source;

    if-eqz p1, :cond_24

    .line 616
    invoke-virtual {p1}, Lpaulscode/sound/Source;->stop()V

    :cond_24
    :goto_24
    return-void

    :cond_25
    :goto_25
    const-string p1, "Sourcename not specified in method \'stop\'"

    .line 605
    invoke-virtual {p0, p1}, Lpaulscode/sound/Library;->errorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public turnListener(F)V
    .registers 3

    .line 850
    iget-object v0, p0, Lpaulscode/sound/Library;->listener:Lpaulscode/sound/ListenerData;

    iget v0, v0, Lpaulscode/sound/ListenerData;->angle:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lpaulscode/sound/Library;->setListenerAngle(F)V

    return-void
.end method

.method public unloadMidi()V
    .registers 2

    .line 1297
    iget-object v0, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    if-eqz v0, :cond_7

    .line 1298
    invoke-virtual {v0}, Lpaulscode/sound/MidiChannel;->cleanup()V

    :cond_7
    const/4 v0, 0x0

    .line 1299
    iput-object v0, p0, Lpaulscode/sound/Library;->midiChannel:Lpaulscode/sound/MidiChannel;

    return-void
.end method

.method public unloadSound(Ljava/lang/String;)V
    .registers 3

    .line 300
    iget-object v0, p0, Lpaulscode/sound/Library;->bufferMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
