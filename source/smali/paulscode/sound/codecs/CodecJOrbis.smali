###### Class paulscode.sound.codecs.CodecJOrbis (paulscode.sound.codecs.CodecJOrbis)
.class public Lpaulscode/sound/codecs/CodecJOrbis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpaulscode/sound/ICodec;


# static fields
.field private static final GET:Z = false

.field private static final LITTLE_ENDIAN:Z

.field private static final SET:Z = true

.field private static final XXX:Z


# instance fields
.field private audioFormat:Lmcshim/sound/sampled/AudioFormat;

.field private buffer:[B

.field private bufferSize:I

.field private convertedBufferSize:I

.field private count:I

.field private endOfStream:Z

.field private index:I

.field private initialized:Z

.field private inputStream:Ljava/io/InputStream;

.field private joggPacket:Lcom/jcraft/jogg/Packet;

.field private joggPage:Lcom/jcraft/jogg/Page;

.field private joggStreamState:Lcom/jcraft/jogg/StreamState;

.field private joggSyncState:Lcom/jcraft/jogg/SyncState;

.field private jorbisBlock:Lcom/jcraft/jorbis/Block;

.field private jorbisComment:Lcom/jcraft/jorbis/Comment;

.field private jorbisDspState:Lcom/jcraft/jorbis/DspState;

.field private jorbisInfo:Lcom/jcraft/jorbis/Info;

.field private logger:Lpaulscode/sound/SoundSystemLogger;

.field private pcmIndex:[I

.field private pcmInfo:[[[F

.field protected url:Ljava/net/URL;

.field protected urlConnection:Ljava/net/URLConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 177
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lpaulscode/sound/codecs/CodecJOrbis;->LITTLE_ENDIAN:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->urlConnection:Ljava/net/URLConnection;

    const/4 v1, 0x0

    .line 97
    iput-boolean v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->endOfStream:Z

    .line 102
    iput-boolean v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->initialized:Z

    .line 107
    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->buffer:[B

    .line 117
    iput v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->count:I

    .line 122
    iput v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->index:I

    .line 142
    new-instance v0, Lcom/jcraft/jogg/Packet;

    invoke-direct {v0}, Lcom/jcraft/jogg/Packet;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPacket:Lcom/jcraft/jogg/Packet;

    .line 146
    new-instance v0, Lcom/jcraft/jogg/Page;

    invoke-direct {v0}, Lcom/jcraft/jogg/Page;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPage:Lcom/jcraft/jogg/Page;

    .line 150
    new-instance v0, Lcom/jcraft/jogg/StreamState;

    invoke-direct {v0}, Lcom/jcraft/jogg/StreamState;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggStreamState:Lcom/jcraft/jogg/StreamState;

    .line 154
    new-instance v0, Lcom/jcraft/jogg/SyncState;

    invoke-direct {v0}, Lcom/jcraft/jogg/SyncState;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    .line 158
    new-instance v0, Lcom/jcraft/jorbis/DspState;

    invoke-direct {v0}, Lcom/jcraft/jorbis/DspState;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisDspState:Lcom/jcraft/jorbis/DspState;

    .line 162
    new-instance v1, Lcom/jcraft/jorbis/Block;

    invoke-direct {v1, v0}, Lcom/jcraft/jorbis/Block;-><init>(Lcom/jcraft/jorbis/DspState;)V

    iput-object v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisBlock:Lcom/jcraft/jorbis/Block;

    .line 166
    new-instance v0, Lcom/jcraft/jorbis/Comment;

    invoke-direct {v0}, Lcom/jcraft/jorbis/Comment;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisComment:Lcom/jcraft/jorbis/Comment;

    .line 170
    new-instance v0, Lcom/jcraft/jorbis/Info;

    invoke-direct {v0}, Lcom/jcraft/jorbis/Info;-><init>()V

    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    .line 183
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getLogger()Lpaulscode/sound/SoundSystemLogger;

    move-result-object v0

    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->logger:Lpaulscode/sound/SoundSystemLogger;

    return-void
.end method

.method private static appendByteArrays([B[B)[B
    .registers 5

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    const/4 v0, 0x0

    if-nez p0, :cond_11

    .line 639
    array-length p0, p1

    new-array p0, p0, [B

    .line 641
    array-length v1, p1

    invoke-static {p1, v0, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2b

    :cond_11
    if-nez p1, :cond_1c

    .line 645
    array-length p1, p0

    new-array p1, p1, [B

    .line 647
    array-length v1, p0

    invoke-static {p0, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p1

    goto :goto_2b

    .line 651
    :cond_1c
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 652
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    array-length p0, p0

    array-length v2, p1

    invoke-static {p1, v0, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v1

    :goto_2b
    return-object p0
.end method

.method private decodeCurrentPacket()[B
    .registers 13

    .line 530
    iget v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->convertedBufferSize:I

    new-array v0, v0, [B

    .line 534
    iget-object v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisBlock:Lcom/jcraft/jorbis/Block;

    iget-object v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPacket:Lcom/jcraft/jogg/Packet;

    invoke-virtual {v1, v2}, Lcom/jcraft/jorbis/Block;->synthesis(Lcom/jcraft/jogg/Packet;)I

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisDspState:Lcom/jcraft/jorbis/DspState;

    iget-object v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisBlock:Lcom/jcraft/jorbis/Block;

    invoke-virtual {v1, v2}, Lcom/jcraft/jorbis/DspState;->synthesis_blockin(Lcom/jcraft/jorbis/Block;)I

    .line 537
    :cond_15
    iget v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->convertedBufferSize:I

    iget-object v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    iget v2, v2, Lcom/jcraft/jorbis/Info;->channels:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    const/4 v2, 0x0

    move v3, v2

    .line 540
    :goto_20
    iget v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->convertedBufferSize:I

    if-ge v3, v4, :cond_9a

    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisDspState:Lcom/jcraft/jorbis/DspState;

    iget-object v5, p0, Lpaulscode/sound/codecs/CodecJOrbis;->pcmInfo:[[[F

    iget-object v6, p0, Lpaulscode/sound/codecs/CodecJOrbis;->pcmIndex:[I

    invoke-virtual {v4, v5, v6}, Lcom/jcraft/jorbis/DspState;->synthesis_pcmout([[[F[I)I

    move-result v4

    if-lez v4, :cond_9a

    if-ge v4, v1, :cond_33

    goto :goto_34

    :cond_33
    move v4, v1

    :goto_34
    move v5, v2

    .line 543
    :goto_35
    iget-object v6, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    iget v6, v6, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge v5, v6, :cond_8c

    mul-int/lit8 v6, v5, 0x2

    move v7, v2

    :goto_3e
    if-ge v7, v4, :cond_89

    .line 546
    iget-object v8, p0, Lpaulscode/sound/codecs/CodecJOrbis;->pcmInfo:[[[F

    aget-object v8, v8, v2

    aget-object v8, v8, v5

    iget-object v9, p0, Lpaulscode/sound/codecs/CodecJOrbis;->pcmIndex:[I

    aget v9, v9, v5

    add-int/2addr v9, v7

    aget v8, v8, v9

    const v9, 0x46fffe00    # 32767.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/16 v9, 0x7fff

    if-le v8, v9, :cond_57

    move v8, v9

    :cond_57
    const/16 v9, -0x8000

    if-ge v8, v9, :cond_5c

    move v8, v9

    :cond_5c
    if-gez v8, :cond_62

    const v9, 0x8000

    or-int/2addr v8, v9

    .line 555
    :cond_62
    sget-boolean v9, Lpaulscode/sound/codecs/CodecJOrbis;->LITTLE_ENDIAN:Z

    if-eqz v9, :cond_73

    add-int v9, v3, v6

    int-to-byte v10, v8

    .line 556
    aput-byte v10, v0, v9

    add-int/lit8 v9, v9, 0x1

    ushr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    .line 557
    aput-byte v8, v0, v9

    goto :goto_7f

    :cond_73
    add-int v9, v3, v6

    add-int/lit8 v10, v9, 0x1

    int-to-byte v11, v8

    .line 559
    aput-byte v11, v0, v10

    ushr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    .line 560
    aput-byte v8, v0, v9

    .line 564
    :goto_7f
    iget-object v8, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    iget v8, v8, Lcom/jcraft/jorbis/Info;->channels:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    :cond_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 567
    :cond_8c
    iget-object v5, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    iget v5, v5, Lcom/jcraft/jorbis/Info;->channels:I

    mul-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 568
    iget-object v5, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisDspState:Lcom/jcraft/jorbis/DspState;

    invoke-virtual {v5, v4}, Lcom/jcraft/jorbis/DspState;->synthesis_read(I)I

    goto :goto_20

    .line 570
    :cond_9a
    invoke-static {v0, v3}, Lpaulscode/sound/codecs/CodecJOrbis;->trimArray([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized endOfStream(ZZ)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 599
    :try_start_4
    iput-boolean p2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->endOfStream:Z

    .line 600
    :cond_6
    iget-boolean p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->endOfStream:Z
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private errorMessage(Ljava/lang/String;)V
    .registers 5

    .line 669
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->logger:Lpaulscode/sound/SoundSystemLogger;

    const-string v1, "CodecJOrbis"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lpaulscode/sound/SoundSystemLogger;->errorMessage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private declared-synchronized initialized(ZZ)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 585
    :try_start_4
    iput-boolean p2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->initialized:Z

    .line 586
    :cond_6
    iget-boolean p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->initialized:Z
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private printStackTrace(Ljava/lang/Exception;)V
    .registers 4

    .line 679
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->logger:Lpaulscode/sound/SoundSystemLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lpaulscode/sound/SoundSystemLogger;->printStackTrace(Ljava/lang/Exception;I)V

    return-void
.end method

.method private readBytes()[B
    .registers 10

    const/4 v0, 0x0

    .line 467
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->initialized(ZZ)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    return-object v2

    .line 469
    :cond_9
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->endOfStream(ZZ)Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v2

    .line 473
    :cond_10
    iget-object v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    iget-object v3, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPage:Lcom/jcraft/jogg/Page;

    invoke-virtual {v1, v3}, Lcom/jcraft/jogg/SyncState;->pageout(Lcom/jcraft/jogg/Page;)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_5d

    if-eqz v1, :cond_5d

    if-eq v1, v4, :cond_21

    goto :goto_60

    .line 483
    :cond_21
    iget-object v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggStreamState:Lcom/jcraft/jogg/StreamState;

    iget-object v5, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPage:Lcom/jcraft/jogg/Page;

    invoke-virtual {v1, v5}, Lcom/jcraft/jogg/StreamState;->pagein(Lcom/jcraft/jogg/Page;)I

    .line 484
    iget-object v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPage:Lcom/jcraft/jogg/Page;

    invoke-virtual {v1}, Lcom/jcraft/jogg/Page;->granulepos()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_38

    .line 485
    invoke-direct {p0, v4, v4}, Lpaulscode/sound/codecs/CodecJOrbis;->endOfStream(ZZ)Z

    goto :goto_60

    .line 489
    :cond_38
    :goto_38
    iget-object v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggStreamState:Lcom/jcraft/jogg/StreamState;

    iget-object v5, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPacket:Lcom/jcraft/jogg/Packet;

    invoke-virtual {v1, v5}, Lcom/jcraft/jogg/StreamState;->packetout(Lcom/jcraft/jogg/Packet;)I

    move-result v1

    if-eq v1, v3, :cond_51

    if-eqz v1, :cond_51

    if-eq v1, v4, :cond_47

    goto :goto_38

    .line 498
    :cond_47
    invoke-direct {p0}, Lpaulscode/sound/codecs/CodecJOrbis;->decodeCurrentPacket()[B

    move-result-object v1

    invoke-static {v2, v1}, Lpaulscode/sound/codecs/CodecJOrbis;->appendByteArrays([B[B)[B

    move-result-object v1

    move-object v2, v1

    goto :goto_38

    .line 502
    :cond_51
    iget-object v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPage:Lcom/jcraft/jogg/Page;

    invoke-virtual {v1}, Lcom/jcraft/jogg/Page;->eos()I

    move-result v1

    if-eqz v1, :cond_60

    invoke-direct {p0, v4, v4}, Lpaulscode/sound/codecs/CodecJOrbis;->endOfStream(ZZ)Z

    goto :goto_60

    .line 478
    :cond_5d
    invoke-direct {p0, v4, v4}, Lpaulscode/sound/codecs/CodecJOrbis;->endOfStream(ZZ)Z

    .line 505
    :cond_60
    :goto_60
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->endOfStream(ZZ)Z

    move-result v0

    if-nez v0, :cond_99

    .line 506
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    iget v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->bufferSize:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jogg/SyncState;->buffer(I)I

    move-result v0

    iput v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->index:I

    if-ne v0, v3, :cond_76

    .line 507
    invoke-direct {p0, v4, v4}, Lpaulscode/sound/codecs/CodecJOrbis;->endOfStream(ZZ)Z

    goto :goto_99

    .line 509
    :cond_76
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    iget-object v0, v0, Lcom/jcraft/jogg/SyncState;->data:[B

    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->buffer:[B

    .line 512
    :try_start_7c
    iget-object v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->inputStream:Ljava/io/InputStream;

    iget v3, p0, Lpaulscode/sound/codecs/CodecJOrbis;->index:I

    iget v5, p0, Lpaulscode/sound/codecs/CodecJOrbis;->bufferSize:I

    invoke-virtual {v1, v0, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->count:I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_88} :catch_95

    .line 517
    iget-object v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    invoke-virtual {v1, v0}, Lcom/jcraft/jogg/SyncState;->wrote(I)I

    .line 518
    iget v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->count:I

    if-nez v0, :cond_99

    invoke-direct {p0, v4, v4}, Lpaulscode/sound/codecs/CodecJOrbis;->endOfStream(ZZ)Z

    goto :goto_99

    :catch_95
    move-exception v0

    .line 514
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->printStackTrace(Ljava/lang/Exception;)V

    :cond_99
    :goto_99
    return-object v2
.end method

.method private readHeader()Z
    .registers 9

    .line 388
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    iget v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->bufferSize:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jogg/SyncState;->buffer(I)I

    move-result v0

    iput v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->index:I

    .line 390
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    iget-object v1, v1, Lcom/jcraft/jogg/SyncState;->data:[B

    iget v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->index:I

    iget v3, p0, Lpaulscode/sound/codecs/CodecJOrbis;->bufferSize:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1c

    move v0, v1

    .line 393
    :cond_1c
    iget-object v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    invoke-virtual {v2, v0}, Lcom/jcraft/jogg/SyncState;->wrote(I)I

    .line 395
    iget-object v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    iget-object v3, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPage:Lcom/jcraft/jogg/Page;

    invoke-virtual {v2, v3}, Lcom/jcraft/jogg/SyncState;->pageout(Lcom/jcraft/jogg/Page;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_37

    .line 397
    iget v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->bufferSize:I

    if-ge v0, v2, :cond_31

    return v3

    :cond_31
    const-string v0, "Ogg header not recognized in method \'readHeader\'."

    .line 399
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->errorMessage(Ljava/lang/String;)V

    return v1

    .line 404
    :cond_37
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggStreamState:Lcom/jcraft/jogg/StreamState;

    iget-object v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPage:Lcom/jcraft/jogg/Page;

    invoke-virtual {v2}, Lcom/jcraft/jogg/Page;->serialno()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jogg/StreamState;->init(I)V

    .line 406
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    invoke-virtual {v0}, Lcom/jcraft/jorbis/Info;->init()V

    .line 407
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisComment:Lcom/jcraft/jorbis/Comment;

    invoke-virtual {v0}, Lcom/jcraft/jorbis/Comment;->init()V

    .line 408
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggStreamState:Lcom/jcraft/jogg/StreamState;

    iget-object v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPage:Lcom/jcraft/jogg/Page;

    invoke-virtual {v0, v2}, Lcom/jcraft/jogg/StreamState;->pagein(Lcom/jcraft/jogg/Page;)I

    move-result v0

    if-gez v0, :cond_5c

    const-string v0, "Problem with first Ogg header page in method \'readHeader\'."

    .line 409
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->errorMessage(Ljava/lang/String;)V

    return v1

    .line 413
    :cond_5c
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggStreamState:Lcom/jcraft/jogg/StreamState;

    iget-object v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPacket:Lcom/jcraft/jogg/Packet;

    invoke-virtual {v0, v2}, Lcom/jcraft/jogg/StreamState;->packetout(Lcom/jcraft/jogg/Packet;)I

    move-result v0

    if-eq v0, v3, :cond_6c

    const-string v0, "Problem with first Ogg header packet in method \'readHeader\'."

    .line 414
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->errorMessage(Ljava/lang/String;)V

    return v1

    .line 418
    :cond_6c
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    iget-object v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisComment:Lcom/jcraft/jorbis/Comment;

    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPacket:Lcom/jcraft/jogg/Packet;

    invoke-virtual {v0, v2, v4}, Lcom/jcraft/jorbis/Info;->synthesis_headerin(Lcom/jcraft/jorbis/Comment;Lcom/jcraft/jogg/Packet;)I

    move-result v0

    if-gez v0, :cond_7e

    const-string v0, "File does not contain Vorbis header in method \'readHeader\'."

    .line 419
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->errorMessage(Ljava/lang/String;)V

    return v1

    :cond_7e
    move v0, v1

    :goto_7f
    const/4 v2, 0x2

    if-ge v0, v2, :cond_e5

    :cond_82
    :goto_82
    if-ge v0, v2, :cond_ba

    .line 426
    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    iget-object v5, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPage:Lcom/jcraft/jogg/Page;

    invoke-virtual {v4, v5}, Lcom/jcraft/jogg/SyncState;->pageout(Lcom/jcraft/jogg/Page;)I

    move-result v4

    if-nez v4, :cond_8f

    goto :goto_ba

    :cond_8f
    if-ne v4, v3, :cond_82

    .line 429
    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggStreamState:Lcom/jcraft/jogg/StreamState;

    iget-object v5, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPage:Lcom/jcraft/jogg/Page;

    invoke-virtual {v4, v5}, Lcom/jcraft/jogg/StreamState;->pagein(Lcom/jcraft/jogg/Page;)I

    :goto_98
    if-ge v0, v2, :cond_82

    .line 431
    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggStreamState:Lcom/jcraft/jogg/StreamState;

    iget-object v5, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPacket:Lcom/jcraft/jogg/Packet;

    invoke-virtual {v4, v5}, Lcom/jcraft/jogg/StreamState;->packetout(Lcom/jcraft/jogg/Packet;)I

    move-result v4

    if-nez v4, :cond_a5

    goto :goto_82

    :cond_a5
    const/4 v5, -0x1

    if-ne v4, v5, :cond_ae

    const-string v0, "Secondary Ogg header corrupt in method \'readHeader\'."

    .line 435
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->errorMessage(Ljava/lang/String;)V

    return v1

    .line 439
    :cond_ae
    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    iget-object v5, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisComment:Lcom/jcraft/jorbis/Comment;

    iget-object v6, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggPacket:Lcom/jcraft/jogg/Packet;

    invoke-virtual {v4, v5, v6}, Lcom/jcraft/jorbis/Info;->synthesis_headerin(Lcom/jcraft/jorbis/Comment;Lcom/jcraft/jogg/Packet;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    .line 444
    :cond_ba
    :goto_ba
    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    iget v5, p0, Lpaulscode/sound/codecs/CodecJOrbis;->bufferSize:I

    invoke-virtual {v4, v5}, Lcom/jcraft/jogg/SyncState;->buffer(I)I

    move-result v4

    iput v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->index:I

    .line 445
    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->inputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    iget-object v5, v5, Lcom/jcraft/jogg/SyncState;->data:[B

    iget v6, p0, Lpaulscode/sound/codecs/CodecJOrbis;->index:I

    iget v7, p0, Lpaulscode/sound/codecs/CodecJOrbis;->bufferSize:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_d5

    move v4, v1

    :cond_d5
    if-nez v4, :cond_df

    if-ge v0, v2, :cond_df

    const-string v0, "End of file reached before finished readingOgg header in method \'readHeader\'"

    .line 448
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->errorMessage(Ljava/lang/String;)V

    return v1

    .line 452
    :cond_df
    iget-object v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    invoke-virtual {v2, v4}, Lcom/jcraft/jogg/SyncState;->wrote(I)I

    goto :goto_7f

    .line 455
    :cond_e5
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    iget v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->bufferSize:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jogg/SyncState;->buffer(I)I

    move-result v0

    iput v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->index:I

    .line 456
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    iget-object v0, v0, Lcom/jcraft/jogg/SyncState;->data:[B

    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->buffer:[B

    return v3
.end method

.method private static trimArray([BI)[B
    .registers 4

    if-eqz p0, :cond_c

    .line 615
    array-length v0, p0

    if-le v0, p1, :cond_c

    .line 616
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 617
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .registers 2

    .line 349
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggStreamState:Lcom/jcraft/jogg/StreamState;

    invoke-virtual {v0}, Lcom/jcraft/jogg/StreamState;->clear()V

    .line 350
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisBlock:Lcom/jcraft/jorbis/Block;

    invoke-virtual {v0}, Lcom/jcraft/jorbis/Block;->clear()I

    .line 351
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisDspState:Lcom/jcraft/jorbis/DspState;

    invoke-virtual {v0}, Lcom/jcraft/jorbis/DspState;->clear()V

    .line 352
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    invoke-virtual {v0}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 353
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    invoke-virtual {v0}, Lcom/jcraft/jogg/SyncState;->clear()I

    .line 355
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_20

    .line 357
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggStreamState:Lcom/jcraft/jogg/StreamState;

    .line 363
    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisBlock:Lcom/jcraft/jorbis/Block;

    .line 364
    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisDspState:Lcom/jcraft/jorbis/DspState;

    .line 365
    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    .line 366
    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    .line 367
    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public endOfStream()Z
    .registers 2

    const/4 v0, 0x0

    .line 341
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->endOfStream(ZZ)Z

    move-result v0

    return v0
.end method

.method public getAudioFormat()Lmcshim/sound/sampled/AudioFormat;
    .registers 2

    .line 377
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->audioFormat:Lmcshim/sound/sampled/AudioFormat;

    return-object v0
.end method

.method public initialize(Ljava/net/URL;)Z
    .registers 11

    const-string v0, "Error reading the header"

    const-string v1, "Unable to create a UrlConnection in method \'initialize\'."

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 201
    invoke-direct {p0, v2, v3}, Lpaulscode/sound/codecs/CodecJOrbis;->initialized(ZZ)Z

    .line 203
    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggStreamState:Lcom/jcraft/jogg/StreamState;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/jcraft/jogg/StreamState;->clear()V

    .line 204
    :cond_10
    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisBlock:Lcom/jcraft/jorbis/Block;

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Lcom/jcraft/jorbis/Block;->clear()I

    .line 205
    :cond_17
    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisDspState:Lcom/jcraft/jorbis/DspState;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/jcraft/jorbis/DspState;->clear()V

    .line 206
    :cond_1e
    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    if-eqz v4, :cond_25

    invoke-virtual {v4}, Lcom/jcraft/jorbis/Info;->clear()V

    .line 207
    :cond_25
    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Lcom/jcraft/jogg/SyncState;->clear()I

    .line 209
    :cond_2c
    iget-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->inputStream:Ljava/io/InputStream;

    if-eqz v4, :cond_33

    .line 211
    :try_start_30
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_33

    .line 216
    :catch_33
    :cond_33
    iput-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->url:Ljava/net/URL;

    .line 217
    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getStreamingBufferSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->bufferSize:I

    const/4 v4, 0x0

    .line 219
    iput-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->buffer:[B

    .line 220
    iput v3, p0, Lpaulscode/sound/codecs/CodecJOrbis;->count:I

    .line 221
    iput v3, p0, Lpaulscode/sound/codecs/CodecJOrbis;->index:I

    .line 223
    new-instance v4, Lcom/jcraft/jogg/StreamState;

    invoke-direct {v4}, Lcom/jcraft/jogg/StreamState;-><init>()V

    iput-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggStreamState:Lcom/jcraft/jogg/StreamState;

    .line 224
    new-instance v4, Lcom/jcraft/jorbis/Block;

    iget-object v5, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisDspState:Lcom/jcraft/jorbis/DspState;

    invoke-direct {v4, v5}, Lcom/jcraft/jorbis/Block;-><init>(Lcom/jcraft/jorbis/DspState;)V

    iput-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisBlock:Lcom/jcraft/jorbis/Block;

    .line 225
    new-instance v4, Lcom/jcraft/jorbis/DspState;

    invoke-direct {v4}, Lcom/jcraft/jorbis/DspState;-><init>()V

    iput-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisDspState:Lcom/jcraft/jorbis/DspState;

    .line 226
    new-instance v4, Lcom/jcraft/jorbis/Info;

    invoke-direct {v4}, Lcom/jcraft/jorbis/Info;-><init>()V

    iput-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    .line 227
    new-instance v4, Lcom/jcraft/jogg/SyncState;

    invoke-direct {v4}, Lcom/jcraft/jogg/SyncState;-><init>()V

    iput-object v4, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    .line 230
    :try_start_69
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    iput-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->urlConnection:Ljava/net/URLConnection;
    :try_end_6f
    .catch Ljava/net/UnknownServiceException; {:try_start_69 .. :try_end_6f} :catch_ec
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6f} :catch_e1

    if-eqz p1, :cond_85

    .line 245
    :try_start_71
    invoke-virtual {p0}, Lpaulscode/sound/codecs/CodecJOrbis;->openInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->inputStream:Ljava/io/InputStream;
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_77} :catch_78

    goto :goto_85

    :catch_78
    move-exception p1

    const-string v0, "Unable to acquire inputstream in method \'initialize\'."

    .line 247
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->errorMessage(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0, p1}, Lpaulscode/sound/codecs/CodecJOrbis;->printStackTrace(Ljava/lang/Exception;)V

    .line 249
    invoke-virtual {p0}, Lpaulscode/sound/codecs/CodecJOrbis;->cleanup()V

    return v3

    .line 254
    :cond_85
    :goto_85
    invoke-direct {p0, v2, v3}, Lpaulscode/sound/codecs/CodecJOrbis;->endOfStream(ZZ)Z

    .line 256
    iget-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    invoke-virtual {p1}, Lcom/jcraft/jogg/SyncState;->init()V

    .line 257
    iget-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    iget v1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->bufferSize:I

    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/SyncState;->buffer(I)I

    .line 258
    iget-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->joggSyncState:Lcom/jcraft/jogg/SyncState;

    iget-object p1, p1, Lcom/jcraft/jogg/SyncState;->data:[B

    iput-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->buffer:[B

    .line 261
    :try_start_9a
    invoke-direct {p0}, Lpaulscode/sound/codecs/CodecJOrbis;->readHeader()Z

    move-result p1

    if-nez p1, :cond_a4

    .line 262
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->errorMessage(Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a3} :catch_dd

    return v3

    .line 270
    :cond_a4
    iget p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->bufferSize:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->convertedBufferSize:I

    .line 272
    iget-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisDspState:Lcom/jcraft/jorbis/DspState;

    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    invoke-virtual {p1, v0}, Lcom/jcraft/jorbis/DspState;->synthesis_init(Lcom/jcraft/jorbis/Info;)I

    .line 273
    iget-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisBlock:Lcom/jcraft/jorbis/Block;

    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisDspState:Lcom/jcraft/jorbis/DspState;

    invoke-virtual {p1, v0}, Lcom/jcraft/jorbis/Block;->init(Lcom/jcraft/jorbis/DspState;)V

    .line 275
    iget-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    iget v6, p1, Lcom/jcraft/jorbis/Info;->channels:I

    .line 276
    iget-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    iget p1, p1, Lcom/jcraft/jorbis/Info;->rate:I

    .line 278
    new-instance v0, Lmcshim/sound/sampled/AudioFormat;

    int-to-float v4, p1

    const/16 v5, 0x10

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lmcshim/sound/sampled/AudioFormat;-><init>(FIIZZ)V

    iput-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->audioFormat:Lmcshim/sound/sampled/AudioFormat;

    new-array p1, v2, [[[F

    .line 280
    iput-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->pcmInfo:[[[F

    .line 281
    iget-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->jorbisInfo:Lcom/jcraft/jorbis/Info;

    iget p1, p1, Lcom/jcraft/jorbis/Info;->channels:I

    new-array p1, p1, [I

    iput-object p1, p0, Lpaulscode/sound/codecs/CodecJOrbis;->pcmIndex:[I

    .line 283
    invoke-direct {p0, v2, v2}, Lpaulscode/sound/codecs/CodecJOrbis;->initialized(ZZ)Z

    return v2

    .line 266
    :catch_dd
    invoke-direct {p0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->errorMessage(Ljava/lang/String;)V

    return v3

    :catch_e1
    move-exception p1

    .line 237
    invoke-direct {p0, v1}, Lpaulscode/sound/codecs/CodecJOrbis;->errorMessage(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, p1}, Lpaulscode/sound/codecs/CodecJOrbis;->printStackTrace(Ljava/lang/Exception;)V

    .line 239
    invoke-virtual {p0}, Lpaulscode/sound/codecs/CodecJOrbis;->cleanup()V

    return v3

    :catch_ec
    move-exception p1

    .line 232
    invoke-direct {p0, v1}, Lpaulscode/sound/codecs/CodecJOrbis;->errorMessage(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0, p1}, Lpaulscode/sound/codecs/CodecJOrbis;->printStackTrace(Ljava/lang/Exception;)V

    .line 234
    invoke-virtual {p0}, Lpaulscode/sound/codecs/CodecJOrbis;->cleanup()V

    return v3
.end method

.method public initialized()Z
    .registers 2

    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, v0, v0}, Lpaulscode/sound/codecs/CodecJOrbis;->initialized(ZZ)Z

    move-result v0

    return v0
.end method

.method protected openInputStream()Ljava/io/InputStream;
    .registers 2

    .line 289
    iget-object v0, p0, Lpaulscode/sound/codecs/CodecJOrbis;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public read()Lpaulscode/sound/SoundBuffer;
    .registers 4

    .line 309
    invoke-direct {p0}, Lpaulscode/sound/codecs/CodecJOrbis;->readBytes()[B

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 313
    :cond_8
    new-instance v1, Lpaulscode/sound/SoundBuffer;

    iget-object v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->audioFormat:Lmcshim/sound/sampled/AudioFormat;

    invoke-direct {v1, v0, v2}, Lpaulscode/sound/SoundBuffer;-><init>([BLmcshim/sound/sampled/AudioFormat;)V

    return-object v1
.end method

.method public readAll()Lpaulscode/sound/SoundBuffer;
    .registers 4

    .line 325
    invoke-direct {p0}, Lpaulscode/sound/codecs/CodecJOrbis;->readBytes()[B

    move-result-object v0

    :cond_4
    const/4 v1, 0x0

    .line 327
    invoke-direct {p0, v1, v1}, Lpaulscode/sound/codecs/CodecJOrbis;->endOfStream(ZZ)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 328
    invoke-direct {p0}, Lpaulscode/sound/codecs/CodecJOrbis;->readBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lpaulscode/sound/codecs/CodecJOrbis;->appendByteArrays([B[B)[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 329
    array-length v1, v0

    invoke-static {}, Lpaulscode/sound/SoundSystemConfig;->getMaxFileSize()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 332
    :cond_1c
    new-instance v1, Lpaulscode/sound/SoundBuffer;

    iget-object v2, p0, Lpaulscode/sound/codecs/CodecJOrbis;->audioFormat:Lmcshim/sound/sampled/AudioFormat;

    invoke-direct {v1, v0, v2}, Lpaulscode/sound/SoundBuffer;-><init>([BLmcshim/sound/sampled/AudioFormat;)V

    return-object v1
.end method

.method public reverseByteOrder(Z)V
    .registers 2

    return-void
.end method
