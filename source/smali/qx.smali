###### Class defpackage.qx (qx)
.class public Lqx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:D

.field public c:D

.field public d:D

.field public e:Lsn;

.field public f:F

.field public g:Ljava/util/Set;

.field private h:Ljava/util/Random;

.field private i:Lfd;


# direct methods
.method public constructor <init>(Lfd;Lsn;DDDF)V
    .registers 11

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lqx;->a:Z

    .line 12
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lqx;->h:Ljava/util/Random;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lqx;->g:Ljava/util/Set;

    .line 20
    iput-object p1, p0, Lqx;->i:Lfd;

    .line 21
    iput-object p2, p0, Lqx;->e:Lsn;

    .line 22
    iput p9, p0, Lqx;->f:F

    .line 23
    iput-wide p3, p0, Lqx;->b:D

    .line 24
    iput-wide p5, p0, Lqx;->c:D

    .line 25
    iput-wide p7, p0, Lqx;->d:D

    return-void
.end method


# virtual methods
.method public a()V
    .registers 39

    move-object/from16 v0, p0

    .line 30
    iget v1, v0, Lqx;->f:F

    const/4 v3, 0x0

    :goto_5
    const/high16 v4, 0x40000000    # 2.0f

    const/16 v5, 0x10

    if-ge v3, v5, :cond_f0

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_e8

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v5, :cond_da

    if-eqz v3, :cond_25

    const/16 v8, 0xf

    if-eq v3, v8, :cond_25

    if-eqz v6, :cond_25

    if-eq v6, v8, :cond_25

    if-eqz v7, :cond_25

    if-eq v7, v8, :cond_25

    move/from16 v23, v1

    move/from16 v18, v3

    goto/16 :goto_c8

    :cond_25
    int-to-float v8, v3

    int-to-float v9, v5

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v8, v4

    sub-float/2addr v8, v10

    float-to-double v11, v8

    int-to-float v8, v6

    div-float/2addr v8, v9

    mul-float/2addr v8, v4

    sub-float/2addr v8, v10

    float-to-double v13, v8

    int-to-float v8, v7

    div-float/2addr v8, v9

    mul-float/2addr v8, v4

    sub-float/2addr v8, v10

    float-to-double v8, v8

    mul-double v15, v11, v11

    mul-double v17, v13, v13

    add-double v15, v15, v17

    mul-double v17, v8, v8

    add-double v15, v15, v17

    .line 41
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    div-double/2addr v11, v15

    div-double/2addr v13, v15

    div-double/2addr v8, v15

    .line 47
    iget v10, v0, Lqx;->f:F

    iget-object v15, v0, Lqx;->i:Lfd;

    iget-object v15, v15, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v15}, Ljava/util/Random;->nextFloat()F

    move-result v15

    const v16, 0x3f19999a    # 0.6f

    mul-float v15, v15, v16

    const v16, 0x3f333333    # 0.7f

    add-float v15, v15, v16

    mul-float/2addr v10, v15

    .line 48
    iget-wide v4, v0, Lqx;->b:D

    move/from16 v18, v3

    .line 49
    iget-wide v2, v0, Lqx;->c:D

    move-wide/from16 v19, v2

    .line 50
    iget-wide v2, v0, Lqx;->d:D

    move-wide/from16 v36, v2

    move-wide/from16 v2, v19

    move-wide/from16 v19, v4

    move-wide/from16 v4, v36

    :goto_70
    const/16 v21, 0x0

    cmpl-float v22, v10, v21

    if-lez v22, :cond_c6

    .line 54
    invoke-static/range {v19 .. v20}, Lin;->b(D)I

    move-result v15

    move/from16 v23, v1

    .line 55
    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v1

    move/from16 v24, v6

    .line 56
    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v6

    move/from16 v25, v7

    .line 57
    iget-object v7, v0, Lqx;->i:Lfd;

    invoke-virtual {v7, v15, v1, v6}, Lfd;->a(III)I

    move-result v7

    move-wide/from16 v26, v4

    const v4, 0x3e99999a    # 0.3f

    if-lez v7, :cond_a2

    .line 59
    sget-object v5, Luu;->m:[Luu;

    aget-object v5, v5, v7

    iget-object v7, v0, Lqx;->e:Lsn;

    invoke-virtual {v5, v7}, Luu;->a(Lsn;)F

    move-result v5

    add-float/2addr v5, v4

    mul-float/2addr v5, v4

    sub-float/2addr v10, v5

    :cond_a2
    cmpl-float v5, v10, v21

    if-lez v5, :cond_b0

    .line 62
    iget-object v5, v0, Lqx;->g:Ljava/util/Set;

    new-instance v7, Lwf;

    invoke-direct {v7, v15, v1, v6}, Lwf;-><init>(III)V

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b0
    float-to-double v4, v4

    mul-double v6, v11, v4

    add-double v19, v19, v6

    mul-double v6, v13, v4

    add-double/2addr v2, v6

    mul-double/2addr v4, v8

    add-double v4, v26, v4

    const v1, 0x3e666667    # 0.22500001f

    sub-float/2addr v10, v1

    move/from16 v1, v23

    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_70

    :cond_c6
    move/from16 v23, v1

    :goto_c8
    move/from16 v24, v6

    move/from16 v25, v7

    add-int/lit8 v7, v25, 0x1

    move/from16 v3, v18

    move/from16 v1, v23

    move/from16 v6, v24

    const/high16 v4, 0x40000000    # 2.0f

    const/16 v5, 0x10

    goto/16 :goto_f

    :cond_da
    move/from16 v23, v1

    move/from16 v18, v3

    move/from16 v24, v6

    add-int/lit8 v6, v24, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/16 v5, 0x10

    goto/16 :goto_c

    :cond_e8
    move/from16 v23, v1

    move/from16 v18, v3

    add-int/lit8 v3, v18, 0x1

    goto/16 :goto_5

    :cond_f0
    move/from16 v23, v1

    .line 75
    iget v1, v0, Lqx;->f:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lqx;->f:F

    .line 76
    iget-wide v2, v0, Lqx;->b:D

    float-to-double v4, v1

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v1

    .line 77
    iget-wide v2, v0, Lqx;->b:D

    iget v6, v0, Lqx;->f:F

    float-to-double v6, v6

    add-double/2addr v2, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    .line 78
    iget-wide v6, v0, Lqx;->c:D

    iget v3, v0, Lqx;->f:F

    float-to-double v8, v3

    sub-double/2addr v6, v8

    sub-double/2addr v6, v4

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v3

    .line 79
    iget-wide v6, v0, Lqx;->c:D

    iget v8, v0, Lqx;->f:F

    float-to-double v8, v8

    add-double/2addr v6, v8

    add-double/2addr v6, v4

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v6

    .line 80
    iget-wide v7, v0, Lqx;->d:D

    iget v9, v0, Lqx;->f:F

    float-to-double v9, v9

    sub-double/2addr v7, v9

    sub-double/2addr v7, v4

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v7

    .line 81
    iget-wide v8, v0, Lqx;->d:D

    iget v10, v0, Lqx;->f:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Lin;->b(D)I

    move-result v8

    .line 82
    iget-object v9, v0, Lqx;->i:Lfd;

    iget-object v10, v0, Lqx;->e:Lsn;

    int-to-double v11, v1

    int-to-double v13, v3

    int-to-double v4, v7

    int-to-double v1, v2

    int-to-double v6, v6

    move-object v3, v9

    int-to-double v8, v8

    move-wide/from16 v24, v11

    move-wide/from16 v26, v13

    move-wide/from16 v28, v4

    move-wide/from16 v30, v1

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    invoke-static/range {v24 .. v35}, Leq;->b(DDDDDD)Leq;

    move-result-object v1

    invoke-virtual {v3, v10, v1}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v1

    .line 83
    iget-wide v2, v0, Lqx;->b:D

    iget-wide v4, v0, Lqx;->c:D

    iget-wide v6, v0, Lqx;->d:D

    invoke-static/range {v2 .. v7}, Lbt;->b(DDD)Lbt;

    move-result-object v2

    const/4 v3, 0x0

    .line 84
    :goto_165
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1f5

    .line 85
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsn;

    .line 86
    iget-wide v6, v0, Lqx;->b:D

    iget-wide v8, v0, Lqx;->c:D

    iget-wide v10, v0, Lqx;->d:D

    move-object v5, v4

    invoke-virtual/range {v5 .. v11}, Lsn;->h(DDD)D

    move-result-wide v5

    iget v7, v0, Lqx;->f:F

    float-to-double v7, v7

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v5, v7

    if-gtz v9, :cond_1e7

    .line 88
    iget-wide v7, v4, Lsn;->aM:D

    iget-wide v9, v0, Lqx;->b:D

    sub-double/2addr v7, v9

    .line 89
    iget-wide v9, v4, Lsn;->aN:D

    iget-wide v11, v0, Lqx;->c:D

    sub-double/2addr v9, v11

    .line 90
    iget-wide v11, v4, Lsn;->aO:D

    iget-wide v13, v0, Lqx;->d:D

    sub-double/2addr v11, v13

    mul-double v13, v7, v7

    mul-double v17, v9, v9

    add-double v13, v13, v17

    mul-double v17, v11, v11

    add-double v13, v13, v17

    .line 92
    invoke-static {v13, v14}, Lin;->a(D)F

    move-result v13

    float-to-double v13, v13

    div-double/2addr v7, v13

    div-double/2addr v9, v13

    div-double/2addr v11, v13

    .line 98
    iget-object v13, v0, Lqx;->i:Lfd;

    iget-object v14, v4, Lsn;->aW:Leq;

    invoke-virtual {v13, v2, v14}, Lfd;->a(Lbt;Leq;)F

    move-result v13

    float-to-double v13, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    sub-double v5, v15, v5

    mul-double/2addr v5, v13

    .line 100
    iget-object v13, v0, Lqx;->e:Lsn;

    mul-double v17, v5, v5

    add-double v17, v17, v5

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v17, v17, v19

    const-wide/high16 v19, 0x4020000000000000L    # 8.0

    mul-double v17, v17, v19

    iget v14, v0, Lqx;->f:F

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    float-to-double v1, v14

    mul-double v17, v17, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double v14, v17, v1

    double-to-int v14, v14

    invoke-virtual {v4, v13, v14}, Lsn;->a(Lsn;I)Z

    .line 103
    iget-wide v13, v4, Lsn;->aP:D

    mul-double/2addr v7, v5

    add-double/2addr v13, v7

    iput-wide v13, v4, Lsn;->aP:D

    .line 104
    iget-wide v7, v4, Lsn;->aQ:D

    mul-double/2addr v9, v5

    add-double/2addr v7, v9

    iput-wide v7, v4, Lsn;->aQ:D

    .line 105
    iget-wide v7, v4, Lsn;->aR:D

    mul-double/2addr v11, v5

    add-double/2addr v7, v11

    iput-wide v7, v4, Lsn;->aR:D

    goto :goto_1ed

    :cond_1e7
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_1ed
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    goto/16 :goto_165

    :cond_1f5
    move/from16 v3, v23

    .line 108
    iput v3, v0, Lqx;->f:F

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v2, v0, Lqx;->g:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    iget-boolean v2, v0, Lqx;->a:Z

    if-eqz v2, :cond_246

    .line 114
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_20d
    if-ltz v2, :cond_246

    .line 115
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwf;

    .line 116
    iget v4, v3, Lwf;->a:I

    .line 117
    iget v5, v3, Lwf;->b:I

    .line 118
    iget v3, v3, Lwf;->c:I

    .line 119
    iget-object v6, v0, Lqx;->i:Lfd;

    invoke-virtual {v6, v4, v5, v3}, Lfd;->a(III)I

    move-result v6

    .line 120
    iget-object v7, v0, Lqx;->i:Lfd;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v4, v8, v3}, Lfd;->a(III)I

    move-result v7

    if-nez v6, :cond_243

    .line 121
    sget-object v6, Luu;->o:[Z

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_243

    iget-object v6, v0, Lqx;->h:Ljava/util/Random;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-nez v6, :cond_243

    .line 122
    iget-object v6, v0, Lqx;->i:Lfd;

    sget-object v7, Luu;->as:Lyq;

    iget v7, v7, Lyq;->bn:I

    invoke-virtual {v6, v4, v5, v3, v7}, Lfd;->f(IIII)Z

    :cond_243
    add-int/lit8 v2, v2, -0x1

    goto :goto_20d

    :cond_246
    return-void
.end method

.method public a(Z)V
    .registers 50

    move-object/from16 v0, p0

    .line 129
    iget-object v1, v0, Lqx;->i:Lfd;

    iget-wide v2, v0, Lqx;->b:D

    iget-wide v4, v0, Lqx;->c:D

    iget-wide v6, v0, Lqx;->d:D

    const-string v8, "random.explode"

    const/high16 v9, 0x40800000    # 4.0f

    iget-object v10, v1, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v10

    iget-object v11, v0, Lqx;->i:Lfd;

    iget-object v11, v11, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v11

    sub-float/2addr v10, v11

    const v11, 0x3e4ccccd    # 0.2f

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    const v11, 0x3f333333    # 0.7f

    mul-float/2addr v10, v11

    invoke-virtual/range {v1 .. v10}, Lfd;->a(DDDLjava/lang/String;FF)V

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v2, v0, Lqx;->g:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3b
    if-ltz v2, :cond_136

    .line 134
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwf;

    .line 135
    iget v11, v3, Lwf;->a:I

    .line 136
    iget v12, v3, Lwf;->b:I

    .line 137
    iget v3, v3, Lwf;->c:I

    .line 140
    iget-object v4, v0, Lqx;->i:Lfd;

    invoke-virtual {v4, v11, v12, v3}, Lfd;->a(III)I

    move-result v13

    if-eqz p1, :cond_fa

    int-to-float v4, v11

    .line 143
    iget-object v5, v0, Lqx;->i:Lfd;

    iget-object v5, v5, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    int-to-float v6, v12

    .line 144
    iget-object v7, v0, Lqx;->i:Lfd;

    iget-object v7, v7, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    int-to-float v8, v3

    .line 145
    iget-object v9, v0, Lqx;->i:Lfd;

    iget-object v9, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    add-float/2addr v8, v9

    float-to-double v8, v8

    .line 147
    iget-wide v14, v0, Lqx;->b:D

    sub-double v14, v4, v14

    move-object/from16 v28, v1

    move/from16 v29, v2

    .line 148
    iget-wide v1, v0, Lqx;->c:D

    sub-double v1, v6, v1

    move/from16 v30, v11

    .line 149
    iget-wide v10, v0, Lqx;->d:D

    sub-double v10, v8, v10

    mul-double v16, v14, v14

    mul-double v18, v1, v1

    add-double v16, v16, v18

    mul-double v18, v10, v10

    add-double v16, v16, v18

    move/from16 v31, v3

    .line 151
    invoke-static/range {v16 .. v17}, Lin;->a(D)F

    move-result v3

    move/from16 v32, v12

    move/from16 v33, v13

    float-to-double v12, v3

    div-double/2addr v14, v12

    div-double/2addr v1, v12

    div-double/2addr v10, v12

    .line 157
    iget v3, v0, Lqx;->f:F

    move-wide/from16 v20, v8

    float-to-double v8, v3

    div-double/2addr v12, v8

    const-wide v8, 0x3fb999999999999aL    # 0.1

    add-double/2addr v12, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    div-double/2addr v8, v12

    .line 158
    iget-object v3, v0, Lqx;->i:Lfd;

    iget-object v3, v3, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget-object v12, v0, Lqx;->i:Lfd;

    iget-object v12, v12, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v12}, Ljava/util/Random;->nextFloat()F

    move-result v12

    mul-float/2addr v3, v12

    const v12, 0x3e99999a    # 0.3f

    add-float/2addr v3, v12

    float-to-double v12, v3

    mul-double/2addr v8, v12

    mul-double v22, v14, v8

    mul-double v24, v1, v8

    mul-double v26, v10, v8

    .line 163
    iget-object v1, v0, Lqx;->i:Lfd;

    const-string v35, "explode"

    iget-wide v2, v0, Lqx;->b:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v8

    add-double/2addr v2, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v36, v2, v10

    iget-wide v2, v0, Lqx;->c:D

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    div-double v38, v2, v10

    iget-wide v2, v0, Lqx;->d:D

    mul-double/2addr v2, v8

    add-double v8, v20, v2

    div-double v40, v8, v10

    move-object/from16 v34, v1

    move-wide/from16 v42, v22

    move-wide/from16 v44, v24

    move-wide/from16 v46, v26

    invoke-virtual/range {v34 .. v47}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    .line 164
    iget-object v14, v0, Lqx;->i:Lfd;

    const-string v15, "smoke"

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    invoke-virtual/range {v14 .. v27}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    goto :goto_106

    :cond_fa
    move-object/from16 v28, v1

    move/from16 v29, v2

    move/from16 v31, v3

    move/from16 v30, v11

    move/from16 v32, v12

    move/from16 v33, v13

    :goto_106
    if-lez v33, :cond_130

    .line 168
    sget-object v1, Luu;->m:[Luu;

    aget-object v4, v1, v33

    iget-object v5, v0, Lqx;->i:Lfd;

    move/from16 v1, v30

    move/from16 v3, v31

    move/from16 v2, v32

    invoke-virtual {v5, v1, v2, v3}, Lfd;->e(III)I

    move-result v9

    const v10, 0x3e99999a    # 0.3f

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v10}, Luu;->a(Lfd;IIIIF)V

    .line 169
    iget-object v4, v0, Lqx;->i:Lfd;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v3, v5}, Lfd;->f(IIII)Z

    .line 170
    sget-object v4, Luu;->m:[Luu;

    aget-object v4, v4, v33

    iget-object v5, v0, Lqx;->i:Lfd;

    invoke-virtual {v4, v5, v1, v2, v3}, Luu;->d(Lfd;III)V

    :cond_130
    add-int/lit8 v2, v29, -0x1

    move-object/from16 v1, v28

    goto/16 :goto_3b

    :cond_136
    return-void
.end method
