###### Class defpackage.xw (xw)
.class public Lxw;
.super Lsn;
.source "SourceFile"


# static fields
.field public static l:D

.field public static m:D

.field public static n:D


# instance fields
.field protected b:I

.field protected c:F

.field protected d:F

.field protected e:I

.field protected f:I

.field protected g:F

.field protected h:F

.field protected i:F

.field protected j:F

.field protected k:F


# direct methods
.method public constructor <init>(Lfd;DDDDDD)V
    .registers 28

    move-object v7, p0

    .line 22
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 v8, 0x0

    .line 13
    iput v8, v7, Lxw;->e:I

    .line 14
    iput v8, v7, Lxw;->f:I

    const v0, 0x3e4ccccd    # 0.2f

    .line 23
    invoke-virtual {p0, v0, v0}, Lxw;->b(FF)V

    .line 24
    iget v0, v7, Lxw;->bh:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v0, v9

    iput v0, v7, Lxw;->bf:F

    move-object v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    .line 25
    invoke-virtual/range {v0 .. v6}, Lxw;->e(DDD)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, v7, Lxw;->k:F

    iput v0, v7, Lxw;->j:F

    iput v0, v7, Lxw;->i:F

    .line 28
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    double-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-double v10, v0

    add-double v10, p8, v10

    iput-wide v10, v7, Lxw;->aP:D

    .line 29
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    mul-double/2addr v10, v2

    sub-double/2addr v10, v4

    double-to-float v0, v10

    mul-float/2addr v0, v1

    float-to-double v10, v0

    add-double v10, p10, v10

    iput-wide v10, v7, Lxw;->aQ:D

    .line 30
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    mul-double/2addr v10, v2

    sub-double/2addr v10, v4

    double-to-float v0, v10

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double v0, p12, v0

    iput-wide v0, v7, Lxw;->aR:D

    .line 31
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    add-double/2addr v0, v2

    add-double/2addr v0, v4

    double-to-float v0, v0

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v1

    .line 33
    iget-wide v1, v7, Lxw;->aP:D

    iget-wide v3, v7, Lxw;->aP:D

    mul-double/2addr v1, v3

    iget-wide v3, v7, Lxw;->aQ:D

    iget-wide v5, v7, Lxw;->aQ:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-wide v3, v7, Lxw;->aR:D

    iget-wide v5, v7, Lxw;->aR:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->a(D)F

    move-result v1

    .line 34
    iget-wide v2, v7, Lxw;->aP:D

    float-to-double v4, v1

    div-double/2addr v2, v4

    float-to-double v0, v0

    mul-double/2addr v2, v0

    const-wide v10, 0x3fd99999a0000000L    # 0.4000000059604645

    mul-double/2addr v2, v10

    iput-wide v2, v7, Lxw;->aP:D

    .line 35
    iget-wide v2, v7, Lxw;->aQ:D

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    mul-double/2addr v2, v10

    const-wide v12, 0x3fb99999a0000000L    # 0.10000000149011612

    add-double/2addr v2, v12

    iput-wide v2, v7, Lxw;->aQ:D

    .line 36
    iget-wide v2, v7, Lxw;->aR:D

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    mul-double/2addr v2, v10

    iput-wide v2, v7, Lxw;->aR:D

    .line 39
    iget-object v0, v7, Lxw;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, v7, Lxw;->c:F

    .line 40
    iget-object v0, v7, Lxw;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, v7, Lxw;->d:F

    .line 42
    iget-object v0, v7, Lxw;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    add-float/2addr v0, v1

    mul-float/2addr v0, v9

    iput v0, v7, Lxw;->g:F

    .line 44
    iget-object v0, v7, Lxw;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v7, Lxw;->f:I

    .line 45
    iput v8, v7, Lxw;->e:I

    return-void
.end method


# virtual methods
.method public a(Lnu;)V
    .registers 2

    return-void
.end method

