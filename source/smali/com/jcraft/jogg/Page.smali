###### Class com.jcraft.jogg.Page (com.jcraft.jogg.Page)
.class public Lcom/jcraft/jogg/Page;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static crc_lookup:[I


# instance fields
.field public body:I

.field public body_base:[B

.field public body_len:I

.field public header:I

.field public header_base:[B

.field public header_len:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 30
    sput-object v0, Lcom/jcraft/jogg/Page;->crc_lookup:[I

    const/4 v0, 0x0

    .line 32
    :goto_7
    sget-object v1, Lcom/jcraft/jogg/Page;->crc_lookup:[I

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 33
    invoke-static {v0}, Lcom/jcraft/jogg/Page;->crc_entry(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crc_entry(I)I
    .registers 3

    shl-int/lit8 p0, p0, 0x18

    const/4 v0, 0x0

    :goto_3
    const/16 v1, 0x8

    if-ge v0, v1, :cond_18

    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_13

    shl-int/lit8 p0, p0, 0x1

    const v1, 0x4c11db7

    xor-int/2addr p0, v1

    goto :goto_15

    :cond_13
    shl-int/lit8 p0, p0, 0x1

    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_18
    and-int/lit8 p0, p0, -0x1

    return p0
.end method


# virtual methods
.method public bos()I
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v1, v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x2

    return v0
.end method

.method checksum()V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 103
    :goto_3
    iget v3, p0, Lcom/jcraft/jogg/Page;->header_len:I

    if-ge v1, v3, :cond_1f

    shl-int/lit8 v3, v2, 0x8

    .line 104
    sget-object v4, Lcom/jcraft/jogg/Page;->crc_lookup:[I

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    iget-object v5, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v6, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v2, v5

    aget v2, v4, v2

    xor-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 107
    :cond_1f
    :goto_1f
    iget v1, p0, Lcom/jcraft/jogg/Page;->body_len:I

    if-ge v0, v1, :cond_3b

    shl-int/lit8 v1, v2, 0x8

    .line 108
    sget-object v3, Lcom/jcraft/jogg/Page;->crc_lookup:[I

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    iget-object v4, p0, Lcom/jcraft/jogg/Page;->body_base:[B

    iget v5, p0, Lcom/jcraft/jogg/Page;->body:I

    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v2, v4

    aget v2, v3, v2

    xor-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 111
    :cond_3b
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v3, v1, 0x16

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x17

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    .line 112
    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x18

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    .line 113
    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x19

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    .line 114
    aput-byte v2, v0, v1

    return-void
.end method

.method continued()I
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v1, v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public copy()Lcom/jcraft/jogg/Page;
    .registers 2

    .line 118
    new-instance v0, Lcom/jcraft/jogg/Page;

    invoke-direct {v0}, Lcom/jcraft/jogg/Page;-><init>()V

    invoke-virtual {p0, v0}, Lcom/jcraft/jogg/Page;->copy(Lcom/jcraft/jogg/Page;)Lcom/jcraft/jogg/Page;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/jcraft/jogg/Page;)Lcom/jcraft/jogg/Page;
    .registers 7

    .line 122
    iget v0, p0, Lcom/jcraft/jogg/Page;->header_len:I

    new-array v1, v0, [B

    .line 123
    iget-object v2, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v3, p0, Lcom/jcraft/jogg/Page;->header:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget v0, p0, Lcom/jcraft/jogg/Page;->header_len:I

    iput v0, p1, Lcom/jcraft/jogg/Page;->header_len:I

    .line 125
    iput-object v1, p1, Lcom/jcraft/jogg/Page;->header_base:[B

    .line 126
    iput v4, p1, Lcom/jcraft/jogg/Page;->header:I

    .line 127
    iget v0, p0, Lcom/jcraft/jogg/Page;->body_len:I

    new-array v1, v0, [B

    .line 128
    iget-object v2, p0, Lcom/jcraft/jogg/Page;->body_base:[B

    iget v3, p0, Lcom/jcraft/jogg/Page;->body:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v0, p0, Lcom/jcraft/jogg/Page;->body_len:I

    iput v0, p1, Lcom/jcraft/jogg/Page;->body_len:I

    .line 130
    iput-object v1, p1, Lcom/jcraft/jogg/Page;->body_base:[B

    .line 131
    iput v4, p1, Lcom/jcraft/jogg/Page;->body:I

    return-object p1
.end method

.method public eos()I
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v1, v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public granulepos()J
    .registers 8

    .line 77
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v2, v1, 0xd

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-int/lit8 v5, v1, 0xc

    .line 78
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v2, v5

    shl-long/2addr v2, v4

    add-int/lit8 v5, v1, 0xb

    .line 79
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v2, v5

    shl-long/2addr v2, v4

    add-int/lit8 v5, v1, 0xa

    .line 80
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v2, v5

    shl-long/2addr v2, v4

    add-int/lit8 v5, v1, 0x9

    .line 81
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v2, v5

    shl-long/2addr v2, v4

    add-int/lit8 v5, v1, 0x8

    .line 82
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v2, v5

    shl-long/2addr v2, v4

    add-int/lit8 v5, v1, 0x7

    .line 83
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v2, v5

    shl-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x6

    .line 84
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method pageno()I
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x13

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x14

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x15

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public serialno()I
    .registers 5

    .line 89
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v2, v1, 0xe

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0xf

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x10

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x11

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method version()I
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/jcraft/jogg/Page;->header_base:[B

    iget v1, p0, Lcom/jcraft/jogg/Page;->header:I

    add-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
