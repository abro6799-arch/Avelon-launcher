###### Class defpackage.xq (xq)
.class public Lxq;
.super Lrw;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Random;


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    .line 26
    sget-object v0, Lln;->e:Lln;

    invoke-direct {p0, p1, v0}, Lrw;-><init>(ILln;)V

    .line 23
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lxq;->a:Ljava/util/Random;

    const/16 p1, 0x2d

    .line 27
    iput p1, p0, Lxq;->bm:I

    return-void
.end method

.method private c(Lfd;IIILjava/util/Random;)V
    .registers 31

    move-object/from16 v9, p1

    .line 90
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v0

    const/4 v1, 0x0

    const/4 v11, 0x3

    if-ne v0, v11, :cond_d

    move v12, v1

    const/4 v13, 0x1

    goto :goto_1c

    :cond_d
    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne v0, v2, :cond_14

    move v12, v1

    move v13, v3

    goto :goto_1c

    :cond_14
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1a

    move v13, v1

    const/4 v12, 0x1

    goto :goto_1c

    :cond_1a
    move v13, v1

    move v12, v3

    .line 105
    :goto_1c
    invoke-virtual/range {p1 .. p4}, Lfd;->b(III)Low;

    move-result-object v0

    check-cast v0, Laz;

    .line 106
    invoke-virtual {v0}, Laz;->b()Liz;

    move-result-object v8

    move/from16 v14, p2

    int-to-double v0, v14

    int-to-double v6, v12

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double v4, v6, v2

    add-double/2addr v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double v15, v0, v4

    move/from16 v1, p3

    move/from16 v24, v12

    int-to-double v11, v1

    add-double/2addr v11, v4

    move/from16 v0, p4

    move-wide/from16 v17, v11

    int-to-double v10, v0

    int-to-double v4, v13

    mul-double/2addr v2, v4

    add-double/2addr v10, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v2

    if-nez v8, :cond_5a

    const/16 v2, 0x3e9

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v2

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 111
    invoke-virtual/range {v0 .. v5}, Lfd;->e(IIIII)V

    goto/16 :goto_193

    .line 113
    :cond_5a
    iget v0, v8, Liz;->c:I

    sget-object v1, Lgm;->j:Lgm;

    iget v1, v1, Lgm;->bf:I

    if-ne v0, v1, :cond_9c

    .line 114
    new-instance v8, Lsl;

    move-object v0, v8

    move-object/from16 v1, p1

    move-wide v2, v15

    move-wide/from16 v20, v4

    move-wide/from16 v4, v17

    move-wide/from16 v22, v6

    move-wide v6, v10

    invoke-direct/range {v0 .. v7}, Lsl;-><init>(Lfd;DDD)V

    const-wide v18, 0x3fb99999a0000000L    # 0.10000000149011612

    const v0, 0x3f8ccccd    # 1.1f

    const/high16 v1, 0x40c00000    # 6.0f

    move-object v15, v8

    move-wide/from16 v16, v22

    move/from16 v22, v0

    move/from16 v23, v1

    .line 115
    invoke-virtual/range {v15 .. v23}, Lsl;->a(DDDFF)V

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, v8, Lsl;->a:Z

    .line 117
    invoke-virtual {v9, v8}, Lfd;->b(Lsn;)Z

    const/16 v1, 0x3ea

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 118
    invoke-virtual/range {v0 .. v5}, Lfd;->e(IIIII)V

    goto/16 :goto_17e

    :cond_9c
    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    .line 119
    iget v0, v8, Liz;->c:I

    sget-object v1, Lgm;->aN:Lgm;

    iget v1, v1, Lgm;->bf:I

    if-ne v0, v1, :cond_db

    .line 120
    new-instance v8, Lvv;

    move-object v0, v8

    move-object/from16 v1, p1

    move-wide v2, v15

    move-wide/from16 v4, v17

    move-wide v6, v10

    invoke-direct/range {v0 .. v7}, Lvv;-><init>(Lfd;DDD)V

    const-wide v18, 0x3fb99999a0000000L    # 0.10000000149011612

    const v0, 0x3f8ccccd    # 1.1f

    const/high16 v1, 0x40c00000    # 6.0f

    move-object v15, v8

    move-wide/from16 v16, v22

    move/from16 v22, v0

    move/from16 v23, v1

    .line 121
    invoke-virtual/range {v15 .. v23}, Lvv;->a(DDDFF)V

    .line 122
    invoke-virtual {v9, v8}, Lfd;->b(Lsn;)Z

    const/16 v1, 0x3ea

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 123
    invoke-virtual/range {v0 .. v5}, Lfd;->e(IIIII)V

    goto/16 :goto_17e

    .line 124
    :cond_db
    iget v0, v8, Liz;->c:I

    sget-object v1, Lgm;->aB:Lgm;

    iget v1, v1, Lgm;->bf:I

    if-ne v0, v1, :cond_115

    .line 125
    new-instance v8, Lby;

    move-object v0, v8

    move-object/from16 v1, p1

    move-wide v2, v15

    move-wide/from16 v4, v17

    move-wide v6, v10

    invoke-direct/range {v0 .. v7}, Lby;-><init>(Lfd;DDD)V

    const-wide v18, 0x3fb99999a0000000L    # 0.10000000149011612

    const v0, 0x3f8ccccd    # 1.1f

    const/high16 v1, 0x40c00000    # 6.0f

    move-object v15, v8

    move-wide/from16 v16, v22

    move/from16 v22, v0

    move/from16 v23, v1

    .line 126
    invoke-virtual/range {v15 .. v23}, Lby;->a(DDDFF)V

    .line 127
    invoke-virtual {v9, v8}, Lfd;->b(Lsn;)Z

    const/16 v1, 0x3ea

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 128
    invoke-virtual/range {v0 .. v5}, Lfd;->e(IIIII)V

    goto :goto_17e

    .line 130
    :cond_115
    new-instance v12, Lhl;

    const-wide v0, 0x3fd3333333333333L    # 0.3

    sub-double v4, v17, v0

    move-object v0, v12

    move-object/from16 v1, p1

    move-wide v2, v15

    move-wide v6, v10

    invoke-direct/range {v0 .. v8}, Lhl;-><init>(Lfd;DDDLiz;)V

    .line 132
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    add-double/2addr v0, v2

    mul-double v6, v22, v0

    .line 133
    iput-wide v6, v12, Lhl;->aP:D

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    .line 134
    iput-wide v2, v12, Lhl;->aQ:D

    mul-double v4, v20, v0

    .line 135
    iput-wide v4, v12, Lhl;->aR:D

    .line 137
    iget-wide v0, v12, Lhl;->aP:D

    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    const-wide v4, 0x3f7eb851e0000000L    # 0.007499999832361937

    mul-double/2addr v2, v4

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    iput-wide v0, v12, Lhl;->aP:D

    .line 138
    iget-wide v0, v12, Lhl;->aQ:D

    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    iput-wide v0, v12, Lhl;->aQ:D

    .line 139
    iget-wide v0, v12, Lhl;->aR:D

    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    iput-wide v0, v12, Lhl;->aR:D

    .line 141
    invoke-virtual {v9, v12}, Lfd;->b(Lsn;)Z

    const/16 v1, 0x3e8

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 142
    invoke-virtual/range {v0 .. v5}, Lfd;->e(IIIII)V

    :goto_17e
    const/16 v1, 0x7d0

    const/4 v0, 0x1

    add-int/lit8 v12, v24, 0x1

    add-int/2addr v13, v0

    const/4 v0, 0x3

    mul-int/2addr v13, v0

    add-int v5, v12, v13

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 144
    invoke-virtual/range {v0 .. v5}, Lfd;->e(IIIII)V

    :goto_193
    return-void
