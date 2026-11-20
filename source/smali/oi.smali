###### Class defpackage.oi (oi)
.class public Loi;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    .line 13
    sget-object v0, Lln;->o:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Loi;->b(Z)Luu;

    return-void
.end method

.method private h(Lfd;III)I
    .registers 7

    add-int/lit8 v0, p2, -0x1

    .line 74
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, p2, 0x1

    .line 76
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x2

    return p1

    :cond_14
    add-int/lit8 v0, p4, -0x1

    .line 78
    invoke-virtual {p1, p2, p3, v0}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p1, 0x3

    return p1

    :cond_1e
    add-int/2addr p4, v1

    .line 80
    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 p1, 0x4

    return p1

    :cond_27
    return v1
.end method

.method private i(Lfd;III)Z
    .registers 12

    .line 117
    invoke-virtual {p0, p1, p2, p3, p4}, Loi;->a(Lfd;III)Z

    move-result v0

    if-nez v0, :cond_17

    .line 118
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Loi;->g(Lfd;IIII)V

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    return v0

    :cond_17
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lfd;IIILjava/util/Random;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    .line 226
    iget-boolean v1, v11, Lfd;->B:Z

    if-eqz v1, :cond_f

    return-void

    .line 227
    :cond_f
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v1

    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_18

    return-void

    :cond_18
    and-int/lit8 v1, v1, 0x7

    .line 231
    invoke-virtual {v11, v12, v13, v14, v1}, Lfd;->d(IIII)V

    .line 233
    iget v2, v0, Loi;->bn:I

    invoke-virtual {v11, v12, v13, v14, v2}, Lfd;->i(IIII)V

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    add-int/lit8 v1, v12, -0x1

    .line 236
    iget v2, v0, Loi;->bn:I

    invoke-virtual {v11, v1, v13, v14, v2}, Lfd;->i(IIII)V

    goto :goto_55

    :cond_2d
    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    add-int/lit8 v1, v12, 0x1

    .line 238
    iget v2, v0, Loi;->bn:I

    invoke-virtual {v11, v1, v13, v14, v2}, Lfd;->i(IIII)V

    goto :goto_55

    :cond_38
    const/4 v2, 0x3

    if-ne v1, v2, :cond_43

    add-int/lit8 v1, v14, -0x1

    .line 240
    iget v2, v0, Loi;->bn:I

    invoke-virtual {v11, v12, v13, v1, v2}, Lfd;->i(IIII)V

    goto :goto_55

    :cond_43
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4e

    add-int/lit8 v1, v14, 0x1

    .line 242
    iget v2, v0, Loi;->bn:I

    invoke-virtual {v11, v12, v13, v1, v2}, Lfd;->i(IIII)V

    goto :goto_55

    :cond_4e
    add-int/lit8 v1, v13, -0x1

    .line 244
    iget v2, v0, Loi;->bn:I

    invoke-virtual {v11, v12, v1, v14, v2}, Lfd;->i(IIII)V

    :goto_55
    int-to-double v1, v12

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double v5, v1, v3

    int-to-double v1, v13

    add-double v7, v1, v3

    int-to-double v1, v14

    add-double v9, v1, v3

    const-string v15, "random.click"

    const v16, 0x3e99999a    # 0.3f

    const/high16 v17, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-wide v2, v5

    move-wide v4, v7

    move-wide v6, v9

    move-object v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    .line 247
    invoke-virtual/range {v1 .. v10}, Lfd;->a(DDDLjava/lang/String;FF)V

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 248
    invoke-virtual/range {v1 .. v7}, Lfd;->b(IIIIII)V

    return-void
.end method

