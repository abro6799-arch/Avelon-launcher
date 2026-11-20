###### Class defpackage.db (db)
.class public Ldb;
.super Lvm;
.source "SourceFile"


# static fields
.field private static b:Ljava/util/List;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ldb;->b:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(IIZ)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2}, Lvm;-><init>(II)V

    .line 49
    iput-boolean p3, p0, Ldb;->a:Z

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Ldb;->b(Z)Luu;

    return-void
.end method

.method private a(Lfd;IIIZ)Z
    .registers 13

    if-eqz p5, :cond_14

    .line 33
    sget-object p5, Ldb;->b:Ljava/util/List;

    new-instance v6, Lxu;

    invoke-virtual {p1}, Lfd;->t()J

    move-result-wide v4

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lxu;-><init>(IIIJ)V

    invoke-interface {p5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    const/4 p1, 0x0

    move p5, p1

    move v0, p5

    .line 35
    :goto_17
    sget-object v1, Ldb;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p5, v1, :cond_3e

    .line 36
    sget-object v1, Ldb;->b:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxu;

    .line 37
    iget v2, v1, Lxu;->a:I

    if-ne v2, p2, :cond_3b

    iget v2, v1, Lxu;->b:I

    if-ne v2, p3, :cond_3b

    iget v1, v1, Lxu;->c:I

    if-ne v1, p4, :cond_3b

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3b

    const/4 p1, 0x1

    return p1

    :cond_3b
    add-int/lit8 p5, p5, 0x1

    goto :goto_17

    :cond_3e
    return p1
.end method

.method private h(Lfd;III)Z
    .registers 13

    .line 95
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_12

    add-int/lit8 v4, p3, -0x1

    .line 97
    invoke-virtual {p1, p2, v4, p4, v1}, Lfd;->k(IIII)Z

    move-result v4

    if-eqz v4, :cond_12

    return v2

    :cond_12
    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_1f

    add-int/lit8 v6, p4, -0x1

    .line 98
    invoke-virtual {p1, p2, p3, v6, v4}, Lfd;->k(IIII)Z

    move-result v6

    if-eqz v6, :cond_1f

    return v2

    :cond_1f
    const/4 v6, 0x4

    if-ne v0, v6, :cond_2b

    add-int/lit8 v7, p4, 0x1

    .line 99
    invoke-virtual {p1, p2, p3, v7, v5}, Lfd;->k(IIII)Z

    move-result v5

    if-eqz v5, :cond_2b

    return v2

    :cond_2b
    if-ne v0, v2, :cond_36

    add-int/lit8 v5, p2, -0x1

    .line 100
    invoke-virtual {p1, v5, p3, p4, v6}, Lfd;->k(IIII)Z

    move-result v5

    if-eqz v5, :cond_36

    return v2

    :cond_36
    if-ne v0, v4, :cond_40

    add-int/2addr p2, v2

    .line 101
    invoke-virtual {p1, p2, p3, p4, v3}, Lfd;->k(IIII)Z

    move-result p1

    if-eqz p1, :cond_40

    return v2

    :cond_40
    return v1
.end method


# virtual methods
.method public a(II)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 26
    sget-object v0, Luu;->aw:Luu;

    invoke-virtual {v0, p1, p2}, Luu;->a(II)I

    move-result p1

    return p1

    .line 27
    :cond_a
    invoke-super {p0, p1, p2}, Lvm;->a(II)I

    move-result p1

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    .line 156
    sget-object p1, Luu;->aR:Luu;

    iget p1, p1, Luu;->bn:I

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 30

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 106
    invoke-direct/range {p0 .. p4}, Ldb;->h(Lfd;III)Z

    move-result v0

    .line 108
    :goto_c
    sget-object v1, Ldb;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x0

    if-lez v1, :cond_30

    invoke-virtual/range {p1 .. p1}, Lfd;->t()J

    move-result-wide v1

    sget-object v3, Ldb;->b:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxu;

    iget-wide v3, v3, Lxu;->d:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-lez v1, :cond_30

    .line 109
    sget-object v1, Ldb;->b:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_c

    :cond_30
    move-object/from16 v11, p0

    .line 112
    iget-boolean v1, v11, Ldb;->a:Z

    if-eqz v1, :cond_d9

    if-eqz v0, :cond_ff

    .line 114
    sget-object v0, Luu;->aQ:Luu;

    iget v4, v0, Luu;->bn:I

    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v5

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lfd;->b(IIIII)Z

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 116
    invoke-direct/range {v0 .. v5}, Ldb;->a(Lfd;IIIZ)Z

    move-result v0

    if-eqz v0, :cond_ff

    int-to-float v0, v15

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-double v2, v0

    int-to-float v0, v12

    add-float/2addr v0, v1

    float-to-double v4, v0

    int-to-float v0, v13

    add-float/2addr v0, v1

    float-to-double v6, v0

    const-string v8, "random.fizz"

    const/high16 v9, 0x3f000000    # 0.5f

    .line 117
    iget-object v0, v14, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, v14, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const v1, 0x40266666    # 2.6f

    add-float v16, v0, v1

    move-object/from16 v0, p1

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-object v7, v8

    move v8, v9

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Lfd;->a(DDDLjava/lang/String;FF)V

    :goto_8d
    const/4 v0, 0x5

    if-ge v10, v0, :cond_ff

    int-to-double v0, v15

    .line 119
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    add-double v6, v0, v2

    int-to-double v0, v12

    .line 120
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    mul-double/2addr v8, v4

    add-double/2addr v0, v8

    add-double v8, v0, v2

    int-to-double v0, v13

    .line 121
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v16

    mul-double v16, v16, v4

    add-double v0, v0, v16

    add-double v16, v0, v2

    const-string v1, "smoke"

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v0, p1

    move-wide v2, v6

    move-wide v4, v8

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    move/from16 v16, v10

    move-wide/from16 v10, v20

    move-wide/from16 v12, v22

    .line 123
    invoke-virtual/range {v0 .. v13}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v10, v16, 0x1

    move-object/from16 v11, p0

    move/from16 v12, p3

    move/from16 v13, p4

    goto :goto_8d

    :cond_d9
    if-nez v0, :cond_ff

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 129
    invoke-direct/range {v0 .. v5}, Ldb;->a(Lfd;IIIZ)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 130
    sget-object v0, Luu;->aR:Luu;

    iget v4, v0, Luu;->bn:I

    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v5

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lfd;->b(IIIII)Z

    :cond_ff
    return-void
.end method

.method public b(Lfd;III)V
    .registers 7

    .line 70
    iget-boolean v0, p0, Ldb;->a:Z

    if-eqz v0, :cond_2e

    add-int/lit8 v0, p3, -0x1

    .line 71
    iget v1, p0, Ldb;->bn:I

    invoke-virtual {p1, p2, v0, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p3, 0x1

    .line 72
    iget v1, p0, Ldb;->bn:I

    invoke-virtual {p1, p2, v0, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p2, -0x1

    .line 73
    iget v1, p0, Ldb;->bn:I

    invoke-virtual {p1, v0, p3, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p2, 0x1

    .line 74
    iget v1, p0, Ldb;->bn:I

    invoke-virtual {p1, v0, p3, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p4, -0x1

    .line 75
    iget v1, p0, Ldb;->bn:I

    invoke-virtual {p1, p2, p3, v0, v1}, Lfd;->i(IIII)V

    add-int/lit8 p4, p4, 0x1

    .line 76
    iget v0, p0, Ldb;->bn:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->i(IIII)V

    :cond_2e
    return-void
.end method

.method public b(Lfd;IIII)V
    .registers 12

    .line 144
    invoke-super/range {p0 .. p5}, Lvm;->b(Lfd;IIII)V

    .line 145
    iget v4, p0, Ldb;->bn:I

    invoke-virtual {p0}, Ldb;->e()I

    move-result v5

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lfd;->c(IIIII)V

    return-void
.end method

.method public b(Lfd;IIILjava/util/Random;)V
    .registers 36

    move-object/from16 v0, p0

    .line 164
    iget-boolean v1, v0, Ldb;->a:Z

    if-nez v1, :cond_7

    return-void

    .line 165
    :cond_7
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v1

    move/from16 v2, p2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-double v4, v2

    .line 166
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v3

    float-to-double v6, v2

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    add-double v12, v4, v6

    move/from16 v2, p3

    int-to-float v2, v2

    const v4, 0x3f333333    # 0.7f

    add-float/2addr v2, v4

    float-to-double v4, v2

    .line 167
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v3

    float-to-double v6, v2

    mul-double/2addr v6, v8

    add-double v14, v4, v6

    move/from16 v2, p4

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-double v4, v2

    .line 168
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v8

    add-double v22, v4, v2

    const/4 v2, 0x1

    const-wide v3, 0x3fcc28f5c0000000L    # 0.2199999988079071

    const-wide v5, 0x3fd147ae20000000L    # 0.27000001072883606

    if-ne v1, v2, :cond_5e

    const-string v17, "reddust"

    sub-double v18, v12, v5

    add-double v20, v14, v3

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    move-object/from16 v16, p1

    .line 172
    invoke-virtual/range {v16 .. v29}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    goto :goto_ac

    :cond_5e
    const/4 v2, 0x2

    if-ne v1, v2, :cond_73

    const-string v17, "reddust"

    add-double v18, v12, v5

    add-double v20, v14, v3

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    move-object/from16 v16, p1

    .line 174
    invoke-virtual/range {v16 .. v29}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    goto :goto_ac

    :cond_73
    const/4 v2, 0x3

    if-ne v1, v2, :cond_87

    const-string v11, "reddust"

    add-double/2addr v14, v3

    sub-double v16, v22, v5

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v10, p1

    .line 176
    invoke-virtual/range {v10 .. v23}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    goto :goto_ac

    :cond_87
    const/4 v2, 0x4

    if-ne v1, v2, :cond_9b

    const-string v11, "reddust"

    add-double/2addr v14, v3

    add-double v16, v22, v5

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v10, p1

    .line 178
    invoke-virtual/range {v10 .. v23}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    goto :goto_ac

    :cond_9b
    const-string v11, "reddust"

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v1, 0x0

    move-object/from16 v10, p1

    move-wide/from16 v16, v22

    move-wide/from16 v22, v1

    .line 180
    invoke-virtual/range {v10 .. v23}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    :goto_ac
    return-void
.end method

.method public c(Lfd;III)V
    .registers 7

    .line 58
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    if-nez v0, :cond_9

    invoke-super {p0, p1, p2, p3, p4}, Lvm;->c(Lfd;III)V

    .line 59
    :cond_9
    iget-boolean v0, p0, Ldb;->a:Z

    if-eqz v0, :cond_37

    add-int/lit8 v0, p3, -0x1

    .line 60
    iget v1, p0, Ldb;->bn:I

    invoke-virtual {p1, p2, v0, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p3, 0x1

    .line 61
    iget v1, p0, Ldb;->bn:I

    invoke-virtual {p1, p2, v0, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p2, -0x1

    .line 62
    iget v1, p0, Ldb;->bn:I

    invoke-virtual {p1, v0, p3, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p2, 0x1

    .line 63
    iget v1, p0, Ldb;->bn:I

    invoke-virtual {p1, v0, p3, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p4, -0x1

    .line 64
    iget v1, p0, Ldb;->bn:I

    invoke-virtual {p1, p2, p3, v0, v1}, Lfd;->i(IIII)V

    add-int/lit8 p4, p4, 0x1

    .line 65
    iget v0, p0, Ldb;->bn:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->i(IIII)V

    :cond_37
    return-void
.end method

.method public c(Lxp;IIII)Z
    .registers 8

    .line 81
    iget-boolean v0, p0, Ldb;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 83
    :cond_6
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p1

    const/4 p2, 0x5

    const/4 p3, 0x1

    if-ne p1, p2, :cond_11

    if-ne p5, p3, :cond_11

    return v1

    :cond_11
    const/4 p4, 0x3

    if-ne p1, p4, :cond_17

    if-ne p5, p4, :cond_17

    return v1

    :cond_17
    const/4 p4, 0x2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1e

    if-ne p5, p4, :cond_1e

    return v1

    :cond_1e
    if-ne p1, p3, :cond_23

    if-ne p5, p2, :cond_23

    return v1

    :cond_23
    if-ne p1, p4, :cond_28

    if-ne p5, v0, :cond_28

    return v1

    :cond_28
    return p3
.end method

.method public d(Lfd;IIII)Z
    .registers 6

    if-nez p5, :cond_7

    .line 150
    invoke-virtual/range {p0 .. p5}, Ldb;->c(Lxp;IIII)Z

    move-result p1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public e()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
