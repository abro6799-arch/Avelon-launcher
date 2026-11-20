###### Class defpackage.bv (bv)
.class public Lbv;
.super Luu;
.source "SourceFile"


# instance fields
.field private a:Lrt;


# direct methods
.method protected constructor <init>(IILrt;Lln;)V
    .registers 12

    .line 22
    invoke-direct {p0, p1, p2, p4}, Luu;-><init>(IILln;)V

    .line 23
    iput-object p3, p0, Lbv;->a:Lrt;

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lbv;->b(Z)Luu;

    const/4 v2, 0x0

    const/high16 v6, 0x3f700000    # 0.9375f

    const/high16 v5, 0x3d000000    # 0.03125f

    const/high16 v3, 0x3d800000    # 0.0625f

    move-object v0, p0

    move v1, v3

    move v4, v6

    .line 27
    invoke-virtual/range {v0 .. v6}, Lbv;->a(FFFFFF)V

    return-void
.end method

.method private h(Lfd;III)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    .line 89
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v1

    const/4 v15, 0x0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    move/from16 v16, v2

    goto :goto_17

    :cond_15
    move/from16 v16, v15

    .line 94
    :goto_17
    iget-object v1, v0, Lbv;->a:Lrt;

    sget-object v3, Lrt;->a:Lrt;

    const/4 v4, 0x0

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    const/high16 v7, 0x3e000000    # 0.125f

    if-ne v1, v3, :cond_49

    int-to-float v1, v12

    add-float/2addr v1, v7

    float-to-double v8, v1

    int-to-double v2, v13

    int-to-float v10, v14

    add-float/2addr v10, v7

    move-wide/from16 v19, v2

    float-to-double v1, v10

    add-int/lit8 v3, v12, 0x1

    int-to-float v3, v3

    sub-float/2addr v3, v7

    move-wide/from16 v17, v8

    float-to-double v7, v3

    add-double v25, v19, v5

    add-int/lit8 v3, v14, 0x1

    int-to-float v3, v3

    const/high16 v9, 0x3e000000    # 0.125f

    sub-float/2addr v3, v9

    float-to-double v5, v3

    move-wide/from16 v21, v1

    move-wide/from16 v23, v7

    move-wide/from16 v27, v5

    invoke-static/range {v17 .. v28}, Leq;->b(DDDDDD)Leq;

    move-result-object v1

    invoke-virtual {v11, v4, v1}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v4

    .line 95
    :cond_49
    iget-object v1, v0, Lbv;->a:Lrt;

    sget-object v2, Lrt;->b:Lrt;

    if-ne v1, v2, :cond_7e

    const-class v1, Lls;

    int-to-float v2, v12

    const/high16 v3, 0x3e000000    # 0.125f

    add-float/2addr v2, v3

    float-to-double v4, v2

    int-to-double v6, v13

    int-to-float v2, v14

    add-float/2addr v2, v3

    float-to-double v8, v2

    add-int/lit8 v2, v12, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, v3

    move-wide/from16 v17, v4

    float-to-double v3, v2

    const-wide/high16 v19, 0x3fd0000000000000L    # 0.25

    add-double v25, v6, v19

    add-int/lit8 v2, v14, 0x1

    int-to-float v2, v2

    const/high16 v5, 0x3e000000    # 0.125f

    sub-float/2addr v2, v5

    float-to-double v10, v2

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    move-wide/from16 v23, v3

    move-wide/from16 v27, v10

    invoke-static/range {v17 .. v28}, Leq;->b(DDDDDD)Leq;

    move-result-object v2

    move-object/from16 v11, p1

    invoke-virtual {v11, v1, v2}, Lfd;->a(Ljava/lang/Class;Leq;)Ljava/util/List;

    move-result-object v4

    .line 96
    :cond_7e
    iget-object v1, v0, Lbv;->a:Lrt;

    sget-object v2, Lrt;->c:Lrt;

    if-ne v1, v2, :cond_b1

    const-class v1, Lgs;

    int-to-float v2, v12

    const/high16 v3, 0x3e000000    # 0.125f

    add-float/2addr v2, v3

    float-to-double v4, v2

    int-to-double v6, v13

    int-to-float v2, v14

    add-float/2addr v2, v3

    float-to-double v8, v2

    add-int/lit8 v2, v12, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, v3

    move-wide/from16 v17, v4

    float-to-double v3, v2

    const-wide/high16 v19, 0x3fd0000000000000L    # 0.25

    add-double v25, v6, v19

    add-int/lit8 v2, v14, 0x1

    int-to-float v2, v2

    const/high16 v5, 0x3e000000    # 0.125f

    sub-float/2addr v2, v5

    float-to-double v12, v2

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    move-wide/from16 v23, v3

    move-wide/from16 v27, v12

    invoke-static/range {v17 .. v28}, Leq;->b(DDDDDD)Leq;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lfd;->a(Ljava/lang/Class;Leq;)Ljava/util/List;

    move-result-object v4

    .line 97
    :cond_b1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b9

    const/4 v12, 0x1

    goto :goto_ba

    :cond_b9
    move v12, v15

    :goto_ba
    const-wide v17, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    if-eqz v12, :cond_104

    if-nez v16, :cond_104

    move/from16 v13, p2

    move/from16 v10, p3

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v11, v13, v10, v14, v1}, Lfd;->d(IIII)V

    .line 103
    iget v1, v0, Lbv;->bn:I

    invoke-virtual {v11, v13, v10, v14, v1}, Lfd;->i(IIII)V

    add-int/lit8 v1, v10, -0x1

    .line 104
    iget v2, v0, Lbv;->bn:I

    invoke-virtual {v11, v13, v1, v14, v2}, Lfd;->i(IIII)V

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 105
    invoke-virtual/range {v1 .. v7}, Lfd;->b(IIIIII)V

    int-to-double v1, v13

    add-double v2, v1, v19

    int-to-double v4, v10

    add-double v4, v4, v17

    int-to-double v6, v14

    add-double v6, v6, v19

    const-string v8, "random.click"

    const v9, 0x3e99999a    # 0.3f

    const v21, 0x3f19999a    # 0.6f

    move-object/from16 v1, p1

    move v0, v10

    move/from16 v10, v21

    .line 107
    invoke-virtual/range {v1 .. v10}, Lfd;->a(DDDLjava/lang/String;FF)V

    goto :goto_108

    :cond_104
    move/from16 v13, p2

    move/from16 v0, p3

    :goto_108
    if-nez v12, :cond_145

    if-eqz v16, :cond_145

    .line 110
    invoke-virtual {v11, v13, v0, v14, v15}, Lfd;->d(IIII)V

    move v15, v0

    move-object/from16 v0, p0

    .line 111
    iget v1, v0, Lbv;->bn:I

    invoke-virtual {v11, v13, v15, v14, v1}, Lfd;->i(IIII)V

    add-int/lit8 v1, v15, -0x1

    .line 112
    iget v2, v0, Lbv;->bn:I

    invoke-virtual {v11, v13, v1, v14, v2}, Lfd;->i(IIII)V

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 113
    invoke-virtual/range {v1 .. v7}, Lfd;->b(IIIIII)V

    int-to-double v1, v13

    add-double v2, v1, v19

    int-to-double v4, v15

    add-double v4, v4, v17

    int-to-double v6, v14

    add-double v6, v6, v19

    const-string v8, "random.click"

    const v9, 0x3e99999a    # 0.3f

    const/high16 v10, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    .line 115
    invoke-virtual/range {v1 .. v10}, Lfd;->a(DDDLjava/lang/String;FF)V

    goto :goto_148

    :cond_145
    move v15, v0

    move-object/from16 v0, p0

    :goto_148
    if-eqz v12, :cond_15b

    .line 119
    iget v5, v0, Lbv;->bn:I

    invoke-virtual/range {p0 .. p0}, Lbv;->e()I

    move-result v6

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Lfd;->c(IIIII)V

    :cond_15b
    return-void
