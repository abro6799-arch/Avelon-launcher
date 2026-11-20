###### Class mcshim.sound.sampled.AudioFormat (mcshim.sound.sampled.AudioFormat)
.class public Lmcshim/sound/sampled/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# instance fields
.field private final bigEndian:Z

.field private final bits:I

.field private final channels:I

.field private final rate:F

.field private final signed:Z


# direct methods
.method public constructor <init>(FIIZZ)V
    .registers 6

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmcshim/sound/sampled/AudioFormat;->rate:F

    iput p2, p0, Lmcshim/sound/sampled/AudioFormat;->bits:I

    iput p3, p0, Lmcshim/sound/sampled/AudioFormat;->channels:I

    iput-boolean p4, p0, Lmcshim/sound/sampled/AudioFormat;->signed:Z

    iput-boolean p5, p0, Lmcshim/sound/sampled/AudioFormat;->bigEndian:Z

    return-void
.end method


# virtual methods
.method public getChannels()I
    .registers 2

    .line 5
    iget v0, p0, Lmcshim/sound/sampled/AudioFormat;->channels:I

    return v0
.end method

.method public getFrameRate()F
    .registers 2

    .line 6
    iget v0, p0, Lmcshim/sound/sampled/AudioFormat;->rate:F

    return v0
.end method

.method public getFrameSize()I
    .registers 3

    .line 6
    iget v0, p0, Lmcshim/sound/sampled/AudioFormat;->channels:I

    iget v1, p0, Lmcshim/sound/sampled/AudioFormat;->bits:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v0, v1

    return v0
.end method

.method public getSampleRate()F
    .registers 2

    .line 5
    iget v0, p0, Lmcshim/sound/sampled/AudioFormat;->rate:F

    return v0
.end method

.method public getSampleSizeInBits()I
    .registers 2

    .line 5
    iget v0, p0, Lmcshim/sound/sampled/AudioFormat;->bits:I

    return v0
.end method

.method public isBigEndian()Z
    .registers 2

    .line 6
    iget-boolean v0, p0, Lmcshim/sound/sampled/AudioFormat;->bigEndian:Z

    return v0
.end method
