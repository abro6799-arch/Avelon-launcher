###### Class defpackage.xr (xr)
.class public Lxr;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    .line 11
    sget-object v0, Lln;->o:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    return-void
.end method

.method private h(Lfd;III)Z
    .registers 12

    .line 117
    invoke-virtual {p0, p1, p2, p3, p4}, Lxr;->a(Lfd;III)Z

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

    invoke-virtual/range {v1 .. v6}, Lxr;->g(Lfd;IIII)V

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    return v0

    :cond_17
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lxp;III)V
    .registers 21

    .line 126
    invoke-interface/range {p1 .. p4}, Lxp;->e(III)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3ea00000    # 0.3125f

    const/high16 v6, 0x3ec00000    # 0.375f

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f300000    # 0.6875f

    move-object/from16 v2, p0

    .line 129
    invoke-virtual/range {v2 .. v8}, Lxr;->a(FFFFFF)V

    goto :goto_6f

    :cond_1c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    const/high16 v3, 0x3f200000    # 0.625f

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3ea00000    # 0.3125f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f300000    # 0.6875f

    move-object/from16 v2, p0

    .line 131
    invoke-virtual/range {v2 .. v8}, Lxr;->a(FFFFFF)V

    goto :goto_6f

    :cond_33
    const/4 v1, 0x3

    if-ne v0, v1, :cond_49

    const/high16 v3, 0x3ea00000    # 0.3125f

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x0

    const/high16 v6, 0x3f300000    # 0.6875f

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3ec00000    # 0.375f

    move-object/from16 v2, p0

    .line 133
    invoke-virtual/range {v2 .. v8}, Lxr;->a(FFFFFF)V

    goto :goto_6f

    :cond_49
    const/4 v1, 0x4

    if-ne v0, v1, :cond_60

    const/high16 v3, 0x3ea00000    # 0.3125f

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f200000    # 0.625f

    const/high16 v6, 0x3f300000    # 0.6875f

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    .line 135
    invoke-virtual/range {v2 .. v8}, Lxr;->a(FFFFFF)V

    goto :goto_6f

    :cond_60
    const/high16 v12, 0x3e800000    # 0.25f

    const/4 v11, 0x0

    const/high16 v15, 0x3f400000    # 0.75f

    const v14, 0x3f19999a    # 0.6f

    move-object/from16 v9, p0

    move v10, v12

    move v13, v15

    .line 138
    invoke-virtual/range {v9 .. v15}, Lxr;->a(FFFFFF)V

    :goto_6f
    return-void
.end method

