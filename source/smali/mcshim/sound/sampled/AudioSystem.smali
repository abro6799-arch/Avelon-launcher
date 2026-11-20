###### Class mcshim.sound.sampled.AudioSystem (mcshim.sound.sampled.AudioSystem)
.class public Lmcshim/sound/sampled/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioInputStream(Ljava/io/InputStream;)Lmcshim/sound/sampled/AudioInputStream;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmcshim/sound/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x4

    new-array p0, p0, [B

    .line 7
    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "RIFF"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-static {v0}, Lmcshim/sound/sampled/AudioSystem;->le32(Ljava/io/DataInputStream;)I

    .line 8
    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "WAVE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    const/4 v1, 0x0

    move v3, v1

    move v10, v3

    move v11, v10

    .line 10
    :goto_36
    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-static {v0}, Lmcshim/sound/sampled/AudioSystem;->le32(Ljava/io/DataInputStream;)I

    move-result v12

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v5, "fmt "

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v13, 0x1

    if-eqz v5, :cond_72

    invoke-static {v0}, Lmcshim/sound/sampled/AudioSystem;->le16(Ljava/io/DataInputStream;)I

    move-result v3

    invoke-static {v0}, Lmcshim/sound/sampled/AudioSystem;->le16(Ljava/io/DataInputStream;)I

    move-result v11

    invoke-static {v0}, Lmcshim/sound/sampled/AudioSystem;->le32(Ljava/io/DataInputStream;)I

    move-result v4

    invoke-static {v0}, Lmcshim/sound/sampled/AudioSystem;->le32(Ljava/io/DataInputStream;)I

    invoke-static {v0}, Lmcshim/sound/sampled/AudioSystem;->le16(Ljava/io/DataInputStream;)I

    invoke-static {v0}, Lmcshim/sound/sampled/AudioSystem;->le16(Ljava/io/DataInputStream;)I

    move-result v10

    add-int/lit8 v12, v12, -0x10

    invoke-virtual {v0, v12}, Ljava/io/DataInputStream;->skipBytes(I)I

    if-ne v3, v13, :cond_6a

    move v3, v4

    goto :goto_36

    :cond_6a
    new-instance p0, Lmcshim/sound/sampled/UnsupportedAudioFileException;

    const-string v0, "not PCM"

    invoke-direct {p0, v0}, Lmcshim/sound/sampled/UnsupportedAudioFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_72
    const-string v5, "data"

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    new-instance p0, Lmcshim/sound/sampled/AudioFormat;

    int-to-float v5, v3

    const/16 v2, 0x8

    if-le v10, v2, :cond_83

    move v8, v13

    goto :goto_84

    :cond_83
    move v8, v1

    :goto_84
    const/4 v9, 0x0

    move-object v4, p0

    move v6, v10

    move v7, v11

    invoke-direct/range {v4 .. v9}, Lmcshim/sound/sampled/AudioFormat;-><init>(FIIZZ)V

    new-instance v1, Lmcshim/sound/sampled/AudioInputStream;

    mul-int/2addr v11, v10

    div-int/2addr v11, v2

    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v12, v2

    int-to-long v2, v12

    invoke-direct {v1, v0, p0, v2, v3}, Lmcshim/sound/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lmcshim/sound/sampled/AudioFormat;J)V

    return-object v1

    :cond_99
    and-int/lit8 v4, v12, 0x1

    add-int/2addr v12, v4

    .line 13
    invoke-virtual {v0, v12}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_36

    .line 8
    :cond_a0
    new-instance p0, Lmcshim/sound/sampled/UnsupportedAudioFileException;

    const-string v0, "not WAVE"

    invoke-direct {p0, v0}, Lmcshim/sound/sampled/UnsupportedAudioFileException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_a8
    new-instance p0, Lmcshim/sound/sampled/UnsupportedAudioFileException;

    const-string v0, "not RIFF"

    invoke-direct {p0, v0}, Lmcshim/sound/sampled/UnsupportedAudioFileException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static le16(Ljava/io/DataInputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->read()I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method private static le32(Ljava/io/DataInputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lmcshim/sound/sampled/AudioSystem;->le16(Ljava/io/DataInputStream;)I

    move-result v0

    invoke-static {p0}, Lmcshim/sound/sampled/AudioSystem;->le16(Ljava/io/DataInputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method
