###### Class com.jcraft.jorbis.Comment (com.jcraft.jorbis.Comment)
.class public Lcom/jcraft/jorbis/Comment;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final OV_EIMPL:I = -0x82

.field private static _vendor:[B

.field private static _vorbis:[B


# instance fields
.field public comment_lengths:[I

.field public comments:I

.field public user_comments:[[B

.field public vendor:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "vorbis"

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jorbis/Comment;->_vorbis:[B

    const-string v0, "Xiphophorus libVorbis I 20000508"

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jorbis/Comment;->_vendor:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private add([B)V
    .registers 6

    .line 56
    iget v0, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [[B

    .line 57
    iget-object v2, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    .line 58
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    :cond_e
    iput-object v1, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    .line 62
    iget v0, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    .line 63
    iget-object v2, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    if-eqz v2, :cond_1d

    .line 64
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    :cond_1d
    iput-object v1, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    .line 68
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 69
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget-object v1, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    iget v2, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    aput-object v0, v1, v2

    .line 71
    iget-object v0, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    array-length p1, p1

    aput p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 72
    iput v2, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    const/4 p1, 0x0

    .line 73
    aput-object p1, v1, v2

    return-void
.end method

.method private query([BI)I
    .registers 7

    .line 120
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 121
    new-array v1, v0, [B

    .line 122
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    array-length p1, p1

    const/16 v2, 0x3d

    aput-byte v2, v1, p1

    move p1, v3

    .line 125
    :goto_10
    iget v2, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    if-ge v3, v2, :cond_26

    .line 126
    iget-object v2, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object v2, v2, v3

    invoke-static {v2, v1, v0}, Lcom/jcraft/jorbis/Comment;->tagcompare([B[BI)Z

    move-result v2

    if-eqz v2, :cond_23

    if-ne p2, p1, :cond_21

    return v3

    :cond_21
    add-int/lit8 p1, p1, 0x1

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_26
    const/4 p1, -0x1

    return p1
.end method

.method static tagcompare([B[BI)Z
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_24

    .line 86
    aget-byte v2, p0, v1

    .line 87
    aget-byte v3, p1, v1

    const/16 v4, 0x5a

    const/16 v5, 0x41

    if-lt v4, v2, :cond_15

    if-lt v2, v5, :cond_15

    add-int/lit8 v2, v2, -0x41

    add-int/lit8 v2, v2, 0x61

    int-to-byte v2, v2

    :cond_15
    if-lt v4, v3, :cond_1e

    if-lt v3, v5, :cond_1e

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0x61

    int-to-byte v3, v3

    :cond_1e
    if-eq v2, v3, :cond_21

    return v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 2

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jorbis/Comment;->add([B)V

    return-void
.end method

.method public add_tag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p2, :cond_4

    const-string p2, ""

    .line 79
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jcraft/jorbis/Comment;->add(Ljava/lang/String;)V

    return-void
.end method

.method clear()V
    .registers 4

    const/4 v0, 0x0

    .line 218
    :goto_1
    iget v1, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_d

    .line 219
    iget-object v1, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_d
    move-object v0, v2

    check-cast v0, [[B

    iput-object v2, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    .line 221
    iput-object v2, p0, Lcom/jcraft/jorbis/Comment;->vendor:[B

    return-void
.end method

.method public getComment(I)Ljava/lang/String;
    .registers 5

    .line 229
    iget v0, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    if-gt v0, p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 231
    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object p1, v1, p1

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 5

    .line 225
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jcraft/jorbis/Comment;->vendor:[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public header_out(Lcom/jcraft/jogg/Packet;)I
    .registers 6

    .line 201
    new-instance v0, Lcom/jcraft/jogg/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jogg/Buffer;-><init>()V

    .line 202
    invoke-virtual {v0}, Lcom/jcraft/jogg/Buffer;->writeinit()V

    .line 204
    invoke-virtual {p0, v0}, Lcom/jcraft/jorbis/Comment;->pack(Lcom/jcraft/jogg/Buffer;)I

    move-result v1

    if-eqz v1, :cond_11

    const/16 p1, -0x82

    return p1

    .line 207
    :cond_11
    invoke-virtual {v0}, Lcom/jcraft/jogg/Buffer;->bytes()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lcom/jcraft/jogg/Packet;->packet_base:[B

    const/4 v1, 0x0

    .line 208
    iput v1, p1, Lcom/jcraft/jogg/Packet;->packet:I

    .line 209
    invoke-virtual {v0}, Lcom/jcraft/jogg/Buffer;->bytes()I

    move-result v2

    iput v2, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    .line 210
    invoke-virtual {v0}, Lcom/jcraft/jogg/Buffer;->buffer()[B

    move-result-object v0

    iget-object v2, p1, Lcom/jcraft/jogg/Packet;->packet_base:[B

    iget v3, p1, Lcom/jcraft/jogg/Packet;->bytes:I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iput v1, p1, Lcom/jcraft/jogg/Packet;->b_o_s:I

    .line 212
    iput v1, p1, Lcom/jcraft/jogg/Packet;->e_o_s:I

    const-wide/16 v2, 0x0

    .line 213
    iput-wide v2, p1, Lcom/jcraft/jogg/Packet;->granulepos:J

    return v1
.end method

.method public init()V
    .registers 3

    const/4 v0, 0x0

    .line 46
    move-object v1, v0

    check-cast v1, [[B

    iput-object v0, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    .line 48
    iput-object v0, p0, Lcom/jcraft/jorbis/Comment;->vendor:[B

    return-void
.end method

.method pack(Lcom/jcraft/jogg/Buffer;)I
    .registers 6

    const/4 v0, 0x3

    const/16 v1, 0x8

    .line 176
    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 177
    sget-object v0, Lcom/jcraft/jorbis/Comment;->_vorbis:[B

    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->write([B)V

    .line 180
    sget-object v0, Lcom/jcraft/jorbis/Comment;->_vendor:[B

    array-length v0, v0

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 181
    sget-object v0, Lcom/jcraft/jorbis/Comment;->_vendor:[B

    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->write([B)V

    .line 184
    iget v0, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 185
    iget v0, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    const/4 v2, 0x0

    if-eqz v0, :cond_42

    move v0, v2

    .line 186
    :goto_23
    iget v3, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    if-ge v0, v3, :cond_42

    .line 187
    iget-object v3, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object v3, v3, v0

    if-eqz v3, :cond_3c

    .line 188
    iget-object v3, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    aget v3, v3, v0

    invoke-virtual {p1, v3, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 189
    iget-object v3, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Lcom/jcraft/jogg/Buffer;->write([B)V

    goto :goto_3f

    .line 192
    :cond_3c
    invoke-virtual {p1, v2, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_42
    const/4 v0, 0x1

    .line 196
    invoke-virtual {p1, v0, v0}, Lcom/jcraft/jogg/Buffer;->write(II)V

    return v2
.end method

.method public query(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jorbis/Comment;->query(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jorbis/Comment;->query([BI)I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_d

    return-object v0

    .line 108
    :cond_d
    iget-object p2, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object p2, p2, p1

    const/4 v1, 0x0

    .line 109
    :goto_12
    iget-object v2, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    aget v2, v2, p1

    if-ge v1, v2, :cond_2a

    .line 110
    aget-byte v3, p2, v1

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_27

    .line 111
    new-instance p1, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v2, v1

    invoke-direct {p1, p2, v1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object p1

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 235
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jcraft/jorbis/Comment;->vendor:[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "Vendor: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    .line 236
    :goto_12
    iget v2, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    if-ge v1, v2, :cond_39

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nComment: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    aget-object v4, v4, v1

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v0, v4, v3, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 240
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unpack(Lcom/jcraft/jogg/Buffer;)I
    .registers 10

    const/16 v0, 0x20

    .line 141
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    const/4 v2, -0x1

    if-gez v1, :cond_d

    .line 143
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Comment;->clear()V

    return v2

    :cond_d
    add-int/lit8 v3, v1, 0x1

    .line 146
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/jcraft/jorbis/Comment;->vendor:[B

    .line 147
    invoke-virtual {p1, v3, v1}, Lcom/jcraft/jogg/Buffer;->read([BI)V

    .line 148
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    iput v1, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    if-gez v1, :cond_22

    .line 150
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Comment;->clear()V

    return v2

    :cond_22
    add-int/lit8 v3, v1, 0x1

    .line 153
    new-array v3, v3, [[B

    iput-object v3, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 154
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    const/4 v1, 0x0

    move v4, v1

    .line 156
    :goto_30
    iget v5, p0, Lcom/jcraft/jorbis/Comment;->comments:I

    if-ge v4, v5, :cond_50

    .line 157
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    if-gez v5, :cond_3e

    .line 159
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Comment;->clear()V

    return v2

    .line 162
    :cond_3e
    iget-object v6, p0, Lcom/jcraft/jorbis/Comment;->comment_lengths:[I

    aput v5, v6, v4

    .line 163
    iget-object v6, p0, Lcom/jcraft/jorbis/Comment;->user_comments:[[B

    add-int/lit8 v7, v5, 0x1

    new-array v7, v7, [B

    aput-object v7, v6, v4

    .line 164
    invoke-virtual {p1, v7, v5}, Lcom/jcraft/jogg/Buffer;->read([BI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 166
    :cond_50
    invoke-virtual {p1, v3}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result p1

    if-eq p1, v3, :cond_5a

    .line 167
    invoke-virtual {p0}, Lcom/jcraft/jorbis/Comment;->clear()V

    return v2

    :cond_5a
    return v1
.end method
