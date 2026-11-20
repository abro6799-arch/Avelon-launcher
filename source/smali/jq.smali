###### Class defpackage.jq (jq)
.class public Ljq;
.super Luu;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 5

    .line 35
    sget-object v0, Lln;->B:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    .line 36
    iput-boolean p3, p0, Ljq;->a:Z

    .line 37
    sget-object p1, Ljq;->h:Lct;

    invoke-virtual {p0, p1}, Ljq;->a(Lct;)Luu;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 38
    invoke-virtual {p0, p1}, Ljq;->c(F)Luu;

    return-void
.end method

.method private static a(ILfd;IIIZ)Z
    .registers 10

    .line 350
    sget-object v0, Luu;->aq:Luu;

    iget v0, v0, Luu;->bn:I

    const/4 v1, 0x0

    if-ne p0, v0, :cond_8

    return v1

    .line 354
    :cond_8
    sget-object v0, Luu;->aa:Luu;

    iget v0, v0, Luu;->bn:I

    const/4 v2, 0x1

    if-eq p0, v0, :cond_3e

    sget-object v0, Luu;->W:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p0, v0, :cond_16

    goto :goto_3e

    .line 360
    :cond_16
    sget-object v0, Luu;->m:[Luu;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Luu;->m()F

    move-result v0

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_25

    return v1

    .line 364
    :cond_25
    sget-object v0, Luu;->m:[Luu;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Luu;->h()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_31

    return v1

    :cond_31
    if-nez p5, :cond_49

    .line 368
    sget-object p5, Luu;->m:[Luu;

    aget-object p0, p5, p0

    invoke-virtual {p0}, Luu;->h()I

    move-result p0

    if-ne p0, v2, :cond_49

    return v1

    .line 356
    :cond_3e
    :goto_3e
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p0

    invoke-static {p0}, Ljq;->e(I)Z

    move-result p0

    if-eqz p0, :cond_49

    return v1

    .line 373
    :cond_49
    invoke-virtual {p1, p2, p3, p4}, Lfd;->b(III)Low;

    move-result-object p0

    if-eqz p0, :cond_50

    return v1

    :cond_50
    return v2
.end method

.method private static c(Lfd;IIILgs;)I
    .registers 11

    .line 328
    iget-wide v0, p4, Lgs;->aM:D

    double-to-float p0, v0

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Lin;->e(F)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    cmpg-float p0, p0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p0, :cond_3c

    iget-wide v2, p4, Lgs;->aO:D

    double-to-float p0, v2

    int-to-float p3, p3

    sub-float/2addr p0, p3

    invoke-static {p0}, Lin;->e(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3c

    .line 330
    iget-wide p0, p4, Lgs;->aN:D

    const-wide v2, 0x3ffd1eb851eb851fL    # 1.82

    add-double/2addr p0, v2

    iget p3, p4, Lgs;->bf:F

    float-to-double v2, p3

    sub-double/2addr p0, v2

    int-to-double p2, p2

    sub-double v2, p0, p2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_34

    return v1

    :cond_34
    sub-double/2addr p2, p0

    const-wide/16 p0, 0x0

    cmpl-double p0, p2, p0

    if-lez p0, :cond_3c

    return v0

    .line 340
    :cond_3c
    iget p0, p4, Lgs;->aS:F

    const/high16 p1, 0x40800000    # 4.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x43b40000    # 360.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Lin;->b(D)I

    move-result p0

    const/4 p1, 0x3

    and-int/2addr p0, p1

    const/4 p2, 0x2

    if-nez p0, :cond_52

    return p2

    :cond_52
    if-ne p0, v1, :cond_56

    const/4 p0, 0x5

    return p0

    :cond_56
    if-ne p0, p2, :cond_59

    return p1

    :cond_59
    if-ne p0, p1, :cond_5d

    const/4 p0, 0x4

    return p0

    :cond_5d
    return v0
.end method

.method public static d(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static e(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private f(Lfd;IIII)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_d

    add-int/lit8 v2, p3, -0x1

    .line 165
    invoke-virtual {p1, p2, v2, p4, v0}, Lfd;->k(IIII)Z

    move-result v2

    if-eqz v2, :cond_d

    return v1

    :cond_d
    if-eq p5, v1, :cond_18

    add-int/lit8 v2, p3, 0x1

    .line 166
    invoke-virtual {p1, p2, v2, p4, v1}, Lfd;->k(IIII)Z

    move-result v2

    if-eqz v2, :cond_18

    return v1

    :cond_18
    const/4 v2, 0x2

    if-eq p5, v2, :cond_24

    add-int/lit8 v3, p4, -0x1

    .line 167
    invoke-virtual {p1, p2, p3, v3, v2}, Lfd;->k(IIII)Z

    move-result v3

    if-eqz v3, :cond_24

    return v1

    :cond_24
    const/4 v3, 0x3

    if-eq p5, v3, :cond_30

    add-int/lit8 v4, p4, 0x1

    .line 168
    invoke-virtual {p1, p2, p3, v4, v3}, Lfd;->k(IIII)Z

    move-result v4

    if-eqz v4, :cond_30

    return v1

    :cond_30
    const/4 v4, 0x5

    if-eq p5, v4, :cond_3c

    add-int/lit8 v5, p2, 0x1

    .line 169
    invoke-virtual {p1, v5, p3, p4, v4}, Lfd;->k(IIII)Z

    move-result v5

    if-eqz v5, :cond_3c

    return v1

    :cond_3c
    const/4 v5, 0x4

    if-eq p5, v5, :cond_48

    add-int/lit8 p5, p2, -0x1

    .line 170
    invoke-virtual {p1, p5, p3, p4, v5}, Lfd;->k(IIII)Z

    move-result p5

    if-eqz p5, :cond_48

    return v1

    .line 181
    :cond_48
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->k(IIII)Z

    move-result p5

    if-eqz p5, :cond_4f

    return v1

    :cond_4f
    add-int/lit8 p5, p3, 0x2

    .line 182
    invoke-virtual {p1, p2, p5, p4, v1}, Lfd;->k(IIII)Z

    move-result p5

    if-eqz p5, :cond_58

    return v1

    :cond_58
    add-int/2addr p3, v1

    add-int/lit8 p5, p4, -0x1

    .line 183
    invoke-virtual {p1, p2, p3, p5, v2}, Lfd;->k(IIII)Z

    move-result p5

    if-eqz p5, :cond_62

    return v1

    :cond_62
    add-int/lit8 p5, p4, 0x1

    .line 184
    invoke-virtual {p1, p2, p3, p5, v3}, Lfd;->k(IIII)Z

    move-result p5

    if-eqz p5, :cond_6b

    return v1

    :cond_6b
    add-int/lit8 p5, p2, -0x1

    .line 185
    invoke-virtual {p1, p5, p3, p4, v5}, Lfd;->k(IIII)Z

    move-result p5

    if-eqz p5, :cond_74

    return v1

    :cond_74
    add-int/2addr p2, v1

    .line 186
    invoke-virtual {p1, p2, p3, p4, v4}, Lfd;->k(IIII)Z

    move-result p1

    if-eqz p1, :cond_7c

    return v1

    :cond_7c
    return v0
.end method

.method private h(Lfd;III)V
    .registers 13

    .line 132
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    .line 133
    invoke-static {v0}, Ljq;->d(I)I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, v7

    .line 134
    invoke-direct/range {v1 .. v6}, Ljq;->f(Lfd;IIII)Z

    move-result v1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_16

    return-void

    :cond_16
    if-eqz v1, :cond_33

    .line 140
    invoke-static {v0}, Ljq;->e(I)Z

    move-result v2

    if-nez v2, :cond_33

    .line 141
    invoke-static {p1, p2, p3, p4, v7}, Ljq;->h(Lfd;IIII)Z

    move-result v0

    if-eqz v0, :cond_47

    or-int/lit8 v0, v7, 0x8

    .line 142
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->e(IIII)Z

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v7

    .line 143
    invoke-virtual/range {v1 .. v6}, Lfd;->d(IIIII)V

    goto :goto_47

    :cond_33
    if-nez v1, :cond_47

    .line 145
    invoke-static {v0}, Ljq;->e(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 146
    invoke-virtual {p1, p2, p3, p4, v7}, Lfd;->e(IIII)Z

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v7

    .line 147
    invoke-virtual/range {v1 .. v6}, Lfd;->d(IIIII)V

    :cond_47
    :goto_47
    return-void
.end method

.method private static h(Lfd;IIII)Z
    .registers 15

    .line 384
    sget-object v0, Lwj;->b:[I

    aget v0, v0, p4

    add-int/2addr p1, v0

    .line 385
    sget-object v0, Lwj;->c:[I

    aget v0, v0, p4

    add-int/2addr p2, v0

    .line 386
    sget-object v0, Lwj;->d:[I

    aget v0, v0, p4

    add-int/2addr p3, v0

    const/4 v0, 0x0

    move v7, v0

    :goto_11
    const/16 v1, 0xd

    const/4 v8, 0x1

    if-ge v7, v1, :cond_54

    if-lez p2, :cond_53

    const/16 v1, 0x7f

    if-lt p2, v1, :cond_1d

    goto :goto_53

    .line 395
    :cond_1d
    invoke-virtual {p0, p1, p2, p3}, Lfd;->a(III)I

    move-result v9

    if-nez v9, :cond_24

    goto :goto_54

    :cond_24
    const/4 v6, 0x1

    move v1, v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 400
    invoke-static/range {v1 .. v6}, Ljq;->a(ILfd;IIIZ)Z

    move-result v1

    if-nez v1, :cond_31

    return v0

    .line 404
    :cond_31
    sget-object v1, Luu;->m:[Luu;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Luu;->h()I

    move-result v1

    if-ne v1, v8, :cond_3c

    goto :goto_54

    :cond_3c
    const/16 v1, 0xc

    if-ne v7, v1, :cond_41

    return v0

    .line 414
    :cond_41
    sget-object v1, Lwj;->b:[I

    aget v1, v1, p4

    add-int/2addr p1, v1

    .line 415
    sget-object v1, Lwj;->c:[I

    aget v1, v1, p4

    add-int/2addr p2, v1

    .line 416
    sget-object v1, Lwj;->d:[I

    aget v1, v1, p4

    add-int/2addr p3, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_53
    :goto_53
    return v0

    :cond_54
    :goto_54
    return v8
.end method

.method private i(Lfd;IIII)Z
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 424
    sget-object v1, Lwj;->b:[I

    aget v1, v1, v11

    add-int/2addr v1, v8

    .line 425
    sget-object v2, Lwj;->c:[I

    aget v2, v2, v11

    add-int/2addr v2, v9

    .line 426
    sget-object v3, Lwj;->d:[I

    aget v3, v3, v11

    add-int/2addr v3, v10

    const/4 v12, 0x0

    move v13, v1

    move v14, v2

    move v15, v3

    move v6, v12

    :goto_20
    const/16 v1, 0xd

    const/4 v5, 0x1

    if-ge v6, v1, :cond_82

    if-lez v14, :cond_81

    const/16 v1, 0x7f

    if-lt v14, v1, :cond_2c

    goto :goto_81

    .line 435
    :cond_2c
    invoke-virtual {v7, v13, v14, v15}, Lfd;->a(III)I

    move-result v16

    if-nez v16, :cond_33

    goto :goto_82

    :cond_33
    const/16 v17, 0x1

    move/from16 v1, v16

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v18, v6

    move/from16 v6, v17

    .line 440
    invoke-static/range {v1 .. v6}, Ljq;->a(ILfd;IIIZ)Z

    move-result v1

    if-nez v1, :cond_47

    return v12

    .line 444
    :cond_47
    sget-object v1, Luu;->m:[Luu;

    aget-object v1, v1, v16

    invoke-virtual {v1}, Luu;->h()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_68

    .line 446
    sget-object v1, Luu;->m:[Luu;

    aget-object v1, v1, v16

    invoke-virtual {v7, v13, v14, v15}, Lfd;->e(III)I

    move-result v16

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Luu;->g(Lfd;IIII)V

    .line 449
    invoke-virtual {v7, v13, v14, v15, v12}, Lfd;->f(IIII)Z

    goto :goto_82

    :cond_68
    const/16 v1, 0xc

    move/from16 v2, v18

    if-ne v2, v1, :cond_6f

    return v12

    .line 459
    :cond_6f
    sget-object v1, Lwj;->b:[I

    aget v1, v1, v11

    add-int/2addr v13, v1

    .line 460
    sget-object v1, Lwj;->c:[I

    aget v1, v1, v11

    add-int/2addr v14, v1

    .line 461
    sget-object v1, Lwj;->d:[I

    aget v1, v1, v11

    add-int/2addr v15, v1

    add-int/lit8 v6, v2, 0x1

    goto :goto_20

    :cond_81
    :goto_81
    return v12

    :cond_82
    :goto_82
    if-ne v13, v8, :cond_8b

    if-ne v14, v9, :cond_8b

    if-eq v15, v10, :cond_89

    goto :goto_8b

    :cond_89
    const/4 v6, 0x1

    return v6

    :cond_8b
    :goto_8b
    const/4 v6, 0x1

    .line 466
    sget-object v1, Lwj;->b:[I

    aget v1, v1, v11

    sub-int v5, v13, v1

    .line 467
    sget-object v1, Lwj;->c:[I

    aget v1, v1, v11

    sub-int v4, v14, v1

    .line 468
    sget-object v1, Lwj;->d:[I

    aget v1, v1, v11

    sub-int v3, v15, v1

    .line 470
    invoke-virtual {v7, v5, v4, v3}, Lfd;->a(III)I

    move-result v2

    .line 471
    invoke-virtual {v7, v5, v4, v3}, Lfd;->e(III)I

    move-result v1

    .line 473
    iget v6, v0, Ljq;->bn:I

    if-ne v2, v6, :cond_e7

    if-ne v5, v8, :cond_e7

    if-ne v4, v9, :cond_e7

    if-ne v3, v10, :cond_e7

    .line 474
    sget-object v1, Luu;->ad:Lut;

    iget v6, v1, Lut;->bn:I

    iget-boolean v1, v0, Ljq;->a:Z

    const/16 v16, 0x8

    if-eqz v1, :cond_bd

    move/from16 v1, v16

    goto :goto_be

    :cond_bd
    move v1, v12

    :goto_be
    or-int v17, v11, v1

    move-object/from16 v1, p1

    move v2, v13

    move/from16 v18, v3

    move v3, v14

    move/from16 v19, v4

    move v4, v15

    move/from16 v20, v5

    move v5, v6

    const/4 v8, 0x1

    move/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lfd;->a(IIIII)Z

    .line 475
    sget-object v1, Luu;->ab:Lh;

    iget v1, v1, Lh;->bn:I

    iget-boolean v2, v0, Ljq;->a:Z

    if-eqz v2, :cond_db

    goto :goto_dd

    :cond_db
    move/from16 v16, v12

    :goto_dd
    or-int v2, v11, v16

    invoke-static {v1, v2, v11, v8, v12}, Lut;->a(IIIZZ)Low;

    move-result-object v1

    invoke-virtual {v7, v13, v14, v15, v1}, Lfd;->a(IIILow;)V

    goto :goto_10a

    :cond_e7
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    const/4 v8, 0x1

    .line 477
    sget-object v3, Luu;->ad:Lut;

    iget v5, v3, Lut;->bn:I

    move v4, v1

    move-object/from16 v1, p1

    move v6, v2

    move v2, v13

    move v3, v14

    move/from16 v16, v4

    move v4, v15

    move v0, v6

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lfd;->a(IIIII)Z

    move/from16 v1, v16

    .line 478
    invoke-static {v0, v1, v11, v8, v12}, Lut;->a(IIIZZ)Low;

    move-result-object v0

    invoke-virtual {v7, v13, v14, v15, v0}, Lfd;->a(IIILow;)V

    :goto_10a
    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v15, v18

    move/from16 v14, v19

    move/from16 v13, v20

    goto/16 :goto_82
.end method


# virtual methods
.method public a(II)I
    .registers 5

    .line 50
    invoke-static {p2}, Ljq;->d(I)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_a

    .line 53
    iget p1, p0, Ljq;->bm:I

    return p1

    :cond_a
    if-ne p1, v0, :cond_41

    .line 61
    invoke-static {p2}, Ljq;->e(I)Z

    move-result p1

    if-nez p1, :cond_3e

    iget-wide p1, p0, Ljq;->bs:D

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-gtz p1, :cond_3e

    iget-wide p1, p0, Ljq;->bt:D

    cmpl-double p1, p1, v0

    if-gtz p1, :cond_3e

    iget-wide p1, p0, Ljq;->bu:D

    cmpl-double p1, p1, v0

    if-gtz p1, :cond_3e

    iget-wide p1, p0, Ljq;->bv:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, v0

    if-ltz p1, :cond_3e

    iget-wide p1, p0, Ljq;->bw:D

    cmpg-double p1, p1, v0

    if-ltz p1, :cond_3e

    iget-wide p1, p0, Ljq;->bx:D

    cmpg-double p1, p1, v0

    if-gez p1, :cond_3b

    goto :goto_3e

    .line 64
    :cond_3b
    iget p1, p0, Ljq;->bm:I

    return p1

    :cond_3e
    :goto_3e
    const/16 p1, 0x6e

    return p1

    .line 66
    :cond_41
    sget-object p2, Lwj;->a:[I

    aget p2, p2, v0

    if-ne p1, p2, :cond_4a

    const/16 p1, 0x6d

    return p1

    :cond_4a
    const/16 p1, 0x6c

    return p1
.end method

.method public a(Lfd;IIIII)V
    .registers 27

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v0, p5

    move/from16 v11, p6

    const/4 v12, 0x1

    .line 194
    iput-boolean v12, v6, Ljq;->b:Z

    const v13, 0x3f19999a    # 0.6f

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    const/4 v5, 0x0

    if-nez v0, :cond_54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v12, v5

    move/from16 v5, p6

    .line 199
    invoke-direct/range {v0 .. v5}, Ljq;->i(Lfd;IIII)Z

    move-result v0

    if-eqz v0, :cond_51

    or-int/lit8 v0, v11, 0x8

    .line 200
    invoke-virtual {v7, v8, v9, v10, v0}, Lfd;->d(IIII)V

    int-to-double v0, v8

    add-double/2addr v0, v14

    int-to-double v2, v9

    add-double/2addr v2, v14

    int-to-double v4, v10

    add-double/2addr v4, v14

    const-string v14, "tile.piston.out"

    const/high16 v15, 0x3f000000    # 0.5f

    .line 201
    iget-object v8, v7, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v8, v9

    add-float v16, v8, v13

    move-object/from16 v7, p1

    move-wide v8, v0

    move-wide v10, v2

    move v3, v12

    move-wide v12, v4

    invoke-virtual/range {v7 .. v16}, Lfd;->a(DDDLjava/lang/String;FF)V

    goto/16 :goto_19d

    :cond_51
    move v0, v12

    goto/16 :goto_19e

    :cond_54
    move v3, v5

    if-ne v0, v12, :cond_19d

    .line 205
    sget-object v0, Lwj;->b:[I

    aget v0, v0, v11

    add-int/2addr v0, v8

    sget-object v1, Lwj;->c:[I

    aget v1, v1, v11

    add-int/2addr v1, v9

    sget-object v2, Lwj;->d:[I

    aget v2, v2, v11

    add-int/2addr v2, v10

    invoke-virtual {v7, v0, v1, v2}, Lfd;->b(III)Low;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 206
    instance-of v1, v0, Luk;

    if-eqz v1, :cond_75

    .line 207
    check-cast v0, Luk;

    invoke-virtual {v0}, Luk;->l()V

    .line 210
    :cond_75
    sget-object v0, Luu;->ad:Lut;

    iget v4, v0, Lut;->bn:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v5, v3

    move/from16 v3, p4

    move v13, v5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lfd;->a(IIIII)Z

    .line 211
    iget v0, v6, Ljq;->bn:I

    invoke-static {v0, v11, v11, v13, v12}, Lut;->a(IIIZZ)Low;

    move-result-object v0

    invoke-virtual {v7, v8, v9, v10, v0}, Lfd;->a(IIILow;)V

    .line 214
    iget-boolean v0, v6, Ljq;->a:Z

    if-eqz v0, :cond_161

    .line 215
    sget-object v0, Lwj;->b:[I

    aget v0, v0, v11

    mul-int/lit8 v0, v0, 0x2

    add-int v5, v8, v0

    .line 216
    sget-object v0, Lwj;->c:[I

    aget v0, v0, v11

    mul-int/lit8 v0, v0, 0x2

    add-int v4, v9, v0

    .line 217
    sget-object v0, Lwj;->d:[I

    aget v0, v0, v11

    mul-int/lit8 v0, v0, 0x2

    add-int v3, v10, v0

    .line 218
    invoke-virtual {v7, v5, v4, v3}, Lfd;->a(III)I

    move-result v0

    .line 219
    invoke-virtual {v7, v5, v4, v3}, Lfd;->e(III)I

    move-result v1

    .line 222
    sget-object v2, Luu;->ad:Lut;

    iget v2, v2, Lut;->bn:I

    if-ne v0, v2, :cond_e3

    .line 226
    invoke-virtual {v7, v5, v4, v3}, Lfd;->b(III)Low;

    move-result-object v2

    if-eqz v2, :cond_e3

    .line 227
    instance-of v14, v2, Luk;

    if-eqz v14, :cond_e3

    .line 228
    check-cast v2, Luk;

    .line 230
    invoke-virtual {v2}, Luk;->d()I

    move-result v14

    if-ne v14, v11, :cond_e3

    invoke-virtual {v2}, Luk;->b()Z

    move-result v14

    if-eqz v14, :cond_e3

    .line 232
    invoke-virtual {v2}, Luk;->l()V

    .line 233
    invoke-virtual {v2}, Luk;->a()I

    move-result v0

    .line 234
    invoke-virtual {v2}, Luk;->e()I

    move-result v1

    move v14, v0

    move v15, v1

    move/from16 v17, v12

    goto :goto_e7

    :cond_e3
    move v14, v0

    move v15, v1

    move/from16 v17, v13

    :goto_e7
    if-nez v17, :cond_147

    if-lez v14, :cond_147

    const/16 v18, 0x0

    move v0, v14

    move-object/from16 v1, p1

    move v2, v5

    move/from16 p5, v3

    move v3, v4

    move v12, v4

    move/from16 v4, p5

    move/from16 v19, v5

    move/from16 v5, v18

    .line 240
    invoke-static/range {v0 .. v5}, Ljq;->a(ILfd;IIIZ)Z

    move-result v0

    if-eqz v0, :cond_147

    sget-object v0, Luu;->m:[Luu;

    aget-object v0, v0, v14

    invoke-virtual {v0}, Luu;->h()I

    move-result v0

    if-eqz v0, :cond_117

    sget-object v0, Luu;->aa:Luu;

    iget v0, v0, Luu;->bn:I

    if-eq v14, v0, :cond_117

    sget-object v0, Luu;->W:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne v14, v0, :cond_147

    .line 242
    :cond_117
    iput-boolean v13, v6, Ljq;->b:Z

    move/from16 v1, p5

    move/from16 v0, v19

    .line 243
    invoke-virtual {v7, v0, v12, v1, v13}, Lfd;->f(IIII)Z

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, v6, Ljq;->b:Z

    .line 246
    sget-object v0, Lwj;->b:[I

    aget v0, v0, v11

    add-int/2addr v8, v0

    .line 247
    sget-object v0, Lwj;->c:[I

    aget v0, v0, v11

    add-int/2addr v9, v0

    .line 248
    sget-object v0, Lwj;->d:[I

    aget v0, v0, v11

    add-int/2addr v10, v0

    .line 250
    sget-object v0, Luu;->ad:Lut;

    iget v4, v0, Lut;->bn:I

    move-object/from16 v0, p1

    move v1, v8

    move v2, v9

    move v3, v10

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lfd;->a(IIIII)Z

    .line 251
    invoke-static {v14, v15, v11, v13, v13}, Lut;->a(IIIZZ)Low;

    move-result-object v0

    invoke-virtual {v7, v8, v9, v10, v0}, Lfd;->a(IIILow;)V

    goto :goto_178

    :cond_147
    if-nez v17, :cond_178

    .line 253
    iput-boolean v13, v6, Ljq;->b:Z

    .line 254
    sget-object v0, Lwj;->b:[I

    aget v0, v0, v11

    add-int/2addr v0, v8

    sget-object v1, Lwj;->c:[I

    aget v1, v1, v11

    add-int/2addr v1, v9

    sget-object v2, Lwj;->d:[I

    aget v2, v2, v11

    add-int/2addr v2, v10

    invoke-virtual {v7, v0, v1, v2, v13}, Lfd;->f(IIII)Z

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, v6, Ljq;->b:Z

    goto :goto_178

    .line 258
    :cond_161
    iput-boolean v13, v6, Ljq;->b:Z

    .line 259
    sget-object v0, Lwj;->b:[I

    aget v0, v0, v11

    add-int/2addr v0, v8

    sget-object v1, Lwj;->c:[I

    aget v1, v1, v11

    add-int/2addr v1, v9

    sget-object v2, Lwj;->d:[I

    aget v2, v2, v11

    add-int/2addr v2, v10

    invoke-virtual {v7, v0, v1, v2, v13}, Lfd;->f(IIII)Z

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, v6, Ljq;->b:Z

    :cond_178
    :goto_178
    int-to-double v0, v8

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    int-to-double v4, v9

    add-double/2addr v4, v2

    int-to-double v8, v10

    add-double/2addr v2, v8

    const-string v14, "tile.piston.in"

    const/high16 v15, 0x3f000000    # 0.5f

    .line 263
    iget-object v8, v7, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    const v9, 0x3e19999a    # 0.15f

    mul-float/2addr v8, v9

    const v9, 0x3f19999a    # 0.6f

    add-float v16, v8, v9

    move-object/from16 v7, p1

    move-wide v8, v0

    move-wide v10, v4

    move v0, v13

    move-wide v12, v2

    invoke-virtual/range {v7 .. v16}, Lfd;->a(DDDLjava/lang/String;FF)V

    goto :goto_19e

    :cond_19d
    :goto_19d
    move v0, v3

    .line 266
    :goto_19e
    iput-boolean v0, v6, Ljq;->b:Z

    return-void
.end method

.method public a(Lfd;IIILeq;Ljava/util/ArrayList;)V
    .registers 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 310
    invoke-virtual/range {v0 .. v6}, Ljq;->a(FFFFFF)V

    .line 311
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Lfd;IIILls;)V
    .registers 6

    .line 107
    check-cast p5, Lgs;

    invoke-static {p1, p2, p3, p4, p5}, Ljq;->c(Lfd;IIILgs;)I

    move-result p5

    .line 108
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    .line 109
    iget-boolean p5, p1, Lfd;->B:Z

    if-nez p5, :cond_10

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Ljq;->h(Lfd;III)V

    :cond_10
    return-void
.end method

.method public a(Lxp;III)V
    .registers 21

    .line 273
    invoke-interface/range {p1 .. p4}, Lxp;->e(III)I

    move-result v0

    .line 275
    invoke-static {v0}, Ljq;->e(I)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 277
    invoke-static {v0}, Ljq;->d(I)I

    move-result v0

    if-eqz v0, :cond_6e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_40

    const/4 v1, 0x4

    if-eq v0, v1, :cond_30

    const/4 v1, 0x5

    if-eq v0, v1, :cond_21

    goto/16 :goto_8c

    :cond_21
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    .line 294
    invoke-virtual/range {v2 .. v8}, Ljq;->a(FFFFFF)V

    goto :goto_8c

    :cond_30
    const/high16 v10, 0x3e800000    # 0.25f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v9, p0

    .line 291
    invoke-virtual/range {v9 .. v15}, Ljq;->a(FFFFFF)V

    goto :goto_8c

    :cond_40
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    move-object/from16 v0, p0

    .line 288
    invoke-virtual/range {v0 .. v6}, Ljq;->a(FFFFFF)V

    goto :goto_8c

    :cond_4f
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3e800000    # 0.25f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v7, p0

    .line 285
    invoke-virtual/range {v7 .. v13}, Ljq;->a(FFFFFF)V

    goto :goto_8c

    :cond_5f
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    .line 282
    invoke-virtual/range {v0 .. v6}, Ljq;->a(FFFFFF)V

    goto :goto_8c

    :cond_6e
    const/4 v8, 0x0

    const/high16 v9, 0x3e800000    # 0.25f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v7, p0

    .line 279
    invoke-virtual/range {v7 .. v13}, Ljq;->a(FFFFFF)V

    goto :goto_8c

    :cond_7e
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    .line 298
    invoke-virtual/range {v0 .. v6}, Ljq;->a(FFFFFF)V

    :goto_8c
    return-void
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 6

    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public b(Lfd;IIII)V
    .registers 6

    .line 116
    iget-boolean p5, p1, Lfd;->B:Z

    if-nez p5, :cond_b

    iget-boolean p5, p0, Ljq;->b:Z

    if-nez p5, :cond_b

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Ljq;->h(Lfd;III)V

    :cond_b
    return-void
.end method

.method public c(Lfd;III)V
    .registers 6

    .line 125
    iget-boolean v0, p1, Lfd;->B:Z

    if-nez v0, :cond_d

    invoke-virtual {p1, p2, p3, p4}, Lfd;->b(III)Low;

    move-result-object v0

    if-nez v0, :cond_d

    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Ljq;->h(Lfd;III)V

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

.method public g()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 304
    invoke-virtual/range {v0 .. v6}, Ljq;->a(FFFFFF)V

    return-void
.end method

.method public i()I
    .registers 2

    .line 42
    iget-boolean v0, p0, Ljq;->a:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x6a

    return v0

    :cond_7
    const/16 v0, 0x6b

    return v0
.end method