.method public a(Lxp;III)V
    .registers 28

    .line 126
    invoke-interface/range {p1 .. p4}, Lxp;->e(III)I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    and-int/lit8 v0, v0, 0x8

    const/4 v2, 0x1

    if-lez v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const/high16 v5, 0x3ec00000    # 0.375f

    const/high16 v8, 0x3f200000    # 0.625f

    if-eqz v0, :cond_17

    const/high16 v0, 0x3d800000    # 0.0625f

    goto :goto_19

    :cond_17
    const/high16 v0, 0x3e000000    # 0.125f

    :goto_19
    move v15, v0

    if-ne v1, v2, :cond_2d

    const/4 v10, 0x0

    const/high16 v12, 0x3ea00000    # 0.3125f

    const/high16 v0, 0x3f300000    # 0.6875f

    const/high16 v11, 0x3ec00000    # 0.375f

    const/high16 v14, 0x3f200000    # 0.625f

    move-object/from16 v9, p0

    move v13, v15

    move v15, v0

    .line 137
    invoke-virtual/range {v9 .. v15}, Loi;->a(FFFFFF)V

    goto :goto_66

    :cond_2d
    const/4 v0, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v1, v0, :cond_44

    sub-float v17, v2, v15

    const/high16 v19, 0x3ea00000    # 0.3125f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f300000    # 0.6875f

    const/high16 v18, 0x3ec00000    # 0.375f

    const/high16 v21, 0x3f200000    # 0.625f

    move-object/from16 v16, p0

    .line 139
    invoke-virtual/range {v16 .. v22}, Loi;->a(FFFFFF)V

    goto :goto_66

    :cond_44
    const/4 v0, 0x3

    if-ne v1, v0, :cond_56

    const/high16 v10, 0x3ea00000    # 0.3125f

    const/4 v12, 0x0

    const/high16 v13, 0x3f300000    # 0.6875f

    const/high16 v11, 0x3ec00000    # 0.375f

    const/high16 v14, 0x3f200000    # 0.625f

    move-object/from16 v9, p0

    .line 141
    invoke-virtual/range {v9 .. v15}, Loi;->a(FFFFFF)V

    goto :goto_66

    :cond_56
    const/4 v0, 0x4

    if-ne v1, v0, :cond_66

    const/high16 v4, 0x3ea00000    # 0.3125f

    sub-float v6, v2, v15

    const/high16 v7, 0x3f300000    # 0.6875f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v3, p0

    .line 143
    invoke-virtual/range {v3 .. v9}, Loi;->a(FFFFFF)V

    :cond_66
    :goto_66
    return-void
.end method

.method public a(Lfd;III)Z
    .registers 7

    add-int/lit8 v0, p2, -0x1

    .line 46
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, p2, 0x1

    .line 48
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    add-int/lit8 v0, p4, -0x1

    .line 50
    invoke-virtual {p1, p2, p3, v0}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    :cond_1c
    add-int/2addr p4, v1

    .line 52
    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p1

    if-eqz p1, :cond_24

    return v1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIII)Z
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p5, v0, :cond_d

    add-int/lit8 v0, p4, 0x1

    .line 38
    invoke-virtual {p1, p2, p3, v0}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    :cond_d
    const/4 v0, 0x3

    if-ne p5, v0, :cond_19

    add-int/lit8 v0, p4, -0x1

    .line 39
    invoke-virtual {p1, p2, p3, v0}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    :cond_19
    const/4 v0, 0x4

    if-ne p5, v0, :cond_25

    add-int/lit8 v0, p2, 0x1

    .line 40
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_25

    return v1

    :cond_25
    const/4 v0, 0x5

    if-ne p5, v0, :cond_30

    sub-int/2addr p2, v1

    .line 41
    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p1

    if-eqz p1, :cond_30

    return v1

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    .line 154
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v1

    and-int/lit8 v15, v1, 0x7

    and-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x8

    const/4 v10, 0x1

    if-nez v1, :cond_18

    return v10

    :cond_18
    add-int/2addr v1, v15

    .line 159
    invoke-virtual {v11, v12, v13, v14, v1}, Lfd;->d(IIII)V

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 160
    invoke-virtual/range {v1 .. v7}, Lfd;->b(IIIIII)V

    int-to-double v1, v12

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double v5, v1, v3

    int-to-double v1, v13

    add-double v7, v1, v3

    int-to-double v1, v14

    add-double v16, v1, v3

    const-string v9, "random.click"

    const v18, 0x3e99999a    # 0.3f

    const v19, 0x3f19999a    # 0.6f

    move-object/from16 v1, p1

    move-wide v2, v5

    move-wide v4, v7

    move-wide/from16 v6, v16

    move-object v8, v9

    move/from16 v9, v18

    move/from16 v10, v19

    .line 162
    invoke-virtual/range {v1 .. v10}, Lfd;->a(DDDLjava/lang/String;FF)V

    .line 164
    iget v1, v0, Loi;->bn:I

    invoke-virtual {v11, v12, v13, v14, v1}, Lfd;->i(IIII)V

    const/4 v7, 0x1

    if-ne v15, v7, :cond_5e

    add-int/lit8 v1, v12, -0x1

    .line 166
    iget v2, v0, Loi;->bn:I

    invoke-virtual {v11, v1, v13, v14, v2}, Lfd;->i(IIII)V

    goto :goto_86

    :cond_5e
    const/4 v1, 0x2

    if-ne v15, v1, :cond_69

    add-int/lit8 v1, v12, 0x1

    .line 168
    iget v2, v0, Loi;->bn:I

    invoke-virtual {v11, v1, v13, v14, v2}, Lfd;->i(IIII)V

    goto :goto_86

    :cond_69
    const/4 v1, 0x3

    if-ne v15, v1, :cond_74

    add-int/lit8 v1, v14, -0x1

    .line 170
    iget v2, v0, Loi;->bn:I

    invoke-virtual {v11, v12, v13, v1, v2}, Lfd;->i(IIII)V

    goto :goto_86

    :cond_74
    const/4 v1, 0x4

    if-ne v15, v1, :cond_7f

    add-int/lit8 v1, v14, 0x1

    .line 172
    iget v2, v0, Loi;->bn:I

    invoke-virtual {v11, v12, v13, v1, v2}, Lfd;->i(IIII)V

    goto :goto_86

    :cond_7f
    add-int/lit8 v1, v13, -0x1

    .line 174
    iget v2, v0, Loi;->bn:I

    invoke-virtual {v11, v12, v1, v14, v2}, Lfd;->i(IIII)V

    .line 177
    :goto_86
    iget v5, v0, Loi;->bn:I

    invoke-virtual/range {p0 .. p0}, Loi;->e()I

    move-result v6

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Lfd;->c(IIIII)V

    return v7
