###### Class defpackage.cy (cy)
.class public Lcy;
.super Low;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:D

.field public c:D

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Low;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcy;->c:D

    const-string v0, "Pig"

    .line 16
    iput-object v0, p0, Lcy;->i:Ljava/lang/String;

    const/16 v0, 0x14

    .line 17
    iput v0, p0, Lcy;->a:I

    return-void
.end method

.method private d()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcy;->d:Lfd;

    iget-object v0, v0, Lfd;->r:Ljava/util/Random;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    iput v0, p0, Lcy;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcy;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcy;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Lnu;)V
    .registers 3

    .line 107
    invoke-super {p0, p1}, Low;->a(Lnu;)V

    const-string v0, "EntityId"

    .line 108
    invoke-virtual {p1, v0}, Lnu;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcy;->i:Ljava/lang/String;

    const-string v0, "Delay"

    .line 109
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result p1

    iput p1, p0, Lcy;->a:I

    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 113
    invoke-super {p0, p1}, Low;->b(Lnu;)V

    const-string v0, "EntityId"

    .line 114
    iget-object v1, p0, Lcy;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget v0, p0, Lcy;->a:I

    int-to-short v0, v0

    const-string v1, "Delay"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    return-void
.end method

.method public b()Z
    .registers 12

    .line 29
    iget-object v0, p0, Lcy;->d:Lfd;

    iget v1, p0, Lcy;->e:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    iget v5, p0, Lcy;->f:I

    int-to-double v5, v5

    add-double/2addr v5, v3

    iget v7, p0, Lcy;->g:I

    int-to-double v7, v7

    add-double/2addr v7, v3

    const-wide/high16 v9, 0x4030000000000000L    # 16.0

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, v9

    invoke-virtual/range {v0 .. v8}, Lfd;->a(DDDD)Lgs;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public n_()V
    .registers 36

    move-object/from16 v0, p0

    .line 34
    iget-wide v1, v0, Lcy;->b:D

    iput-wide v1, v0, Lcy;->c:D

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcy;->b()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 40
    :cond_d
    iget v1, v0, Lcy;->e:I

    int-to-float v1, v1

    iget-object v2, v0, Lcy;->d:Lfd;

    iget-object v2, v2, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v14, v1

    .line 41
    iget v1, v0, Lcy;->f:I

    int-to-float v1, v1

    iget-object v2, v0, Lcy;->d:Lfd;

    iget-object v2, v2, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v12, v1

    .line 42
    iget v1, v0, Lcy;->g:I

    int-to-float v1, v1

    iget-object v2, v0, Lcy;->d:Lfd;

    iget-object v2, v2, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v10, v1

    .line 43
    iget-object v2, v0, Lcy;->d:Lfd;

    const-string v3, "smoke"

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-wide v4, v14

    move-wide v6, v12

    move-wide v8, v10

    move-wide/from16 v22, v10

    move-wide/from16 v10, v16

    move-wide/from16 v16, v12

    move-wide/from16 v12, v18

    move-wide/from16 v18, v14

    move-wide/from16 v14, v20

    invoke-virtual/range {v2 .. v15}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    .line 44
    iget-object v2, v0, Lcy;->d:Lfd;

    const-string v3, "flame"

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-wide/from16 v4, v18

    move-wide/from16 v6, v16

    move-wide/from16 v8, v22

    invoke-virtual/range {v2 .. v15}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    .line 47
    iget-wide v1, v0, Lcy;->b:D

    iget v3, v0, Lcy;->a:I

    int-to-float v3, v3

    const/high16 v4, 0x43480000    # 200.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v4, v3

    float-to-double v3, v4

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcy;->b:D

    .line 48
    :goto_72
    iget-wide v1, v0, Lcy;->b:D

    const-wide v3, 0x4076800000000000L    # 360.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_86

    sub-double/2addr v1, v3

    .line 49
    iput-wide v1, v0, Lcy;->b:D

    .line 50
    iget-wide v1, v0, Lcy;->c:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Lcy;->c:D

    goto :goto_72

    .line 53
    :cond_86
    iget-object v1, v0, Lcy;->d:Lfd;

    iget-boolean v1, v1, Lfd;->B:Z

    if-nez v1, :cond_1bb

    .line 54
    iget v1, v0, Lcy;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_94

    invoke-direct/range {p0 .. p0}, Lcy;->d()V

    .line 56
    :cond_94
    iget v1, v0, Lcy;->a:I

    if-lez v1, :cond_9d

    add-int/lit8 v1, v1, -0x1

    .line 57
    iput v1, v0, Lcy;->a:I

    return-void

    :cond_9d
    const/4 v2, 0x0

    :goto_9e
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1bb

    .line 63
    iget-object v3, v0, Lcy;->i:Ljava/lang/String;

    iget-object v4, v0, Lcy;->d:Lfd;

    invoke-static {v3, v4}, Ljc;->a(Ljava/lang/String;Lfd;)Lsn;

    move-result-object v3

    check-cast v3, Lls;

    move-object v4, v3

    check-cast v4, Lls;

    if-nez v3, :cond_b1

    return-void

    .line 66
    :cond_b1
    iget-object v4, v0, Lcy;->d:Lfd;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget v6, v0, Lcy;->e:I

    int-to-double v7, v6

    iget v6, v0, Lcy;->f:I

    int-to-double v9, v6

    iget v6, v0, Lcy;->g:I

    int-to-double v11, v6

    iget v6, v0, Lcy;->e:I

    add-int/lit8 v6, v6, 0x1

    int-to-double v13, v6

    iget v6, v0, Lcy;->f:I

    add-int/lit8 v6, v6, 0x1

    move/from16 v20, v2

    int-to-double v1, v6

    iget v6, v0, Lcy;->g:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    int-to-double v3, v6

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-static/range {v7 .. v18}, Leq;->b(DDDDDD)Leq;

    move-result-object v23

    const-wide/high16 v24, 0x4020000000000000L    # 8.0

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    const-wide/high16 v28, 0x4020000000000000L    # 8.0

    invoke-virtual/range {v23 .. v29}, Leq;->b(DDD)Leq;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-virtual {v2, v5, v1}, Lfd;->a(Ljava/lang/Class;Leq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_f7

    .line 68
    invoke-direct/range {p0 .. p0}, Lcy;->d()V

    return-void

    :cond_f7
    if-eqz v21, :cond_1b7

    .line 73
    iget v1, v0, Lcy;->e:I

    int-to-double v1, v1

    iget-object v3, v0, Lcy;->d:Lfd;

    iget-object v3, v3, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    iget-object v5, v0, Lcy;->d:Lfd;

    iget-object v5, v5, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 74
    iget v3, v0, Lcy;->f:I

    iget-object v4, v0, Lcy;->d:Lfd;

    iget-object v4, v4, Lfd;->r:Ljava/util/Random;

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-double v7, v3

    .line 75
    iget v3, v0, Lcy;->g:I

    int-to-double v3, v3

    iget-object v9, v0, Lcy;->d:Lfd;

    iget-object v9, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextDouble()D

    move-result-wide v9

    iget-object v11, v0, Lcy;->d:Lfd;

    iget-object v11, v11, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextDouble()D

    move-result-wide v11

    sub-double/2addr v9, v11

    mul-double/2addr v9, v5

    add-double/2addr v9, v3

    .line 77
    iget-object v3, v0, Lcy;->d:Lfd;

    iget-object v3, v3, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v11, v3, v4

    const/4 v12, 0x0

    move-object/from16 v4, v21

    move-wide v5, v1

    invoke-virtual/range {v4 .. v12}, Lls;->c(DDDFF)V

    .line 79
    invoke-virtual/range {v21 .. v21}, Lls;->d()Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 80
    iget-object v1, v0, Lcy;->d:Lfd;

    move-object/from16 v3, v21

    invoke-virtual {v1, v3}, Lfd;->b(Lsn;)Z

    const/4 v1, 0x0

    :goto_157
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1b1

    .line 84
    iget v2, v0, Lcy;->e:I

    int-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    iget-object v2, v0, Lcy;->d:Lfd;

    iget-object v2, v2, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    float-to-double v8, v2

    sub-double/2addr v8, v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 85
    iget v2, v0, Lcy;->f:I

    int-to-double v8, v2

    add-double/2addr v8, v6

    iget-object v2, v0, Lcy;->d:Lfd;

    iget-object v2, v2, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    float-to-double v12, v2

    sub-double/2addr v12, v6

    mul-double/2addr v12, v10

    add-double/2addr v8, v12

    .line 86
    iget v2, v0, Lcy;->g:I

    int-to-double v12, v2

    add-double/2addr v12, v6

    iget-object v2, v0, Lcy;->d:Lfd;

    iget-object v2, v2, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    float-to-double v14, v2

    sub-double/2addr v14, v6

    mul-double/2addr v14, v10

    add-double v6, v12, v14

    .line 88
    iget-object v2, v0, Lcy;->d:Lfd;

    const-string v22, "smoke"

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    move-object/from16 v21, v2

    move-wide/from16 v23, v4

    move-wide/from16 v25, v8

    move-wide/from16 v27, v6

    invoke-virtual/range {v21 .. v34}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    .line 89
    iget-object v2, v0, Lcy;->d:Lfd;

    const-string v22, "flame"

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v34}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_157

    .line 92
    :cond_1b1
    invoke-virtual {v3}, Lls;->V()V

    .line 93
    invoke-direct/range {p0 .. p0}, Lcy;->d()V

    :cond_1b7
    add-int/lit8 v2, v20, 0x1

    goto/16 :goto_9e

    .line 99
    :cond_1bb
    invoke-super/range {p0 .. p0}, Low;->n_()V

    return-void
.end method
