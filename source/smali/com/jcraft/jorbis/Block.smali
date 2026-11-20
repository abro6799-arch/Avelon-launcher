###### Class com.jcraft.jorbis.Block (com.jcraft.jorbis.Block)
.class public Lcom/jcraft/jorbis/Block;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field W:I

.field eofflag:I

.field floor_bits:I

.field glue_bits:I

.field granulepos:J

.field lW:I

.field mode:I

.field nW:I

.field opb:Lcom/jcraft/jogg/Buffer;

.field pcm:[[F

.field pcmend:I

.field res_bits:I

.field sequence:J

.field time_bits:I

.field vd:Lcom/jcraft/jorbis/DspState;


# direct methods
.method public constructor <init>(Lcom/jcraft/jorbis/DspState;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [[F

    .line 33
    iput-object v0, p0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    .line 34
    new-instance v0, Lcom/jcraft/jogg/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jogg/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    .line 54
    iput-object p1, p0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    .line 55
    iget p1, p1, Lcom/jcraft/jorbis/DspState;->analysisp:I

    if-eqz p1, :cond_1a

    .line 56
    iget-object p1, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jogg/Buffer;->writeinit()V

    :cond_1a
    return-void
.end method


# virtual methods
.method public clear()I
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    if-eqz v0, :cond_d

    .line 66
    iget v0, v0, Lcom/jcraft/jorbis/DspState;->analysisp:I

    if-eqz v0, :cond_d

    .line 67
    iget-object v0, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jogg/Buffer;->writeclear()V

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/jcraft/jorbis/DspState;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    return-void
.end method

.method public synthesis(Lcom/jcraft/jogg/Packet;)I
    .registers 9

    .line 74
    iget-object v0, p0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v0, v0, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    .line 77
    iget-object v1, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget-object v2, p1, Lcom/jcraft/jogg/Packet;->packet_base:[B

    iget v3, p1, Lcom/jcraft/jogg/Packet;->packet:I

    iget v4, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/jcraft/jogg/Buffer;->readinit([BII)V

    .line 80
    iget-object v1, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_1a

    return v3

    .line 86
    :cond_1a
    iget-object v1, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget-object v4, p0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget v4, v4, Lcom/jcraft/jorbis/DspState;->modebits:I

    invoke-virtual {v1, v4}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    if-ne v1, v3, :cond_27

    return v3

    .line 90
    :cond_27
    iput v1, p0, Lcom/jcraft/jorbis/Block;->mode:I

    .line 91
    iget-object v1, v0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    iget v4, p0, Lcom/jcraft/jorbis/Block;->mode:I

    aget-object v1, v1, v4

    iget v1, v1, Lcom/jcraft/jorbis/InfoMode;->blockflag:I

    iput v1, p0, Lcom/jcraft/jorbis/Block;->W:I

    const/4 v4, 0x0

    if-eqz v1, :cond_49

    .line 93
    iget-object v1, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v1, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    iput v1, p0, Lcom/jcraft/jorbis/Block;->lW:I

    .line 94
    iget-object v1, p0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v1, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    iput v1, p0, Lcom/jcraft/jorbis/Block;->nW:I

    if-ne v1, v3, :cond_4d

    return v3

    .line 99
    :cond_49
    iput v4, p0, Lcom/jcraft/jorbis/Block;->lW:I

    .line 100
    iput v4, p0, Lcom/jcraft/jorbis/Block;->nW:I

    .line 104
    :cond_4d
    iget-wide v1, p1, Lcom/jcraft/jogg/Packet;->granulepos:J

    iput-wide v1, p0, Lcom/jcraft/jorbis/Block;->granulepos:J

    .line 105
    iget-wide v1, p1, Lcom/jcraft/jogg/Packet;->packetno:J

    const-wide/16 v5, 0x3

    sub-long/2addr v1, v5

    iput-wide v1, p0, Lcom/jcraft/jorbis/Block;->sequence:J

    .line 106
    iget p1, p1, Lcom/jcraft/jogg/Packet;->e_o_s:I

    iput p1, p0, Lcom/jcraft/jorbis/Block;->eofflag:I

    .line 109
    iget-object p1, v0, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget v1, p0, Lcom/jcraft/jorbis/Block;->W:I

    aget p1, p1, v1

    iput p1, p0, Lcom/jcraft/jorbis/Block;->pcmend:I

    .line 110
    iget-object p1, p0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    array-length p1, p1

    iget v1, v0, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge p1, v1, :cond_71

    .line 111
    iget p1, v0, Lcom/jcraft/jorbis/Info;->channels:I

    new-array p1, p1, [[F

    iput-object p1, p0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    :cond_71
    move p1, v4

    .line 113
    :goto_72
    iget v1, v0, Lcom/jcraft/jorbis/Info;->channels:I

    if-ge p1, v1, :cond_9a

    .line 114
    iget-object v1, p0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v2, v1, p1

    if-eqz v2, :cond_91

    array-length v2, v2

    iget v3, p0, Lcom/jcraft/jorbis/Block;->pcmend:I

    if-ge v2, v3, :cond_82

    goto :goto_91

    :cond_82
    move v1, v4

    .line 118
    :goto_83
    iget v2, p0, Lcom/jcraft/jorbis/Block;->pcmend:I

    if-ge v1, v2, :cond_97

    .line 119
    iget-object v2, p0, Lcom/jcraft/jorbis/Block;->pcm:[[F

    aget-object v2, v2, p1

    const/4 v3, 0x0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 115
    :cond_91
    :goto_91
    iget v2, p0, Lcom/jcraft/jorbis/Block;->pcmend:I

    new-array v2, v2, [F

    aput-object v2, v1, p1

    :cond_97
    add-int/lit8 p1, p1, 0x1

    goto :goto_72

    .line 125
    :cond_9a
    iget-object p1, v0, Lcom/jcraft/jorbis/Info;->map_type:[I

    iget-object v0, v0, Lcom/jcraft/jorbis/Info;->mode_param:[Lcom/jcraft/jorbis/InfoMode;

    iget v1, p0, Lcom/jcraft/jorbis/Block;->mode:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/jcraft/jorbis/InfoMode;->mapping:I

    aget p1, p1, v0

    .line 126
    sget-object v0, Lcom/jcraft/jorbis/FuncMapping;->mapping_P:[Lcom/jcraft/jorbis/FuncMapping;

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v0, v0, Lcom/jcraft/jorbis/DspState;->mode:[Ljava/lang/Object;

    iget v1, p0, Lcom/jcraft/jorbis/Block;->mode:I

    aget-object v0, v0, v1

    invoke-virtual {p1, p0, v0}, Lcom/jcraft/jorbis/FuncMapping;->inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
