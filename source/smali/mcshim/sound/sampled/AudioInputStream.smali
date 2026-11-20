###### Class mcshim.sound.sampled.AudioInputStream (mcshim.sound.sampled.AudioInputStream)
.class public Lmcshim/sound/sampled/AudioInputStream;
.super Ljava/io/InputStream;
.source "AudioInputStream.java"


# instance fields
.field private final fmt:Lmcshim/sound/sampled/AudioFormat;

.field private final frames:J

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lmcshim/sound/sampled/AudioFormat;J)V
    .registers 5

    .line 5
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lmcshim/sound/sampled/AudioInputStream;->in:Ljava/io/InputStream;

    iput-object p2, p0, Lmcshim/sound/sampled/AudioInputStream;->fmt:Lmcshim/sound/sampled/AudioFormat;

    iput-wide p3, p0, Lmcshim/sound/sampled/AudioInputStream;->frames:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lmcshim/sound/sampled/AudioInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getFormat()Lmcshim/sound/sampled/AudioFormat;
    .registers 2

    .line 6
    iget-object v0, p0, Lmcshim/sound/sampled/AudioInputStream;->fmt:Lmcshim/sound/sampled/AudioFormat;

    return-object v0
.end method

.method public getFrameLength()J
    .registers 3

    .line 6
    iget-wide v0, p0, Lmcshim/sound/sampled/AudioInputStream;->frames:J

    return-wide v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lmcshim/sound/sampled/AudioInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lmcshim/sound/sampled/AudioInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method