.end method

.method public b(Lfd;III)V
    .registers 7

    .line 183
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    and-int/lit8 v1, v0, 0x8

    if-lez v1, :cond_42

    .line 185
    iget v1, p0, Loi;->bn:I

    invoke-virtual {p1, p2, p3, p4, v1}, Lfd;->i(IIII)V

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    add-int/lit8 v0, p2, -0x1

    .line 188
    iget v1, p0, Loi;->bn:I

    invoke-virtual {p1, v0, p3, p4, v1}, Lfd;->i(IIII)V

    goto :goto_42

    :cond_1a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    add-int/lit8 v0, p2, 0x1

    .line 190
    iget v1, p0, Loi;->bn:I

    invoke-virtual {p1, v0, p3, p4, v1}, Lfd;->i(IIII)V

    goto :goto_42

    :cond_25
    const/4 v1, 0x3

    if-ne v0, v1, :cond_30

    add-int/lit8 v0, p4, -0x1

    .line 192
    iget v1, p0, Loi;->bn:I

    invoke-virtual {p1, p2, p3, v0, v1}, Lfd;->i(IIII)V

    goto :goto_42

    :cond_30
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3b

    add-int/lit8 v0, p4, 0x1

    .line 194
    iget v1, p0, Loi;->bn:I

    invoke-virtual {p1, p2, p3, v0, v1}, Lfd;->i(IIII)V

    goto :goto_42

    :cond_3b
    add-int/lit8 v0, p3, -0x1

    .line 196
    iget v1, p0, Loi;->bn:I

    invoke-virtual {p1, p2, v0, p4, v1}, Lfd;->i(IIII)V

    .line 199
    :cond_42
    :goto_42
    invoke-super {p0, p1, p2, p3, p4}, Luu;->b(Lfd;III)V

    return-void
.end method

