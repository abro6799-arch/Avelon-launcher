###### Class defpackage.bk (bk)
.class public Lbk;
.super Lnr;
.source "SourceFile"


# instance fields
.field a:[I

.field private c:I


# direct methods
.method protected constructor <init>(II)V
    .registers 5

    .line 27
    sget-object v0, Lln;->i:Lln;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lnr;-><init>(IILln;Z)V

    .line 28
    iput p2, p0, Lbk;->c:I

    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lbk;->b(Z)Luu;

    return-void
.end method

.method private h(Lfd;III)V
    .registers 11

    .line 155
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lbk;->g(Lfd;IIII)V

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    return-void
.end method


# virtual methods
.method public a(II)I
    .registers 3

    and-int/lit8 p1, p2, 0x3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_a

    .line 191
    iget p1, p0, Lbk;->bm:I

    add-int/lit8 p1, p1, 0x50

    return p1

    .line 193
    :cond_a
    iget p1, p0, Lbk;->bm:I

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    .line 164
    sget-object p1, Luu;->z:Luu;

    iget p1, p1, Luu;->bn:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 3

    const/16 v0, 0x14

    .line 160
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 90
    iget-boolean v1, v8, Lfd;->B:Z

    if-eqz v1, :cond_f

    return-void

    .line 92
    :cond_f
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v12

    and-int/lit8 v1, v12, 0x8

    if-eqz v1, :cond_122

    .line 100
    iget-object v1, v0, Lbk;->a:[I

    if-nez v1, :cond_22

    const v1, 0x8000

    new-array v1, v1, [I

    .line 101
    iput-object v1, v0, Lbk;->a:[I

    :cond_22
    add-int/lit8 v2, v9, -0x5

    add-int/lit8 v3, v10, -0x5

    add-int/lit8 v4, v11, -0x5

    add-int/lit8 v5, v9, 0x5

    add-int/lit8 v6, v10, 0x5

    add-int/lit8 v7, v11, 0x5

    move-object/from16 v1, p1

    .line 104
    invoke-virtual/range {v1 .. v7}, Lfd;->a(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_111

    const/4 v2, -0x4

    :goto_37
    const/4 v3, 0x4

    const/4 v4, -0x2

    if-gt v2, v3, :cond_94

    const/4 v5, -0x4

    :goto_3c
    if-gt v5, v3, :cond_91

    const/4 v6, -0x4

    :goto_3f
    if-gt v6, v3, :cond_8e

    add-int v7, v9, v2

    add-int v13, v10, v5

    add-int v14, v11, v6

    .line 108
    invoke-virtual {v8, v7, v13, v14}, Lfd;->a(III)I

    move-result v7

    .line 109
    sget-object v13, Luu;->K:Luu;

    iget v13, v13, Luu;->bn:I

    if-ne v7, v13, :cond_63

    .line 110
    iget-object v7, v0, Lbk;->a:[I

    add-int/lit8 v13, v2, 0x10

    mul-int/lit16 v13, v13, 0x400

    add-int/lit8 v14, v5, 0x10

    mul-int/lit8 v14, v14, 0x20

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x10

    add-int/2addr v13, v14

    const/4 v14, 0x0

    aput v14, v7, v13

    goto :goto_8b

    .line 111
    :cond_63
    sget-object v13, Luu;->L:Lbk;

    iget v13, v13, Lbk;->bn:I

    if-ne v7, v13, :cond_7a

    .line 112
    iget-object v7, v0, Lbk;->a:[I

    add-int/lit8 v13, v2, 0x10

    mul-int/lit16 v13, v13, 0x400

    add-int/lit8 v14, v5, 0x10

    mul-int/lit8 v14, v14, 0x20

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x10

    add-int/2addr v13, v14

    aput v4, v7, v13

    goto :goto_8b

    .line 114
    :cond_7a
    iget-object v7, v0, Lbk;->a:[I

    add-int/lit8 v13, v2, 0x10

    mul-int/lit16 v13, v13, 0x400

    add-int/lit8 v14, v5, 0x10

    mul-int/lit8 v14, v14, 0x20

    add-int/2addr v13, v14

    add-int/lit8 v14, v6, 0x10

    add-int/2addr v13, v14

    const/4 v14, -0x1

    aput v14, v7, v13

    :goto_8b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_8e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_94
    const/4 v2, 0x1

    :goto_95
    if-gt v2, v3, :cond_111

    const/4 v5, -0x4

    :goto_98
    if-gt v5, v3, :cond_10d

    const/4 v6, -0x4

    :goto_9b
    if-gt v6, v3, :cond_109

    const/4 v7, -0x4

    :goto_9e
    if-gt v7, v3, :cond_105

    .line 121
    iget-object v13, v0, Lbk;->a:[I

    add-int/lit8 v14, v5, 0x10

    mul-int/lit16 v15, v14, 0x400

    add-int/lit8 v16, v6, 0x10

    mul-int/lit8 v17, v16, 0x20

    add-int v18, v15, v17

    add-int/lit8 v19, v7, 0x10

    add-int v20, v18, v19

    aget v1, v13, v20

    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_101

    add-int/lit8 v1, v14, -0x1

    mul-int/lit16 v1, v1, 0x400

    add-int v1, v1, v17

    add-int v1, v1, v19

    .line 122
    aget v3, v13, v1

    if-ne v3, v4, :cond_c4

    .line 123
    aput v2, v13, v1

    :cond_c4
    add-int/lit8 v14, v14, 0x1

    mul-int/lit16 v14, v14, 0x400

    add-int v14, v14, v17

    add-int v14, v14, v19

    .line 125
    aget v1, v13, v14

    if-ne v1, v4, :cond_d2

    .line 126
    aput v2, v13, v14

    :cond_d2
    add-int/lit8 v1, v16, -0x1

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v15

    add-int v1, v1, v19

    .line 128
    aget v3, v13, v1

    if-ne v3, v4, :cond_df

    .line 129
    aput v2, v13, v1

    :cond_df
    add-int/lit8 v16, v16, 0x1

    mul-int/lit8 v16, v16, 0x20

    add-int v15, v15, v16

    add-int v15, v15, v19

    .line 131
    aget v1, v13, v15

    if-ne v1, v4, :cond_ed

    .line 132
    aput v2, v13, v15

    :cond_ed
    add-int/lit8 v1, v19, -0x1

    add-int v1, v18, v1

    .line 134
    aget v3, v13, v1

    if-ne v3, v4, :cond_f7

    .line 135
    aput v2, v13, v1

    :cond_f7
    add-int/lit8 v19, v19, 0x1

    add-int v18, v18, v19

    .line 137
    aget v1, v13, v18

    if-ne v1, v4, :cond_101

    .line 138
    aput v2, v13, v18

    :cond_101
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x4

    goto :goto_9e

    :cond_105
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x4

    goto :goto_9b

    :cond_109
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x4

    goto :goto_98

    :cond_10d
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x4

    goto :goto_95

    .line 145
    :cond_111
    iget-object v1, v0, Lbk;->a:[I

    const/16 v2, 0x4210

    aget v1, v1, v2

    if-ltz v1, :cond_11f

    and-int/lit8 v1, v12, -0x9

    .line 147
    invoke-virtual {v8, v9, v10, v11, v1}, Lfd;->e(IIII)Z

    goto :goto_122

    .line 149
    :cond_11f
    invoke-direct/range {p0 .. p4}, Lbk;->h(Lfd;III)V

    :cond_122
    :goto_122
    return-void
.end method

.method public a(Lfd;Lgs;IIII)V
    .registers 15

    .line 169
    iget-boolean v0, p1, Lfd;->B:Z

    if-nez v0, :cond_34

    invoke-virtual {p2}, Lgs;->G()Liz;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p2}, Lgs;->G()Liz;

    move-result-object v0

    iget v0, v0, Liz;->c:I

    sget-object v1, Lgm;->bc:Lbl;

    iget v1, v1, Lbl;->bf:I

    if-ne v0, v1, :cond_34

    .line 170
    sget-object v0, Ljl;->C:[Lvr;

    iget v1, p0, Lbk;->bn:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lgs;->a(Lvr;I)V

    .line 173
    new-instance v7, Liz;

    sget-object p2, Luu;->L:Lbk;

    iget p2, p2, Lbk;->bn:I

    and-int/lit8 p6, p6, 0x3

    invoke-direct {v7, p2, v1, p6}, Liz;-><init>(III)V

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v2 .. v7}, Lbk;->a(Lfd;IIILiz;)V

    goto :goto_37

    .line 175
    :cond_34
    invoke-super/range {p0 .. p6}, Lnr;->a(Lfd;Lgs;IIII)V

    :goto_37
    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 197
    iput-boolean p1, p0, Lbk;->b:Z

    .line 198
    iget v0, p0, Lbk;->c:I

    xor-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    iput v0, p0, Lbk;->bm:I

    return-void
.end method

.method public b(I)I
    .registers 4

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 43
    invoke-static {}, Ljh;->a()I

    move-result p1

    return p1

    :cond_a
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_13

    .line 46
    invoke-static {}, Ljh;->b()I

    move-result p1

    return p1

    .line 49
    :cond_13
    invoke-static {}, Ljh;->c()I

    move-result p1

    return p1
.end method

.method public b(Lxp;III)I
    .registers 7

    .line 54
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p3

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 57
    invoke-static {}, Ljh;->a()I

    move-result p1

    return p1

    :cond_e
    const/4 v0, 0x2

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_17

    .line 60
    invoke-static {}, Ljh;->b()I

    move-result p1

    return p1

    .line 63
    :cond_17
    invoke-interface {p1}, Lxp;->a()Lxv;

    move-result-object p3

    invoke-virtual {p3, p2, p4, v1, v1}, Lxv;->a(IIII)[Lkd;

    .line 64
    invoke-interface {p1}, Lxp;->a()Lxv;

    move-result-object p2

    iget-object p2, p2, Lxv;->a:[D

    const/4 p3, 0x0

    aget-wide v0, p2, p3

    .line 65
    invoke-interface {p1}, Lxp;->a()Lxv;

    move-result-object p1

    iget-object p1, p1, Lxv;->b:[D

    aget-wide p2, p1, p3

    .line 67
    invoke-static {v0, v1, p2, p3}, Ljh;->a(DD)I

    move-result p1

    return p1
.end method

.method public b(Lfd;III)V
    .registers 15

    add-int/lit8 v1, p2, -0x2

    add-int/lit8 v2, p3, -0x2

    add-int/lit8 v3, p4, -0x2

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, p3, 0x2

    add-int/lit8 v6, p4, 0x2

    move-object v0, p1

    .line 74
    invoke-virtual/range {v0 .. v6}, Lfd;->a(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, -0x1

    move v1, v0

    :goto_15
    const/4 v2, 0x1

    if-gt v1, v2, :cond_40

    move v3, v0

    :goto_19
    if-gt v3, v2, :cond_3d

    move v4, v0

    :goto_1c
    if-gt v4, v2, :cond_3a

    add-int v5, p2, v1

    add-int v6, p3, v3

    add-int v7, p4, v4

    .line 78
    invoke-virtual {p1, v5, v6, v7}, Lfd;->a(III)I

    move-result v8

    .line 79
    sget-object v9, Luu;->L:Lbk;

    iget v9, v9, Lbk;->bn:I

    if-ne v8, v9, :cond_37

    .line 80
    invoke-virtual {p1, v5, v6, v7}, Lfd;->e(III)I

    move-result v8

    or-int/lit8 v8, v8, 0x8

    .line 81
    invoke-virtual {p1, v5, v6, v7, v8}, Lfd;->e(IIII)Z

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_40
    return-void
.end method

.method public b(Lfd;IIILsn;)V
    .registers 6

    .line 202
    invoke-super/range {p0 .. p5}, Lnr;->b(Lfd;IIILsn;)V

    return-void
.end method

.method protected b_(I)I
    .registers 2

    and-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public c()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lbk;->b:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
