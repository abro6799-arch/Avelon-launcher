###### Class defpackage.pc (pc)
.class public Lpc;
.super Luu;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method protected constructor <init>(IIZ)V
    .registers 12

    .line 279
    sget-object v0, Lln;->o:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    .line 280
    iput-boolean p3, p0, Lpc;->a:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3e000000    # 0.125f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p0

    .line 281
    invoke-virtual/range {v1 .. v7}, Lpc;->a(FFFFFF)V

    return-void
.end method

.method private a(Lfd;IIIZ)V
    .registers 13

    .line 404
    iget-boolean v0, p1, Lfd;->B:Z

    if-eqz v0, :cond_5

    return-void

    .line 405
    :cond_5
    new-instance v0, Lvo;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lvo;-><init>(Lpc;Lfd;III)V

    invoke-virtual {p1, p2, p3, p4}, Lfd;->s(III)Z

    move-result p1

    invoke-virtual {v0, p1, p5}, Lvo;->a(ZZ)V

    return-void
.end method

.method private a(Lfd;IIIIZI)Z
    .registers 24

    const/16 v0, 0x8

    const/4 v8, 0x0

    move/from16 v9, p7

    if-lt v9, v0, :cond_8

    return v8

    :cond_8
    and-int/lit8 v0, p5, 0x7

    const/4 v10, 0x1

    if-eqz v0, :cond_6b

    if-eq v0, v10, :cond_5d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_49

    const/4 v1, 0x3

    if-eq v0, v1, :cond_41

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_25

    move/from16 v12, p2

    move/from16 v11, p3

    move/from16 v14, p4

    move v15, v0

    :goto_22
    move v13, v10

    goto/16 :goto_79

    :cond_25
    if-eqz p6, :cond_2a

    add-int/lit8 v0, p4, 0x1

    goto :goto_37

    :cond_2a
    add-int/lit8 v0, p4, -0x1

    goto :goto_31

    :cond_2d
    if-eqz p6, :cond_35

    add-int/lit8 v0, p4, 0x1

    :goto_31
    move/from16 v1, p3

    move v2, v10

    goto :goto_3a

    :cond_35
    add-int/lit8 v0, p4, -0x1

    :goto_37
    add-int/lit8 v1, p3, 0x1

    move v2, v8

    :goto_3a
    move/from16 v12, p2

    move v14, v0

    move v11, v1

    move v13, v2

    move v15, v8

    goto :goto_79

    :cond_41
    if-eqz p6, :cond_46

    add-int/lit8 v0, p2, -0x1

    goto :goto_53

    :cond_46
    add-int/lit8 v0, p2, 0x1

    goto :goto_4d

    :cond_49
    if-eqz p6, :cond_51

    add-int/lit8 v0, p2, -0x1

    :goto_4d
    move/from16 v1, p3

    move v2, v10

    goto :goto_56

    :cond_51
    add-int/lit8 v0, p2, 0x1

    :goto_53
    add-int/lit8 v1, p3, 0x1

    move v2, v8

    :goto_56
    move/from16 v14, p4

    move v12, v0

    move v11, v1

    move v13, v2

    move v15, v10

    goto :goto_79

    :cond_5d
    if-eqz p6, :cond_62

    add-int/lit8 v1, p2, -0x1

    goto :goto_64

    :cond_62
    add-int/lit8 v1, p2, 0x1

    :goto_64
    move/from16 v11, p3

    move/from16 v14, p4

    move v15, v0

    move v12, v1

    goto :goto_22

    :cond_6b
    if-eqz p6, :cond_70

    add-int/lit8 v1, p4, 0x1

    goto :goto_72

    :cond_70
    add-int/lit8 v1, p4, -0x1

    :goto_72
    move/from16 v12, p2

    move/from16 v11, p3

    move v15, v0

    move v14, v1

    goto :goto_22

    :goto_79
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v11

    move v4, v14

    move/from16 v5, p6

    move/from16 v6, p7

    move v7, v15

    .line 474
    invoke-direct/range {v0 .. v7}, Lpc;->a(Lfd;IIIZII)Z

    move-result v0

    if-eqz v0, :cond_8c

    return v10

    :cond_8c
    if-eqz v13, :cond_a2

    add-int/lit8 v3, v11, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v4, v14

    move/from16 v5, p6

    move/from16 v6, p7

    move v7, v15

    .line 477
    invoke-direct/range {v0 .. v7}, Lpc;->a(Lfd;IIIZII)Z

    move-result v0

    if-eqz v0, :cond_a2

    return v10

    :cond_a2
    return v8
.end method

