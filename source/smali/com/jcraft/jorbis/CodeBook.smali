###### Class com.jcraft.jorbis.CodeBook (com.jcraft.jorbis.CodeBook)
.class Lcom/jcraft/jorbis/CodeBook;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field c:Lcom/jcraft/jorbis/StaticCodeBook;

.field codelist:[I

.field decode_tree:Lcom/jcraft/jorbis/CodeBook$DecodeAux;

.field dim:I

.field entries:I

.field private t:[I

.field valuelist:[F


# direct methods
.method constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/jcraft/jorbis/StaticCodeBook;

    invoke-direct {v0}, Lcom/jcraft/jorbis/StaticCodeBook;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    const/16 v0, 0xf

    new-array v0, v0, [I

    .line 84
    iput-object v0, p0, Lcom/jcraft/jorbis/CodeBook;->t:[I

    return-void
.end method

.method private static dist(I[FI[FI)F
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p0, :cond_12

    add-int v2, p2, v1

    .line 311
    aget v2, p1, v2

    mul-int v3, v1, p4

    aget v3, p3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return v0
.end method

.method static make_words([II)[I
    .registers 13

    const/16 v0, 0x21

    new-array v1, v0, [I

    .line 336
    new-array v2, p1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    const/4 v5, 0x1

    if-ge v4, p1, :cond_55

    .line 339
    aget v6, p0, v4

    if-lez v6, :cond_52

    .line 341
    aget v7, v1, v6

    const/16 v8, 0x20

    if-ge v6, v8, :cond_1b

    ushr-int v8, v7, v6

    if-eqz v8, :cond_1b

    const/4 p0, 0x0

    return-object p0

    .line 354
    :cond_1b
    aput v7, v2, v4

    move v8, v6

    :goto_1e
    if-lez v8, :cond_3d

    .line 360
    aget v9, v1, v8

    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_36

    if-ne v8, v5, :cond_2e

    aget v8, v1, v5

    add-int/2addr v8, v5

    aput v8, v1, v5

    goto :goto_3d

    :cond_2e
    add-int/lit8 v9, v8, -0x1

    .line 365
    aget v9, v1, v9

    shl-int/2addr v9, v5

    aput v9, v1, v8

    goto :goto_3d

    :cond_36
    add-int/lit8 v9, v9, 0x1

    .line 369
    aput v9, v1, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_1e

    :cond_3d
    :goto_3d
    add-int/lit8 v6, v6, 0x1

    :goto_3f
    if-ge v6, v0, :cond_52

    .line 377
    aget v8, v1, v6

    ushr-int/lit8 v9, v8, 0x1

    if-ne v9, v7, :cond_52

    add-int/lit8 v7, v6, -0x1

    .line 379
    aget v7, v1, v7

    shl-int/2addr v7, v5

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_3f

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_55
    move v0, v3

    :goto_56
    if-ge v0, p1, :cond_6d

    move v1, v3

    move v4, v1

    .line 392
    :goto_5a
    aget v6, p0, v0

    if-ge v1, v6, :cond_68

    shl-int/lit8 v4, v4, 0x1

    .line 394
    aget v6, v2, v0

    ushr-int/2addr v6, v1

    and-int/2addr v6, v5

    or-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 396
    :cond_68
    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_6d
    return-object v2
.end method


# virtual methods
.method best([FI)I
    .registers 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v0

    move v3, v2

    .line 268
    :goto_5
    iget v5, p0, Lcom/jcraft/jorbis/CodeBook;->entries:I

    if-ge v2, v5, :cond_27

    .line 269
    iget-object v5, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget-object v5, v5, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v5, v5, v2

    if-lez v5, :cond_21

    .line 270
    iget v5, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    iget-object v6, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    invoke-static {v5, v6, v3, p1, p2}, Lcom/jcraft/jorbis/CodeBook;->dist(I[FI[FI)F

    move-result v5

    if-eq v4, v0, :cond_1f

    cmpg-float v6, v5, v1

    if-gez v6, :cond_21

    :cond_1f
    move v4, v2

    move v1, v5

    .line 276
    :cond_21
    iget v5, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_27
    return v4
.end method

.method besterror([FII)I
    .registers 9

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jorbis/CodeBook;->best([FI)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_27

    const/4 v2, 0x1

    if-eq p3, v2, :cond_b

    goto :goto_3b

    :cond_b
    move p3, v1

    .line 291
    :goto_c
    iget v2, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v1, v2, :cond_3b

    .line 292
    iget-object v3, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    aget v2, v3, v2

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_1e

    .line 294
    aput v3, p1, p3

    goto :goto_23

    .line 297
    :cond_1e
    aget v3, p1, p3

    div-float/2addr v3, v2

    aput v3, p1, p3

    :goto_23
    add-int/lit8 v1, v1, 0x1

    add-int/2addr p3, p2

    goto :goto_c

    :cond_27
    move p3, v1

    .line 287
    :goto_28
    iget v2, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v1, v2, :cond_3b

    .line 288
    aget v3, p1, p3

    iget-object v4, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    aget v2, v4, v2

    sub-float/2addr v3, v2

    aput v3, p1, p3

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p3, p2

    goto :goto_28

    :cond_3b
    :goto_3b
    return v0
.end method

.method clear()V
    .registers 1

    return-void
.end method

.method decode(Lcom/jcraft/jogg/Buffer;)I
    .registers 6

    .line 211
    iget-object v0, p0, Lcom/jcraft/jorbis/CodeBook;->decode_tree:Lcom/jcraft/jorbis/CodeBook$DecodeAux;

    .line 212
    iget v1, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabn:I

    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/Buffer;->look(I)I

    move-result v1

    if-ltz v1, :cond_19

    .line 215
    iget-object v2, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tab:[I

    aget v2, v2, v1

    .line 216
    iget-object v3, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabl:[I

    aget v1, v3, v1

    invoke-virtual {p1, v1}, Lcom/jcraft/jogg/Buffer;->adv(I)V

    if-gtz v2, :cond_1a

    neg-int p1, v2

    return p1

    :cond_19
    const/4 v2, 0x0

    .line 222
    :cond_1a
    invoke-virtual {p1}, Lcom/jcraft/jogg/Buffer;->read1()I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v3, 0x1

    if-eq v1, v3, :cond_25

    const/4 p1, -0x1

    return p1

    .line 227
    :cond_25
    iget-object v1, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->ptr1:[I

    aget v1, v1, v2

    goto :goto_2e

    .line 224
    :cond_2a
    iget-object v1, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->ptr0:[I

    aget v1, v1, v2

    :goto_2e
    move v2, v1

    if-gtz v2, :cond_1a

    neg-int p1, v2

    return p1
.end method

.method decodev_add([FILcom/jcraft/jogg/Buffer;I)I
    .registers 15

    .line 114
    iget v0, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    const/16 v1, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_2c

    move v0, v3

    :cond_9
    if-ge v0, p4, :cond_cd

    .line 116
    invoke-virtual {p0, p3}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v1

    if-ne v1, v2, :cond_12

    return v2

    .line 119
    :cond_12
    iget v4, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v1, v4

    move v4, v3

    .line 120
    :goto_16
    iget v5, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v4, v5, :cond_9

    add-int/lit8 v5, v0, 0x1

    add-int/2addr v0, p2

    .line 121
    aget v6, p1, v0

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v8, v4, 0x1

    add-int/2addr v4, v1

    aget v4, v7, v4

    add-float/2addr v6, v4

    aput v6, p1, v0

    move v0, v5

    move v4, v8

    goto :goto_16

    :cond_2c
    move v0, v3

    :goto_2d
    if-ge v0, p4, :cond_cd

    .line 127
    invoke-virtual {p0, p3}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v1

    if-ne v1, v2, :cond_36

    return v2

    .line 130
    :cond_36
    iget v4, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v1, v4

    packed-switch v4, :pswitch_data_ce

    goto :goto_2d

    :pswitch_3d
    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, p2

    .line 134
    aget v5, p1, v0

    iget-object v6, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v7, v1, 0x0

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, p1, v0

    const/4 v0, 0x1

    move v9, v4

    move v4, v0

    move v0, v9

    goto :goto_51

    :pswitch_50
    move v4, v3

    :goto_51
    add-int/lit8 v5, v0, 0x1

    add-int/2addr v0, p2

    .line 136
    aget v6, p1, v0

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v8, v4, 0x1

    add-int/2addr v4, v1

    aget v4, v7, v4

    add-float/2addr v6, v4

    aput v6, p1, v0

    move v0, v5

    goto :goto_63

    :pswitch_62
    move v8, v3

    :goto_63
    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, p2

    .line 138
    aget v5, p1, v0

    iget-object v6, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v7, v8, 0x1

    add-int/2addr v8, v1

    aget v6, v6, v8

    add-float/2addr v5, v6

    aput v5, p1, v0

    move v0, v4

    goto :goto_75

    :pswitch_74
    move v7, v3

    :goto_75
    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, p2

    .line 140
    aget v5, p1, v0

    iget-object v6, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v7, v1

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, p1, v0

    move v0, v4

    goto :goto_87

    :pswitch_86
    move v8, v3

    :goto_87
    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, p2

    .line 142
    aget v5, p1, v0

    iget-object v6, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v7, v8, 0x1

    add-int/2addr v8, v1

    aget v6, v6, v8

    add-float/2addr v5, v6

    aput v5, p1, v0

    move v0, v4

    goto :goto_99

    :pswitch_98
    move v7, v3

    :goto_99
    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, p2

    .line 144
    aget v5, p1, v0

    iget-object v6, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v7, v1

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, p1, v0

    move v0, v4

    goto :goto_ab

    :pswitch_aa
    move v8, v3

    :goto_ab
    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, p2

    .line 146
    aget v5, p1, v0

    iget-object v6, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v7, v8, 0x1

    add-int/2addr v8, v1

    aget v6, v6, v8

    add-float/2addr v5, v6

    aput v5, p1, v0

    move v0, v4

    goto :goto_bd

    :pswitch_bc
    move v7, v3

    :goto_bd
    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, p2

    .line 148
    aget v5, p1, v0

    iget-object v6, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/2addr v1, v7

    aget v1, v6, v1

    add-float/2addr v5, v1

    aput v5, p1, v0

    move v0, v4

    goto/16 :goto_2d

    :cond_cd
    return v3

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_bc
        :pswitch_aa
        :pswitch_98
        :pswitch_86
        :pswitch_74
        :pswitch_62
        :pswitch_50
        :pswitch_3d
    .end packed-switch
.end method

.method decodev_set([FILcom/jcraft/jogg/Buffer;I)I
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    if-ge v1, p4, :cond_23

    .line 162
    invoke-virtual {p0, p3}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    return v3

    .line 165
    :cond_c
    iget v3, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v2, v3

    move v3, v0

    .line 166
    :goto_10
    iget v4, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p2

    .line 167
    iget-object v5, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int/lit8 v6, v3, 0x1

    add-int/2addr v3, v2

    aget v3, v5, v3

    aput v3, p1, v1

    move v1, v4

    move v3, v6

    goto :goto_10

    :cond_23
    return v0
.end method

.method decodevs([FILcom/jcraft/jogg/Buffer;II)I
    .registers 11

    .line 240
    invoke-virtual {p0, p3}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x0

    if-eq p5, v0, :cond_3d

    if-eqz p5, :cond_27

    const/4 v0, 0x1

    if-eq p5, v0, :cond_11

    goto :goto_50

    :cond_11
    move p5, v1

    .line 253
    :goto_12
    iget v0, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v1, v0, :cond_50

    add-int v2, p2, p5

    .line 254
    aget v3, p1, v2

    iget-object v4, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    mul-int/2addr v0, p3

    add-int/2addr v0, v1

    aget v0, v4, v0

    mul-float/2addr v3, v0

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p5, p4

    goto :goto_12

    :cond_27
    move p5, v1

    .line 249
    :goto_28
    iget v0, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v1, v0, :cond_50

    add-int v2, p2, p5

    .line 250
    aget v3, p1, v2

    iget-object v4, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    mul-int/2addr v0, p3

    add-int/2addr v0, v1

    aget v0, v4, v0

    add-float/2addr v3, v0

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p5, p4

    goto :goto_28

    :cond_3d
    move p5, v1

    .line 245
    :goto_3e
    iget v0, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v1, v0, :cond_50

    add-int v2, p2, p5

    .line 246
    iget-object v3, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    mul-int/2addr v0, p3

    add-int/2addr v0, v1

    aget v0, v3, v0

    aput v0, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr p5, p4

    goto :goto_3e

    :cond_50
    :goto_50
    return p3
.end method

.method declared-synchronized decodevs_add([FILcom/jcraft/jogg/Buffer;I)I
    .registers 12

    monitor-enter p0

    .line 87
    :try_start_1
    iget v0, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    div-int/2addr p4, v0

    .line 91
    iget-object v0, p0, Lcom/jcraft/jorbis/CodeBook;->t:[I

    array-length v0, v0

    if-ge v0, p4, :cond_d

    .line 92
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/CodeBook;->t:[I

    :cond_d
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, p4, :cond_24

    .line 96
    invoke-virtual {p0, p3}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v2
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_47

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    .line 98
    monitor-exit p0

    return v3

    .line 99
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/jcraft/jorbis/CodeBook;->t:[I

    iget v4, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_24
    move p3, v0

    move v1, p3

    .line 101
    :goto_26
    iget v2, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge p3, v2, :cond_45

    move v2, v0

    :goto_2b
    if-ge v2, p4, :cond_41

    add-int v3, p2, v1

    add-int/2addr v3, v2

    .line 103
    aget v4, p1, v3

    iget-object v5, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    iget-object v6, p0, Lcom/jcraft/jorbis/CodeBook;->t:[I

    aget v6, v6, v2

    add-int/2addr v6, p3

    aget v5, v5, v6

    add-float/2addr v4, v5

    aput v4, p1, v3
    :try_end_3e
    .catchall {:try_start_1a .. :try_end_3e} :catchall_47

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_41
    add-int/lit8 p3, p3, 0x1

    add-int/2addr v1, p4

    goto :goto_26

    .line 107
    :cond_45
    monitor-exit p0

    return v0

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method decodevv_add([[FIILcom/jcraft/jogg/Buffer;I)I
    .registers 15

    .line 177
    div-int v0, p2, p3

    const/4 v1, 0x0

    move v2, v1

    :cond_4
    add-int v3, p2, p5

    div-int/2addr v3, p3

    if-ge v0, v3, :cond_32

    .line 178
    invoke-virtual {p0, p4}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    return v4

    .line 182
    :cond_11
    iget v4, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    mul-int/2addr v3, v4

    move v4, v1

    .line 183
    :goto_15
    iget v5, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v4, v5, :cond_4

    add-int/lit8 v5, v2, 0x1

    .line 184
    aget-object v2, p1, v2

    aget v6, v2, v0

    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    add-int v8, v3, v4

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v2, v0

    if-ne v5, p3, :cond_2e

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_2f

    :cond_2e
    move v2, v5

    :goto_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_32
    return v1
.end method

.method encode(ILcom/jcraft/jogg/Buffer;)I
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/jcraft/jorbis/CodeBook;->codelist:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget-object v1, v1, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v1, v1, p1

    invoke-virtual {p2, v0, v1}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 43
    iget-object p2, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget-object p2, p2, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget p1, p2, p1

    return p1
.end method

.method encodev(I[FLcom/jcraft/jogg/Buffer;)I
    .registers 7

    const/4 v0, 0x0

    .line 71
    :goto_1
    iget v1, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v0, v1, :cond_10

    .line 72
    iget-object v2, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    aget v1, v2, v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_10
    invoke-virtual {p0, p1, p3}, Lcom/jcraft/jorbis/CodeBook;->encode(ILcom/jcraft/jogg/Buffer;)I

    move-result p1

    return p1
.end method

.method encodevs([FLcom/jcraft/jogg/Buffer;II)I
    .registers 5

    .line 80
    invoke-virtual {p0, p1, p3, p4}, Lcom/jcraft/jorbis/CodeBook;->besterror([FII)I

    move-result p1

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jorbis/CodeBook;->encode(ILcom/jcraft/jogg/Buffer;)I

    move-result p1

    return p1
.end method

.method errorv([F)I
    .registers 6

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jorbis/CodeBook;->best([FI)I

    move-result v0

    const/4 v1, 0x0

    .line 63
    :goto_6
    iget v2, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    if-ge v1, v2, :cond_15

    .line 64
    iget-object v3, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    aget v2, v3, v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    return v0
.end method

.method init_decode(Lcom/jcraft/jorbis/StaticCodeBook;)I
    .registers 3

    .line 318
    iput-object p1, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    .line 319
    iget v0, p1, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    iput v0, p0, Lcom/jcraft/jorbis/CodeBook;->entries:I

    .line 320
    iget v0, p1, Lcom/jcraft/jorbis/StaticCodeBook;->dim:I

    iput v0, p0, Lcom/jcraft/jorbis/CodeBook;->dim:I

    .line 321
    invoke-virtual {p1}, Lcom/jcraft/jorbis/StaticCodeBook;->unquantize()[F

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jorbis/CodeBook;->valuelist:[F

    .line 323
    invoke-virtual {p0}, Lcom/jcraft/jorbis/CodeBook;->make_decode_tree()Lcom/jcraft/jorbis/CodeBook$DecodeAux;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jorbis/CodeBook;->decode_tree:Lcom/jcraft/jorbis/CodeBook$DecodeAux;

    if-nez p1, :cond_1d

    .line 325
    invoke-virtual {p0}, Lcom/jcraft/jorbis/CodeBook;->clear()V

    const/4 p1, -0x1

    return p1

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method make_decode_tree()Lcom/jcraft/jorbis/CodeBook$DecodeAux;
    .registers 12

    .line 405
    new-instance v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;

    invoke-direct {v0, p0}, Lcom/jcraft/jorbis/CodeBook$DecodeAux;-><init>(Lcom/jcraft/jorbis/CodeBook;)V

    .line 406
    iget v1, p0, Lcom/jcraft/jorbis/CodeBook;->entries:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->ptr0:[I

    .line 407
    iget v2, p0, Lcom/jcraft/jorbis/CodeBook;->entries:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->ptr1:[I

    .line 408
    iget-object v3, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget-object v3, v3, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    iget-object v4, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget v4, v4, Lcom/jcraft/jorbis/StaticCodeBook;->entries:I

    invoke-static {v3, v4}, Lcom/jcraft/jorbis/CodeBook;->make_words([II)[I

    move-result-object v3

    if-nez v3, :cond_25

    const/4 v0, 0x0

    return-object v0

    .line 412
    :cond_25
    iget v4, p0, Lcom/jcraft/jorbis/CodeBook;->entries:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->aux:I

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 414
    :goto_2e
    iget v7, p0, Lcom/jcraft/jorbis/CodeBook;->entries:I

    const/4 v8, 0x1

    if-ge v5, v7, :cond_75

    .line 415
    iget-object v7, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget-object v7, v7, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v7, v7, v5

    if-lez v7, :cond_72

    move v7, v4

    move v9, v7

    .line 418
    :goto_3d
    iget-object v10, p0, Lcom/jcraft/jorbis/CodeBook;->c:Lcom/jcraft/jorbis/StaticCodeBook;

    iget-object v10, v10, Lcom/jcraft/jorbis/StaticCodeBook;->lengthlist:[I

    aget v10, v10, v5

    sub-int/2addr v10, v8

    if-ge v7, v10, :cond_64

    .line 419
    aget v10, v3, v5

    ushr-int/2addr v10, v7

    and-int/2addr v10, v8

    if-nez v10, :cond_57

    .line 421
    aget v10, v1, v9

    if-nez v10, :cond_54

    add-int/lit8 v6, v6, 0x1

    .line 422
    aput v6, v1, v9

    .line 424
    :cond_54
    aget v9, v1, v9

    goto :goto_61

    .line 427
    :cond_57
    aget v10, v2, v9

    if-nez v10, :cond_5f

    add-int/lit8 v6, v6, 0x1

    .line 428
    aput v6, v2, v9

    .line 430
    :cond_5f
    aget v9, v2, v9

    :goto_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    .line 434
    :cond_64
    aget v10, v3, v5

    ushr-int v7, v10, v7

    and-int/2addr v7, v8

    if-nez v7, :cond_6f

    neg-int v7, v5

    .line 435
    aput v7, v1, v9

    goto :goto_72

    :cond_6f
    neg-int v7, v5

    .line 438
    aput v7, v2, v9

    :cond_72
    :goto_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 444
    :cond_75
    invoke-static {v7}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    iput v3, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabn:I

    .line 446
    iget v3, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabn:I

    const/4 v5, 0x5

    if-ge v3, v5, :cond_84

    .line 447
    iput v5, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabn:I

    .line 448
    :cond_84
    iget v3, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabn:I

    shl-int v3, v8, v3

    .line 449
    new-array v5, v3, [I

    iput-object v5, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tab:[I

    .line 450
    new-array v5, v3, [I

    iput-object v5, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabl:[I

    move v5, v4

    :goto_91
    if-ge v5, v3, :cond_b5

    move v6, v4

    move v7, v6

    .line 454
    :goto_95
    iget v9, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabn:I

    if-ge v6, v9, :cond_aa

    if-gtz v7, :cond_9d

    if-nez v6, :cond_aa

    :cond_9d
    shl-int v9, v8, v6

    and-int/2addr v9, v5

    if-eqz v9, :cond_a5

    .line 456
    aget v7, v2, v7

    goto :goto_a7

    .line 459
    :cond_a5
    aget v7, v1, v7

    :goto_a7
    add-int/lit8 v6, v6, 0x1

    goto :goto_95

    .line 462
    :cond_aa
    iget-object v9, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tab:[I

    aput v7, v9, v5

    .line 463
    iget-object v7, v0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->tabl:[I

    aput v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_91

    :cond_b5
    return-object v0
.end method

###### Class com.jcraft.jorbis.CodeBook.DecodeAux (com.jcraft.jorbis.CodeBook$DecodeAux)
.class Lcom/jcraft/jorbis/CodeBook$DecodeAux;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field aux:I

.field ptr0:[I

.field ptr1:[I

.field tab:[I

.field tabl:[I

.field tabn:I

.field final synthetic this$0:Lcom/jcraft/jorbis/CodeBook;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/CodeBook;)V
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->this$0:Lcom/jcraft/jorbis/CodeBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
