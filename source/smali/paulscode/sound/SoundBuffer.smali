###### Class paulscode.sound.SoundBuffer (paulscode.sound.SoundBuffer)
.class public Lpaulscode/sound/SoundBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public audioData:[B

.field public audioFormat:Lmcshim/sound/sampled/AudioFormat;


# direct methods
.method public constructor <init>([BLmcshim/sound/sampled/AudioFormat;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lpaulscode/sound/SoundBuffer;->audioData:[B

    .line 61
    iput-object p2, p0, Lpaulscode/sound/SoundBuffer;->audioFormat:Lmcshim/sound/sampled/AudioFormat;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .registers 2

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lpaulscode/sound/SoundBuffer;->audioData:[B

    .line 70
    iput-object v0, p0, Lpaulscode/sound/SoundBuffer;->audioFormat:Lmcshim/sound/sampled/AudioFormat;

    return-void
.end method

.method public trimData(I)V
    .registers 5

    .line 81
    iget-object v0, p0, Lpaulscode/sound/SoundBuffer;->audioData:[B

    if-eqz v0, :cond_13

    if-nez p1, :cond_7

    goto :goto_13

    .line 83
    :cond_7
    array-length v1, v0

    if-le v1, p1, :cond_16

    .line 85
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 86
    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iput-object v1, p0, Lpaulscode/sound/SoundBuffer;->audioData:[B

    goto :goto_16

    :cond_13
    :goto_13
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lpaulscode/sound/SoundBuffer;->audioData:[B

    :cond_16
    :goto_16
    return-void
.end method