.end method


# virtual methods
.method public a(Lfd;IIILjava/util/Random;)V
    .registers 6

    .line 70
    iget-boolean p5, p1, Lfd;->B:Z

    if-eqz p5, :cond_5

    return-void

    .line 71
    :cond_5
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p5

    if-nez p5, :cond_c

    return-void

    .line 75
    :cond_c
    invoke-direct {p0, p1, p2, p3, p4}, Lbv;->h(Lfd;III)V

    return-void
.end method

.method public a(Lfd;IIILsn;)V
    .registers 7

    .line 79
    iget-boolean p5, p1, Lfd;->B:Z

    if-eqz p5, :cond_5

    return-void

    .line 81
    :cond_5
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p5

    const/4 v0, 0x1

    if-ne p5, v0, :cond_d

    return-void

    .line 85
    :cond_d
    invoke-direct {p0, p1, p2, p3, p4}, Lbv;->h(Lfd;III)V

    return-void
.end method

.method public a(Lxp;III)V
    .registers 21

    .line 133
    invoke-interface/range {p1 .. p4}, Lxp;->e(III)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_1a

    const/4 v4, 0x0

    const/high16 v8, 0x3f700000    # 0.9375f

    const/high16 v7, 0x3d000000    # 0.03125f

    const/high16 v5, 0x3d800000    # 0.0625f

    move-object/from16 v2, p0

    move v3, v5

    move v6, v8

    .line 137
    invoke-virtual/range {v2 .. v8}, Lbv;->a(FFFFFF)V

    goto :goto_28

    :cond_1a
    const/4 v11, 0x0

    const/high16 v15, 0x3f700000    # 0.9375f

    const/high16 v14, 0x3d800000    # 0.0625f

    const/high16 v12, 0x3d800000    # 0.0625f

    move-object/from16 v9, p0

    move v10, v12

    move v13, v15

    .line 139
    invoke-virtual/range {v9 .. v15}, Lbv;->a(FFFFFF)V

    :goto_28
    return-void
