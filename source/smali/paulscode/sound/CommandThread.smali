###### Class paulscode.sound.CommandThread (paulscode.sound.CommandThread)
.class public Lpaulscode/sound/CommandThread;
.super Lpaulscode/sound/SimpleThread;
.source "SourceFile"


# instance fields
.field protected className:Ljava/lang/String;

.field protected logger:Lpaulscode/sound/SoundSystemLogger;

.field private soundSystem:Lpaulscode/sound/SoundSystem;


# direct methods
.method public constructor <init>(Lpaulscode/sound/SoundSystem;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Lpaulscode/sound/SimpleThread;-><init>()V

    const-string v0, "CommandThread"

    .line 65
    iput-object v0, p0, Lpaulscode/sound/CommandThread;->className:Ljava/lang/String;

    .line 74
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/CommandThread;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 76
    iput-object p1, p0, Lpaulscode/sound/CommandThread;->soundSystem:Lpaulscode/sound/SoundSystem;

    return-void
.end method


# virtual methods
.method protected cleanup()V
    .registers 2

    .line 86
    invoke-virtual {p0}, Lpaulscode/sound/CommandThread;->kill()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lpaulscode/sound/CommandThread;->logger:Lpaulscode/sound/SoundSystemLogger;

    .line 89
    iput-object v0, p0, Lpaulscode/sound/CommandThread;->soundSystem:Lpaulscode/sound/SoundSystem;

    .line 91
    invoke-super {p0}, Lpaulscode/sound/SimpleThread;->cleanup()V

    return-void
.end method

.method protected errorCheck(ZLjava/lang/String;)Z
    .registers 6

    .line 165
    iget-object v0, p0, Lpaulscode/sound/CommandThread;->logger:Lpaulscode/sound/SoundSystemLogger;

    iget-object v1, p0, Lpaulscode/sound/CommandThread;->className:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lpaulscode/sound/SoundSystemLogger;->errorCheck(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected errorMessage(Ljava/lang/String;I)V
    .registers 5

    .line 174
    iget-object v0, p0, Lpaulscode/sound/CommandThread;->logger:Lpaulscode/sound/SoundSystemLogger;

    iget-object v1, p0, Lpaulscode/sound/CommandThread;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lpaulscode/sound/SoundSystemLogger;->errorMessage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected importantMessage(Ljava/lang/String;I)V
    .registers 4

    .line 154
    iget-object v0, p0, Lpaulscode/sound/CommandThread;->logger:Lpaulscode/sound/SoundSystemLogger;

    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/SoundSystemLogger;->importantMessage(Ljava/lang/String;I)V

    return-void
.end method

.method protected message(Ljava/lang/String;I)V
    .registers 4

    .line 145
    iget-object v0, p0, Lpaulscode/sound/CommandThread;->logger:Lpaulscode/sound/SoundSystemLogger;

    invoke-virtual {v0, p1, p2}, Lpaulscode/sound/SoundSystemLogger;->message(Ljava/lang/String;I)V

    return-void
.end method

.method public run()V
    .registers 11

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 105
    iget-object v2, p0, Lpaulscode/sound/CommandThread;->soundSystem:Lpaulscode/sound/SoundSystem;

    if-nez v2, :cond_12

    const-string v0, "SoundSystem was null in method run()."

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v0, v1}, Lpaulscode/sound/CommandThread;->errorMessage(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {p0}, Lpaulscode/sound/CommandThread;->cleanup()V

    return-void

    :cond_12
    const-wide/32 v2, 0x36ee80

    .line 113
    invoke-virtual {p0, v2, v3}, Lpaulscode/sound/CommandThread;->snooze(J)V

    .line 115
    :cond_18
    :goto_18
    invoke-virtual {p0}, Lpaulscode/sound/CommandThread;->dying()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 118
    iget-object v4, p0, Lpaulscode/sound/CommandThread;->soundSystem:Lpaulscode/sound/SoundSystem;

    invoke-virtual {v4}, Lpaulscode/sound/SoundSystem;->ManageSources()V

    .line 121
    iget-object v4, p0, Lpaulscode/sound/CommandThread;->soundSystem:Lpaulscode/sound/SoundSystem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lpaulscode/sound/SoundSystem;->CommandQueue(Lpaulscode/sound/CommandObject;)Z

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 125
    invoke-virtual {p0}, Lpaulscode/sound/CommandThread;->dying()Z

    move-result v6

    if-nez v6, :cond_41

    sub-long v6, v4, v0

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-lez v6, :cond_41

    .line 128
    iget-object v0, p0, Lpaulscode/sound/CommandThread;->soundSystem:Lpaulscode/sound/SoundSystem;

    invoke-virtual {v0}, Lpaulscode/sound/SoundSystem;->removeTemporarySources()V

    move-wide v0, v4

    .line 132
    :cond_41
    invoke-virtual {p0}, Lpaulscode/sound/CommandThread;->dying()Z

    move-result v4

    if-nez v4, :cond_18

    .line 133
    invoke-virtual {p0, v2, v3}, Lpaulscode/sound/CommandThread;->snooze(J)V

    goto :goto_18

    .line 136
    :cond_4b
    invoke-virtual {p0}, Lpaulscode/sound/CommandThread;->cleanup()V

    return-void
.end method
