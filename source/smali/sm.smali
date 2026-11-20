###### Class defpackage.sm (sm)
.class public Lsm;
.super Luu;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/util/Set;


# direct methods
.method public constructor <init>(II)V
    .registers 10

    .line 16
    sget-object v0, Lln;->o:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lsm;->a:Z

    .line 13
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lsm;->b:Ljava/util/Set;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3d800000    # 0.0625f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 17
    invoke-virtual/range {v0 .. v6}, Lsm;->a(FFFFFF)V

    return-void
.end method

.method private a(Lfd;IIIIII)V
    .registers 29

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v13, p7

    .line 59
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v14

    const/4 v15, 0x0

    .line 62
    iput-boolean v15, v8, Lsm;->a:Z

    .line 63
    invoke-virtual/range {p1 .. p4}, Lfd;->s(III)Z

    move-result v0

    const/4 v5, 0x1

    .line 64
    iput-boolean v5, v8, Lsm;->a:Z

    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v2, 0x2

    if-eqz v0, :cond_29

    const/16 v0, 0xf

    move v7, v0

    move v8, v5

    goto/16 :goto_b9

    :cond_29
    move v1, v15

    move/from16 v16, v1

    :goto_2c
    if-ge v1, v3, :cond_b1

    if-nez v1, :cond_33

    add-int/lit8 v0, v10, -0x1

    goto :goto_34

    :cond_33
    move v0, v10

    :goto_34
    if-ne v1, v5, :cond_38

    add-int/lit8 v0, v0, 0x1

    :cond_38
    if-ne v1, v2, :cond_3d

    add-int/lit8 v17, v12, -0x1

    goto :goto_3f

    :cond_3d
    move/from16 v17, v12

    :goto_3f
    if-ne v1, v4, :cond_43

    add-int/lit8 v17, v17, 0x1

    :cond_43
    move/from16 v15, v17

    if-ne v0, v6, :cond_53

    if-ne v11, v7, :cond_53

    if-eq v15, v13, :cond_4c

    goto :goto_53

    :cond_4c
    move v2, v0

    move/from16 v19, v1

    move v8, v5

    move/from16 v5, v16

    goto :goto_6a

    :cond_53
    :goto_53
    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move v8, v2

    move/from16 v2, v17

    move v8, v3

    move/from16 v3, p3

    move v4, v15

    move v8, v5

    move/from16 v5, v16

    .line 77
    invoke-direct/range {v0 .. v5}, Lsm;->f(Lfd;IIII)I

    move-result v0

    move v5, v0

    .line 78
    :goto_6a
    invoke-virtual {v9, v2, v11, v15}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_88

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v9, v10, v3, v12}, Lfd;->h(III)Z

    move-result v0

    if-nez v0, :cond_88

    if-ne v2, v6, :cond_7e

    if-ne v3, v7, :cond_7e

    if-eq v15, v13, :cond_a4

    :cond_7e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v15

    .line 79
    invoke-direct/range {v0 .. v5}, Lsm;->f(Lfd;IIII)I

    move-result v0

    goto :goto_a1

    .line 80
    :cond_88
    invoke-virtual {v9, v2, v11, v15}, Lfd;->h(III)Z

    move-result v0

    if-nez v0, :cond_a4

    if-ne v2, v6, :cond_96

    add-int/lit8 v0, v11, -0x1

    if-ne v0, v7, :cond_96

    if-eq v15, v13, :cond_a4

    :cond_96
    add-int/lit8 v3, v11, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v15

    .line 81
    invoke-direct/range {v0 .. v5}, Lsm;->f(Lfd;IIII)I

    move-result v0

    :goto_a1
    move/from16 v16, v0

    goto :goto_a6

    :cond_a4
    move/from16 v16, v5

    :goto_a6
    add-int/lit8 v1, v19, 0x1

    move v5, v8

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v15, 0x0

    move-object/from16 v8, p0

    goto/16 :goto_2c

    :cond_b1
    move v8, v5

    if-lez v16, :cond_b8

    add-int/lit8 v0, v16, -0x1

    move v7, v0

    goto :goto_b9

    :cond_b8
    const/4 v7, 0x0

    :goto_b9
    if-eq v14, v7, :cond_1c9

    .line 89
    iput-boolean v8, v9, Lfd;->o:Z

    .line 90
    invoke-virtual {v9, v10, v11, v12, v7}, Lfd;->d(IIII)V

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 91
    invoke-virtual/range {v0 .. v6}, Lfd;->b(IIIIII)V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, v9, Lfd;->o:Z

    move v15, v0

    const/4 v13, 0x4

    :goto_d6
    if-ge v15, v13, :cond_170

    add-int/lit8 v0, v11, -0x1

    if-nez v15, :cond_df

    add-int/lit8 v1, v10, -0x1

    goto :goto_e0

    :cond_df
    move v1, v10

    :goto_e0
    if-ne v15, v8, :cond_e4

    add-int/lit8 v1, v1, 0x1

    :cond_e4
    move v7, v1

    const/4 v6, 0x2

    if-ne v15, v6, :cond_eb

    add-int/lit8 v1, v12, -0x1

    goto :goto_ec

    :cond_eb
    move v1, v12

    :goto_ec
    const/4 v5, 0x3

    if-ne v15, v5, :cond_f1

    add-int/lit8 v1, v1, 0x1

    :cond_f1
    move v4, v1

    .line 103
    invoke-virtual {v9, v7, v11, v4}, Lfd;->h(III)Z

    move-result v1

    if-eqz v1, :cond_fa

    add-int/lit8 v0, v0, 0x2

    :cond_fa
    move/from16 v16, v0

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    move/from16 v3, p3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v5, v17

    .line 106
    invoke-direct/range {v0 .. v5}, Lsm;->f(Lfd;IIII)I

    move-result v0

    .line 107
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v1

    if-lez v1, :cond_117

    add-int/lit8 v1, v1, -0x1

    :cond_117
    if-ltz v0, :cond_132

    if-eq v0, v1, :cond_132

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    move/from16 v3, p3

    move/from16 v4, v18

    move/from16 v5, p2

    move/from16 v17, v6

    move/from16 v6, p3

    move/from16 v20, v7

    move/from16 v7, p4

    .line 110
    invoke-direct/range {v0 .. v7}, Lsm;->a(Lfd;IIIIII)V

    goto :goto_136

    :cond_132
    move/from16 v17, v6

    move/from16 v20, v7

    :goto_136
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v16

    move/from16 v4, v18

    .line 112
    invoke-direct/range {v0 .. v5}, Lsm;->f(Lfd;IIII)I

    move-result v0

    .line 113
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v1

    if-lez v1, :cond_14d

    add-int/lit8 v1, v1, -0x1

    :cond_14d
    move v7, v1

    if-ltz v0, :cond_168

    if-eq v0, v7, :cond_168

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v16

    move/from16 v4, v18

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v16, v7

    move/from16 v7, p4

    .line 116
    invoke-direct/range {v0 .. v7}, Lsm;->a(Lfd;IIIIII)V

    goto :goto_16a

    :cond_168
    move/from16 v16, v7

    :goto_16a
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v16

    goto/16 :goto_d6

    :cond_170
    if-eqz v14, :cond_174

    if-nez v7, :cond_1c9

    :cond_174
    move-object/from16 v0, p0

    .line 121
    iget-object v1, v0, Lsm;->b:Ljava/util/Set;

    new-instance v2, Lwf;

    invoke-direct {v2, v10, v11, v12}, Lwf;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, v0, Lsm;->b:Ljava/util/Set;

    new-instance v2, Lwf;

    add-int/lit8 v3, v10, -0x1

    invoke-direct {v2, v3, v11, v12}, Lwf;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, v0, Lsm;->b:Ljava/util/Set;

    new-instance v2, Lwf;

    add-int/lit8 v3, v10, 0x1

    invoke-direct {v2, v3, v11, v12}, Lwf;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, v0, Lsm;->b:Ljava/util/Set;

    new-instance v2, Lwf;

    add-int/lit8 v3, v11, -0x1

    invoke-direct {v2, v10, v3, v12}, Lwf;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, v0, Lsm;->b:Ljava/util/Set;

    new-instance v2, Lwf;

    add-int/lit8 v3, v11, 0x1

    invoke-direct {v2, v10, v3, v12}, Lwf;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, v0, Lsm;->b:Ljava/util/Set;

    new-instance v2, Lwf;

    add-int/lit8 v3, v12, -0x1

    invoke-direct {v2, v10, v11, v3}, Lwf;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, v0, Lsm;->b:Ljava/util/Set;

    new-instance v2, Lwf;

    add-int/lit8 v3, v12, 0x1

    invoke-direct {v2, v10, v11, v3}, Lwf;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1cb

    :cond_1c9
    move-object/from16 v0, p0

    :goto_1cb
    return-void
