###### Class com.jcraft.jogg.Buffer (com.jcraft.jogg.Buffer)
.class public Lcom/jcraft/jogg/Buffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_INCREMENT:I = 0x100

.field private static final mask:[I


# instance fields
.field buffer:[B

.field endbit:I

.field endbyte:I

.field ptr:I

.field storage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    .line 32
    fill-array-data v0, :array_a

    sput-object v0, Lcom/jcraft/jogg/Buffer;->mask:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
        0x1ffff
        0x3ffff
        0x7ffff
        0xfffff
        0x1fffff
        0x3fffff
        0x7fffff
        0xffffff
        0x1ffffff
        0x3ffffff
        0x7ffffff
        0xfffffff
        0x1fffffff
        0x3fffffff    # 1.9999999f
        0x7fffffff
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    .line 41
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 42
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    .line 43
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    return-void
.end method

.method public static ilog(I)I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    if-lez p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method public static report(Ljava/lang/String;)V
    .registers 2

    .line 291
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 292
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public adv(I)V
    .registers 4

    .line 155
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/2addr p1, v0

    .line 156
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 157
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    and-int/lit8 p1, p1, 0x7

    .line 158
    iput p1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    return-void
.end method

.method public adv1()V
    .registers 3

    .line 162
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_18

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 165
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 166
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    :cond_18
    return-void
.end method

.method public bits()I
    .registers 3

    .line 274
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/2addr v0, v1

    return v0
.end method

.method public buffer()[B
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    return-object v0
.end method

.method public bytes()I
    .registers 3

    .line 270
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public look(I)I
    .registers 9

    .line 123
    sget-object v0, Lcom/jcraft/jogg/Buffer;->mask:[I

    aget v0, v0, p1

    .line 125
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/2addr p1, v1

    .line 127
    iget v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v3, v2, 0x4

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    const/16 v5, 0x8

    if-lt v3, v4, :cond_19

    add-int/lit8 v3, p1, -0x1

    .line 128
    div-int/2addr v3, v5

    add-int/2addr v2, v3

    if-lt v2, v4, :cond_19

    const/4 p1, -0x1

    return p1

    .line 132
    :cond_19
    iget-object v2, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v3, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    ushr-int/2addr v4, v1

    if-le p1, v5, :cond_59

    add-int/lit8 v5, v3, 0x1

    .line 134
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v6, v1, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    const/16 v5, 0x10

    if-le p1, v5, :cond_59

    add-int/lit8 v5, v3, 0x2

    .line 136
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v6, v1, 0x10

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    const/16 v5, 0x18

    if-le p1, v5, :cond_59

    add-int/lit8 v5, v3, 0x3

    .line 138
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v6, v1, 0x18

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    const/16 v5, 0x20

    if-le p1, v5, :cond_59

    if-eqz v1, :cond_59

    add-int/lit8 v3, v3, 0x4

    .line 140
    aget-byte p1, v2, v3

    and-int/lit16 p1, p1, 0xff

    sub-int/2addr v5, v1

    shl-int/2addr p1, v5

    or-int/2addr v4, p1

    :cond_59
    and-int p1, v0, v4

    return p1
.end method

.method public look1()I
    .registers 3

    .line 149
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    if-lt v0, v1, :cond_8

    const/4 v0, -0x1

    return v0

    .line 151
    :cond_8
    iget-object v0, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read(I)I
    .registers 10

    .line 172
    sget-object v0, Lcom/jcraft/jogg/Buffer;->mask:[I

    aget v0, v0, p1

    .line 174
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/2addr p1, v1

    .line 176
    iget v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v3, v2, 0x4

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    const/16 v5, 0x8

    if-lt v3, v4, :cond_27

    add-int/lit8 v3, p1, -0x1

    .line 178
    div-int/2addr v3, v5

    add-int/2addr v3, v2

    if-lt v3, v4, :cond_27

    .line 179
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/2addr v2, v1

    .line 180
    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    and-int/lit8 p1, p1, 0x7

    .line 181
    iput p1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    const/4 p1, -0x1

    return p1

    .line 186
    :cond_27
    iget-object v3, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    aget-byte v6, v3, v4

    and-int/lit16 v6, v6, 0xff

    ushr-int/2addr v6, v1

    if-le p1, v5, :cond_68

    add-int/lit8 v5, v4, 0x1

    .line 188
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v7, v1, 0x8

    shl-int/2addr v5, v7

    or-int/2addr v6, v5

    const/16 v5, 0x10

    if-le p1, v5, :cond_68

    add-int/lit8 v5, v4, 0x2

    .line 190
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v7, v1, 0x10

    shl-int/2addr v5, v7

    or-int/2addr v6, v5

    const/16 v5, 0x18

    if-le p1, v5, :cond_68

    add-int/lit8 v5, v4, 0x3

    .line 192
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v7, v1, 0x18

    shl-int/2addr v5, v7

    or-int/2addr v6, v5

    const/16 v5, 0x20

    if-le p1, v5, :cond_68

    if-eqz v1, :cond_68

    add-int/lit8 v7, v4, 0x4

    .line 194
    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v5, v1

    shl-int v1, v3, v5

    or-int/2addr v6, v1

    :cond_68
    and-int/2addr v0, v6

    .line 202
    div-int/lit8 v1, p1, 0x8

    add-int/2addr v4, v1

    iput v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/2addr v2, v1

    .line 203
    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    and-int/lit8 p1, p1, 0x7

    .line 204
    iput p1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    return v0
.end method

.method public read([BI)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-eqz p2, :cond_13

    add-int/lit8 p2, v0, 0x1

    const/16 v2, 0x8

    .line 63
    invoke-virtual {p0, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    move v0, p2

    move p2, v1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public read1()I
    .registers 7

    .line 247
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-lt v0, v1, :cond_1e

    .line 249
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    if-le v1, v3, :cond_1c

    .line 251
    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 252
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v0, v0, 0x1

    .line 253
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    :cond_1c
    const/4 v0, -0x1

    return v0

    .line 258
    :cond_1e
    iget-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    aget-byte v1, v1, v4

    iget v5, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    shr-int/2addr v1, v5

    and-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 260
    iput v5, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    if-le v5, v3, :cond_39

    .line 262
    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/lit8 v4, v4, 0x1

    .line 263
    iput v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/lit8 v0, v0, 0x1

    .line 264
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    :cond_39
    return v1
.end method

.method public readB(I)I
    .registers 11

    rsub-int/lit8 v0, p1, 0x20

    .line 212
    iget v1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/2addr p1, v1

    .line 214
    iget v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v3, v2, 0x4

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    const/16 v5, 0x8

    if-lt v3, v4, :cond_25

    mul-int/lit8 v3, v2, 0x8

    add-int/2addr v3, p1

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_25

    .line 218
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/2addr v2, v1

    .line 219
    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    and-int/lit8 p1, p1, 0x7

    .line 220
    iput p1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    const/4 p1, -0x1

    return p1

    .line 225
    :cond_25
    iget-object v3, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    aget-byte v6, v3, v4

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v1, 0x18

    shl-int/2addr v6, v7

    if-le p1, v5, :cond_66

    add-int/lit8 v7, v4, 0x1

    .line 227
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v1, 0x10

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    const/16 v7, 0x10

    if-le p1, v7, :cond_66

    add-int/lit8 v7, v4, 0x2

    .line 229
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v1, 0x8

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    const/16 v7, 0x18

    if-le p1, v7, :cond_66

    add-int/lit8 v7, v4, 0x3

    .line 231
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v1

    or-int/2addr v6, v7

    const/16 v7, 0x20

    if-le p1, v7, :cond_66

    if-eqz v1, :cond_66

    add-int/lit8 v7, v4, 0x4

    .line 233
    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v5, v1

    shr-int v1, v3, v5

    or-int/2addr v6, v1

    :cond_66
    shr-int/lit8 v1, v0, 0x1

    ushr-int v1, v6, v1

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    ushr-int v0, v1, v0

    .line 239
    div-int/lit8 v1, p1, 0x8

    add-int/2addr v4, v1

    iput v4, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    add-int/2addr v2, v1

    .line 240
    iput v2, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    and-int/lit8 p1, p1, 0x7

    .line 241
    iput p1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    return v0
.end method

.method public readinit([BI)V
    .registers 4

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, v0, p2}, Lcom/jcraft/jogg/Buffer;->readinit([BII)V

    return-void
.end method

.method public readinit([BII)V
    .registers 4

    .line 82
    iput p2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 83
    iput-object p1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    iput p1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    .line 85
    iput p3, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    return-void
.end method

.method reset()V
    .registers 3

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    .line 69
    iget-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    aput-byte v0, v1, v0

    .line 70
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    return-void
.end method

.method public write(II)V
    .registers 9

    .line 89
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1a

    add-int/lit16 v0, v1, 0x100

    .line 90
    new-array v0, v0, [B

    .line 91
    iget-object v3, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iput-object v0, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    .line 93
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    add-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    .line 96
    :cond_1a
    sget-object v0, Lcom/jcraft/jogg/Buffer;->mask:[I

    aget v0, v0, p2

    and-int/2addr p1, v0

    .line 97
    iget v0, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    add-int/2addr p2, v0

    .line 98
    iget-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    iget v3, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    aget-byte v4, v1, v3

    shl-int v5, p1, v0

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/16 v4, 0x8

    if-lt p2, v4, :cond_68

    add-int/lit8 v4, v3, 0x1

    rsub-int/lit8 v5, v0, 0x8

    ushr-int v5, p1, v5

    int-to-byte v5, v5

    .line 101
    aput-byte v5, v1, v4

    const/16 v4, 0x10

    if-lt p2, v4, :cond_68

    add-int/lit8 v4, v3, 0x2

    rsub-int/lit8 v5, v0, 0x10

    ushr-int v5, p1, v5

    int-to-byte v5, v5

    .line 103
    aput-byte v5, v1, v4

    const/16 v4, 0x18

    if-lt p2, v4, :cond_68

    add-int/lit8 v4, v3, 0x3

    rsub-int/lit8 v5, v0, 0x18

    ushr-int v5, p1, v5

    int-to-byte v5, v5

    .line 105
    aput-byte v5, v1, v4

    const/16 v4, 0x20

    if-lt p2, v4, :cond_68

    if-lez v0, :cond_64

    add-int/lit8 v2, v3, 0x4

    sub-int/2addr v4, v0

    ushr-int/2addr p1, v4

    int-to-byte p1, p1

    .line 108
    aput-byte p1, v1, v2

    goto :goto_68

    :cond_64
    add-int/lit8 p1, v3, 0x4

    .line 110
    aput-byte v2, v1, p1

    .line 116
    :cond_68
    :goto_68
    iget p1, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    div-int/lit8 v0, p2, 0x8

    add-int/2addr p1, v0

    iput p1, p0, Lcom/jcraft/jogg/Buffer;->endbyte:I

    add-int/2addr v3, v0

    .line 117
    iput v3, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    and-int/lit8 p1, p2, 0x7

    .line 118
    iput p1, p0, Lcom/jcraft/jogg/Buffer;->endbit:I

    return-void
.end method

.method public write([B)V
    .registers 5

    const/4 v0, 0x0

    .line 53
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_11

    .line 54
    aget-byte v1, p1, v0

    if-nez v1, :cond_9

    goto :goto_11

    :cond_9
    const/16 v2, 0x8

    .line 56
    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    :goto_11
    return-void
.end method

.method public writeclear()V
    .registers 2

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    return-void
.end method

.method public writeinit()V
    .registers 4

    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 46
    iput-object v1, p0, Lcom/jcraft/jogg/Buffer;->buffer:[B

    const/4 v2, 0x0

    .line 47
    iput v2, p0, Lcom/jcraft/jogg/Buffer;->ptr:I

    aput-byte v2, v1, v2

    .line 49
    iput v0, p0, Lcom/jcraft/jogg/Buffer;->storage:I

    return-void
.end method