.end method

.method private h(Lfd;III)V
    .registers 10

    .line 45
    iget-boolean v0, p1, Lfd;->B:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    add-int/lit8 v0, p4, -0x1

    .line 49
    invoke-virtual {p1, p2, p3, v0}, Lfd;->a(III)I

    move-result v0

    add-int/lit8 v1, p4, 0x1

    .line 50
    invoke-virtual {p1, p2, p3, v1}, Lfd;->a(III)I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    .line 51
    invoke-virtual {p1, v2, p3, p4}, Lfd;->a(III)I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    .line 52
    invoke-virtual {p1, v3, p3, p4}, Lfd;->a(III)I

    move-result v3

    .line 55
    sget-object v4, Luu;->o:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_27

    sget-object v4, Luu;->o:[Z

    aget-boolean v4, v4, v1

    .line 56
    :cond_27
    sget-object v4, Luu;->o:[Z

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_35

    sget-object v1, Luu;->o:[Z

    aget-boolean v0, v1, v0

    if-nez v0, :cond_35

    const/4 v0, 0x2

    goto :goto_36

    :cond_35
    const/4 v0, 0x3

    .line 57
    :goto_36
    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_43

    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_43

    const/4 v0, 0x5

    .line 58
    :cond_43
    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_50

    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v2

    if-nez v1, :cond_50

    const/4 v0, 0x4

    .line 59
    :cond_50
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 73
    iget p1, p0, Lxq;->bm:I

    add-int/lit8 p1, p1, 0x11

    return p1

    :cond_8
    if-nez p1, :cond_f

    .line 74
    iget p1, p0, Lxq;->bm:I

    add-int/lit8 p1, p1, 0x11

    return p1

    :cond_f
    const/4 v1, 0x3

    if-ne p1, v1, :cond_16

    .line 75
    iget p1, p0, Lxq;->bm:I

    add-int/2addr p1, v0

    return p1

    .line 76
    :cond_16
    iget p1, p0, Lxq;->bm:I

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    .line 35
    sget-object p1, Luu;->Q:Luu;

    iget p1, p1, Luu;->bn:I

    return p1
.end method

.method public a(Lxp;IIII)I
    .registers 7

    const/4 v0, 0x1

    if-ne p5, v0, :cond_8

    .line 63
    iget p1, p0, Lxq;->bm:I

    add-int/lit8 p1, p1, 0x11

    return p1

    :cond_8
    if-nez p5, :cond_f

    .line 64
    iget p1, p0, Lxq;->bm:I

    add-int/lit8 p1, p1, 0x11

    return p1

    .line 66
    :cond_f
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p1

    if-eq p5, p1, :cond_18

    .line 68
    iget p1, p0, Lxq;->bm:I

    return p1

    .line 69
    :cond_18
    iget p1, p0, Lxq;->bm:I

    add-int/2addr p1, v0

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 7

    .line 160
    invoke-virtual {p1, p2, p3, p4}, Lfd;->s(III)Z

    move-result v0

    if-nez v0, :cond_e

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p1, p2, v0, p4}, Lfd;->s(III)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 161
    :cond_e
    invoke-direct/range {p0 .. p5}, Lxq;->c(Lfd;IIILjava/util/Random;)V

    :cond_11
    return-void
.end method

.method public a(Lfd;IIILls;)V
    .registers 10

    .line 170
    iget p5, p5, Lls;->aS:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p5, v0

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p5, v0

    float-to-double v0, p5

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result p5

    const/4 v0, 0x3

    and-int/2addr p5, v0

    const/4 v1, 0x2

    if-nez p5, :cond_18

    .line 172
    invoke-virtual {p1, p2, p3, p4, v1}, Lfd;->d(IIII)V

    :cond_18
    const/4 v2, 0x1

    if-ne p5, v2, :cond_1f

    const/4 v2, 0x5

    .line 173
    invoke-virtual {p1, p2, p3, p4, v2}, Lfd;->d(IIII)V

    :cond_1f
    if-ne p5, v1, :cond_24

    .line 174
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    :cond_24
    if-ne p5, v0, :cond_2a

    const/4 p5, 0x4

    .line 175
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    :cond_2a
    return-void
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 8

    .line 80
    iget-boolean v0, p1, Lfd;->B:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 83
    :cond_6
    invoke-virtual {p1, p2, p3, p4}, Lfd;->b(III)Low;

    move-result-object p1

    check-cast p1, Laz;

    .line 84
    invoke-virtual {p5, p1}, Lgs;->a(Laz;)V

    return v1
.end method

.method protected a_()Low;
    .registers 2

    .line 166
    new-instance v0, Laz;

    invoke-direct {v0}, Laz;-><init>()V

    return-object v0
.end method

.method public b(Lfd;III)V
    .registers 27

    move-object/from16 v0, p0

    .line 179
    invoke-virtual/range {p1 .. p4}, Lfd;->b(III)Low;

    move-result-object v1

    check-cast v1, Laz;

    const/4 v2, 0x0

    .line 180
    :goto_9
    invoke-interface {v1}, Llw;->a()I

    move-result v3

    if-ge v2, v3, :cond_bf

    .line 181
    invoke-interface {v1, v2}, Llw;->f_(I)Liz;

    move-result-object v3

    if-eqz v3, :cond_b5

    .line 183
    iget-object v4, v0, Lxq;->a:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr v4, v6

    .line 184
    iget-object v7, v0, Lxq;->a:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v6

    .line 185
    iget-object v8, v0, Lxq;->a:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v8, v5

    add-float/2addr v8, v6

    .line 187
    :goto_33
    iget v5, v3, Liz;->a:I

    if-lez v5, :cond_b5

    .line 188
    iget-object v5, v0, Lxq;->a:Ljava/util/Random;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    .line 189
    iget v6, v3, Liz;->a:I

    if-le v5, v6, :cond_47

    iget v5, v3, Liz;->a:I

    .line 190
    :cond_47
    iget v6, v3, Liz;->a:I

    sub-int/2addr v6, v5

    iput v6, v3, Liz;->a:I

    .line 192
    new-instance v6, Lhl;

    move/from16 v15, p2

    int-to-float v9, v15

    add-float/2addr v9, v4

    float-to-double v11, v9

    move/from16 v13, p3

    int-to-float v9, v13

    add-float/2addr v9, v7

    float-to-double v9, v9

    move/from16 v14, p4

    move-object/from16 v18, v1

    int-to-float v1, v14

    add-float/2addr v1, v8

    move/from16 v19, v7

    move/from16 v20, v8

    float-to-double v7, v1

    new-instance v1, Liz;

    move/from16 v21, v4

    iget v4, v3, Liz;->c:I

    move-wide/from16 v16, v9

    invoke-virtual {v3}, Liz;->i()I

    move-result v9

    invoke-direct {v1, v4, v5, v9}, Liz;-><init>(III)V

    move-wide/from16 v4, v16

    move-object v9, v6

    move-object/from16 v10, p1

    move-wide v13, v4

    move-wide v15, v7

    move-object/from16 v17, v1

    invoke-direct/range {v9 .. v17}, Lhl;-><init>(Lfd;DDDLiz;)V

    .line 194
    iget-object v1, v0, Lxq;->a:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v4

    double-to-float v1, v4

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v4

    float-to-double v7, v1

    iput-wide v7, v6, Lhl;->aP:D

    .line 195
    iget-object v1, v0, Lxq;->a:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v7

    double-to-float v1, v7

    mul-float/2addr v1, v4

    const v5, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v5

    float-to-double v7, v1

    iput-wide v7, v6, Lhl;->aQ:D

    .line 196
    iget-object v1, v0, Lxq;->a:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v7

    double-to-float v1, v7

    mul-float/2addr v1, v4

    float-to-double v4, v1

    iput-wide v4, v6, Lhl;->aR:D

    move-object/from16 v1, p1

    .line 197
    invoke-virtual {v1, v6}, Lfd;->b(Lsn;)Z

    move-object/from16 v1, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v4, v21

    goto/16 :goto_33

    :cond_b5
    move-object/from16 v18, v1

    move-object/from16 v1, p1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v18

    goto/16 :goto_9

    :cond_bf
    move-object/from16 v1, p1

    .line 201
    invoke-super/range {p0 .. p4}, Lrw;->b(Lfd;III)V

    return-void
.end method

.method public b(Lfd;IIII)V
    .registers 12

    if-lez p5, :cond_2d

    .line 150
    sget-object v0, Luu;->m:[Luu;

    aget-object p5, v0, p5

    invoke-virtual {p5}, Luu;->f()Z

    move-result p5

    if-eqz p5, :cond_2d

    .line 151
    invoke-virtual {p1, p2, p3, p4}, Lfd;->s(III)Z

    move-result p5

    if-nez p5, :cond_1d

    add-int/lit8 p5, p3, 0x1

    invoke-virtual {p1, p2, p5, p4}, Lfd;->s(III)Z

    move-result p5

    if-eqz p5, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p5, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p5, 0x1

    :goto_1e
    if-eqz p5, :cond_2d

    .line 153
    iget v4, p0, Lxq;->bn:I

    invoke-virtual {p0}, Lxq;->e()I

    move-result v5

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lfd;->c(IIIII)V

    :cond_2d
    return-void
.end method

.method public c(Lfd;III)V
    .registers 5

    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Lrw;->c(Lfd;III)V

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lxq;->h(Lfd;III)V

    return-void
.end method

.method public e()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method
