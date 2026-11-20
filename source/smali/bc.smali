###### Class defpackage.bc (bc)
.class public Lbc;
.super Lgm;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 15
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/4 p1, 0x1

    .line 16
    iput p1, p0, Lbc;->bg:I

    .line 17
    iput p2, p0, Lbc;->a:I

    return-void
.end method


# virtual methods
.method public a(Liz;Lfd;Lgs;)Liz;
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move-object/from16 v1, p3

    .line 23
    iget v2, v1, Lgs;->aV:F

    iget v3, v1, Lgs;->aT:F

    iget v4, v1, Lgs;->aV:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 24
    iget v3, v1, Lgs;->aU:F

    iget v5, v1, Lgs;->aS:F

    iget v6, v1, Lgs;->aU:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 28
    iget-wide v5, v1, Lgs;->aJ:D

    iget-wide v7, v1, Lgs;->aM:D

    iget-wide v9, v1, Lgs;->aJ:D

    sub-double/2addr v7, v9

    float-to-double v9, v4

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    .line 29
    iget-wide v7, v1, Lgs;->aK:D

    iget-wide v11, v1, Lgs;->aN:D

    iget-wide v13, v1, Lgs;->aK:D

    sub-double/2addr v11, v13

    mul-double/2addr v11, v9

    add-double/2addr v7, v11

    const-wide v11, 0x3ff9eb851eb851ecL    # 1.62

    add-double/2addr v7, v11

    iget v4, v1, Lgs;->bf:F

    float-to-double v11, v4

    sub-double/2addr v7, v11

    .line 30
    iget-wide v11, v1, Lgs;->aL:D

    iget-wide v13, v1, Lgs;->aO:D

    move v4, v2

    move/from16 v22, v3

    iget-wide v2, v1, Lgs;->aL:D

    sub-double/2addr v13, v2

    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v11

    .line 32
    invoke-static/range {v16 .. v21}, Lbt;->b(DDD)Lbt;

    move-result-object v2

    move/from16 v3, v22

    neg-float v3, v3

    const v9, 0x3c8efa35

    mul-float/2addr v3, v9

    const v10, 0x40490fdb    # (float)Math.PI

    sub-float/2addr v3, v10

    .line 34
    invoke-static {v3}, Lin;->b(F)F

    move-result v10

    .line 35
    invoke-static {v3}, Lin;->a(F)F

    move-result v3

    neg-float v4, v4

    mul-float/2addr v4, v9

    .line 36
    invoke-static {v4}, Lin;->b(F)F

    move-result v9

    neg-float v9, v9

    .line 37
    invoke-static {v4}, Lin;->a(F)F

    move-result v4

    mul-float/2addr v3, v9

    mul-float/2addr v10, v9

    float-to-double v13, v3

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    mul-double v24, v13, v16

    float-to-double v3, v4

    mul-double v26, v3, v16

    float-to-double v3, v10

    mul-double v28, v3, v16

    move-object/from16 v23, v2

    .line 44
    invoke-virtual/range {v23 .. v29}, Lbt;->c(DDD)Lbt;

    move-result-object v3

    .line 45
    iget v4, v0, Lbc;->a:I

    const/4 v13, 0x0

    const/4 v9, 0x1

    if-nez v4, :cond_86

    move v4, v9

    goto :goto_87

    :cond_86
    move v4, v13

    :goto_87
    invoke-virtual {v15, v2, v3, v4}, Lfd;->a(Lbt;Lbt;Z)Lvf;

    move-result-object v2

    if-nez v2, :cond_8e

    return-object p1

    .line 48
    :cond_8e
    iget-object v3, v2, Lvf;->a:Ljg;

    sget-object v4, Ljg;->a:Ljg;

    if-ne v3, v4, :cond_1ad

    .line 49
    iget v3, v2, Lvf;->b:I

    .line 50
    iget v4, v2, Lvf;->c:I

    .line 51
    iget v10, v2, Lvf;->d:I

    .line 53
    invoke-virtual {v15, v1, v3, v4, v10}, Lfd;->a(Lgs;III)Z

    move-result v1

    if-nez v1, :cond_a1

    return-object p1

    .line 57
    :cond_a1
    iget v1, v0, Lbc;->a:I

    if-nez v1, :cond_d7

    .line 58
    invoke-virtual {v15, v3, v4, v10}, Lfd;->f(III)Lln;

    move-result-object v1

    sget-object v2, Lln;->g:Lln;

    if-ne v1, v2, :cond_be

    invoke-virtual {v15, v3, v4, v10}, Lfd;->e(III)I

    move-result v1

    if-nez v1, :cond_be

    .line 59
    invoke-virtual {v15, v3, v4, v10, v13}, Lfd;->f(IIII)Z

    .line 60
    new-instance v1, Liz;

    sget-object v2, Lgm;->av:Lgm;

    invoke-direct {v1, v2}, Liz;-><init>(Lgm;)V

    return-object v1

    .line 62
    :cond_be
    invoke-virtual {v15, v3, v4, v10}, Lfd;->f(III)Lln;

    move-result-object v1

    sget-object v2, Lln;->h:Lln;

    if-ne v1, v2, :cond_1bf

    invoke-virtual {v15, v3, v4, v10}, Lfd;->e(III)I

    move-result v1

    if-nez v1, :cond_1bf

    .line 63
    invoke-virtual {v15, v3, v4, v10, v13}, Lfd;->f(IIII)Z

    .line 64
    new-instance v1, Liz;

    sget-object v2, Lgm;->aw:Lgm;

    invoke-direct {v1, v2}, Liz;-><init>(Lgm;)V

    return-object v1

    :cond_d7
    if-gez v1, :cond_e1

    .line 67
    new-instance v1, Liz;

    sget-object v2, Lgm;->au:Lgm;

    invoke-direct {v1, v2}, Liz;-><init>(Lgm;)V

    return-object v1

    .line 69
    :cond_e1
    iget v1, v2, Lvf;->e:I

    if-nez v1, :cond_e7

    add-int/lit8 v4, v4, -0x1

    .line 70
    :cond_e7
    iget v1, v2, Lvf;->e:I

    if-ne v1, v9, :cond_ed

    add-int/lit8 v4, v4, 0x1

    :cond_ed
    move v14, v4

    .line 71
    iget v1, v2, Lvf;->e:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_f5

    add-int/lit8 v10, v10, -0x1

    .line 72
    :cond_f5
    iget v1, v2, Lvf;->e:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_fc

    add-int/lit8 v10, v10, 0x1

    .line 73
    :cond_fc
    iget v1, v2, Lvf;->e:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_103

    add-int/lit8 v3, v3, -0x1

    .line 74
    :cond_103
    iget v1, v2, Lvf;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_10a

    add-int/lit8 v3, v3, 0x1

    :cond_10a
    move v9, v3

    .line 77
    invoke-virtual {v15, v9, v14, v10}, Lfd;->d(III)Z

    move-result v1

    if-nez v1, :cond_11b

    invoke-virtual {v15, v9, v14, v10}, Lfd;->f(III)Lln;

    move-result-object v1

    invoke-virtual {v1}, Lln;->a()Z

    move-result v1

    if-nez v1, :cond_1bf

    .line 78
    :cond_11b
    iget-object v1, v15, Lfd;->t:Lxa;

    iget-boolean v1, v1, Lxa;->d:Z

    if-eqz v1, :cond_191

    iget v1, v0, Lbc;->a:I

    sget-object v2, Luu;->B:Luu;

    iget v2, v2, Luu;->bn:I

    if-ne v1, v2, :cond_191

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double v3, v5, v1

    add-double v5, v7, v1

    add-double v7, v11, v1

    const-string v11, "random.fizz"

    const/high16 v12, 0x3f000000    # 0.5f

    .line 79
    iget-object v1, v15, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget-object v2, v15, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    const v2, 0x40266666    # 2.6f

    add-float v16, v1, v2

    move-object/from16 v1, p2

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-object v8, v11

    move v11, v9

    move v9, v12

    move v12, v10

    move/from16 v10, v16

    invoke-virtual/range {v1 .. v10}, Lfd;->a(DDDLjava/lang/String;FF)V

    :goto_159
    const/16 v1, 0x8

    if-ge v13, v1, :cond_1a5

    const-string v2, "largesmoke"

    int-to-double v3, v11

    .line 81
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    add-double/2addr v3, v5

    int-to-double v5, v14

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    add-double/2addr v5, v7

    int-to-double v7, v12

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    add-double/2addr v7, v9

    const-wide/16 v9, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v1, p2

    move/from16 v20, v11

    move/from16 v21, v12

    move-wide/from16 v11, v16

    move/from16 v17, v13

    move/from16 v16, v14

    move-wide/from16 v13, v18

    invoke-virtual/range {v1 .. v14}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v13, v17, 0x1

    move/from16 v14, v16

    move/from16 v11, v20

    move/from16 v12, v21

    goto :goto_159

    :cond_191
    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v16, v14

    .line 84
    iget v5, v0, Lbc;->a:I

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move/from16 v2, v20

    move/from16 v3, v16

    move/from16 v4, v21

    invoke-virtual/range {v1 .. v6}, Lfd;->b(IIIII)Z

    .line 86
    :cond_1a5
    new-instance v1, Liz;

    sget-object v2, Lgm;->au:Lgm;

    invoke-direct {v1, v2}, Liz;-><init>(Lgm;)V

    return-object v1

    .line 91
    :cond_1ad
    iget v1, v0, Lbc;->a:I

    if-nez v1, :cond_1bf

    .line 92
    iget-object v1, v2, Lvf;->g:Lsn;

    instance-of v1, v1, Lbx;

    if-eqz v1, :cond_1bf

    .line 93
    new-instance v1, Liz;

    sget-object v2, Lgm;->aE:Lgm;

    invoke-direct {v1, v2}, Liz;-><init>(Lgm;)V

    return-object v1

    :cond_1bf
    return-object p1
.end method
