###### Class com.jcraft.jogg.StreamState (com.jcraft.jogg.StreamState)
.class public Lcom/jcraft/jogg/StreamState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b_o_s:I

.field body_data:[B

.field body_fill:I

.field private body_returned:I

.field body_storage:I

.field public e_o_s:I

.field granule_vals:[J

.field granulepos:J

.field header:[B

.field header_fill:I

.field lacing_fill:I

.field lacing_packet:I

.field lacing_returned:I

.field lacing_storage:I

.field lacing_vals:[I

.field packetno:J

.field pageno:I

.field serialno:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11a

    new-array v0, v0, [B

    .line 44
    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->header:[B

    .line 61
    invoke-virtual {p0}, Lcom/jcraft/jogg/StreamState;->init()V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .line 65
    invoke-direct {p0}, Lcom/jcraft/jogg/StreamState;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/jcraft/jogg/StreamState;->init(I)V

    return-void
.end method


# virtual methods
.method body_expand(I)V
    .registers 5

    .line 103
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->body_storage:I

    iget v1, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    add-int/2addr v1, p1

    if-gt v0, v1, :cond_17

    add-int/lit16 p1, p1, 0x400

    add-int/2addr v0, p1

    .line 104
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->body_storage:I

    .line 105
    new-array p1, v0, [B

    .line 106
    iget-object v0, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput-object p1, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    :cond_17
    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    .line 94
    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    .line 95
    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    return-void
.end method

.method destroy()V
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/jcraft/jogg/StreamState;->clear()V

    return-void
.end method

.method public eof()I
    .registers 2

    .line 506
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->e_o_s:I

    return v0
.end method

.method public flush(Lcom/jcraft/jogg/Page;)I
    .registers 13

    .line 376
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_7

    move v0, v1

    .line 379
    :cond_7
    iget-object v2, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    if-nez v0, :cond_f

    return v3

    .line 389
    :cond_f
    iget v2, p0, Lcom/jcraft/jogg/StreamState;->b_o_s:I

    if-nez v2, :cond_25

    move v2, v3

    :goto_14
    const-wide/16 v4, 0x0

    if-ge v2, v0, :cond_3c

    .line 392
    iget-object v6, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v6, v6, v2

    and-int/2addr v6, v1

    if-ge v6, v1, :cond_22

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_25
    move v2, v3

    move v6, v2

    :goto_27
    if-ge v2, v0, :cond_3c

    const/16 v7, 0x1000

    if-le v6, v7, :cond_2e

    goto :goto_3c

    .line 402
    :cond_2e
    iget-object v4, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v4, v4, v2

    and-int/2addr v4, v1

    add-int/2addr v6, v4

    .line 403
    iget-object v4, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    aget-wide v7, v4, v2

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v7

    goto :goto_27

    :cond_3c
    :goto_3c
    const-string v0, "OggS"

    .line 408
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v6, p0, Lcom/jcraft/jogg/StreamState;->header:[B

    const/4 v7, 0x4

    invoke-static {v0, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    iget-object v0, p0, Lcom/jcraft/jogg/StreamState;->header:[B

    aput-byte v3, v0, v7

    const/4 v6, 0x5

    .line 414
    aput-byte v3, v0, v6

    .line 415
    iget-object v8, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v8, v8, v3

    and-int/lit16 v8, v8, 0x100

    const/4 v9, 0x1

    if-nez v8, :cond_5d

    const/4 v8, 0x0

    or-int/2addr v8, v9

    int-to-byte v8, v8

    .line 416
    aput-byte v8, v0, v6

    .line 418
    :cond_5d
    iget v8, p0, Lcom/jcraft/jogg/StreamState;->b_o_s:I

    if-nez v8, :cond_68

    .line 419
    aget-byte v8, v0, v6

    or-int/lit8 v8, v8, 0x2

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 421
    :cond_68
    iget v8, p0, Lcom/jcraft/jogg/StreamState;->e_o_s:I

    if-eqz v8, :cond_76

    iget v8, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    if-ne v8, v2, :cond_76

    .line 422
    aget-byte v8, v0, v6

    or-int/2addr v8, v7

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 423
    :cond_76
    iput v9, p0, Lcom/jcraft/jogg/StreamState;->b_o_s:I

    const/4 v0, 0x6

    :goto_79
    const/16 v6, 0xe

    const/16 v8, 0x8

    if-ge v0, v6, :cond_89

    .line 427
    iget-object v6, p0, Lcom/jcraft/jogg/StreamState;->header:[B

    long-to-int v10, v4

    int-to-byte v10, v10

    aput-byte v10, v6, v0

    ushr-long/2addr v4, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 433
    :cond_89
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->serialno:I

    :goto_8b
    const/16 v4, 0x12

    if-ge v6, v4, :cond_98

    .line 435
    iget-object v4, p0, Lcom/jcraft/jogg/StreamState;->header:[B

    int-to-byte v5, v0

    aput-byte v5, v4, v6

    ushr-int/2addr v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_8b

    .line 442
    :cond_98
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->pageno:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_9f

    .line 443
    iput v3, p0, Lcom/jcraft/jogg/StreamState;->pageno:I

    .line 449
    :cond_9f
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->pageno:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/jcraft/jogg/StreamState;->pageno:I

    :goto_a5
    const/16 v5, 0x16

    if-ge v4, v5, :cond_b2

    .line 451
    iget-object v5, p0, Lcom/jcraft/jogg/StreamState;->header:[B

    int-to-byte v6, v0

    aput-byte v6, v5, v4

    ushr-int/2addr v0, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_a5

    .line 457
    :cond_b2
    iget-object v0, p0, Lcom/jcraft/jogg/StreamState;->header:[B

    aput-byte v3, v0, v5

    const/16 v4, 0x17

    .line 458
    aput-byte v3, v0, v4

    const/16 v4, 0x18

    .line 459
    aput-byte v3, v0, v4

    const/16 v4, 0x19

    .line 460
    aput-byte v3, v0, v4

    const/16 v4, 0x1a

    int-to-byte v5, v2

    .line 463
    aput-byte v5, v0, v4

    move v0, v3

    move v4, v0

    :goto_c9
    if-ge v0, v2, :cond_dc

    .line 465
    iget-object v5, p0, Lcom/jcraft/jogg/StreamState;->header:[B

    add-int/lit8 v6, v0, 0x1b

    iget-object v10, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v10, v10, v0

    int-to-byte v10, v10

    aput-byte v10, v5, v6

    and-int/lit16 v5, v10, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    .line 470
    :cond_dc
    iget-object v0, p0, Lcom/jcraft/jogg/StreamState;->header:[B

    iput-object v0, p1, Lcom/jcraft/jogg/Page;->header_base:[B

    .line 471
    iput v3, p1, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v0, v2, 0x1b

    .line 472
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->header_fill:I

    iput v0, p1, Lcom/jcraft/jogg/Page;->header_len:I

    .line 473
    iget-object v0, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    iput-object v0, p1, Lcom/jcraft/jogg/Page;->body_base:[B

    .line 474
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    iput v0, p1, Lcom/jcraft/jogg/Page;->body:I

    .line 475
    iput v4, p1, Lcom/jcraft/jogg/Page;->body_len:I

    .line 479
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    .line 480
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    mul-int/2addr v0, v7

    invoke-static {v1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    iget-object v0, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    iget v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    mul-int/2addr v1, v8

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    .line 486
    invoke-virtual {p1}, Lcom/jcraft/jogg/Page;->checksum()V

    return v9
.end method

.method init()V
    .registers 3

    const/16 v0, 0x4000

    .line 70
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->body_storage:I

    new-array v0, v0, [B

    .line 71
    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    const/16 v0, 0x400

    .line 72
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_storage:I

    new-array v1, v0, [I

    .line 73
    iput-object v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    new-array v0, v0, [J

    .line 74
    iput-object v0, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    return-void
.end method

.method public init(I)V
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    if-nez v0, :cond_8

    .line 79
    invoke-virtual {p0}, Lcom/jcraft/jogg/StreamState;->init()V

    goto :goto_2b

    :cond_8
    const/4 v0, 0x0

    move v1, v0

    .line 82
    :goto_a
    iget-object v2, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 83
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    move v1, v0

    .line 84
    :goto_15
    iget-object v2, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1f

    .line 85
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 86
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    array-length v2, v1

    if-ge v0, v2, :cond_2b

    const-wide/16 v2, 0x0

    .line 87
    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 89
    :cond_2b
    :goto_2b
    iput p1, p0, Lcom/jcraft/jogg/StreamState;->serialno:I

    return-void
.end method

.method lacing_expand(I)V
    .registers 5

    .line 112
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_storage:I

    iget v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    add-int/2addr v1, p1

    if-gt v0, v1, :cond_23

    add-int/lit8 p1, p1, 0x20

    add-int/2addr v0, p1

    .line 113
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_storage:I

    .line 114
    new-array p1, v0, [I

    .line 115
    iget-object v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    iput-object p1, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    .line 118
    iget p1, p0, Lcom/jcraft/jogg/StreamState;->lacing_storage:I

    new-array p1, p1, [J

    .line 119
    iget-object v0, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    array-length v1, v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iput-object p1, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    :cond_23
    return-void
.end method

.method public packetin(Lcom/jcraft/jogg/Packet;)I
    .registers 11

    .line 126
    iget v0, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    const/16 v1, 0xff

    div-int/2addr v0, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 128
    iget v3, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    .line 133
    iget v5, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    if-eqz v5, :cond_18

    .line 135
    iget-object v6, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    invoke-static {v6, v3, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    :cond_18
    iput v4, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    .line 141
    :cond_1a
    iget v3, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    invoke-virtual {p0, v3}, Lcom/jcraft/jogg/StreamState;->body_expand(I)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/jcraft/jogg/StreamState;->lacing_expand(I)V

    .line 149
    iget-object v3, p1, Lcom/jcraft/jogg/Packet;->packet_base:[B

    iget v5, p1, Lcom/jcraft/jogg/Packet;->packet:I

    iget-object v6, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    iget v7, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    iget v8, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    invoke-static {v3, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iget v3, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    iget v5, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    move v3, v4

    :goto_37
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_4d

    .line 155
    iget-object v5, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget v6, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    add-int v7, v6, v3

    aput v1, v5, v7

    .line 156
    iget-object v5, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    add-int/2addr v6, v3

    iget-wide v7, p0, Lcom/jcraft/jogg/StreamState;->granulepos:J

    aput-wide v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 158
    :cond_4d
    iget-object v5, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget v6, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    add-int/2addr v6, v3

    iget v7, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    rem-int/2addr v7, v1

    aput v7, v5, v6

    .line 159
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    iget v5, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    add-int/2addr v5, v3

    iget-wide v6, p1, Lcom/jcraft/jogg/Packet;->granulepos:J

    aput-wide v6, v1, v5

    iput-wide v6, p0, Lcom/jcraft/jogg/StreamState;->granulepos:J

    .line 162
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget v3, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    aget v5, v1, v3

    or-int/lit16 v5, v5, 0x100

    aput v5, v1, v3

    add-int/2addr v3, v0

    .line 164
    iput v3, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    .line 167
    iget-wide v0, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    .line 169
    iget p1, p1, Lcom/jcraft/jogg/Packet;->e_o_s:I

    if-eqz p1, :cond_7c

    .line 170
    iput v2, p0, Lcom/jcraft/jogg/StreamState;->e_o_s:I

    :cond_7c
    return v4
.end method

.method public packetout(Lcom/jcraft/jogg/Packet;)I
    .registers 11

    .line 180
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_returned:I

    .line 182
    iget v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    if-gt v1, v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 186
    :cond_8
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v1, v1, v0

    and-int/lit16 v2, v1, 0x400

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    if-eqz v2, :cond_1d

    add-int/2addr v0, v5

    .line 188
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_returned:I

    .line 192
    iget-wide v0, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    const/4 p1, -0x1

    return p1

    :cond_1d
    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 201
    iget-object v6, p0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    iput-object v6, p1, Lcom/jcraft/jogg/Packet;->packet_base:[B

    .line 202
    iget v6, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    iput v6, p1, Lcom/jcraft/jogg/Packet;->packet:I

    .line 203
    iget-object v6, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v6, v6, v0

    const/16 v7, 0x200

    and-int/2addr v6, v7

    iput v6, p1, Lcom/jcraft/jogg/Packet;->e_o_s:I

    .line 204
    iget-object v6, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v6, v6, v0

    and-int/lit16 v6, v6, 0x100

    iput v6, p1, Lcom/jcraft/jogg/Packet;->b_o_s:I

    add-int/lit8 v6, v1, 0x0

    :goto_3b
    if-ne v1, v2, :cond_4d

    .line 208
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    add-int/lit8 v0, v0, 0x1

    aget v1, v1, v0

    and-int/lit16 v8, v1, 0xff

    and-int/2addr v1, v7

    if-eqz v1, :cond_4a

    .line 211
    iput v7, p1, Lcom/jcraft/jogg/Packet;->e_o_s:I

    :cond_4a
    add-int/2addr v6, v8

    move v1, v8

    goto :goto_3b

    .line 215
    :cond_4d
    iget-wide v1, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    iput-wide v1, p1, Lcom/jcraft/jogg/Packet;->packetno:J

    .line 216
    iget-object v1, p0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    aget-wide v7, v1, v0

    iput-wide v7, p1, Lcom/jcraft/jogg/Packet;->granulepos:J

    .line 217
    iput v6, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    .line 219
    iget p1, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    add-int/2addr v0, v5

    .line 221
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_returned:I

    .line 223
    iget-wide v0, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    return v5
.end method

.method public pagein(Lcom/jcraft/jogg/Page;)I
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 231
    iget-object v2, v1, Lcom/jcraft/jogg/Page;->header_base:[B

    .line 232
    iget v3, v1, Lcom/jcraft/jogg/Page;->header:I

    .line 233
    iget-object v4, v1, Lcom/jcraft/jogg/Page;->body_base:[B

    .line 234
    iget v5, v1, Lcom/jcraft/jogg/Page;->body:I

    .line 235
    iget v6, v1, Lcom/jcraft/jogg/Page;->body_len:I

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->version()I

    move-result v7

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->continued()I

    move-result v8

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->bos()I

    move-result v9

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->eos()I

    move-result v10

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->granulepos()J

    move-result-wide v11

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->serialno()I

    move-result v13

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jogg/Page;->pageno()I

    move-result v1

    add-int/lit8 v14, v3, 0x1a

    .line 245
    aget-byte v14, v2, v14

    const/16 v15, 0xff

    and-int/2addr v14, v15

    .line 249
    iget v15, v0, Lcom/jcraft/jogg/StreamState;->lacing_returned:I

    move/from16 v16, v5

    .line 250
    iget v5, v0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    move/from16 v17, v6

    if-eqz v5, :cond_53

    .line 254
    iget v6, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    sub-int/2addr v6, v5

    iput v6, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    move/from16 v18, v9

    if-eqz v6, :cond_4d

    .line 256
    iget-object v9, v0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    move/from16 v19, v10

    const/4 v10, 0x0

    invoke-static {v9, v5, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_50

    :cond_4d
    move/from16 v19, v10

    const/4 v10, 0x0

    .line 258
    :goto_50
    iput v10, v0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    goto :goto_58

    :cond_53
    move/from16 v18, v9

    move/from16 v19, v10

    const/4 v10, 0x0

    :goto_58
    if-eqz v15, :cond_7a

    .line 263
    iget v5, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    sub-int v6, v5, v15

    if-eqz v6, :cond_6e

    .line 264
    iget-object v6, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    sub-int/2addr v5, v15

    invoke-static {v6, v15, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iget-object v5, v0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    iget v6, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    sub-int/2addr v6, v15

    invoke-static {v5, v15, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    :cond_6e
    iget v5, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    sub-int/2addr v5, v15

    iput v5, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    .line 268
    iget v5, v0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    sub-int/2addr v5, v15

    iput v5, v0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    .line 269
    iput v10, v0, Lcom/jcraft/jogg/StreamState;->lacing_returned:I

    .line 274
    :cond_7a
    iget v5, v0, Lcom/jcraft/jogg/StreamState;->serialno:I

    const/4 v6, -0x1

    if-eq v13, v5, :cond_80

    return v6

    :cond_80
    if-lez v7, :cond_83

    return v6

    :cond_83
    add-int/lit8 v5, v14, 0x1

    .line 279
    invoke-virtual {v0, v5}, Lcom/jcraft/jogg/StreamState;->lacing_expand(I)V

    .line 282
    iget v5, v0, Lcom/jcraft/jogg/StreamState;->pageno:I

    const/4 v7, 0x1

    if-eq v1, v5, :cond_d5

    .line 286
    iget v5, v0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    :goto_8f
    iget v9, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    if-ge v5, v9, :cond_a2

    .line 287
    iget v9, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    iget-object v10, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    aget v10, v10, v5

    const/16 v13, 0xff

    and-int/2addr v10, v13

    sub-int/2addr v9, v10

    iput v9, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    .line 290
    :cond_a2
    iget v5, v0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    iput v5, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    .line 293
    iget v9, v0, Lcom/jcraft/jogg/StreamState;->pageno:I

    if-eq v9, v6, :cond_b7

    .line 294
    iget-object v9, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    add-int/lit8 v10, v5, 0x1

    iput v10, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    const/16 v10, 0x400

    aput v10, v9, v5

    add-int/2addr v5, v7

    .line 295
    iput v5, v0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    :cond_b7
    if-eqz v8, :cond_d5

    move/from16 v5, v16

    const/4 v10, 0x0

    :goto_bc
    if-ge v10, v14, :cond_d1

    add-int/lit8 v8, v3, 0x1b

    add-int/2addr v8, v10

    .line 303
    aget-byte v8, v2, v8

    const/16 v9, 0xff

    and-int/2addr v8, v9

    add-int/2addr v5, v8

    sub-int v17, v17, v8

    if-ge v8, v9, :cond_ce

    add-int/lit8 v10, v10, 0x1

    goto :goto_d1

    :cond_ce
    add-int/lit8 v10, v10, 0x1

    goto :goto_bc

    :cond_d1
    :goto_d1
    move/from16 v8, v17

    const/4 v9, 0x0

    goto :goto_dc

    :cond_d5
    move/from16 v5, v16

    move/from16 v8, v17

    move/from16 v9, v18

    const/4 v10, 0x0

    :goto_dc
    if-eqz v8, :cond_ed

    .line 315
    invoke-virtual {v0, v8}, Lcom/jcraft/jogg/StreamState;->body_expand(I)V

    .line 316
    iget-object v13, v0, Lcom/jcraft/jogg/StreamState;->body_data:[B

    iget v15, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    invoke-static {v4, v5, v13, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    iget v4, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    add-int/2addr v4, v8

    iput v4, v0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    :cond_ed
    move v4, v6

    :cond_ee
    :goto_ee
    if-ge v10, v14, :cond_11e

    add-int/lit8 v5, v3, 0x1b

    add-int/2addr v5, v10

    .line 323
    aget-byte v5, v2, v5

    const/16 v8, 0xff

    and-int/2addr v5, v8

    .line 324
    iget-object v8, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    iget v13, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    aput v5, v8, v13

    .line 325
    iget-object v15, v0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    const-wide/16 v16, -0x1

    aput-wide v16, v15, v13

    if-eqz v9, :cond_10e

    or-int/lit16 v9, v5, 0x100

    .line 328
    aput v9, v8, v13

    const/16 v8, 0xff

    const/4 v9, 0x0

    goto :goto_110

    :cond_10e
    const/16 v8, 0xff

    :goto_110
    if-ge v5, v8, :cond_113

    move v4, v13

    :cond_113
    add-int/lit8 v13, v13, 0x1

    .line 335
    iput v13, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    add-int/lit8 v10, v10, 0x1

    if-ge v5, v8, :cond_ee

    .line 339
    iput v13, v0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    goto :goto_ee

    :cond_11e
    if-eq v4, v6, :cond_124

    .line 344
    iget-object v2, v0, Lcom/jcraft/jogg/StreamState;->granule_vals:[J

    aput-wide v11, v2, v4

    :cond_124
    if-eqz v19, :cond_135

    .line 349
    iput v7, v0, Lcom/jcraft/jogg/StreamState;->e_o_s:I

    .line 350
    iget v2, v0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    if-lez v2, :cond_135

    .line 351
    iget-object v3, v0, Lcom/jcraft/jogg/StreamState;->lacing_vals:[I

    sub-int/2addr v2, v7

    aget v4, v3, v2

    or-int/lit16 v4, v4, 0x200

    aput v4, v3, v2

    :cond_135
    add-int/2addr v1, v7

    .line 354
    iput v1, v0, Lcom/jcraft/jogg/StreamState;->pageno:I

    const/4 v1, 0x0

    return v1
.end method

.method public pageout(Lcom/jcraft/jogg/Page;)I
    .registers 4

    .line 496
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->e_o_s:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    if-nez v0, :cond_20

    :cond_8
    iget v0, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    iget v1, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    sub-int/2addr v0, v1

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_20

    iget v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_20

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/jcraft/jogg/StreamState;->b_o_s:I

    if-nez v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p1, 0x0

    return p1

    .line 500
    :cond_20
    :goto_20
    invoke-virtual {p0, p1}, Lcom/jcraft/jogg/StreamState;->flush(Lcom/jcraft/jogg/Page;)I

    move-result p1

    return p1
.end method

.method public reset()I
    .registers 4

    const/4 v0, 0x0

    .line 510
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->body_fill:I

    .line 511
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->body_returned:I

    .line 513
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_fill:I

    .line 514
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_packet:I

    .line 515
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->lacing_returned:I

    .line 517
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->header_fill:I

    .line 519
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->e_o_s:I

    .line 520
    iput v0, p0, Lcom/jcraft/jogg/StreamState;->b_o_s:I

    const/4 v1, -0x1

    .line 521
    iput v1, p0, Lcom/jcraft/jogg/StreamState;->pageno:I

    const-wide/16 v1, 0x0

    .line 522
    iput-wide v1, p0, Lcom/jcraft/jogg/StreamState;->packetno:J

    .line 523
    iput-wide v1, p0, Lcom/jcraft/jogg/StreamState;->granulepos:J

    return v0
.end method