.method public a(Lfd;III)Z
    .registers 7

    add-int/lit8 v0, p2, -0x1

    .line 44
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, p2, 0x1

    .line 46
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    add-int/lit8 v0, p4, -0x1

    .line 48
    invoke-virtual {p1, p2, p3, v0}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v0, p4, 0x1

    .line 50
    invoke-virtual {p1, p2, p3, v0}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_25

    return v1

    :cond_25
    sub-int/2addr p3, v1

    .line 52
    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p1

    if-eqz p1, :cond_2d

    return v1

    :cond_2d
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIII)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p5, v0, :cond_c

    add-int/lit8 v1, p3, -0x1

    .line 35
    invoke-virtual {p1, p2, v1, p4}, Lfd;->h(III)Z

    move-result v1

    if-eqz v1, :cond_c

    return v0

    :cond_c
    const/4 v1, 0x2

    if-ne p5, v1, :cond_18

    add-int/lit8 v1, p4, 0x1

    .line 36
    invoke-virtual {p1, p2, p3, v1}, Lfd;->h(III)Z

    move-result v1

    if-eqz v1, :cond_18

    return v0

    :cond_18
    const/4 v1, 0x3

    if-ne p5, v1, :cond_24

    add-int/lit8 v1, p4, -0x1

    .line 37
    invoke-virtual {p1, p2, p3, v1}, Lfd;->h(III)Z

    move-result v1

    if-eqz v1, :cond_24

    return v0

    :cond_24
    const/4 v1, 0x4

    if-ne p5, v1, :cond_30

    add-int/lit8 v1, p2, 0x1

    .line 38
    invoke-virtual {p1, v1, p3, p4}, Lfd;->h(III)Z

    move-result v1

    if-eqz v1, :cond_30

    return v0

    :cond_30
    const/4 v1, 0x5

    if-ne p5, v1, :cond_3b

    sub-int/2addr p2, v0

    .line 39
    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p1

    if-eqz p1, :cond_3b

    return v0

    :cond_3b
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    .line 147
    iget-boolean v1, v11, Lfd;->B:Z

    const/4 v15, 0x1

    if-eqz v1, :cond_10

    return v15

    .line 148
    :cond_10
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v1

    and-int/lit8 v10, v1, 0x7

    and-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v8, v1, 0x8

    add-int v1, v10, v8

    .line 152
    invoke-virtual {v11, v12, v13, v14, v1}, Lfd;->d(IIII)V

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 153
    invoke-virtual/range {v1 .. v7}, Lfd;->b(IIIIII)V

    int-to-double v1, v12

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double v5, v1, v3

    int-to-double v1, v13

    add-double v16, v1, v3

    int-to-double v1, v14

    add-double v18, v1, v3

    const-string v9, "random.click"

    const v20, 0x3e99999a    # 0.3f

    if-lez v8, :cond_46

    const v1, 0x3f19999a    # 0.6f

    goto :goto_48

    :cond_46
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_48
    move/from16 v21, v1

    move-object/from16 v1, p1

    move-wide v2, v5

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    move-object v8, v9

    move/from16 v9, v20

    move/from16 v22, v10

    move/from16 v10, v21

    .line 155
    invoke-virtual/range {v1 .. v10}, Lfd;->a(DDDLjava/lang/String;FF)V

    .line 157
    iget v1, v0, Lxr;->bn:I

    invoke-virtual {v11, v12, v13, v14, v1}, Lfd;->i(IIII)V

    move/from16 v1, v22

    if-ne v1, v15, :cond_6c

    add-int/lit8 v1, v12, -0x1

    .line 159
    iget v2, v0, Lxr;->bn:I

    invoke-virtual {v11, v1, v13, v14, v2}, Lfd;->i(IIII)V

    goto :goto_94

    :cond_6c
    const/4 v2, 0x2

    if-ne v1, v2, :cond_77

    add-int/lit8 v1, v12, 0x1

    .line 161
    iget v2, v0, Lxr;->bn:I

    invoke-virtual {v11, v1, v13, v14, v2}, Lfd;->i(IIII)V

    goto :goto_94

    :cond_77
    const/4 v2, 0x3

    if-ne v1, v2, :cond_82

    add-int/lit8 v1, v14, -0x1

    .line 163
    iget v2, v0, Lxr;->bn:I

    invoke-virtual {v11, v12, v13, v1, v2}, Lfd;->i(IIII)V

    goto :goto_94

    :cond_82
    const/4 v2, 0x4

    if-ne v1, v2, :cond_8d

    add-int/lit8 v1, v14, 0x1

    .line 165
    iget v2, v0, Lxr;->bn:I

    invoke-virtual {v11, v12, v13, v1, v2}, Lfd;->i(IIII)V

    goto :goto_94

    :cond_8d
    add-int/lit8 v1, v13, -0x1

    .line 167
    iget v2, v0, Lxr;->bn:I

    invoke-virtual {v11, v12, v1, v14, v2}, Lfd;->i(IIII)V

    :goto_94
    return v15
.end method

.method public b()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public b(Lfd;III)V
    .registers 7

    .line 174
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    and-int/lit8 v1, v0, 0x8

    if-lez v1, :cond_42

    .line 176
    iget v1, p0, Lxr;->bn:I

    invoke-virtual {p1, p2, p3, p4, v1}, Lfd;->i(IIII)V

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    add-int/lit8 v0, p2, -0x1

    .line 179
    iget v1, p0, Lxr;->bn:I

    invoke-virtual {p1, v0, p3, p4, v1}, Lfd;->i(IIII)V

    goto :goto_42

    :cond_1a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    add-int/lit8 v0, p2, 0x1

    .line 181
    iget v1, p0, Lxr;->bn:I

    invoke-virtual {p1, v0, p3, p4, v1}, Lfd;->i(IIII)V

    goto :goto_42

    :cond_25
    const/4 v1, 0x3

    if-ne v0, v1, :cond_30

    add-int/lit8 v0, p4, -0x1

    .line 183
    iget v1, p0, Lxr;->bn:I

    invoke-virtual {p1, p2, p3, v0, v1}, Lfd;->i(IIII)V

    goto :goto_42

    :cond_30
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3b

    add-int/lit8 v0, p4, 0x1

    .line 185
    iget v1, p0, Lxr;->bn:I

    invoke-virtual {p1, p2, p3, v0, v1}, Lfd;->i(IIII)V

    goto :goto_42

    :cond_3b
    add-int/lit8 v0, p3, -0x1

    .line 187
    iget v1, p0, Lxr;->bn:I

    invoke-virtual {p1, p2, v0, p4, v1}, Lfd;->i(IIII)V

    .line 190
    :cond_42
    :goto_42
    invoke-super {p0, p1, p2, p3, p4}, Luu;->b(Lfd;III)V

    return-void
.end method