.method private a(Lfd;IIIZII)Z
    .registers 20

    move/from16 v0, p7

    .line 484
    invoke-virtual/range {p1 .. p4}, Lfd;->a(III)I

    move-result v1

    .line 485
    sget-object v2, Luu;->U:Luu;

    iget v2, v2, Luu;->bn:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_51

    .line 486
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v9

    and-int/lit8 v1, v9, 0x7

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    if-eqz v1, :cond_1e

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1e

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1f

    :cond_1e
    return v3

    :cond_1f
    if-nez v0, :cond_2a

    if-eq v1, v2, :cond_29

    const/4 v0, 0x2

    if-eq v1, v0, :cond_29

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2a

    :cond_29
    return v3

    :cond_2a
    and-int/lit8 v0, v9, 0x8

    if-eqz v0, :cond_51

    .line 497
    invoke-virtual/range {p1 .. p4}, Lfd;->s(III)Z

    move-result v0

    if-nez v0, :cond_50

    add-int/lit8 v0, p3, 0x1

    move-object v1, p1

    move v3, p2

    move/from16 v8, p4

    invoke-virtual {p1, p2, v0, v8}, Lfd;->s(III)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_50

    :cond_41
    add-int/lit8 v11, p6, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v10, p5

    .line 500
    invoke-direct/range {v4 .. v11}, Lpc;->a(Lfd;IIIIZI)Z

    move-result v0

    return v0

    :cond_50
    :goto_50
    return v2

    :cond_51
    return v3
.end method

.method static synthetic a(Lpc;)Z
    .registers 1

    .line 9
    iget-boolean p0, p0, Lpc;->a:Z

    return p0
.end method

.method public static final d(I)Z
    .registers 2

    .line 275
    sget-object v0, Luu;->aH:Luu;

    iget v0, v0, Luu;->bn:I

    if-eq p0, v0, :cond_15

    sget-object v0, Luu;->U:Luu;

    iget v0, v0, Luu;->bn:I

    if-eq p0, v0, :cond_15

    sget-object v0, Luu;->V:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public static final h(Lfd;III)Z
    .registers 4

    .line 270
    invoke-virtual {p0, p1, p2, p3}, Lfd;->a(III)I

    move-result p0

    .line 271
    sget-object p1, Luu;->aH:Luu;

    iget p1, p1, Luu;->bn:I

    if-eq p0, p1, :cond_19

    sget-object p1, Luu;->U:Luu;

    iget p1, p1, Luu;->bn:I

    if-eq p0, p1, :cond_19

    sget-object p1, Luu;->V:Luu;

    iget p1, p1, Luu;->bn:I

    if-ne p0, p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method


# virtual methods
.method public a(II)I
    .registers 4

    .line 315
    iget-boolean p1, p0, Lpc;->a:Z

    if-eqz p1, :cond_15

    .line 316
    iget p1, p0, Lpc;->bn:I

    sget-object v0, Luu;->U:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p1, v0, :cond_1b

    and-int/lit8 p1, p2, 0x8

    if-nez p1, :cond_1b

    .line 318
    iget p1, p0, Lpc;->bm:I

    :goto_12
    add-int/lit8 p1, p1, -0x10

    return p1

    :cond_15
    const/4 p1, 0x6

    if-lt p2, p1, :cond_1b

    .line 321
    iget p1, p0, Lpc;->bm:I

    goto :goto_12

    .line 322
    :cond_1b
    iget p1, p0, Lpc;->bm:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lfd;IIILbt;Lbt;)Lvf;
    .registers 7

    .line 301
    invoke-virtual {p0, p1, p2, p3, p4}, Lpc;->a(Lxp;III)V

    .line 302
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILbt;Lbt;)Lvf;

    move-result-object p1

    return-object p1
.end method

.method public a(Lxp;III)V
    .registers 21

    .line 306
    invoke-interface/range {p1 .. p4}, Lxp;->e(III)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_19

    const/4 v1, 0x5

    if-gt v0, v1, :cond_19

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f200000    # 0.625f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    .line 308
    invoke-virtual/range {v2 .. v8}, Lpc;->a(FFFFFF)V

    goto :goto_27

    :cond_19
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3e000000    # 0.125f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v9, p0

    .line 310
    invoke-virtual/range {v9 .. v15}, Lpc;->a(FFFFFF)V

    :goto_27
    return-void
.end method

