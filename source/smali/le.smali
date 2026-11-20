###### Class defpackage.le (le)
.class public Lle;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(ILln;)V
    .registers 10

    .line 17
    invoke-direct {p0, p1, p2}, Luu;-><init>(ILln;)V

    const/16 p1, 0x61

    .line 18
    iput p1, p0, Lle;->bm:I

    .line 19
    sget-object p1, Lln;->f:Lln;

    if-ne p2, p1, :cond_11

    iget p1, p0, Lle;->bm:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lle;->bm:I

    :cond_11
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, v3

    move v4, v6

    .line 23
    invoke-virtual/range {v0 .. v6}, Lle;->a(FFFFFF)V

    return-void
.end method

.method public static f(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method


# virtual methods
.method public a(II)I
    .registers 9

    if-eqz p1, :cond_34

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_34

    .line 28
    :cond_6
    invoke-virtual {p0, p2}, Lle;->e(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_13

    if-ne v1, v3, :cond_11

    goto :goto_13

    :cond_11
    move v4, v2

    goto :goto_14

    :cond_13
    :goto_13
    move v4, v0

    :goto_14
    const/4 v5, 0x3

    if-gt p1, v5, :cond_18

    move v2, v0

    :cond_18
    xor-int/2addr v2, v4

    if-eqz v2, :cond_1e

    .line 30
    iget p1, p0, Lle;->bm:I

    return p1

    .line 32
    :cond_1e
    div-int/lit8 v2, v1, 0x2

    and-int/2addr p1, v0

    xor-int/2addr p1, v1

    add-int/2addr v2, p1

    and-int/lit8 p1, p2, 0x4

    .line 33
    div-int/lit8 p1, p1, 0x4

    add-int/2addr v2, p1

    .line 37
    iget p1, p0, Lle;->bm:I

    and-int/lit8 p2, p2, 0x8

    mul-int/2addr p2, v3

    sub-int/2addr p1, p2

    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_33

    neg-int p1, p1

    :cond_33
    return p1

    .line 27
    :cond_34
    :goto_34
    iget p1, p0, Lle;->bm:I

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    return p1

    .line 171
    :cond_6
    iget-object p1, p0, Lle;->bA:Lln;

    sget-object p2, Lln;->f:Lln;

    if-ne p1, p2, :cond_11

    sget-object p1, Lgm;->az:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1

    .line 172
    :cond_11
    sget-object p1, Lgm;->at:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1
.end method

.method public a(Lfd;IIILbt;Lbt;)Lvf;
    .registers 7

    .line 176
    invoke-virtual {p0, p1, p2, p3, p4}, Lle;->a(Lxp;III)V

    .line 177
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILbt;Lbt;)Lvf;

    move-result-object p1

    return-object p1
.end method

.method public a(Lfd;IIIZ)V
    .registers 16

    .line 111
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    add-int/lit8 v6, p3, -0x1

    .line 114
    invoke-virtual {p1, p2, v6, p4}, Lfd;->a(III)I

    move-result p3

    iget v0, p0, Lle;->bn:I

    if-ne p3, v0, :cond_1b

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v7, p4

    move v8, p5

    .line 115
    invoke-virtual/range {v3 .. v8}, Lle;->a(Lfd;IIIZ)V

    :cond_1b
    return-void

    .line 120
    :cond_1c
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-ne v2, p5, :cond_29

    return-void

    :cond_29
    add-int/lit8 p5, p3, 0x1

    .line 123
    invoke-virtual {p1, p2, p5, p4}, Lfd;->a(III)I

    move-result v1

    iget v2, p0, Lle;->bn:I

    if-ne v1, v2, :cond_3a

    xor-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x8

    .line 124
    invoke-virtual {p1, p2, p5, p4, v1}, Lfd;->d(IIII)V

    :cond_3a
    xor-int/lit8 p5, v0, 0x4

    .line 127
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    add-int/lit8 v2, p3, -0x1

    move-object v0, p1

    move v1, p2

    move v3, p4

    move v4, p2

    move v5, p3

    move v6, p4

    .line 128
    invoke-virtual/range {v0 .. v6}, Lfd;->b(IIIIII)V

    const/4 v4, 0x0

    const/16 v5, 0x3eb

    const/4 v9, 0x0

    move-object v3, p1

    move v6, p2

    move v7, p3

    move v8, p4

    .line 130
    invoke-virtual/range {v3 .. v9}, Lfd;->a(Lgs;IIIII)V

    return-void
.end method

.method public a(Lxp;III)V
    .registers 5

    .line 73
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p1

    invoke-virtual {p0, p1}, Lle;->e(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lle;->d(I)V

    return-void
.end method

.method public a(Lfd;III)Z
    .registers 7

    const/16 v0, 0x7f

    const/4 v1, 0x0

    if-lt p3, v0, :cond_6

    return v1

    :cond_6
    add-int/lit8 v0, p3, -0x1

    .line 191
    invoke-virtual {p1, p2, v0, p4}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-super {p0, p1, p2, p3, p4}, Luu;->a(Lfd;III)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    add-int/2addr p3, v0

    invoke-super {p0, p1, p2, p3, p4}, Luu;->a(Lfd;III)Z

    move-result p1

    if-eqz p1, :cond_1d

    move v1, v0

    :cond_1d
    return v1
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 21

    move-object v6, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v0, p3

    move/from16 v4, p4

    .line 90
    iget-object v3, v6, Lle;->bA:Lln;

    sget-object v5, Lln;->f:Lln;

    const/4 v14, 0x1

    if-ne v3, v5, :cond_11

    return v14

    .line 92
    :cond_11
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v3

    and-int/lit8 v5, v3, 0x8

    if-eqz v5, :cond_30

    add-int/lit8 v3, v0, -0x1

    .line 94
    invoke-virtual {v1, v2, v3, v4}, Lfd;->a(III)I

    move-result v0

    iget v5, v6, Lle;->bn:I

    if-ne v0, v5, :cond_2f

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 95
    invoke-virtual/range {v0 .. v5}, Lle;->a(Lfd;IIILgs;)Z

    :cond_2f
    return v14

    :cond_30
    add-int/lit8 v5, v0, 0x1

    .line 99
    invoke-virtual {v1, v2, v5, v4}, Lfd;->a(III)I

    move-result v7

    iget v8, v6, Lle;->bn:I

    if-ne v7, v8, :cond_41

    xor-int/lit8 v7, v3, 0x4

    add-int/lit8 v7, v7, 0x8

    .line 100
    invoke-virtual {v1, v2, v5, v4, v7}, Lfd;->d(IIII)V

    :cond_41
    xor-int/lit8 v3, v3, 0x4

    .line 103
    invoke-virtual {v1, v2, v0, v4, v3}, Lfd;->d(IIII)V

    add-int/lit8 v9, v0, -0x1

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v10, p4

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 104
    invoke-virtual/range {v7 .. v13}, Lfd;->b(IIIIII)V

    const/16 v9, 0x3eb

    const/4 v13, 0x0

    move-object/from16 v8, p5

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    .line 106
    invoke-virtual/range {v7 .. v13}, Lfd;->a(Lgs;IIIII)V

    return v14
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public b(Lfd;IIII)V
    .registers 17

    move-object v6, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 135
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v5

    and-int/lit8 v0, v5, 0x8

    const/4 v7, 0x0

    if-eqz v0, :cond_33

    add-int/lit8 v5, v3, -0x1

    .line 137
    invoke-virtual {p1, p2, v5, p4}, Lfd;->a(III)I

    move-result v0

    iget v8, v6, Lle;->bn:I

    if-eq v0, v8, :cond_1b

    .line 138
    invoke-virtual {p1, p2, p3, p4, v7}, Lfd;->f(IIII)Z

    :cond_1b
    if-lez p5, :cond_8e

    .line 140
    sget-object v0, Luu;->m:[Luu;

    aget-object v0, v0, p5

    invoke-virtual {v0}, Luu;->f()Z

    move-result v0

    if-eqz v0, :cond_8e

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v5

    move v4, p4

    move/from16 v5, p5

    .line 141
    invoke-virtual/range {v0 .. v5}, Lle;->b(Lfd;IIII)V

    goto/16 :goto_8e

    :cond_33
    add-int/lit8 v0, v3, 0x1

    .line 145
    invoke-virtual {p1, p2, v0, p4}, Lfd;->a(III)I

    move-result v8

    iget v9, v6, Lle;->bn:I

    const/4 v10, 0x1

    if-eq v8, v9, :cond_43

    .line 146
    invoke-virtual {p1, p2, p3, p4, v7}, Lfd;->f(IIII)Z

    move v8, v10

    goto :goto_44

    :cond_43
    move v8, v7

    :goto_44
    add-int/lit8 v9, v3, -0x1

    .line 149
    invoke-virtual {p1, p2, v9, p4}, Lfd;->h(III)Z

    move-result v9

    if-nez v9, :cond_5b

    .line 150
    invoke-virtual {p1, p2, p3, p4, v7}, Lfd;->f(IIII)Z

    .line 152
    invoke-virtual {p1, p2, v0, p4}, Lfd;->a(III)I

    move-result v8

    iget v9, v6, Lle;->bn:I

    if-ne v8, v9, :cond_5a

    .line 153
    invoke-virtual {p1, p2, v0, p4, v7}, Lfd;->f(IIII)Z

    :cond_5a
    move v8, v10

    :cond_5b
    if-eqz v8, :cond_6a

    .line 157
    iget-boolean v0, v1, Lfd;->B:Z

    if-nez v0, :cond_8e

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 158
    invoke-virtual/range {v0 .. v5}, Lle;->g(Lfd;IIII)V

    goto :goto_8e

    :cond_6a
    if-lez p5, :cond_8e

    .line 161
    sget-object v5, Luu;->m:[Luu;

    aget-object v5, v5, p5

    invoke-virtual {v5}, Luu;->f()Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 162
    invoke-virtual {p1, p2, p3, p4}, Lfd;->s(III)Z

    move-result v5

    if-nez v5, :cond_85

    invoke-virtual {p1, p2, v0, p4}, Lfd;->s(III)Z

    move-result v0

    if-eqz v0, :cond_83

    goto :goto_85

    :cond_83
    move v5, v7

    goto :goto_86

    :cond_85
    :goto_85
    move v5, v10

    :goto_86
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 163
    invoke-virtual/range {v0 .. v5}, Lle;->a(Lfd;IIIZ)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method public b(Lfd;IIILgs;)V
    .registers 6

    .line 86
    invoke-virtual/range {p0 .. p5}, Lle;->a(Lfd;IIILgs;)Z

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(I)V
    .registers 16

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 78
    invoke-virtual/range {v0 .. v6}, Lle;->a(FFFFFF)V

    if-nez p1, :cond_1c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3e400000    # 0.1875f

    move-object v7, p0

    .line 79
    invoke-virtual/range {v7 .. v13}, Lle;->a(FFFFFF)V

    :cond_1c
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2d

    const/high16 v2, 0x3f500000    # 0.8125f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p0

    .line 80
    invoke-virtual/range {v1 .. v7}, Lle;->a(FFFFFF)V

    :cond_2d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f500000    # 0.8125f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p0

    .line 81
    invoke-virtual/range {v1 .. v7}, Lle;->a(FFFFFF)V

    :cond_3e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v5, 0x3e400000    # 0.1875f

    move-object v1, p0

    .line 82
    invoke-virtual/range {v1 .. v7}, Lle;->a(FFFFFF)V

    :cond_4e
    return-void
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)I
    .registers 3

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_9

    add-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0x3

    return p1

    :cond_9
    and-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public e(Lfd;III)Leq;
    .registers 5

    .line 68
    invoke-virtual {p0, p1, p2, p3, p4}, Lle;->a(Lxp;III)V

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Luu;->e(Lfd;III)Leq;

    move-result-object p1

    return-object p1
.end method

.method public f(Lfd;III)Leq;
    .registers 5

    .line 63
    invoke-virtual {p0, p1, p2, p3, p4}, Lle;->a(Lxp;III)V

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Luu;->f(Lfd;III)Leq;

    move-result-object p1

    return-object p1
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