.method public a(Lnw;FFFFFF)V
    .registers 39

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 91
    iget v2, v0, Lxw;->b:I

    rem-int/lit8 v3, v2, 0x10

    int-to-float v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    const v5, 0x3d7fbe77

    add-float v6, v3, v5

    .line 93
    div-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v5, v2

    const v4, 0x3dcccccd    # 0.1f

    .line 95
    iget v7, v0, Lxw;->g:F

    mul-float/2addr v7, v4

    .line 97
    iget-wide v8, v0, Lxw;->aJ:D

    iget-wide v10, v0, Lxw;->aM:D

    iget-wide v12, v0, Lxw;->aJ:D

    sub-double/2addr v10, v12

    float-to-double v12, v1

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    sget-wide v10, Lxw;->l:D

    sub-double/2addr v8, v10

    double-to-float v4, v8

    .line 98
    iget-wide v8, v0, Lxw;->aK:D

    iget-wide v10, v0, Lxw;->aN:D

    iget-wide v14, v0, Lxw;->aK:D

    sub-double/2addr v10, v14

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    sget-wide v10, Lxw;->m:D

    sub-double/2addr v8, v10

    double-to-float v8, v8

    .line 99
    iget-wide v9, v0, Lxw;->aL:D

    iget-wide v14, v0, Lxw;->aO:D

    move/from16 v16, v2

    move v11, v3

    iget-wide v2, v0, Lxw;->aL:D

    sub-double/2addr v14, v2

    mul-double/2addr v14, v12

    add-double/2addr v9, v14

    sget-wide v2, Lxw;->n:D

    sub-double/2addr v9, v2

    double-to-float v2, v9

    .line 101
    invoke-virtual {v0, v1}, Lxw;->a(F)F

    move-result v1

    .line 102
    iget v3, v0, Lxw;->i:F

    mul-float/2addr v3, v1

    iget v9, v0, Lxw;->j:F

    mul-float/2addr v9, v1

    iget v10, v0, Lxw;->k:F

    mul-float/2addr v10, v1

    move-object/from16 v1, p1

    invoke-virtual {v1, v3, v9, v10}, Lnw;->a(FFF)V

    mul-float v3, p3, v7

    sub-float v9, v4, v3

    mul-float v10, p6, v7

    sub-float v12, v9, v10

    float-to-double v12, v12

    mul-float v14, p4, v7

    sub-float v15, v8, v14

    float-to-double v0, v15

    mul-float v15, p5, v7

    sub-float v28, v2, v15

    mul-float v7, v7, p7

    move/from16 v29, v11

    sub-float v11, v28, v7

    move/from16 v30, v2

    move/from16 p2, v3

    float-to-double v2, v11

    move/from16 p3, v7

    float-to-double v6, v6

    move v11, v4

    float-to-double v4, v5

    move-object/from16 v17, p1

    move-wide/from16 v18, v12

    move-wide/from16 v20, v0

    move-wide/from16 v22, v2

    move-wide/from16 v24, v6

    move-wide/from16 v26, v4

    .line 104
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    add-float/2addr v9, v10

    float-to-double v2, v9

    add-float/2addr v8, v14

    float-to-double v8, v8

    add-float v12, v28, p3

    float-to-double v12, v12

    move-wide/from16 p4, v4

    move/from16 v14, v16

    float-to-double v4, v14

    move-wide/from16 v18, v2

    move-wide/from16 v20, v8

    move-wide/from16 v22, v12

    move-wide/from16 v26, v4

    .line 105
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    add-float v2, v11, p2

    add-float v3, v2, v10

    float-to-double v6, v3

    add-float v3, v30, v15

    add-float v11, v3, p3

    float-to-double v11, v11

    move/from16 v13, v29

    float-to-double v13, v13

    move-wide/from16 v18, v6

    move-wide/from16 v22, v11

    move-wide/from16 v24, v13

    .line 106
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    sub-float/2addr v2, v10

    float-to-double v4, v2

    sub-float v3, v3, p3

    float-to-double v2, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v0

    move-wide/from16 v22, v2

    move-wide/from16 v26, p4

    .line 107
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    return-void
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method public b(Lnu;)V
    .registers 2

    return-void
.end method

.method public c(F)Lxw;
    .registers 8

    .line 49
    iget-wide v0, p0, Lxw;->aP:D

    float-to-double v2, p1

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxw;->aP:D

    .line 50
    iget-wide v0, p0, Lxw;->aQ:D

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    sub-double/2addr v0, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    iput-wide v0, p0, Lxw;->aQ:D

    .line 51
    iget-wide v0, p0, Lxw;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxw;->aR:D

    return-object p0
.end method

.method public c_()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(F)Lxw;
    .registers 3

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, p1

    .line 56
    invoke-virtual {p0, v0, v0}, Lxw;->b(FF)V

    .line 57
    iget v0, p0, Lxw;->g:F

    mul-float/2addr v0, p1

    iput v0, p0, Lxw;->g:F

    return-object p0
.end method

.method protected n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public w_()V
    .registers 10

    .line 72
    iget-wide v0, p0, Lxw;->aM:D

    iput-wide v0, p0, Lxw;->aJ:D

    .line 73
    iget-wide v0, p0, Lxw;->aN:D

    iput-wide v0, p0, Lxw;->aK:D

    .line 74
    iget-wide v0, p0, Lxw;->aO:D

    iput-wide v0, p0, Lxw;->aL:D

    .line 76
    iget v0, p0, Lxw;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lxw;->e:I

    iget v1, p0, Lxw;->f:I

    if-lt v0, v1, :cond_19

    invoke-virtual {p0}, Lxw;->K()V

    .line 78
    :cond_19
    iget-wide v0, p0, Lxw;->aQ:D

    iget v2, p0, Lxw;->h:F

    float-to-double v2, v2

    const-wide v4, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lxw;->aQ:D

    .line 79
    iget-wide v3, p0, Lxw;->aP:D

    iget-wide v5, p0, Lxw;->aQ:D

    iget-wide v7, p0, Lxw;->aR:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lxw;->b(DDD)V

    .line 80
    iget-wide v0, p0, Lxw;->aP:D

    const-wide v2, 0x3fef5c2900000000L    # 0.9800000190734863

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxw;->aP:D

    .line 81
    iget-wide v0, p0, Lxw;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxw;->aQ:D

    .line 82
    iget-wide v0, p0, Lxw;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxw;->aR:D

    .line 84
    iget-boolean v0, p0, Lxw;->aX:Z

    if-eqz v0, :cond_58

    .line 85
    iget-wide v0, p0, Lxw;->aP:D

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxw;->aP:D

    .line 86
    iget-wide v0, p0, Lxw;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxw;->aR:D

    :cond_58
    return-void
.end method