.method public b(Lfd;IIII)V
    .registers 15

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lxr;->h(Lfd;III)Z

    move-result p5

    if-eqz p5, :cond_67

    .line 99
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p5

    and-int/lit8 p5, p5, 0x7

    add-int/lit8 v0, p2, -0x1

    .line 102
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

    .line 103
    invoke-virtual {p1, v3, p3, p4}, Lfd;->h(III)Z

    move-result v3

    if-nez v3, :cond_27

    const/4 v3, 0x2

    if-ne p5, v3, :cond_27

    move v0, v2

    :cond_27
    add-int/lit8 v3, p4, -0x1

    .line 104
    invoke-virtual {p1, p2, p3, v3}, Lfd;->h(III)Z

    move-result v3

    if-nez v3, :cond_33

    const/4 v3, 0x3

    if-ne p5, v3, :cond_33

    move v0, v2

    :cond_33
    add-int/lit8 v3, p4, 0x1

    .line 105
    invoke-virtual {p1, p2, p3, v3}, Lfd;->h(III)Z

    move-result v3

    if-nez v3, :cond_3f

    const/4 v3, 0x4

    if-ne p5, v3, :cond_3f

    move v0, v2

    :cond_3f
    add-int/lit8 v3, p3, -0x1

    .line 106
    invoke-virtual {p1, p2, v3, p4}, Lfd;->h(III)Z

    move-result v4

    if-nez v4, :cond_4b

    const/4 v4, 0x5

    if-ne p5, v4, :cond_4b

    move v0, v2

    .line 107
    :cond_4b
    invoke-virtual {p1, p2, v3, p4}, Lfd;->h(III)Z

    move-result v3

    if-nez v3, :cond_55

    const/4 v3, 0x6

    if-ne p5, v3, :cond_55

    goto :goto_56

    :cond_55
    move v2, v0

    :goto_56
    if-eqz v2, :cond_67

    .line 110
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lxr;->g(Lfd;IIII)V

    .line 111
    invoke-virtual {p1, p2, p3, p4, v1}, Lfd;->f(IIII)Z

    :cond_67
    return-void
.end method

.method public b(Lfd;IIILgs;)V
    .registers 6

    .line 143
    invoke-virtual/range {p0 .. p5}, Lxr;->a(Lfd;IIILgs;)Z

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lxp;IIII)Z
    .registers 6

    .line 194
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

    .line 198
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p1

    and-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_a

    return p3

    :cond_a
    and-int/lit8 p1, p1, 0x7

    const/4 p2, 0x6

    const/4 p4, 0x1

    if-ne p1, p2, :cond_13

    if-ne p5, p4, :cond_13

    return p4

    :cond_13
    const/4 p2, 0x5

    if-ne p1, p2, :cond_19

    if-ne p5, p4, :cond_19

    return p4

    :cond_19
    const/4 v0, 0x2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_20

    if-ne p5, v0, :cond_20

    return p4

    :cond_20
    const/4 v2, 0x3

    if-ne p1, v2, :cond_26

    if-ne p5, v2, :cond_26

    return p4

    :cond_26
    if-ne p1, v0, :cond_2b

    if-ne p5, v1, :cond_2b

    return p4

    :cond_2b
    if-ne p1, p4, :cond_30

    if-ne p5, p2, :cond_30

    return p4

    :cond_30
    return p3
.end method

.method public e(Lfd;III)Leq;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lfd;IIII)V
    .registers 20

    move-object v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v0, p5

    .line 59
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_25

    add-int/lit8 v10, v8, -0x1

    .line 67
    invoke-virtual {p1, v7, v10, v9}, Lfd;->h(III)Z

    move-result v10

    if-eqz v10, :cond_25

    iget-object v10, v6, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v10, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/2addr v10, v2

    goto :goto_26

    :cond_25
    move v10, v4

    :goto_26
    const/4 v11, 0x4

    if-ne v0, v3, :cond_32

    add-int/lit8 v12, v9, 0x1

    .line 68
    invoke-virtual {p1, v7, v8, v12}, Lfd;->h(III)Z

    move-result v12

    if-eqz v12, :cond_32

    move v10, v11

    :cond_32
    const/4 v12, 0x3

    if-ne v0, v12, :cond_3e

    add-int/lit8 v13, v9, -0x1

    .line 69
    invoke-virtual {p1, v7, v8, v13}, Lfd;->h(III)Z

    move-result v13

    if-eqz v13, :cond_3e

    move v10, v12

    :cond_3e
    if-ne v0, v11, :cond_49

    add-int/lit8 v11, v7, 0x1

    .line 70
    invoke-virtual {p1, v11, v8, v9}, Lfd;->h(III)Z

    move-result v11

    if-eqz v11, :cond_49

    goto :goto_4a

    :cond_49
    move v3, v10

    :goto_4a
    if-ne v0, v2, :cond_55

    add-int/lit8 v0, v7, -0x1

    .line 71
    invoke-virtual {p1, v0, v8, v9}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_56

    :cond_55
    move v5, v3

    :goto_56
    if-ne v5, v4, :cond_6c

    .line 74
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lxr;->g(Lfd;IIII)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v7, v8, v9, v0}, Lfd;->f(IIII)Z

    return-void

    :cond_6c
    add-int/2addr v5, v1

    .line 79
    invoke-virtual {p1, v7, v8, v9, v5}, Lfd;->d(IIII)V

    return-void
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
