###### Class com.jcraft.jorbis.StaticCodeBook (com.jcraft.jorbis.StaticCodeBook)
.class Lcom/jcraft/jorbis/StaticCodeBook;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final VQ_FEXP:I = 0xa

.field static final VQ_FEXP_BIAS:I = 0x300

.field static final VQ_FMAN:I = 0x15


# instance fields
.field dim:I

.field entries:I

.field lengthlist:[I

.field maptype:I

.field q_delta:I

.field q_min:I

.field q_quant:I

.field q_sequencep:I

.field quantlist:[I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static float32_pack(F)J
    .registers 8

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_9

    neg-float p0, p0

    const/high16 v0, -0x80000000

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    float-to-double v1, p0

    .line 428
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result p0

    rsub-int/lit8 v3, p0, 0x14

    int-to-double v3, v3

    .line 429
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit16 p0, p0, 0x300

    shl-int/lit8 p0, p0, 0x15

    or-int/2addr p0, v0

    or-int/2addr p0, v1

    int-to-long v0, p0

    return-wide v0
.end method

.method static float32_unpack(I)F
    .registers 4

    const v0, 0x1fffff

    and-int/2addr v0, p0

    int-to-float v0, v0

    const/high16 v1, 0x7fe00000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x15

    int-to-float v1, v1

    const/high16 v2, -0x80000000

    and-int/2addr p0, v2

    if-eqz p0, :cond_11

    neg-float v0, v0

    :cond_11
    float-to-int p0, v1

    add-int/lit8 p0, p0, -0x14

    add-int/lit16 p0, p0, -0x300

    .line 439
    invoke-static {v0, p0}, Lcom/jcraft/jorbis/StaticCodeBook;->ldexp(FI)F

    move-result p0

    return p0
.end method

.method static ldexp(FI)F
    .registers 6

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double p0, p1

    .line 443
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method private maptype1_quantvals()I
    .registers 7

    .line 322
    iget v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    int-to-double v0, v0

    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    :goto_11
    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    .line 332
    :goto_15
    iget v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    if-ge v3, v4, :cond_20

    mul-int/2addr v1, v0

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 336
    :cond_20
    iget v3, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-gt v1, v3, :cond_27

    if-le v2, v3, :cond_27

    return v0

    :cond_27
    if-le v1, v3, :cond_2c

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method


# virtual methods
.method clear()V
    .registers 1

    return-void
.end method

.method pack(Lcom/jcraft/jogg/Buffer;)I
    .registers 10

    const v0, 0x564342

    const/16 v1, 0x18

    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 67
    iget v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 68
    iget v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    const/4 v0, 0x1

    move v1, v0

    .line 73
    :goto_16
    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v2, :cond_28

    .line 74
    iget-object v3, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v4, v3, v1

    add-int/lit8 v5, v1, -0x1

    aget v3, v3, v5

    if-ge v4, v3, :cond_25

    goto :goto_28

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
    :goto_28
    const/4 v3, 0x0

    if-ne v1, v2, :cond_2d

    move v1, v0

    goto :goto_2e

    :cond_2d
    move v1, v3

    :goto_2e
    const/4 v2, 0x5

    if-eqz v1, :cond_6b

    .line 86
    invoke-virtual {p1, v0, v0}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 87
    iget-object v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v1, v1, v3

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    move v1, v0

    move v2, v3

    .line 89
    :goto_3e
    iget v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v4, :cond_61

    .line 90
    iget-object v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v5, v4, v1

    add-int/lit8 v6, v1, -0x1

    .line 91
    aget v4, v4, v6

    if-le v5, v4, :cond_5e

    :goto_4c
    if-ge v4, v5, :cond_5e

    sub-int v6, v1, v2

    .line 94
    iget v7, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    sub-int/2addr v7, v2

    invoke-static {v7}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v2

    invoke-virtual {p1, v6, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_4c

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_61
    sub-int/2addr v1, v2

    sub-int/2addr v4, v2

    .line 99
    invoke-static {v4}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    goto :goto_b2

    .line 104
    :cond_6b
    invoke-virtual {p1, v3, v0}, Lcom/jcraft/jogg/Buffer;->write(II)V

    move v1, v3

    .line 109
    :goto_6f
    iget v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v4, :cond_7d

    .line 110
    iget-object v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v5, v5, v1

    if-nez v5, :cond_7a

    goto :goto_7d

    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    :cond_7d
    :goto_7d
    if-ne v1, v4, :cond_92

    .line 115
    invoke-virtual {p1, v3, v0}, Lcom/jcraft/jogg/Buffer;->write(II)V

    move v1, v3

    .line 116
    :goto_83
    iget v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v4, :cond_b2

    .line 117
    iget-object v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v4, v4, v1

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 121
    :cond_92
    invoke-virtual {p1, v0, v0}, Lcom/jcraft/jogg/Buffer;->write(II)V

    move v1, v3

    .line 122
    :goto_96
    iget v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v4, :cond_b2

    .line 123
    iget-object v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v4, v4, v1

    if-nez v4, :cond_a4

    .line 124
    invoke-virtual {p1, v3, v0}, Lcom/jcraft/jogg/Buffer;->write(II)V

    goto :goto_af

    .line 127
    :cond_a4
    invoke-virtual {p1, v0, v0}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 128
    iget-object v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v4, v4, v1

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    :goto_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    .line 136
    :cond_b2
    :goto_b2
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 137
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    if-eqz v1, :cond_104

    const/4 v4, -0x1

    const/4 v5, 0x2

    if-eq v1, v0, :cond_c3

    if-eq v1, v5, :cond_c3

    return v4

    .line 145
    :cond_c3
    iget-object v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    if-nez v1, :cond_c8

    return v4

    .line 151
    :cond_c8
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_min:I

    const/16 v4, 0x20

    invoke-virtual {p1, v1, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 152
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_delta:I

    invoke-virtual {p1, v1, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 153
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_quant:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1, v2}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 154
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_sequencep:I

    invoke-virtual {p1, v1, v0}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 158
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    if-eq v1, v0, :cond_ed

    if-eq v1, v5, :cond_e7

    move v0, v3

    goto :goto_f1

    .line 166
    :cond_e7
    iget v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    mul-int/2addr v0, v1

    goto :goto_f1

    .line 162
    :cond_ed
    invoke-direct {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->maptype1_quantvals()I

    move-result v0

    :goto_f1
    move v1, v3

    :goto_f2
    if-ge v1, v0, :cond_104

    .line 172
    iget-object v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_quant:I

    invoke-virtual {p1, v2, v4}, Lcom/jcraft/jogg/Buffer;->write(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f2

    :cond_104
    return v3
.end method

.method unpack(Lcom/jcraft/jogg/Buffer;)I
    .registers 10

    const/16 v0, 0x18

    .line 190
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    const v2, 0x564342

    const/4 v3, -0x1

    if-eq v1, v2, :cond_10

    .line 192
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    return v3

    :cond_10
    const/16 v1, 0x10

    .line 197
    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    iput v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    .line 198
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ne v0, v3, :cond_24

    .line 201
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    return v3

    :cond_24
    const/4 v0, 0x1

    .line 206
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    const/4 v2, 0x5

    const/4 v4, 0x0

    if-eqz v1, :cond_5e

    if-eq v1, v0, :cond_30

    return v3

    .line 246
    :cond_30
    invoke-virtual {p1, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 247
    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    move v2, v4

    .line 249
    :goto_3c
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v2, v5, :cond_a5

    sub-int/2addr v5, v2

    .line 250
    invoke-static {v5}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    if-ne v5, v3, :cond_4f

    .line 253
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    return v3

    :cond_4f
    move v6, v4

    :goto_50
    if-ge v6, v5, :cond_5b

    .line 257
    iget-object v7, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aput v1, v7, v2

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 209
    :cond_5e
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    .line 212
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    if-eqz v1, :cond_8d

    move v1, v4

    .line 215
    :goto_6b
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v5, :cond_a5

    .line 216
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    if-eqz v5, :cond_86

    .line 217
    invoke-virtual {p1, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    if-ne v5, v3, :cond_7f

    .line 220
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    return v3

    .line 223
    :cond_7f
    iget-object v6, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    add-int/lit8 v5, v5, 0x1

    aput v5, v6, v1

    goto :goto_8a

    .line 226
    :cond_86
    iget-object v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aput v4, v5, v1

    :goto_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_8d
    move v1, v4

    .line 232
    :goto_8e
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v5, :cond_a5

    .line 233
    invoke-virtual {p1, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    if-ne v5, v3, :cond_9c

    .line 236
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    return v3

    .line 239
    :cond_9c
    iget-object v6, p0, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    add-int/lit8 v5, v5, 0x1

    aput v5, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    :cond_a5
    const/4 v1, 0x4

    .line 269
    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    iput v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    if-eqz v2, :cond_103

    const/4 v5, 0x2

    if-eq v2, v0, :cond_b7

    if-eq v2, v5, :cond_b7

    .line 307
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    return v3

    :cond_b7
    const/16 v2, 0x20

    .line 277
    invoke-virtual {p1, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v6

    iput v6, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_min:I

    .line 278
    invoke-virtual {p1, v2}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v2

    iput v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_delta:I

    .line 279
    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_quant:I

    .line 280
    invoke-virtual {p1, v0}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    iput v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_sequencep:I

    .line 284
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    if-eq v1, v0, :cond_e0

    if-eq v1, v5, :cond_da

    move v1, v4

    goto :goto_e4

    .line 289
    :cond_da
    iget v1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    mul-int/2addr v1, v2

    goto :goto_e4

    .line 286
    :cond_e0
    invoke-direct {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->maptype1_quantvals()I

    move-result v1

    .line 294
    :goto_e4
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    move v2, v4

    :goto_e9
    if-ge v2, v1, :cond_f8

    .line 296
    iget-object v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    iget v6, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_quant:I

    invoke-virtual {p1, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v6

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e9

    .line 298
    :cond_f8
    iget-object p1, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    sub-int/2addr v1, v0

    aget p1, p1, v1

    if-ne p1, v3, :cond_103

    .line 300
    invoke-virtual {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->clear()V

    return v3

    :cond_103
    return v4
.end method

.method unquantize()[F
    .registers 14

    .line 360
    iget v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return-object v0

    .line 362
    :cond_b
    :goto_b
    iget v0, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_min:I

    invoke-static {v0}, Lcom/jcraft/jorbis/StaticCodeBook;->float32_unpack(I)F

    move-result v0

    .line 363
    iget v3, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_delta:I

    invoke-static {v3}, Lcom/jcraft/jorbis/StaticCodeBook;->float32_unpack(I)F

    move-result v3

    .line 364
    iget v4, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    mul-int/2addr v4, v5

    new-array v4, v4, [F

    .line 368
    iget v5, p0, Lcom/jcraft/jorbis/StaticCodeBook;->maptype:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v5, v2, :cond_51

    if-eq v5, v1, :cond_27

    goto :goto_82

    :cond_27
    move v1, v7

    .line 392
    :goto_28
    iget v2, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v1, v2, :cond_82

    move v5, v6

    move v2, v7

    .line 394
    :goto_2e
    iget v8, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    if-ge v2, v8, :cond_4e

    .line 395
    iget-object v9, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    mul-int/2addr v8, v1

    add-int/2addr v8, v2

    aget v8, v9, v8

    int-to-float v8, v8

    .line 397
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v8, v3

    add-float/2addr v8, v0

    add-float/2addr v8, v5

    .line 398
    iget v9, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_sequencep:I

    if-eqz v9, :cond_45

    move v5, v8

    .line 400
    :cond_45
    iget v9, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    mul-int/2addr v9, v1

    add-int/2addr v9, v2

    aput v8, v4, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 376
    :cond_51
    invoke-direct {p0}, Lcom/jcraft/jorbis/StaticCodeBook;->maptype1_quantvals()I

    move-result v1

    move v5, v7

    .line 377
    :goto_56
    iget v8, p0, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    if-ge v5, v8, :cond_82

    move v9, v2

    move v10, v6

    move v8, v7

    .line 380
    :goto_5d
    iget v11, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    if-ge v8, v11, :cond_7f

    .line 381
    div-int v11, v5, v9

    rem-int/2addr v11, v1

    .line 382
    iget-object v12, p0, Lcom/jcraft/jorbis/StaticCodeBook;->quantlist:[I

    aget v11, v12, v11

    int-to-float v11, v11

    .line 383
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v11, v3

    add-float/2addr v11, v0

    add-float/2addr v11, v10

    .line 384
    iget v12, p0, Lcom/jcraft/jorbis/StaticCodeBook;->q_sequencep:I

    if-eqz v12, :cond_75

    move v10, v11

    .line 386
    :cond_75
    iget v12, p0, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    mul-int/2addr v12, v5

    add-int/2addr v12, v8

    aput v11, v4, v12

    mul-int/2addr v9, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_5d

    :cond_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    :cond_82
    :goto_82
    return-object v4
.end method