.method public b(Lfd;IIII)V
    .registers 15

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Loi;->i(Lfd;III)Z

    move-result p5

    if-eqz p5, :cond_51

    .line 101
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p5

    and-int/lit8 p5, p5, 0x7

    add-int/lit8 v0, p2, -0x1

    .line 104
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1a

    if-ne p5, v2, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    add-int/lit8 v3, p2, 0x1

    .line 105
    invoke-virtual {p1, v3, p3, p4}, Lfd;->h(III)Z

    move-result v3

    if-nez v3, :cond_27

    const/4 v3, 0x2

    if-ne p5, v3, :cond_27

    move v0, v2

    :cond_27
    add-int/lit8 v3, p4, -0x1

    .line 106
    invoke-virtual {p1, p2, p3, v3}, Lfd;->h(III)Z

    move-result v3

    if-nez v3, :cond_33

    const/4 v3, 0x3

    if-ne p5, v3, :cond_33

    move v0, v2

    :cond_33
    add-int/lit8 v3, p4, 0x1

    .line 107
    invoke-virtual {p1, p2, p3, v3}, Lfd;->h(III)Z

    move-result v3

    if-nez v3, :cond_3f

    const/4 v3, 0x4

    if-ne p5, v3, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v0

    :goto_40
    if-eqz v2, :cond_51

    .line 110
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Loi;->g(Lfd;IIII)V

    .line 111
    invoke-virtual {p1, p2, p3, p4, v1}, Lfd;->f(IIII)Z

    :cond_51
    return-void
.end method

.method public b(Lfd;IIILgs;)V
    .registers 6

    .line 148
    invoke-virtual/range {p0 .. p5}, Loi;->a(Lfd;IIILgs;)Z

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lxp;IIII)Z
    .registers 6

    .line 203
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-lez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lfd;IIII)Z
    .registers 9

    .line 207
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p1

    and-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_a

    return p3

    :cond_a
    and-int/lit8 p1, p1, 0x7

    const/4 p2, 0x5

    const/4 p4, 0x1

    if-ne p1, p2, :cond_13

    if-ne p5, p4, :cond_13

    return p4

    :cond_13
    const/4 v0, 0x2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1a

    if-ne p5, v0, :cond_1a

    return p4

    :cond_1a
    const/4 v2, 0x3

    if-ne p1, v2, :cond_20

    if-ne p5, v2, :cond_20

    return p4

    :cond_20
    if-ne p1, v0, :cond_25

    if-ne p5, v1, :cond_25

    return p4

    :cond_25
    if-ne p1, p4, :cond_2a

    if-ne p5, p2, :cond_2a

    return p4

    :cond_2a
    return p3
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

.method public e(Lfd;IIII)V
    .registers 11

    .line 59
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne p5, v2, :cond_13

    add-int/lit8 v3, p4, 0x1

    .line 64
    invoke-virtual {p1, p2, p3, v3}, Lfd;->h(III)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_3d

    :cond_13
    const/4 v3, 0x3

    if-ne p5, v3, :cond_20

    add-int/lit8 v4, p4, -0x1

    .line 65
    invoke-virtual {p1, p2, p3, v4}, Lfd;->h(III)Z

    move-result v4

    if-eqz v4, :cond_20

    move v1, v3

    goto :goto_3d

    :cond_20
    if-ne p5, v1, :cond_2c

    add-int/lit8 v1, p2, 0x1

    .line 66
    invoke-virtual {p1, v1, p3, p4}, Lfd;->h(III)Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v2

    goto :goto_3d

    :cond_2c
    const/4 v1, 0x5

    if-ne p5, v1, :cond_39

    add-int/lit8 p5, p2, -0x1

    .line 67
    invoke-virtual {p1, p5, p3, p4}, Lfd;->h(III)Z

    move-result p5

    if-eqz p5, :cond_39

    const/4 v1, 0x1

    goto :goto_3d

    .line 68
    :cond_39
    invoke-direct {p0, p1, p2, p3, p4}, Loi;->h(Lfd;III)I

    move-result v1

    :goto_3d
    add-int/2addr v1, v0

    .line 70
    invoke-virtual {p1, p2, p3, p4, v1}, Lfd;->d(IIII)V

    return-void
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .registers 8

    const/high16 v1, 0x3ea00000    # 0.3125f

    const/high16 v3, 0x3ec00000    # 0.375f

    const/high16 v4, 0x3f300000    # 0.6875f

    const/high16 v6, 0x3f200000    # 0.625f

    move-object v0, p0

    move v2, v3

    move v5, v6

    .line 255
    invoke-virtual/range {v0 .. v6}, Loi;->a(FFFFFF)V

    return-void
.end method