.end method

.method public static e(Lxp;IIII)Z
    .registers 9

    .line 280
    invoke-interface {p0, p1, p2, p3}, Lxp;->a(III)I

    move-result v0

    .line 281
    sget-object v1, Luu;->aw:Luu;

    iget v1, v1, Luu;->bn:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 283
    :cond_10
    sget-object v3, Luu;->m:[Luu;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Luu;->f()Z

    move-result v3

    if-eqz v3, :cond_1b

    return v2

    .line 284
    :cond_1b
    sget-object v3, Luu;->bi:Luu;

    iget v3, v3, Luu;->bn:I

    if-eq v0, v3, :cond_29

    sget-object v3, Luu;->bj:Luu;

    iget v3, v3, Luu;->bn:I

    if-ne v0, v3, :cond_28

    goto :goto_29

    :cond_28
    return v1

    .line 285
    :cond_29
    :goto_29
    invoke-interface {p0, p1, p2, p3}, Lxp;->e(III)I

    move-result p0

    .line 286
    sget-object p1, Ljj;->b:[I

    and-int/lit8 p0, p0, 0x3

    aget p0, p1, p0

    if-ne p4, p0, :cond_36

    goto :goto_37

    :cond_36
    move v2, v1

    :goto_37
    return v2
.end method

.method private f(Lfd;IIII)I
    .registers 8

    .line 192
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result v0

    iget v1, p0, Lsm;->bn:I

    if-eq v0, v1, :cond_9

    return p5

    .line 193
    :cond_9
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p1

    if-le p1, p5, :cond_10

    return p1

    :cond_10
    return p5
.end method

.method private h(Lfd;III)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p2

    move v6, p3

    move v7, p4

    .line 49
    invoke-direct/range {v0 .. v7}, Lsm;->a(Lfd;IIIIII)V

    .line 50
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lsm;->b:Ljava/util/Set;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    iget-object p3, p0, Lsm;->b:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    const/4 p3, 0x0

    .line 52
    :goto_18
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_32

    .line 53
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lwf;

    .line 54
    iget v0, p4, Lwf;->a:I

    iget v1, p4, Lwf;->b:I

    iget p4, p4, Lwf;->c:I

    iget v2, p0, Lsm;->bn:I

    invoke-virtual {p1, v0, v1, p4, v2}, Lfd;->i(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_18

    :cond_32
    return-void
.end method

.method private i(Lfd;III)V
    .registers 7

    .line 133
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result v0

    iget v1, p0, Lsm;->bn:I

    if-eq v0, v1, :cond_9

    return-void

    .line 135
    :cond_9
    iget v0, p0, Lsm;->bn:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->i(IIII)V

    add-int/lit8 v0, p2, -0x1

    .line 136
    iget v1, p0, Lsm;->bn:I

    invoke-virtual {p1, v0, p3, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p2, 0x1

    .line 137
    iget v1, p0, Lsm;->bn:I

    invoke-virtual {p1, v0, p3, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p4, -0x1

    .line 138
    iget v1, p0, Lsm;->bn:I

    invoke-virtual {p1, p2, p3, v0, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p4, 0x1

    .line 139
    iget v1, p0, Lsm;->bn:I

    invoke-virtual {p1, p2, p3, v0, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p3, -0x1

    .line 141
    iget v1, p0, Lsm;->bn:I

    invoke-virtual {p1, p2, v0, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 p3, p3, 0x1

    .line 142
    iget v0, p0, Lsm;->bn:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->i(IIII)V

    return-void
.end method


# virtual methods
.method public a(II)I
    .registers 3

    .line 21
    iget p1, p0, Lsm;->bm:I

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    .line 215
    sget-object p1, Lgm;->aA:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1
.end method

.method public a(Lfd;III)Z
    .registers 5

    add-int/lit8 p3, p3, -0x1

    .line 45
    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p1

    return p1
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public b(Lxp;III)I
    .registers 5

    const/high16 p1, 0x800000

    return p1
.end method

.method public b(Lfd;III)V
    .registers 12

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Luu;->b(Lfd;III)V

    .line 170
    iget-boolean v0, p1, Lfd;->B:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    add-int/lit8 v0, p3, 0x1

    .line 172
    iget v1, p0, Lsm;->bn:I

    invoke-virtual {p1, p2, v0, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v1, p3, -0x1

    .line 173
    iget v2, p0, Lsm;->bn:I

    invoke-virtual {p1, p2, v1, p4, v2}, Lfd;->i(IIII)V

    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Lsm;->h(Lfd;III)V

    add-int/lit8 v2, p2, -0x1

    .line 176
    invoke-direct {p0, p1, v2, p3, p4}, Lsm;->i(Lfd;III)V

    add-int/lit8 v3, p2, 0x1

    .line 177
    invoke-direct {p0, p1, v3, p3, p4}, Lsm;->i(Lfd;III)V

    add-int/lit8 v4, p4, -0x1

    .line 178
    invoke-direct {p0, p1, p2, p3, v4}, Lsm;->i(Lfd;III)V

    add-int/lit8 v5, p4, 0x1

    .line 179
    invoke-direct {p0, p1, p2, p3, v5}, Lsm;->i(Lfd;III)V

    .line 181
    invoke-virtual {p1, v2, p3, p4}, Lfd;->h(III)Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-direct {p0, p1, v2, v0, p4}, Lsm;->i(Lfd;III)V

    goto :goto_3a

    .line 182
    :cond_37
    invoke-direct {p0, p1, v2, v1, p4}, Lsm;->i(Lfd;III)V

    .line 183
    :goto_3a
    invoke-virtual {p1, v3, p3, p4}, Lfd;->h(III)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-direct {p0, p1, v3, v0, p4}, Lsm;->i(Lfd;III)V

    goto :goto_47

    .line 184
    :cond_44
    invoke-direct {p0, p1, v3, v1, p4}, Lsm;->i(Lfd;III)V

    .line 185
    :goto_47
    invoke-virtual {p1, p2, p3, v4}, Lfd;->h(III)Z

    move-result p4

    if-eqz p4, :cond_51

    invoke-direct {p0, p1, p2, v0, v4}, Lsm;->i(Lfd;III)V

    goto :goto_54

    .line 186
    :cond_51
    invoke-direct {p0, p1, p2, v1, v4}, Lsm;->i(Lfd;III)V

    .line 187
    :goto_54
    invoke-virtual {p1, p2, p3, v5}, Lfd;->h(III)Z

    move-result p3

    if-eqz p3, :cond_5e

    invoke-direct {p0, p1, p2, v0, v5}, Lsm;->i(Lfd;III)V

    goto :goto_61

    .line 188
    :cond_5e
    invoke-direct {p0, p1, p2, v1, v5}, Lsm;->i(Lfd;III)V

    :goto_61
    return-void
.end method

.method public b(Lfd;IIII)V
    .registers 13

    .line 199
    iget-boolean v0, p1, Lfd;->B:Z

    if-eqz v0, :cond_5

    return-void

    .line 200
    :cond_5
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v6

    .line 202
    invoke-virtual {p0, p1, p2, p3, p4}, Lsm;->a(Lfd;III)Z

    move-result v0

    if-nez v0, :cond_1c

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 205
    invoke-virtual/range {v1 .. v6}, Lsm;->g(Lfd;IIII)V

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    goto :goto_1f

    .line 208
    :cond_1c
    invoke-direct {p0, p1, p2, p3, p4}, Lsm;->h(Lfd;III)V

    .line 211
    :goto_1f
    invoke-super/range {p0 .. p5}, Luu;->b(Lfd;IIII)V

    return-void
.end method

.method public b(Lfd;IIILjava/util/Random;)V
    .registers 29

    .line 259
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v0

    if-lez v0, :cond_65

    move/from16 v1, p2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    .line 261
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    float-to-double v5, v5

    sub-double/2addr v5, v3

    const-wide v7, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v5, v7

    add-double v11, v1, v5

    move/from16 v1, p3

    int-to-float v1, v1

    const/high16 v2, 0x3d800000    # 0.0625f

    add-float/2addr v1, v2

    float-to-double v13, v1

    move/from16 v1, p4

    int-to-double v1, v1

    add-double/2addr v1, v3

    .line 263
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    float-to-double v5, v5

    sub-double/2addr v5, v3

    mul-double/2addr v5, v7

    add-double v15, v1, v5

    int-to-float v1, v0

    const/high16 v2, 0x41700000    # 15.0f

    div-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    mul-float v3, v1, v2

    const v4, 0x3ecccccd    # 0.4f

    add-float/2addr v3, v4

    const/4 v4, 0x0

    if-nez v0, :cond_3f

    move v3, v4

    :cond_3f
    mul-float/2addr v1, v1

    const v0, 0x3f333333    # 0.7f

    mul-float v5, v1, v0

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    mul-float/2addr v1, v2

    sub-float/2addr v1, v0

    cmpg-float v0, v5, v4

    if-gez v0, :cond_4f

    move v5, v4

    :cond_4f
    cmpg-float v0, v1, v4

    if-gez v0, :cond_54

    goto :goto_55

    :cond_54
    move v4, v1

    :goto_55
    const-string v10, "reddust"

    float-to-double v0, v3

    float-to-double v2, v5

    float-to-double v4, v4

    move-object/from16 v9, p1

    move-wide/from16 v17, v0

    move-wide/from16 v19, v2

    move-wide/from16 v21, v4

    .line 275
    invoke-virtual/range {v9 .. v22}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    :cond_65
    return-void
.end method

.method public c(Lfd;III)V
    .registers 12

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Luu;->c(Lfd;III)V

    .line 147
    iget-boolean v0, p1, Lfd;->B:Z

    if-eqz v0, :cond_8

    return-void

    .line 149
    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Lsm;->h(Lfd;III)V

    add-int/lit8 v0, p3, 0x1

    .line 150
    iget v1, p0, Lsm;->bn:I

    invoke-virtual {p1, p2, v0, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v1, p3, -0x1

    .line 151
    iget v2, p0, Lsm;->bn:I

    invoke-virtual {p1, p2, v1, p4, v2}, Lfd;->i(IIII)V

    add-int/lit8 v2, p2, -0x1

    .line 153
    invoke-direct {p0, p1, v2, p3, p4}, Lsm;->i(Lfd;III)V

    add-int/lit8 v3, p2, 0x1

    .line 154
    invoke-direct {p0, p1, v3, p3, p4}, Lsm;->i(Lfd;III)V

    add-int/lit8 v4, p4, -0x1

    .line 155
    invoke-direct {p0, p1, p2, p3, v4}, Lsm;->i(Lfd;III)V

    add-int/lit8 v5, p4, 0x1

    .line 156
    invoke-direct {p0, p1, p2, p3, v5}, Lsm;->i(Lfd;III)V

    .line 158
    invoke-virtual {p1, v2, p3, p4}, Lfd;->h(III)Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-direct {p0, p1, v2, v0, p4}, Lsm;->i(Lfd;III)V

    goto :goto_3a

    .line 159
    :cond_37
    invoke-direct {p0, p1, v2, v1, p4}, Lsm;->i(Lfd;III)V

    .line 160
    :goto_3a
    invoke-virtual {p1, v3, p3, p4}, Lfd;->h(III)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-direct {p0, p1, v3, v0, p4}, Lsm;->i(Lfd;III)V

    goto :goto_47

    .line 161
    :cond_44
    invoke-direct {p0, p1, v3, v1, p4}, Lsm;->i(Lfd;III)V

    .line 162
    :goto_47
    invoke-virtual {p1, p2, p3, v4}, Lfd;->h(III)Z

    move-result p4

    if-eqz p4, :cond_51

    invoke-direct {p0, p1, p2, v0, v4}, Lsm;->i(Lfd;III)V

    goto :goto_54

    .line 163
    :cond_51
    invoke-direct {p0, p1, p2, v1, v4}, Lsm;->i(Lfd;III)V

    .line 164
    :goto_54
    invoke-virtual {p1, p2, p3, v5}, Lfd;->h(III)Z

    move-result p3

    if-eqz p3, :cond_5e

    invoke-direct {p0, p1, p2, v0, v5}, Lsm;->i(Lfd;III)V

    goto :goto_61

    .line 165
    :cond_5e
    invoke-direct {p0, p1, p2, v1, v5}, Lsm;->i(Lfd;III)V

    :goto_61
    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lxp;IIII)Z
    .registers 25

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p0

    move/from16 v5, p5

    .line 224
    iget-boolean v6, v4, Lsm;->a:Z

    const/4 v7, 0x0

    if-nez v6, :cond_12

    return v7

    .line 225
    :cond_12
    invoke-interface/range {p1 .. p4}, Lxp;->e(III)I

    move-result v6

    if-nez v6, :cond_19

    return v7

    :cond_19
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1d

    return v6

    :cond_1d
    add-int/lit8 v8, v1, -0x1

    .line 229
    invoke-static {v0, v8, v2, v3, v6}, Lsm;->e(Lxp;IIII)Z

    move-result v9

    const/4 v10, -0x1

    if-nez v9, :cond_37

    invoke-interface {v0, v8, v2, v3}, Lxp;->h(III)Z

    move-result v9

    if-nez v9, :cond_35

    add-int/lit8 v9, v2, -0x1

    invoke-static {v0, v8, v9, v3, v10}, Lsm;->e(Lxp;IIII)Z

    move-result v9

    if-eqz v9, :cond_35

    goto :goto_37

    :cond_35
    move v9, v7

    goto :goto_38

    :cond_37
    :goto_37
    move v9, v6

    :goto_38
    add-int/lit8 v11, v1, 0x1

    const/4 v12, 0x3

    .line 231
    invoke-static {v0, v11, v2, v3, v12}, Lsm;->e(Lxp;IIII)Z

    move-result v13

    if-nez v13, :cond_52

    invoke-interface {v0, v11, v2, v3}, Lxp;->h(III)Z

    move-result v13

    if-nez v13, :cond_50

    add-int/lit8 v13, v2, -0x1

    invoke-static {v0, v11, v13, v3, v10}, Lsm;->e(Lxp;IIII)Z

    move-result v13

    if-eqz v13, :cond_50

    goto :goto_52

    :cond_50
    move v13, v7

    goto :goto_53

    :cond_52
    :goto_52
    move v13, v6

    :goto_53
    add-int/lit8 v14, v3, -0x1

    const/4 v15, 0x2

    .line 233
    invoke-static {v0, v1, v2, v14, v15}, Lsm;->e(Lxp;IIII)Z

    move-result v16

    if-nez v16, :cond_6d

    invoke-interface {v0, v1, v2, v14}, Lxp;->h(III)Z

    move-result v16

    if-nez v16, :cond_6b

    add-int/lit8 v12, v2, -0x1

    invoke-static {v0, v1, v12, v14, v10}, Lsm;->e(Lxp;IIII)Z

    move-result v12

    if-eqz v12, :cond_6b

    goto :goto_6d

    :cond_6b
    move v12, v7

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v12, v6

    :goto_6e
    add-int/lit8 v6, v3, 0x1

    .line 235
    invoke-static {v0, v1, v2, v6, v7}, Lsm;->e(Lxp;IIII)Z

    move-result v17

    if-nez v17, :cond_87

    invoke-interface {v0, v1, v2, v6}, Lxp;->h(III)Z

    move-result v17

    if-nez v17, :cond_85

    add-int/lit8 v7, v2, -0x1

    invoke-static {v0, v1, v7, v6, v10}, Lsm;->e(Lxp;IIII)Z

    move-result v7

    if-eqz v7, :cond_85

    goto :goto_87

    :cond_85
    const/4 v7, 0x0

    goto :goto_88

    :cond_87
    :goto_87
    const/4 v7, 0x1

    :goto_88
    add-int/lit8 v15, v2, 0x1

    .line 237
    invoke-interface {v0, v1, v15, v3}, Lxp;->h(III)Z

    move-result v18

    if-nez v18, :cond_c4

    .line 238
    invoke-interface {v0, v8, v2, v3}, Lxp;->h(III)Z

    move-result v18

    if-eqz v18, :cond_9d

    invoke-static {v0, v8, v15, v3, v10}, Lsm;->e(Lxp;IIII)Z

    move-result v8

    if-eqz v8, :cond_9d

    const/4 v9, 0x1

    .line 239
    :cond_9d
    invoke-interface {v0, v11, v2, v3}, Lxp;->h(III)Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-static {v0, v11, v15, v3, v10}, Lsm;->e(Lxp;IIII)Z

    move-result v3

    if-eqz v3, :cond_aa

    const/4 v13, 0x1

    .line 240
    :cond_aa
    invoke-interface {v0, v1, v2, v14}, Lxp;->h(III)Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-static {v0, v1, v15, v14, v10}, Lsm;->e(Lxp;IIII)Z

    move-result v3

    if-eqz v3, :cond_b7

    const/4 v12, 0x1

    .line 241
    :cond_b7
    invoke-interface {v0, v1, v2, v6}, Lxp;->h(III)Z

    move-result v2

    if-eqz v2, :cond_c4

    invoke-static {v0, v1, v15, v6, v10}, Lsm;->e(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/4 v7, 0x1

    :cond_c4
    const/4 v0, 0x5

    if-nez v12, :cond_d4

    if-nez v13, :cond_d4

    if-nez v9, :cond_d4

    if-nez v7, :cond_d4

    const/4 v1, 0x2

    if-lt v5, v1, :cond_d5

    if-gt v5, v0, :cond_d5

    const/4 v2, 0x1

    return v2

    :cond_d4
    const/4 v1, 0x2

    :cond_d5
    const/4 v2, 0x1

    if-ne v5, v1, :cond_df

    if-eqz v12, :cond_df

    if-nez v9, :cond_df

    if-nez v13, :cond_df

    return v2

    :cond_df
    const/4 v1, 0x3

    if-ne v5, v1, :cond_e9

    if-eqz v7, :cond_e9

    if-nez v9, :cond_e9

    if-nez v13, :cond_e9

    return v2

    :cond_e9
    const/4 v1, 0x4

    if-ne v5, v1, :cond_f3

    if-eqz v9, :cond_f3

    if-nez v12, :cond_f3

    if-nez v7, :cond_f3

    return v2

    :cond_f3
    if-ne v5, v0, :cond_fc

    if-eqz v13, :cond_fc

    if-nez v12, :cond_fc

    if-nez v7, :cond_fc

    return v2

    :cond_fc
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lfd;IIII)Z
    .registers 7

    .line 219
    iget-boolean v0, p0, Lsm;->a:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 220
    :cond_6
    invoke-virtual/range {p0 .. p5}, Lsm;->c(Lxp;IIII)Z

    move-result p1

    return p1
.end method

.method public e(Lfd;III)Leq;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public f()Z
    .registers 2

    .line 255
    iget-boolean v0, p0, Lsm;->a:Z

    return v0
.end method