.method public a(Lfd;III)Z
    .registers 6

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    .line 338
    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p1

    if-eqz p1, :cond_9

    return v0

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public b(Lfd;IIII)V
    .registers 26

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    .line 352
    iget-boolean v0, v9, Lfd;->B:Z

    if-eqz v0, :cond_f

    return-void

    .line 354
    :cond_f
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v13

    .line 356
    iget-boolean v0, v8, Lpc;->a:Z

    if-eqz v0, :cond_1b

    and-int/lit8 v0, v13, 0x7

    move v14, v0

    goto :goto_1c

    :cond_1b
    move v14, v13

    :goto_1c
    add-int/lit8 v15, v11, -0x1

    .line 361
    invoke-virtual {v9, v10, v15, v12}, Lfd;->h(III)Z

    move-result v0

    const/16 v16, 0x1

    xor-int/lit8 v0, v0, 0x1

    const/4 v7, 0x2

    if-ne v14, v7, :cond_33

    add-int/lit8 v1, v10, 0x1

    .line 362
    invoke-virtual {v9, v1, v11, v12}, Lfd;->h(III)Z

    move-result v1

    if-nez v1, :cond_33

    move/from16 v0, v16

    :cond_33
    const/4 v6, 0x3

    if-ne v14, v6, :cond_40

    add-int/lit8 v1, v10, -0x1

    .line 363
    invoke-virtual {v9, v1, v11, v12}, Lfd;->h(III)Z

    move-result v1

    if-nez v1, :cond_40

    move/from16 v0, v16

    :cond_40
    const/4 v5, 0x4

    if-ne v14, v5, :cond_4d

    add-int/lit8 v1, v12, -0x1

    .line 364
    invoke-virtual {v9, v10, v11, v1}, Lfd;->h(III)Z

    move-result v1

    if-nez v1, :cond_4d

    move/from16 v0, v16

    :cond_4d
    const/4 v4, 0x5

    if-ne v14, v4, :cond_5a

    add-int/lit8 v1, v12, 0x1

    .line 365
    invoke-virtual {v9, v10, v11, v1}, Lfd;->h(III)Z

    move-result v1

    if-nez v1, :cond_5a

    move/from16 v0, v16

    :cond_5a
    const/4 v3, 0x0

    if-eqz v0, :cond_74

    .line 368
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v6, v3

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lpc;->g(Lfd;IIII)V

    .line 369
    invoke-virtual {v9, v10, v11, v12, v6}, Lfd;->f(IIII)Z

    goto/16 :goto_12f

    :cond_74
    move/from16 v17, v3

    .line 371
    iget v0, v8, Lpc;->bn:I

    sget-object v1, Luu;->U:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_fb

    .line 372
    invoke-virtual/range {p1 .. p4}, Lfd;->s(III)Z

    move-result v0

    if-nez v0, :cond_90

    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v9, v10, v0, v12}, Lfd;->s(III)Z

    move-result v0

    if-eqz v0, :cond_8d

    goto :goto_90

    :cond_8d
    move/from16 v3, v17

    goto :goto_92

    :cond_90
    :goto_90
    move/from16 v3, v16

    :goto_92
    if-nez v3, :cond_c4

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v13

    move/from16 v6, v18

    move/from16 v7, v19

    .line 373
    invoke-direct/range {v0 .. v7}, Lpc;->a(Lfd;IIIIZI)Z

    move-result v0

    if-nez v0, :cond_c4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v13

    invoke-direct/range {v0 .. v7}, Lpc;->a(Lfd;IIIIZI)Z

    move-result v0

    if-eqz v0, :cond_c1

    goto :goto_c4

    :cond_c1
    move/from16 v3, v17

    goto :goto_c6

    :cond_c4
    :goto_c4
    move/from16 v3, v16

    :goto_c6
    if-eqz v3, :cond_d4

    and-int/lit8 v0, v13, 0x8

    if-nez v0, :cond_d4

    or-int/lit8 v0, v14, 0x8

    .line 377
    invoke-virtual {v9, v10, v11, v12, v0}, Lfd;->d(IIII)V

    :goto_d1
    move/from16 v3, v16

    goto :goto_e0

    :cond_d4
    if-nez v3, :cond_de

    and-int/lit8 v0, v13, 0x8

    if-eqz v0, :cond_de

    .line 380
    invoke-virtual {v9, v10, v11, v12, v14}, Lfd;->d(IIII)V

    goto :goto_d1

    :cond_de
    move/from16 v3, v17

    :goto_e0
    if-eqz v3, :cond_12f

    .line 388
    iget v0, v8, Lpc;->bn:I

    invoke-virtual {v9, v10, v15, v12, v0}, Lfd;->i(IIII)V

    const/4 v0, 0x2

    if-eq v14, v0, :cond_f3

    const/4 v6, 0x3

    if-eq v14, v6, :cond_f3

    const/4 v0, 0x4

    if-eq v14, v0, :cond_f3

    const/4 v0, 0x5

    if-ne v14, v0, :cond_12f

    :cond_f3
    add-int/lit8 v0, v11, 0x1

    .line 390
    iget v1, v8, Lpc;->bn:I

    invoke-virtual {v9, v10, v0, v12, v1}, Lfd;->i(IIII)V

    goto :goto_12f

    :cond_fb
    if-lez p5, :cond_12f

    .line 395
    sget-object v0, Luu;->m:[Luu;

    aget-object v0, v0, p5

    invoke-virtual {v0}, Luu;->f()Z

    move-result v0

    if-eqz v0, :cond_12f

    iget-boolean v0, v8, Lpc;->a:Z

    if-nez v0, :cond_12f

    .line 396
    new-instance v7, Lvo;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lvo;-><init>(Lpc;Lfd;III)V

    invoke-static {v7}, Lvo;->a(Lvo;)I

    move-result v0

    if-ne v0, v6, :cond_12f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 397
    invoke-direct/range {v0 .. v5}, Lpc;->a(Lfd;IIIZ)V

    :cond_12f
    :goto_12f
    return-void
.end method

.method public c(Lfd;III)V
    .registers 12

    .line 345
    iget-boolean v0, p1, Lfd;->B:Z

    if-nez v0, :cond_d

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 347
    invoke-direct/range {v1 .. v6}, Lpc;->a(Lfd;IIIZ)V

    :cond_d
    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lfd;III)Leq;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .registers 2

    .line 285
    iget-boolean v0, p0, Lpc;->a:Z

    return v0
.end method
