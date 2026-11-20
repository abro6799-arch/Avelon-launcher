###### Class defpackage.bp (bp)
.class public Lbp;
.super Lwq;
.source "SourceFile"

# interfaces
.implements Lff;


# instance fields
.field public a:I

.field public b:D

.field public c:D

.field public d:D

.field public e:I

.field public f:I

.field private g:Lsn;

.field private h:I


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lwq;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lbp;->a:I

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lbp;->g:Lsn;

    .line 19
    iput p1, p0, Lbp;->h:I

    .line 20
    iput p1, p0, Lbp;->e:I

    .line 21
    iput p1, p0, Lbp;->f:I

    const-string p1, "/mob/ghast.png"

    .line 25
    iput-object p1, p0, Lbp;->O:Ljava/lang/String;

    const/high16 p1, 0x40800000    # 4.0f

    .line 26
    invoke-virtual {p0, p1, p1}, Lbp;->b(FF)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lbp;->bC:Z

    return-void
.end method

.method private a(DDDD)Z
    .registers 26

    move-object/from16 v0, p0

    .line 123
    iget-wide v1, v0, Lbp;->b:D

    iget-wide v3, v0, Lbp;->aM:D

    sub-double/2addr v1, v3

    div-double v1, v1, p7

    .line 124
    iget-wide v3, v0, Lbp;->c:D

    iget-wide v5, v0, Lbp;->aN:D

    sub-double/2addr v3, v5

    div-double v10, v3, p7

    .line 125
    iget-wide v3, v0, Lbp;->d:D

    iget-wide v5, v0, Lbp;->aO:D

    sub-double/2addr v3, v5

    div-double v12, v3, p7

    .line 127
    iget-object v3, v0, Lbp;->aW:Leq;

    invoke-virtual {v3}, Leq;->d()Leq;

    move-result-object v14

    const/4 v15, 0x1

    move v8, v15

    :goto_1f
    int-to-double v3, v8

    cmpg-double v3, v3, p7

    if-gez v3, :cond_3e

    move-object v3, v14

    move-wide v4, v1

    move-wide v6, v10

    move/from16 v16, v8

    move-wide v8, v12

    .line 130
    invoke-virtual/range {v3 .. v9}, Leq;->d(DDD)Leq;

    .line 131
    iget-object v3, v0, Lbp;->aI:Lfd;

    invoke-virtual {v3, v0, v14}, Lfd;->a(Lsn;Leq;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3b

    const/4 v1, 0x0

    return v1

    :cond_3b
    add-int/lit8 v8, v16, 0x1

    goto :goto_1f

    :cond_3e
    return v15
.end method


# virtual methods
.method protected b()V
    .registers 4

    .line 32
    invoke-super {p0}, Lwq;->b()V

    .line 34
    iget-object v0, p0, Lbp;->bD:Lud;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lud;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .registers 3

    .line 162
    iget-object v0, p0, Lbp;->bs:Ljava/util/Random;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_18

    invoke-super {p0}, Lwq;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lbp;->aI:Lfd;

    iget v0, v0, Lfd;->q:I

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method protected f_()V
    .registers 20

    move-object/from16 v9, p0

    .line 44
    iget-object v0, v9, Lbp;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_11

    iget-object v0, v9, Lbp;->aI:Lfd;

    iget v0, v0, Lfd;->q:I

    if-nez v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lbp;->K()V

    .line 45
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lbp;->X()V

    .line 47
    iget v0, v9, Lbp;->f:I

    iput v0, v9, Lbp;->e:I

    .line 48
    iget-wide v0, v9, Lbp;->b:D

    iget-wide v2, v9, Lbp;->aM:D

    sub-double v10, v0, v2

    .line 49
    iget-wide v0, v9, Lbp;->c:D

    iget-wide v2, v9, Lbp;->aN:D

    sub-double v12, v0, v2

    .line 50
    iget-wide v0, v9, Lbp;->d:D

    iget-wide v2, v9, Lbp;->aO:D

    sub-double v14, v0, v2

    mul-double v0, v10, v10

    mul-double v2, v12, v12

    add-double/2addr v0, v2

    mul-double v2, v14, v14

    add-double/2addr v0, v2

    .line 52
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    float-to-double v7, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v7, v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v16, 0x40000000    # 2.0f

    if-ltz v0, :cond_47

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    cmpl-double v0, v7, v0

    if-lez v0, :cond_7d

    .line 55
    :cond_47
    iget-wide v0, v9, Lbp;->aM:D

    iget-object v2, v9, Lbp;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float v2, v2, v16

    sub-float/2addr v2, v5

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    float-to-double v3, v2

    add-double/2addr v0, v3

    iput-wide v0, v9, Lbp;->b:D

    .line 56
    iget-wide v0, v9, Lbp;->aN:D

    iget-object v2, v9, Lbp;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float v2, v2, v16

    sub-float/2addr v2, v5

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    float-to-double v3, v2

    add-double/2addr v0, v3

    iput-wide v0, v9, Lbp;->c:D

    .line 57
    iget-wide v0, v9, Lbp;->aO:D

    iget-object v2, v9, Lbp;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float v2, v2, v16

    sub-float/2addr v2, v5

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, v9, Lbp;->d:D

    .line 60
    :cond_7d
    iget v0, v9, Lbp;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, v9, Lbp;->a:I

    if-gtz v0, :cond_cb

    .line 61
    iget-object v0, v9, Lbp;->bs:Ljava/util/Random;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, v9, Lbp;->a:I

    .line 63
    iget-wide v1, v9, Lbp;->b:D

    iget-wide v3, v9, Lbp;->c:D

    iget-wide v5, v9, Lbp;->d:D

    move-object/from16 v0, p0

    move-wide/from16 v17, v7

    invoke-direct/range {v0 .. v8}, Lbp;->a(DDDD)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 64
    iget-wide v0, v9, Lbp;->aP:D

    div-double v10, v10, v17

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, v2

    add-double/2addr v0, v10

    iput-wide v0, v9, Lbp;->aP:D

    .line 65
    iget-wide v0, v9, Lbp;->aQ:D

    div-double v12, v12, v17

    mul-double/2addr v12, v2

    add-double/2addr v0, v12

    iput-wide v0, v9, Lbp;->aQ:D

    .line 66
    iget-wide v0, v9, Lbp;->aR:D

    div-double v14, v14, v17

    mul-double/2addr v14, v2

    add-double/2addr v0, v14

    iput-wide v0, v9, Lbp;->aR:D

    goto :goto_cb

    .line 68
    :cond_bf
    iget-wide v0, v9, Lbp;->aM:D

    iput-wide v0, v9, Lbp;->b:D

    .line 69
    iget-wide v0, v9, Lbp;->aN:D

    iput-wide v0, v9, Lbp;->c:D

    .line 70
    iget-wide v0, v9, Lbp;->aO:D

    iput-wide v0, v9, Lbp;->d:D

    .line 74
    :cond_cb
    :goto_cb
    iget-object v0, v9, Lbp;->g:Lsn;

    if-eqz v0, :cond_d6

    iget-boolean v0, v0, Lsn;->be:Z

    if-eqz v0, :cond_d6

    const/4 v0, 0x0

    iput-object v0, v9, Lbp;->g:Lsn;

    .line 75
    :cond_d6
    iget-object v0, v9, Lbp;->g:Lsn;

    const/16 v1, 0x14

    if-eqz v0, :cond_e4

    iget v0, v9, Lbp;->h:I

    add-int/lit8 v2, v0, -0x1

    iput v2, v9, Lbp;->h:I

    if-gtz v0, :cond_f2

    .line 76
    :cond_e4
    iget-object v0, v9, Lbp;->aI:Lfd;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-virtual {v0, v9, v2, v3}, Lfd;->a(Lsn;D)Lgs;

    move-result-object v0

    iput-object v0, v9, Lbp;->g:Lsn;

    if-eqz v0, :cond_f2

    .line 78
    iput v1, v9, Lbp;->h:I

    .line 83
    :cond_f2
    iget-object v0, v9, Lbp;->g:Lsn;

    const/16 v10, 0xa

    const v2, 0x40490fdb    # (float)Math.PI

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v11, 0x1

    if-eqz v0, :cond_1ca

    invoke-virtual {v0, v9}, Lsn;->g(Lsn;)D

    move-result-wide v4

    const-wide/high16 v6, 0x40b0000000000000L    # 4096.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1ca

    .line 84
    iget-object v0, v9, Lbp;->g:Lsn;

    iget-wide v4, v0, Lsn;->aM:D

    iget-wide v6, v9, Lbp;->aM:D

    sub-double/2addr v4, v6

    .line 85
    iget-object v0, v9, Lbp;->g:Lsn;

    iget-object v0, v0, Lsn;->aW:Leq;

    iget-wide v6, v0, Leq;->b:D

    iget-object v0, v9, Lbp;->g:Lsn;

    iget v0, v0, Lsn;->bh:F

    div-float v0, v0, v16

    float-to-double v12, v0

    add-double/2addr v6, v12

    iget-wide v12, v9, Lbp;->aN:D

    iget v0, v9, Lbp;->bh:F

    div-float v0, v0, v16

    float-to-double v14, v0

    add-double/2addr v12, v14

    sub-double/2addr v6, v12

    .line 86
    iget-object v0, v9, Lbp;->g:Lsn;

    iget-wide v12, v0, Lsn;->aO:D

    iget-wide v14, v9, Lbp;->aO:D

    sub-double/2addr v12, v14

    .line 87
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    double-to-float v0, v14

    neg-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    iput v0, v9, Lbp;->aS:F

    iput v0, v9, Lbp;->H:F

    .line 89
    iget-object v0, v9, Lbp;->g:Lsn;

    invoke-virtual {v9, v0}, Lbp;->e(Lsn;)Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 90
    iget v0, v9, Lbp;->f:I

    const v2, 0x3e4ccccd    # 0.2f

    if-ne v0, v10, :cond_165

    .line 91
    iget-object v0, v9, Lbp;->aI:Lfd;

    invoke-virtual/range {p0 .. p0}, Lbp;->k()F

    move-result v3

    iget-object v8, v9, Lbp;->bs:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    iget-object v14, v9, Lbp;->bs:Ljava/util/Random;

    invoke-virtual {v14}, Ljava/util/Random;->nextFloat()F

    move-result v14

    sub-float/2addr v8, v14

    mul-float/2addr v8, v2

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v8, v14

    const-string v15, "mob.ghast.charge"

    invoke-virtual {v0, v9, v15, v3, v8}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    goto :goto_167

    :cond_165
    const/high16 v14, 0x3f800000    # 1.0f

    .line 93
    :goto_167
    iget v0, v9, Lbp;->f:I

    add-int/2addr v0, v11

    iput v0, v9, Lbp;->f:I

    if-ne v0, v1, :cond_1e1

    .line 95
    iget-object v0, v9, Lbp;->aI:Lfd;

    invoke-virtual/range {p0 .. p0}, Lbp;->k()F

    move-result v1

    iget-object v3, v9, Lbp;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget-object v8, v9, Lbp;->bs:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    sub-float/2addr v3, v8

    mul-float/2addr v3, v2

    add-float/2addr v3, v14

    const-string v2, "mob.ghast.fireball"

    invoke-virtual {v0, v9, v2, v1, v3}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 96
    new-instance v15, Lcf;

    iget-object v1, v9, Lbp;->aI:Lfd;

    move-object v0, v15

    move-object/from16 v2, p0

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Lcf;-><init>(Lfd;Lls;DDD)V

    .line 98
    invoke-virtual {v9, v14}, Lbp;->f(F)Lbt;

    move-result-object v0

    .line 99
    iget-wide v1, v9, Lbp;->aM:D

    iget-wide v3, v0, Lbt;->a:D

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, v15, Lcf;->aM:D

    .line 100
    iget-wide v1, v9, Lbp;->aN:D

    iget v3, v9, Lbp;->bh:F

    div-float v3, v3, v16

    float-to-double v3, v3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    iput-wide v1, v15, Lcf;->aN:D

    .line 101
    iget-wide v1, v9, Lbp;->aO:D

    iget-wide v3, v0, Lbt;->c:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, v15, Lcf;->aO:D

    .line 102
    iget-object v0, v9, Lbp;->aI:Lfd;

    invoke-virtual {v0, v15}, Lfd;->b(Lsn;)Z

    const/16 v0, -0x28

    .line 103
    iput v0, v9, Lbp;->f:I

    goto :goto_1e1

    .line 106
    :cond_1c2
    iget v0, v9, Lbp;->f:I

    if-lez v0, :cond_1e1

    sub-int/2addr v0, v11

    iput v0, v9, Lbp;->f:I

    goto :goto_1e1

    .line 109
    :cond_1ca
    iget-wide v0, v9, Lbp;->aP:D

    iget-wide v4, v9, Lbp;->aR:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    iput v0, v9, Lbp;->aS:F

    iput v0, v9, Lbp;->H:F

    .line 110
    iget v0, v9, Lbp;->f:I

    if-lez v0, :cond_1e1

    sub-int/2addr v0, v11

    iput v0, v9, Lbp;->f:I

    .line 113
    :cond_1e1
    :goto_1e1
    iget-object v0, v9, Lbp;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_201

    .line 114
    iget-object v0, v9, Lbp;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    .line 115
    iget v2, v9, Lbp;->f:I

    if-le v2, v10, :cond_1f4

    goto :goto_1f5

    :cond_1f4
    const/4 v11, 0x0

    :goto_1f5
    int-to-byte v2, v11

    if-eq v0, v2, :cond_201

    .line 117
    iget-object v0, v9, Lbp;->bD:Lud;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lud;->b(ILjava/lang/Object;)V

    :cond_201
    return-void
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.ghast.moan"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.ghast.death"

    return-object v0
.end method

.method protected j()I
    .registers 2

    .line 154
    sget-object v0, Lgm;->K:Lgm;

    iget v0, v0, Lgm;->bf:I

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.ghast.scream"

    return-object v0
.end method

.method protected k()F
    .registers 2

    const/high16 v0, 0x41200000    # 10.0f

    return v0
.end method

.method public l()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public w_()V
    .registers 3

    .line 38
    invoke-super {p0}, Lwq;->w_()V

    .line 39
    iget-object v0, p0, Lbp;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const-string v0, "/mob/ghast_fire.png"

    goto :goto_13

    :cond_11
    const-string v0, "/mob/ghast.png"

    .line 40
    :goto_13
    iput-object v0, p0, Lbp;->O:Ljava/lang/String;

    return-void
.end method