.end method

.method public a(Lfd;III)Z
    .registers 5

    add-int/lit8 p3, p3, -0x1

    .line 52
    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p1

    return p1
.end method

.method public b(Lfd;III)V
    .registers 7

    .line 124
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    if-lez v0, :cond_12

    .line 126
    iget v0, p0, Lbv;->bn:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->i(IIII)V

    add-int/lit8 v0, p3, -0x1

    .line 127
    iget v1, p0, Lbv;->bn:I

    invoke-virtual {p1, p2, v0, p4, v1}, Lfd;->i(IIII)V

    .line 129
    :cond_12
    invoke-super {p0, p1, p2, p3, p4}, Luu;->b(Lfd;III)V

    return-void
.end method

.method public b(Lfd;IIII)V
    .registers 12

    add-int/lit8 p5, p3, -0x1

    .line 61
    invoke-virtual {p1, p2, p5, p4}, Lfd;->h(III)Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_1a

    .line 64
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lbv;->g(Lfd;IIII)V

    const/4 p5, 0x0

    .line 65
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    :cond_1a
    return-void
.end method

.method public c(Lfd;III)V
    .registers 5

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lxp;IIII)Z
    .registers 6

    .line 144
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p1

    if-lez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lfd;IIII)Z
    .registers 6

    .line 149
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    :cond_8
    const/4 p1, 0x1

    if-ne p5, p1, :cond_c

    move p2, p1

    :cond_c
    return p2
.end method

.method public e()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method public e(Lfd;III)Leq;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .registers 8

    const/4 v3, 0x0

    const/high16 v2, 0x3ec00000    # 0.375f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f200000    # 0.625f

    move-object v0, p0

    move v1, v3

    move v4, v6

    .line 161
    invoke-virtual/range {v0 .. v6}, Lbv;->a(FFFFFF)V

    return-void
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
