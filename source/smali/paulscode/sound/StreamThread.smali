###### Class paulscode.sound.StreamThread (paulscode.sound.StreamThread)
.class public Lpaulscode/sound/StreamThread;
.super Lpaulscode/sound/SimpleThread;
.source "SourceFile"


# instance fields
.field private final listLock:Ljava/lang/Object;

.field private logger:Lpaulscode/sound/SoundSystemLogger;

.field private streamingSources:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Lpaulscode/sound/SimpleThread;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/StreamThread;->listLock:Ljava/lang/Object;

    .line 61
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/StreamThread;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/StreamThread;->streamingSources:Ljava/util/List;

    return-void
.end method

.method private errorCheck(ZLjava/lang/String;)Z
    .registers 6

    .line 221
    iget-object v0, p0, Lpaulscode/sound/StreamThread;->logger:Lpaulscode/sound/SoundSystemLogger;

    const-string v1, "StreamThread"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lpaulscode/sound/SoundSystemLogger;->errorCheck(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method private errorMessage(Ljava/lang/String;)V
    .registers 5

    .line 230
    iget-object v0, p0, Lpaulscode/sound/StreamThread;->logger:Lpaulscode/sound/SoundSystemLogger;

    const-string v1, "StreamThread"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lpaulscode/sound/SoundSystemLogger;->errorMessage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private importantMessage(Ljava/lang/String;)V
    .registers 4

    .line 210
    iget-object v0, p0, Lpaulscode/sound/StreamThread;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->importantMessage(Ljava/lang/String;I)V

    return-void
.end method

.method private message(Ljava/lang/String;)V
    .registers 4

    .line 201
    iget-object v0, p0, Lpaulscode/sound/StreamThread;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->message(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected cleanup()V
    .registers 1

    .line 73
    invoke-virtual {p0}, Lpaulscode/sound/StreamThread;->kill()V

    .line 74
    invoke-super {p0}, Lpaulscode/sound/SimpleThread;->cleanup()V

    return-void
.end method

.method public run()V
    .registers 8

    const-wide/32 v0, 0x36ee80

    .line 88
    :try_start_3
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/StreamThread;->snooze(J)V

    .line 90
    :cond_6
    :goto_6
    invoke-virtual {p0}, Lpaulscode/sound/StreamThread;->dying()Z

    move-result v2

    if-nez v2, :cond_dd

    .line 91
    :cond_c
    :goto_c
    invoke-virtual {p0}, Lpaulscode/sound/StreamThread;->dying()Z

    move-result v2

    if-nez v2, :cond_ca

    iget-object v2, p0, Lpaulscode/sound/StreamThread;->streamingSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ca

    .line 93
    iget-object v2, p0, Lpaulscode/sound/StreamThread;->listLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_e1

    .line 94
    :try_start_1d
    iget-object v3, p0, Lpaulscode/sound/StreamThread;->streamingSources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 95
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lpaulscode/sound/StreamThread;->dying()Z

    move-result v4

    if-nez v4, :cond_b1

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 96
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpaulscode/sound/Source;

    if-nez v4, :cond_3b

    .line 98
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_23

    .line 99
    :cond_3b
    invoke-virtual {v4}, Lpaulscode/sound/Source;->stopped()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 100
    iget-boolean v4, v4, Lpaulscode/sound/Source;->rawDataStream:Z

    if-nez v4, :cond_23

    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_23

    .line 101
    :cond_49
    invoke-virtual {v4}, Lpaulscode/sound/Source;->active()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_5e

    .line 102
    iget-boolean v5, v4, Lpaulscode/sound/Source;->toLoop:Z

    if-nez v5, :cond_58

    iget-boolean v5, v4, Lpaulscode/sound/Source;->rawDataStream:Z

    if-eqz v5, :cond_5a

    :cond_58
    iput-boolean v6, v4, Lpaulscode/sound/Source;->toPlay:Z

    .line 103
    :cond_5a
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_23

    .line 104
    :cond_5e
    invoke-virtual {v4}, Lpaulscode/sound/Source;->paused()Z

    move-result v5

    if-nez v5, :cond_23

    .line 105
    invoke-virtual {v4}, Lpaulscode/sound/Source;->checkFadeOut()Z

    .line 106
    invoke-virtual {v4}, Lpaulscode/sound/Source;->stream()Z

    move-result v5

    if-nez v5, :cond_23

    iget-boolean v5, v4, Lpaulscode/sound/Source;->rawDataStream:Z

    if-nez v5, :cond_23

    .line 107
    iget-object v5, v4, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    if-eqz v5, :cond_7d

    iget-object v5, v4, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    invoke-virtual {v5}, Lpaulscode/sound/Channel;->processBuffer()Z

    move-result v5

    if-nez v5, :cond_23

    .line 109
    :cond_7d
    iget-boolean v5, v4, Lpaulscode/sound/Source;->toLoop:Z

    if-eqz v5, :cond_96

    .line 111
    invoke-virtual {v4}, Lpaulscode/sound/Source;->playing()Z

    move-result v5

    if-nez v5, :cond_23

    .line 114
    invoke-virtual {v4}, Lpaulscode/sound/Source;->checkFadeOut()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 118
    iput-boolean v6, v4, Lpaulscode/sound/Source;->preLoad:Z

    goto :goto_23

    .line 124
    :cond_90
    invoke-virtual {v4}, Lpaulscode/sound/Source;->incrementSoundSequence()Z

    .line 125
    iput-boolean v6, v4, Lpaulscode/sound/Source;->preLoad:Z

    goto :goto_23

    .line 130
    :cond_96
    invoke-virtual {v4}, Lpaulscode/sound/Source;->playing()Z

    move-result v5

    if-nez v5, :cond_23

    .line 133
    invoke-virtual {v4}, Lpaulscode/sound/Source;->checkFadeOut()Z

    move-result v5

    if-nez v5, :cond_23

    .line 137
    invoke-virtual {v4}, Lpaulscode/sound/Source;->incrementSoundSequence()Z

    move-result v5

    if-eqz v5, :cond_ac

    iput-boolean v6, v4, Lpaulscode/sound/Source;->preLoad:Z

    goto/16 :goto_23

    .line 138
    :cond_ac
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_23

    .line 146
    :cond_b1
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_1d .. :try_end_b2} :catchall_c7

    .line 147
    :try_start_b2
    invoke-virtual {p0}, Lpaulscode/sound/StreamThread;->dying()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lpaulscode/sound/StreamThread;->streamingSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v2, v3}, Lpaulscode/sound/StreamThread;->snooze(J)V
    :try_end_c5
    .catchall {:try_start_b2 .. :try_end_c5} :catchall_e1

    goto/16 :goto_c

    :catchall_c7
    move-exception v0

    .line 146
    :try_start_c8
    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw v0

    .line 149
    :cond_ca
    invoke-virtual {p0}, Lpaulscode/sound/StreamThread;->dying()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lpaulscode/sound/StreamThread;->streamingSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/StreamThread;->snooze(J)V
    :try_end_db
    .catchall {:try_start_c9 .. :try_end_db} :catchall_e1

    goto/16 :goto_6

    .line 153
    :cond_dd
    invoke-virtual {p0}, Lpaulscode/sound/StreamThread;->cleanup()V

    return-void

    :catchall_e1
    move-exception v0

    invoke-virtual {p0}, Lpaulscode/sound/StreamThread;->cleanup()V

    throw v0
.end method

.method public watch(Lpaulscode/sound/Source;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 169
    :cond_3
    iget-object v0, p0, Lpaulscode/sound/StreamThread;->streamingSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 175
    :cond_c
    iget-object v0, p0, Lpaulscode/sound/StreamThread;->listLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_f
    iget-object v1, p0, Lpaulscode/sound/StreamThread;->streamingSources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 180
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 181
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpaulscode/sound/Source;

    if-nez v2, :cond_27

    .line 183
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_15

    .line 184
    :cond_27
    iget-object v3, p1, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    iget-object v4, v2, Lpaulscode/sound/Source;->channel:Lpaulscode/sound/Channel;

    if-ne v3, v4, :cond_15

    .line 185
    invoke-virtual {v2}, Lpaulscode/sound/Source;->stop()V

    .line 186
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_15

    .line 191
    :cond_34
    iget-object v1, p0, Lpaulscode/sound/StreamThread;->streamingSources:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_3b

    throw p1
.end method
