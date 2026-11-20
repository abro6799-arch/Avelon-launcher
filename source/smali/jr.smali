###### Class defpackage.jr (jr)
.class public Ljr;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 11

    .line 22
    sget-object v0, Lln;->t:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3e000000    # 0.125f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p0

    .line 23
    invoke-virtual/range {v1 .. v7}, Ljr;->a(FFFFFF)V

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Ljr;->b(Z)Luu;

    return-void
.end method

.method private h(Lfd;III)Z
    .registers 12

    .line 72
    invoke-virtual {p0, p1, p2, p3, p4}, Ljr;->a(Lfd;III)Z

    move-result v0

    if-nez v0, :cond_17

    .line 73
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Ljr;->g(Lfd;IIII)V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    return v0

    :cond_17
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 3

    .line 96
    sget-object p1, Lgm;->aB:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 13

    .line 104
    sget-object p5, Leb;->b:Leb;

    invoke-virtual {p1, p5, p2, p3, p4}, Lfd;->a(Leb;III)I

    move-result p5

    const/16 v0, 0xb

    if-le p5, v0, :cond_1a

    .line 105
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Ljr;->g(Lfd;IIII)V

    const/4 p5, 0x0

    .line 106
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    :cond_1a
    return-void
.end method

.method public a(Lfd;Lgs;IIII)V
    .registers 23

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    .line 82
    sget-object v0, Lgm;->aB:Lgm;

    iget v0, v0, Lgm;->bf:I

    .line 84
    iget-object v1, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-double v3, v1

    const v1, 0x3e99999a    # 0.3f

    float-to-double v5, v1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 85
    iget-object v1, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-double v7, v1

    add-double/2addr v7, v5

    .line 86
    iget-object v1, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-double v1, v1

    add-double/2addr v1, v5

    .line 87
    new-instance v13, Lhl;

    int-to-double v5, v10

    add-double/2addr v3, v5

    int-to-double v5, v11

    add-double/2addr v5, v7

    int-to-double v7, v12

    add-double/2addr v7, v1

    new-instance v14, Liz;

    const/4 v15, 0x1

    const/4 v2, 0x0

    invoke-direct {v14, v0, v15, v2}, Liz;-><init>(III)V

    move-object v0, v13

    move-object/from16 v1, p1

    move v15, v2

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lhl;-><init>(Lfd;DDDLiz;)V

    const/16 v0, 0xa

    .line 88
    iput v0, v13, Lhl;->c:I

    .line 89
    invoke-virtual {v9, v13}, Lfd;->b(Lsn;)Z

    .line 90
    invoke-virtual {v9, v10, v11, v12, v15}, Lfd;->f(IIII)Z

    .line 92
    sget-object v0, Ljl;->C:[Lvr;

    move-object/from16 v1, p0

    iget v2, v1, Ljr;->bn:I

    aget-object v0, v0, v2

    move-object/from16 v2, p2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lgs;->a(Lvr;I)V

    return-void
.end method

.method public a(Lxp;III)V
    .registers 12

    .line 55
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    const/high16 p2, 0x41800000    # 16.0f

    div-float v5, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v6}, Ljr;->a(FFFFFF)V

    return-void
.end method

.method public a(Lfd;III)Z
    .registers 7

    add-int/lit8 p3, p3, -0x1

    .line 62
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 63
    sget-object v1, Luu;->m:[Luu;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Luu;->c()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1c

    .line 64
    :cond_13
    invoke-virtual {p1, p2, p3, p4}, Lfd;->f(III)Lln;

    move-result-object p1

    invoke-virtual {p1}, Lln;->c()Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lfd;IIII)V
    .registers 6

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Ljr;->h(Lfd;III)Z

    return-void
.end method

.method public b(Lxp;IIII)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p5, v0, :cond_4

    return v0

    .line 114
    :cond_4
    invoke-super/range {p0 .. p5}, Luu;->b(Lxp;IIII)Z

    move-result p1

    return p1
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
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 28
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2f

    move/from16 v2, p2

    int-to-double v2, v2

    .line 30
    iget-wide v4, v0, Ljr;->bs:D

    add-double v6, v2, v4

    int-to-double v4, v1

    iget-wide v8, v0, Ljr;->bt:D

    add-double/2addr v8, v4

    move/from16 v4, p4

    int-to-double v4, v4

    iget-wide v10, v0, Ljr;->bu:D

    add-double/2addr v10, v4

    iget-wide v12, v0, Ljr;->bv:D

    add-double/2addr v12, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-double v14, v1

    iget-wide v1, v0, Ljr;->bx:D

    add-double v16, v4, v1

    invoke-static/range {v6 .. v17}, Leq;->b(DDDDDD)Leq;

    move-result-object v1

    return-object v1

    :cond_2f
    const/4 v1, 0x0

    return-object v1
.end method
