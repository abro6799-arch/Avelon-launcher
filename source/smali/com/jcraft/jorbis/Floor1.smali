###### Class com.jcraft.jorbis.Floor1 (com.jcraft.jorbis.Floor1)
.class Lcom/jcraft/jorbis/Floor1;
.super Lcom/jcraft/jorbis/FuncFloor;
.source "SourceFile"


# static fields
.field private static FLOOR_fromdB_LOOKUP:[F = null

.field static final VIF_POSIT:I = 0x3f

.field static final floor1_rangedb:I = 0x8c


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x100

    new-array v0, v0, [F

    .line 393
    fill-array-data v0, :array_a

    sput-object v0, Lcom/jcraft/jorbis/Floor1;->FLOOR_fromdB_LOOKUP:[F

    return-void

    :array_a
    .array-data 4
        0x33e4b43e
        0x33f39109
        0x3401b28b
        0x340a203c
        0x34131a23    # 1.369995E-7f
        0x341ca960
        0x3426d7a7
        0x3431af4b
        0x343d3b50
        0x34498770
        0x3456a023
        0x346492b8
        0x34736d55
        0x34819f88
        0x348a0bfc
        0x34930493
        0x349c9269
        0x34a6bf32
        0x34b1953f
        0x34bd1f93
        0x34c969e4
        0x34d680ad
        0x34e47136
        0x34f349a6
        0x35018c88
        0x3509f7c0    # 5.1397E-7f
        0x3512ef06
        0x351c7b76
        0x3526a6c0
        0x35317b37
        0x353d03da
        0x35494c5e
        0x3556613b
        0x35644fb9
        0x357325fc
        0x3581798a
        0x3589e386
        0x3592d97c
        0x359c6485
        0x35a68e52
        0x35b16133
        0x35bce825
        0x35c92edc
        0x35d641ce
        0x35e42e41    # 1.7000785E-6f
        0x35f30257
        0x3601668f
        0x3609cf4f
        0x3612c3f5
        0x361c4d98
        0x362675e8
        0x36314732
        0x363ccc74
        0x3649115e
        0x36562265
        0x36640cce
        0x3672deb8
        0x36815397
        0x3689bb1c
        0x3692ae72
        0x369c36af
        0x36a65d81
        0x36b12d35
        0x36bcb0c7
        0x36c8f3e4
        0x36d60301
        0x36e3eb60
        0x36f2bb1e
        0x370140a2
        0x3709a6eb    # 8.2047E-6f
        0x371298f1
        0x371c1fc9
        0x3726451e
        0x3731133d
        0x373c951e
        0x3748d66f
        0x3755e3a2
        0x3763c9f7
        0x37729789
        0x37812daf
        0x378992be    # 1.6400005E-5f
        0x37928374
        0x379c08e6
        0x37a62cbe
        0x37b0f947
        0x37bc7979
        0x37c8b8fe
        0x37d5c447
        0x37e3a892
        0x37f273f8
        0x38011ac0
        0x38097e93
        0x38126df9
        0x381bf206
        0x38261462
        0x3830df56
        0x383c5dd8
        0x38489b92
        0x3855a4f2
        0x38638733
        0x3872506e
        0x388107d3
        0x38896a6b
        0x38925882
        0x389bdb2a
        0x38a5fc09
        0x38b0c568
        0x38bc423b
        0x38c87e29
        0x38d585a0
        0x38e365d9
        0x38f22ce8
        0x3900f4e9
        0x39095646
        0x3912430e
        0x391bc451
        0x3925e3b5
        0x3930ab7f
        0x393c26a2
        0x394860c5
        0x39556653
        0x39634483
        0x39720968
        0x3980e201
        0x39894224
        0x39922d9d
        0x399bad7b
        0x39a5cb63
        0x39b09199
        0x39bc0b0d
        0x39c84366
        0x39d5470b
        0x39e32332
        0x39f1e5ed
        0x3a00cf1d
        0x3a092e05
        0x3a121830
        0x3a1b96a9
        0x3a25b315
        0x3a3077b7
        0x3a3bef7c
        0x3a48260a
        0x3a5527c7
        0x3a6301e6
        0x3a71c278
        0x3a80bc3b
        0x3a8919e9    # 0.0010459992f
        0x3a9202c6
        0x3a9b7fdb
        0x3aa59acb
        0x3ab05dd8
        0x3abbd3ef
        0x3ac808b3
        0x3ad50888
        0x3ae2e09f
        0x3af19f07
        0x3b00a95c
        0x3b0905d0
        0x3b11ed5e
        0x3b1b690f
        0x3b258284
        0x3b3043fd
        0x3b3bb867
        0x3b47eb61
        0x3b54e94d
        0x3b62bf5d
        0x3b717b9c
        0x3b80967f
        0x3b88f1ba
        0x3b91d7f9
        0x3b9b5247
        0x3ba56a41
        0x3bb02a27
        0x3bbb9ce2
        0x3bc7ce12
        0x3bd4ca17
        0x3be29e20
        0x3bf15835
        0x3c0083a6
        0x3c08dda7
        0x3c11c298
        0x3c1b3b82
        0x3c255201
        0x3c301054
        0x3c3b8161
        0x3c47b0c8
        0x3c54aae5
        0x3c627ce8
        0x3c7134d4
        0x3c8070cf
        0x3c88c996
        0x3c91ad3a
        0x3c9b24c0
        0x3ca539c5
        0x3caff685
        0x3cbb65e5
        0x3cc79382
        0x3cd48bb9
        0x3ce25bb4
        0x3cf11179
        0x3d005dfb
        0x3d08b589
        0x3d1197df
        0x3d1b0e02
        0x3d25218d
        0x3d2fdcb9
        0x3d3b4a6d
        0x3d477640
        0x3d546c91
        0x3d623a85
        0x3d70ee22
        0x3d804b2a
        0x3d88a17f
        0x3d918288
        0x3d9af748
        0x3da50958
        0x3dafc2f2
        0x3dbb2ef8
        0x3dc75903
        0x3dd44d6d
        0x3de2195c    # 0.11039993f
        0x3df0cad1
        0x3e00385b
        0x3e088d77
        0x3e116d33
        0x3e1ae090
        0x3e24f127
        0x3e2fa92e
        0x3e3b1387
        0x3e473bca
        0x3e542e4d
        0x3e61f837
        0x3e70a784
        0x3e80258f
        0x3e887973
        0x3e9157e2
        0x3e9ac9dc
        0x3ea4d8f9    # 0.32196787f
        0x3eaf8f6d
        0x3ebaf81b
        0x3ec71e95
        0x3ed40f33
        0x3ee1d717
        0x3ef0843d
        0x3f0012c6
        0x3f086572
        0x3f114293
        0x3f1ab32b
        0x3f24c0ce
        0x3f2f75b1
        0x3f3adcb2
        0x3f470165
        0x3f53f01d
        0x3f61b5fb
        0x3f7060fb
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/jcraft/jorbis/FuncFloor;-><init>()V

    return-void
.end method

.method private static render_line(IIII[F)V
    .registers 11

    sub-int/2addr p3, p2

    sub-int v0, p1, p0

    .line 458
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 459
    div-int v2, p3, v0

    if-gez p3, :cond_e

    add-int/lit8 p3, v2, -0x1

    goto :goto_10

    :cond_e
    add-int/lit8 p3, v2, 0x1

    :goto_10
    mul-int v3, v2, v0

    .line 465
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 467
    aget v3, p4, p0

    sget-object v4, Lcom/jcraft/jorbis/Floor1;->FLOOR_fromdB_LOOKUP:[F

    aget v4, v4, p2

    mul-float/2addr v3, v4

    aput v3, p4, p0

    const/4 v3, 0x0

    :goto_21
    add-int/lit8 p0, p0, 0x1

    if-ge p0, p1, :cond_36

    add-int/2addr v3, v1

    if-lt v3, v0, :cond_2b

    sub-int/2addr v3, v0

    add-int/2addr p2, p3

    goto :goto_2c

    :cond_2b
    add-int/2addr p2, v2

    .line 477
    :goto_2c
    aget v4, p4, p0

    sget-object v5, Lcom/jcraft/jorbis/Floor1;->FLOOR_fromdB_LOOKUP:[F

    aget v5, v5, p2

    mul-float/2addr v4, v5

    aput v4, p4, p0

    goto :goto_21

    :cond_36
    return-void
.end method

.method private static render_point(IIIII)I
    .registers 6

    and-int/lit16 p2, p2, 0x7fff

    and-int/lit16 p3, p3, 0x7fff

    sub-int/2addr p3, p2

    sub-int/2addr p1, p0

    .line 348
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr p4, p0

    mul-int/2addr v0, p4

    .line 351
    div-int/2addr v0, p1

    if-gez p3, :cond_11

    sub-int/2addr p2, v0

    return p2

    :cond_11
    add-int/2addr p2, v0

    return p2
.end method


# virtual methods
.method forward(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[F[FLjava/lang/Object;)I
    .registers 6

    const/4 p1, 0x0

    return p1
.end method

.method free_info(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method free_look(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method free_state(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method inverse1(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 245
    move-object/from16 v2, p2

    check-cast v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;

    .line 246
    iget-object v3, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->vi:Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    .line 247
    iget-object v4, v0, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v4, v4, Lcom/jcraft/jorbis/DspState;->fullbooks:[Lcom/jcraft/jorbis/CodeBook;

    .line 250
    iget-object v5, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v5

    const/4 v7, 0x0

    if-ne v5, v6, :cond_126

    .line 252
    instance-of v5, v1, [I

    if-eqz v5, :cond_21

    .line 253
    check-cast v1, [I

    check-cast v1, [I

    goto :goto_22

    :cond_21
    move-object v1, v7

    :goto_22
    const/4 v5, 0x0

    if-eqz v1, :cond_34

    .line 255
    array-length v8, v1

    iget v9, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->posts:I

    if-ge v8, v9, :cond_2b

    goto :goto_34

    :cond_2b
    move v8, v5

    .line 259
    :goto_2c
    array-length v9, v1

    if-ge v8, v9, :cond_38

    .line 260
    aput v5, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    .line 256
    :cond_34
    :goto_34
    iget v1, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->posts:I

    new-array v1, v1, [I

    .line 263
    :cond_38
    iget-object v8, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v9, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    sub-int/2addr v9, v6

    invoke-static {v9}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v8

    aput v8, v1, v5

    .line 264
    iget-object v8, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    iget v9, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    sub-int/2addr v9, v6

    invoke-static {v9}, Lcom/jcraft/jorbis/Util;->ilog(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v8

    aput v8, v1, v6

    move v9, v5

    const/4 v10, 0x2

    .line 267
    :goto_58
    iget v11, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    const/4 v12, -0x1

    if-ge v9, v11, :cond_b1

    .line 268
    iget-object v11, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v11, v11, v9

    .line 269
    iget-object v13, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    aget v13, v13, v11

    .line 270
    iget-object v14, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v14, v14, v11

    shl-int v15, v6, v14

    if-eqz v14, :cond_7c

    .line 276
    iget-object v8, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    aget v8, v8, v11

    aget-object v8, v4, v8

    iget-object v5, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v8, v5}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v5

    if-ne v5, v12, :cond_7d

    return-object v7

    :cond_7c
    const/4 v5, 0x0

    :cond_7d
    const/4 v8, 0x0

    :goto_7e
    if-ge v8, v13, :cond_a9

    .line 284
    iget-object v7, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v7, v7, v11

    add-int/lit8 v16, v15, -0x1

    and-int v16, v5, v16

    aget v7, v7, v16

    ushr-int/2addr v5, v14

    if-ltz v7, :cond_9f

    add-int v16, v10, v8

    .line 287
    aget-object v7, v4, v7

    iget-object v6, v0, Lcom/jcraft/jorbis/Block;->opb:Lcom/jcraft/jogg/Buffer;

    invoke-virtual {v7, v6}, Lcom/jcraft/jorbis/CodeBook;->decode(Lcom/jcraft/jogg/Buffer;)I

    move-result v6

    aput v6, v1, v16

    if-ne v6, v12, :cond_9d

    const/4 v6, 0x0

    return-object v6

    :cond_9d
    const/4 v7, 0x0

    goto :goto_a4

    :cond_9f
    add-int v6, v10, v8

    const/4 v7, 0x0

    .line 292
    aput v7, v1, v6

    :goto_a4
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_7e

    :cond_a9
    const/4 v7, 0x0

    add-int/2addr v10, v13

    add-int/lit8 v9, v9, 0x1

    move v5, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_58

    :cond_b1
    const/4 v8, 0x2

    .line 299
    :goto_b2
    iget v0, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->posts:I

    if-ge v8, v0, :cond_125

    .line 300
    iget-object v0, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    iget-object v4, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->loneighbor:[I

    add-int/lit8 v5, v8, -0x2

    aget v4, v4, v5

    aget v0, v0, v4

    iget-object v4, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    iget-object v6, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->hineighbor:[I

    aget v6, v6, v5

    aget v4, v4, v6

    iget-object v6, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->loneighbor:[I

    aget v6, v6, v5

    aget v6, v1, v6

    iget-object v7, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->hineighbor:[I

    aget v7, v7, v5

    aget v7, v1, v7

    iget-object v9, v3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    aget v9, v9, v8

    invoke-static {v0, v4, v6, v7, v9}, Lcom/jcraft/jorbis/Floor1;->render_point(IIIII)I

    move-result v0

    .line 304
    iget v4, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    sub-int/2addr v4, v0

    if-ge v4, v0, :cond_e3

    move v6, v4

    goto :goto_e4

    :cond_e3
    move v6, v0

    :goto_e4
    const/4 v7, 0x1

    shl-int/2addr v6, v7

    .line 307
    aget v7, v1, v8

    if-eqz v7, :cond_11b

    if-lt v7, v6, :cond_f5

    if-le v4, v0, :cond_f0

    sub-int/2addr v7, v0

    goto :goto_f3

    :cond_f0
    sub-int/2addr v7, v4

    rsub-int/lit8 v7, v7, -0x1

    :goto_f3
    const/4 v4, 0x1

    goto :goto_103

    :cond_f5
    and-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_100

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    ushr-int/lit8 v6, v7, 0x1

    neg-int v7, v6

    goto :goto_103

    :cond_100
    const/4 v4, 0x1

    shr-int/lit8 v7, v7, 0x1

    :goto_103
    add-int/2addr v7, v0

    .line 327
    aput v7, v1, v8

    .line 328
    iget-object v0, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->loneighbor:[I

    aget v0, v0, v5

    aget v6, v1, v0

    and-int/lit16 v6, v6, 0x7fff

    aput v6, v1, v0

    .line 329
    iget-object v0, v2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->hineighbor:[I

    aget v0, v0, v5

    aget v5, v1, v0

    and-int/lit16 v5, v5, 0x7fff

    aput v5, v1, v0

    goto :goto_122

    :cond_11b
    const/4 v4, 0x1

    const v5, 0x8000

    or-int/2addr v0, v5

    .line 332
    aput v0, v1, v8

    :goto_122
    add-int/lit8 v8, v8, 0x1

    goto :goto_b2

    :cond_125
    return-object v1

    :cond_126
    move-object v0, v7

    return-object v0
.end method

.method inverse2(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;Ljava/lang/Object;[F)I
    .registers 14

    .line 359
    check-cast p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;

    .line 360
    iget-object v0, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->vi:Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    .line 361
    iget-object v1, p1, Lcom/jcraft/jorbis/Block;->vd:Lcom/jcraft/jorbis/DspState;

    iget-object v1, v1, Lcom/jcraft/jorbis/DspState;->vi:Lcom/jcraft/jorbis/Info;

    iget-object v1, v1, Lcom/jcraft/jorbis/Info;->blocksizes:[I

    iget p1, p1, Lcom/jcraft/jorbis/Block;->mode:I

    aget p1, v1, p1

    div-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_4c

    .line 365
    check-cast p3, [I

    check-cast p3, [I

    .line 368
    aget v2, p3, v1

    iget v3, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    mul-int/2addr v2, v3

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    move v2, v1

    .line 369
    :goto_20
    iget v6, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->posts:I

    if-ge v5, v6, :cond_3d

    .line 370
    iget-object v6, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->forward_index:[I

    aget v6, v6, v5

    .line 371
    aget v7, p3, v6

    and-int/lit16 v8, v7, 0x7fff

    if-ne v8, v7, :cond_3a

    .line 373
    iget v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    mul-int/2addr v8, v1

    .line 374
    iget-object v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    aget v1, v1, v6

    .line 376
    invoke-static {v2, v1, v4, v8, p4}, Lcom/jcraft/jorbis/Floor1;->render_line(IIII[F)V

    move v2, v1

    move v4, v8

    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_3d
    :goto_3d
    if-ge v1, p1, :cond_4b

    .line 383
    aget p2, p4, v1

    add-int/lit8 p3, v1, -0x1

    aget p3, p4, p3

    mul-float/2addr p2, p3

    aput p2, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_4b
    return v3

    :cond_4c
    move p2, v1

    :goto_4d
    if-ge p2, p1, :cond_55

    const/4 p3, 0x0

    .line 388
    aput p3, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4d

    :cond_55
    return v1
.end method

.method look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    const/16 p1, 0x41

    new-array p1, p1, [I

    .line 139
    check-cast p3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    .line 140
    new-instance p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;

    invoke-direct {p2, p0}, Lcom/jcraft/jorbis/Floor1$LookFloor1;-><init>(Lcom/jcraft/jorbis/Floor1;)V

    .line 141
    iput-object p3, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->vi:Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    .line 142
    iget-object v0, p3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->n:I

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 151
    :goto_17
    iget v4, p3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    if-ge v2, v4, :cond_27

    .line 152
    iget-object v4, p3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    iget-object v5, p3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v5, v5, v2

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_27
    const/4 v2, 0x2

    add-int/2addr v3, v2

    .line 155
    iput v3, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->posts:I

    move v4, v0

    :goto_2c
    if-ge v4, v3, :cond_33

    .line 159
    aput v4, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_33
    move v4, v0

    :goto_34
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_55

    move v5, v4

    :goto_39
    if-ge v5, v3, :cond_52

    .line 166
    iget-object v6, p3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    aget v7, p1, v4

    aget v6, v6, v7

    iget-object v7, p3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    aget v8, p1, v5

    aget v7, v7, v8

    if-le v6, v7, :cond_4f

    .line 168
    aget v6, p1, v4

    aput v6, p1, v5

    .line 169
    aput v8, p1, v4

    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_55
    move v4, v0

    :goto_56
    if-ge v4, v3, :cond_61

    .line 176
    iget-object v5, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->forward_index:[I

    aget v6, p1, v4

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    :cond_61
    move p1, v0

    :goto_62
    if-ge p1, v3, :cond_6f

    .line 180
    iget-object v4, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->reverse_index:[I

    iget-object v5, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->forward_index:[I

    aget v5, v5, p1

    aput p1, v4, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_62

    :cond_6f
    move p1, v0

    :goto_70
    if-ge p1, v3, :cond_81

    .line 184
    iget-object v4, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->sorted_index:[I

    iget-object v5, p3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    iget-object v6, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->forward_index:[I

    aget v6, v6, p1

    aget v5, v5, v6

    aput v5, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_70

    .line 188
    :cond_81
    iget p1, p3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    if-eq p1, v1, :cond_a0

    if-eq p1, v2, :cond_9b

    const/4 v4, 0x3

    if-eq p1, v4, :cond_96

    const/4 v4, 0x4

    if-eq p1, v4, :cond_91

    const/4 p1, -0x1

    .line 202
    iput p1, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    goto :goto_a4

    :cond_91
    const/16 p1, 0x40

    .line 199
    iput p1, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    goto :goto_a4

    :cond_96
    const/16 p1, 0x56

    .line 196
    iput p1, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    goto :goto_a4

    :cond_9b
    const/16 p1, 0x80

    .line 193
    iput p1, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    goto :goto_a4

    :cond_a0
    const/16 p1, 0x100

    .line 190
    iput p1, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->quant_q:I

    :goto_a4
    move p1, v0

    :goto_a5
    add-int/lit8 v4, v3, -0x2

    if-ge p1, v4, :cond_d5

    .line 211
    iget v4, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->n:I

    .line 212
    iget-object v5, p3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    add-int/lit8 v6, p1, 0x2

    aget v5, v5, v6

    move v7, v0

    move v8, v7

    move v10, v8

    move v9, v1

    :goto_b5
    if-ge v7, v6, :cond_ca

    .line 214
    iget-object v11, p3, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    aget v11, v11, v7

    if-le v11, v10, :cond_c1

    if-ge v11, v5, :cond_c1

    move v8, v7

    move v10, v11

    :cond_c1
    if-ge v11, v4, :cond_c7

    if-le v11, v5, :cond_c7

    move v9, v7

    move v4, v11

    :cond_c7
    add-int/lit8 v7, v7, 0x1

    goto :goto_b5

    .line 224
    :cond_ca
    iget-object v4, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->loneighbor:[I

    aput v8, v4, p1

    .line 225
    iget-object v4, p2, Lcom/jcraft/jorbis/Floor1$LookFloor1;->hineighbor:[I

    aput v9, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_a5

    :cond_d5
    return-object p2
.end method

.method pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V
    .registers 12

    .line 36
    check-cast p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    .line 40
    iget-object v0, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 44
    iget v2, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    const/4 v3, 0x5

    invoke-virtual {p2, v2, v3}, Lcom/jcraft/jogg/Buffer;->write(II)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    .line 45
    :goto_10
    iget v5, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    const/4 v6, 0x4

    if-ge v4, v5, :cond_29

    .line 46
    iget-object v5, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v5, v5, v4

    invoke-virtual {p2, v5, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 47
    iget-object v5, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v5, v5, v4

    if-ge v3, v5, :cond_26

    .line 48
    iget-object v3, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v3, v3, v4

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_29
    move v4, v2

    :goto_2a
    add-int/lit8 v5, v3, 0x1

    const/4 v7, 0x2

    if-ge v4, v5, :cond_67

    .line 53
    iget-object v5, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    aget v5, v5, v4

    sub-int/2addr v5, v1

    const/4 v8, 0x3

    invoke-virtual {p2, v5, v8}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 54
    iget-object v5, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v5, v5, v4

    invoke-virtual {p2, v5, v7}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 55
    iget-object v5, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v5, v5, v4

    const/16 v7, 0x8

    if-eqz v5, :cond_4e

    .line 56
    iget-object v5, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    aget v5, v5, v4

    invoke-virtual {p2, v5, v7}, Lcom/jcraft/jogg/Buffer;->write(II)V

    :cond_4e
    move v5, v2

    .line 58
    :goto_4f
    iget-object v8, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v8, v8, v4

    shl-int v8, v1, v8

    if-ge v5, v8, :cond_64

    .line 59
    iget-object v8, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v8, v8, v4

    aget v8, v8, v5

    add-int/2addr v8, v1

    invoke-virtual {p2, v8, v7}, Lcom/jcraft/jogg/Buffer;->write(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 64
    :cond_67
    iget v3, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v3, v7}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 65
    invoke-static {v0}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v1

    invoke-virtual {p2, v1, v6}, Lcom/jcraft/jogg/Buffer;->write(II)V

    .line 66
    invoke-static {v0}, Lcom/jcraft/jorbis/Util;->ilog2(I)I

    move-result v0

    move v1, v2

    move v3, v1

    .line 68
    :goto_7a
    iget v4, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    if-ge v2, v4, :cond_98

    .line 69
    iget-object v4, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    iget-object v5, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v5, v5, v2

    aget v4, v4, v5

    add-int/2addr v1, v4

    :goto_87
    if-ge v3, v1, :cond_95

    .line 71
    iget-object v4, p1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    add-int/lit8 v5, v3, 0x2

    aget v4, v4, v5

    invoke-virtual {p2, v4, v0}, Lcom/jcraft/jogg/Buffer;->write(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_98
    return-void
.end method

.method unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;
    .registers 15

    .line 78
    new-instance v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    invoke-direct {v0, p0}, Lcom/jcraft/jorbis/Floor1$InfoFloor1;-><init>(Lcom/jcraft/jorbis/Floor1;)V

    const/4 v1, 0x5

    .line 81
    invoke-virtual {p2, v1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v1

    iput v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    .line 82
    :goto_10
    iget v5, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    const/4 v6, 0x4

    if-ge v3, v5, :cond_2a

    .line 83
    iget-object v5, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    invoke-virtual {p2, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v6

    aput v6, v5, v3

    .line 84
    iget-object v5, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v5, v5, v3

    if-ge v4, v5, :cond_27

    .line 85
    iget-object v4, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v4, v4, v3

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2a
    move v3, v1

    :goto_2b
    const/4 v5, 0x1

    add-int/lit8 v7, v4, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ge v3, v7, :cond_a2

    .line 90
    iget-object v7, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    const/4 v10, 0x3

    invoke-virtual {p2, v10}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v10

    add-int/2addr v10, v5

    aput v10, v7, v3

    .line 91
    iget-object v7, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    invoke-virtual {p2, v8}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v8

    aput v8, v7, v3

    .line 92
    iget-object v7, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v7, v7, v3

    if-gez v7, :cond_4e

    .line 93
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->free()V

    return-object v9

    .line 96
    :cond_4e
    iget-object v7, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v7, v7, v3

    const/16 v8, 0x8

    if-eqz v7, :cond_5e

    .line 97
    iget-object v7, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    invoke-virtual {p2, v8}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v10

    aput v10, v7, v3

    .line 99
    :cond_5e
    iget-object v7, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    aget v7, v7, v3

    if-ltz v7, :cond_9e

    iget-object v7, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    aget v7, v7, v3

    iget v10, p1, Lcom/jcraft/jorbis/Info;->books:I

    if-lt v7, v10, :cond_6d

    goto :goto_9e

    :cond_6d
    move v7, v1

    .line 103
    :goto_6e
    iget-object v10, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    aget v10, v10, v3

    shl-int v10, v5, v10

    if-ge v7, v10, :cond_9b

    .line 104
    iget-object v10, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v10, v10, v3

    invoke-virtual {p2, v8}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v11

    sub-int/2addr v11, v5

    aput v11, v10, v7

    .line 105
    iget-object v10, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v10, v10, v3

    aget v10, v10, v7

    if-lt v10, v2, :cond_97

    iget-object v10, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v10, v10, v3

    aget v10, v10, v7

    iget v11, p1, Lcom/jcraft/jorbis/Info;->books:I

    if-lt v10, v11, :cond_94

    goto :goto_97

    :cond_94
    add-int/lit8 v7, v7, 0x1

    goto :goto_6e

    .line 106
    :cond_97
    :goto_97
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->free()V

    return-object v9

    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 100
    :cond_9e
    :goto_9e
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->free()V

    return-object v9

    .line 113
    :cond_a2
    invoke-virtual {p2, v8}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result p1

    add-int/2addr p1, v5

    iput p1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    .line 114
    invoke-virtual {p2, v6}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result p1

    move v2, v1

    move v3, v2

    move v4, v3

    .line 116
    :goto_b0
    iget v6, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    if-ge v2, v6, :cond_da

    .line 117
    iget-object v6, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    iget-object v7, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    aget v7, v7, v2

    aget v6, v6, v7

    add-int/2addr v3, v6

    :goto_bd
    if-ge v4, v3, :cond_d7

    .line 119
    iget-object v6, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p2, p1}, Lcom/jcraft/jogg/Buffer;->read(I)I

    move-result v8

    aput v8, v6, v7

    if-ltz v8, :cond_d3

    shl-int v6, v5, p1

    if-lt v8, v6, :cond_d0

    goto :goto_d3

    :cond_d0
    add-int/lit8 v4, v4, 0x1

    goto :goto_bd

    .line 121
    :cond_d3
    :goto_d3
    invoke-virtual {v0}, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->free()V

    return-object v9

    :cond_d7
    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    .line 126
    :cond_da
    iget-object p2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    aput v1, p2, v1

    .line 127
    iget-object p2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    shl-int p1, v5, p1

    aput p1, p2, v5

    return-object v0
.end method

###### Class com.jcraft.jorbis.Floor1.EchstateFloor1 (com.jcraft.jorbis.Floor1$EchstateFloor1)
.class Lcom/jcraft/jorbis/Floor1$EchstateFloor1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field codes:J

.field codewords:[I

.field curve:[F

.field frameno:J

.field final synthetic this$0:Lcom/jcraft/jorbis/Floor1;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Floor1;)V
    .registers 2

    .line 605
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$EchstateFloor1;->this$0:Lcom/jcraft/jorbis/Floor1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.jcraft.jorbis.Floor1.InfoFloor1 (com.jcraft.jorbis.Floor1$InfoFloor1)
.class Lcom/jcraft/jorbis/Floor1$InfoFloor1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final VIF_CLASS:I = 0x10

.field static final VIF_PARTS:I = 0x1f

.field static final VIF_POSIT:I = 0x3f


# instance fields
.field class_book:[I

.field class_dim:[I

.field class_subbook:[[I

.field class_subs:[I

.field maxerr:F

.field maxover:F

.field maxunder:F

.field mult:I

.field n:I

.field partitionclass:[I

.field partitions:I

.field postlist:[I

.field final synthetic this$0:Lcom/jcraft/jorbis/Floor1;

.field twofitatten:F

.field twofitminsize:I

.field twofitminused:I

.field twofitweight:I

.field unusedmin_n:I

.field unusedminsize:I


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Floor1;)V
    .registers 4

    .line 511
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->this$0:Lcom/jcraft/jorbis/Floor1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1f

    new-array p1, p1, [I

    .line 487
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    const/16 p1, 0x10

    new-array v0, p1, [I

    .line 489
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    new-array v0, p1, [I

    .line 490
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    new-array v0, p1, [I

    .line 491
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    new-array p1, p1, [[I

    .line 492
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    const/16 p1, 0x41

    new-array p1, p1, [I

    .line 495
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    const/4 p1, 0x0

    .line 512
    :goto_24
    iget-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    array-length v1, v0

    if-ge p1, v1, :cond_32

    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 513
    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :cond_32
    return-void
.end method


# virtual methods
.method copy_info()Ljava/lang/Object;
    .registers 8

    .line 528
    new-instance v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    iget-object v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->this$0:Lcom/jcraft/jorbis/Floor1;

    invoke-direct {v0, v1}, Lcom/jcraft/jorbis/Floor1$InfoFloor1;-><init>(Lcom/jcraft/jorbis/Floor1;)V

    .line 530
    iget v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    iput v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    .line 531
    iget-object v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    iget-object v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    iget-object v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    iget-object v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    iget-object v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    iget-object v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    iget-object v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    iget-object v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v4

    :goto_2d
    if-ge v1, v3, :cond_3f

    .line 538
    iget-object v2, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v2, v2, v1

    iget-object v5, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v5, v5, v1

    const/16 v6, 0x8

    invoke-static {v2, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 541
    :cond_3f
    iget v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    iput v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    .line 542
    iget-object v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    iget-object v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    const/16 v3, 0x41

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    iget v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->maxover:F

    iput v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->maxover:F

    .line 545
    iget v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->maxunder:F

    iput v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->maxunder:F

    .line 546
    iget v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->maxerr:F

    iput v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->maxerr:F

    .line 548
    iget v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitminsize:I

    iput v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitminsize:I

    .line 549
    iget v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitminused:I

    iput v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitminused:I

    .line 550
    iget v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitweight:I

    iput v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitweight:I

    .line 551
    iget v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitatten:F

    iput v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitatten:F

    .line 552
    iget v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->unusedminsize:I

    iput v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->unusedminsize:I

    .line 553
    iget v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->unusedmin_n:I

    iput v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->unusedmin_n:I

    .line 555
    iget v1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->n:I

    iput v1, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->n:I

    return-object v0
.end method

.method free()V
    .registers 3

    const/4 v0, 0x0

    .line 518
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    .line 519
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    .line 520
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    .line 521
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    .line 522
    move-object v1, v0

    check-cast v1, [[I

    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    .line 523
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    return-void
.end method

###### Class com.jcraft.jorbis.Floor1.LookFloor1 (com.jcraft.jorbis.Floor1$LookFloor1)
.class Lcom/jcraft/jorbis/Floor1$LookFloor1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final VIF_POSIT:I = 0x3f


# instance fields
.field forward_index:[I

.field frames:I

.field hineighbor:[I

.field loneighbor:[I

.field n:I

.field phrasebits:I

.field postbits:I

.field posts:I

.field quant_q:I

.field reverse_index:[I

.field sorted_index:[I

.field final synthetic this$0:Lcom/jcraft/jorbis/Floor1;

.field vi:Lcom/jcraft/jorbis/Floor1$InfoFloor1;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Floor1;)V
    .registers 3

    .line 562
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->this$0:Lcom/jcraft/jorbis/Floor1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x41

    new-array v0, p1, [I

    .line 565
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->sorted_index:[I

    new-array v0, p1, [I

    .line 566
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->forward_index:[I

    new-array p1, p1, [I

    .line 567
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->reverse_index:[I

    const/16 p1, 0x3f

    new-array v0, p1, [I

    .line 568
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->hineighbor:[I

    new-array p1, p1, [I

    .line 569
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->loneighbor:[I

    return-void
.end method


# virtual methods
.method free()V
    .registers 2

    const/4 v0, 0x0

    .line 581
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->sorted_index:[I

    .line 582
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->forward_index:[I

    .line 583
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->reverse_index:[I

    .line 584
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->hineighbor:[I

    .line 585
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$LookFloor1;->loneighbor:[I

    return-void
.end method

###### Class com.jcraft.jorbis.Floor1.Lsfit_acc (com.jcraft.jorbis.Floor1$Lsfit_acc)
.class Lcom/jcraft/jorbis/Floor1$Lsfit_acc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field an:J

.field edgey0:J

.field edgey1:J

.field n:J

.field final synthetic this$0:Lcom/jcraft/jorbis/Floor1;

.field un:J

.field x0:J

.field x1:J

.field x2a:J

.field xa:J

.field xya:J

.field y2a:J

.field ya:J


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Floor1;)V
    .registers 2

    .line 589
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$Lsfit_acc;->this$0:Lcom/jcraft/jorbis/Floor1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
