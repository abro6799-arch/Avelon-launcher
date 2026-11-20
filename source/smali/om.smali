###### Class defpackage.om (om)
.class public Lom;
.super Lrp;
.source "SourceFile"


# instance fields
.field a:I

.field b:[Z

.field c:[I


# direct methods
.method protected constructor <init>(ILln;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lrp;-><init>(ILln;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lom;->a:I

    const/4 p1, 0x4

    new-array p2, p1, [Z

    .line 111
    iput-object p2, p0, Lom;->b:[Z

    new-array p1, p1, [I

    .line 112
    iput-object p1, p0, Lom;->c:[I

    return-void
.end method

.method private b(Lfd;IIIII)I
    .registers 16

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    move v8, v1

    :goto_4
    const/4 v1, 0x4

    if-ge v8, v1, :cond_69

    const/4 v2, 0x1

    if-nez v8, :cond_e

    if-ne p6, v2, :cond_e

    goto/16 :goto_66

    :cond_e
    if-ne v8, v2, :cond_14

    if-nez p6, :cond_14

    goto/16 :goto_66

    :cond_14
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v8, v4, :cond_1b

    if-ne p6, v3, :cond_1b

    goto :goto_66

    :cond_1b
    if-ne v8, v3, :cond_20

    if-ne p6, v4, :cond_20

    goto :goto_66

    :cond_20
    if-nez v8, :cond_25

    add-int/lit8 v5, p2, -0x1

    goto :goto_26

    :cond_25
    move v5, p2

    :goto_26
    if-ne v8, v2, :cond_2a

    add-int/lit8 v5, v5, 0x1

    :cond_2a
    if-ne v8, v4, :cond_2f

    add-int/lit8 v2, p4, -0x1

    goto :goto_30

    :cond_2f
    move v2, p4

    :goto_30
    if-ne v8, v3, :cond_34

    add-int/lit8 v2, v2, 0x1

    :cond_34
    move v6, v2

    .line 131
    invoke-direct {p0, p1, v5, p3, v6}, Lom;->l(Lfd;III)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_66

    .line 133
    :cond_3c
    invoke-virtual {p1, v5, p3, v6}, Lfd;->f(III)Lln;

    move-result-object v2

    iget-object v3, p0, Lom;->bA:Lln;

    if-ne v2, v3, :cond_4b

    invoke-virtual {p1, v5, p3, v6}, Lfd;->e(III)I

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_66

    :cond_4b
    add-int/lit8 v2, p3, -0x1

    .line 136
    invoke-direct {p0, p1, v5, v2, v6}, Lom;->l(Lfd;III)Z

    move-result v2

    if-nez v2, :cond_54

    return p5

    :cond_54
    if-ge p5, v1, :cond_66

    add-int/lit8 v7, p5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, v5

    move v4, p3

    move v5, v6

    move v6, v7

    move v7, v8

    .line 140
    invoke-direct/range {v1 .. v7}, Lom;->b(Lfd;IIIII)I

    move-result v1

    if-ge v1, v0, :cond_66

    move v0, v1

    :cond_66
    :goto_66
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_69
    return v0
.end method

.method private h(Lfd;IIII)V
    .registers 21

    move-object v0, p0

    .line 98
    invoke-direct/range {p0 .. p4}, Lom;->m(Lfd;III)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 99
    invoke-virtual/range {p1 .. p4}, Lfd;->a(III)I

    move-result v1

    if-lez v1, :cond_2a

    .line 101
    iget-object v2, v0, Lom;->bA:Lln;

    sget-object v3, Lln;->h:Lln;

    if-ne v2, v3, :cond_17

    .line 102
    invoke-virtual/range {p0 .. p4}, Lom;->i(Lfd;III)V

    goto :goto_2a

    .line 104
    :cond_17
    sget-object v2, Luu;->m:[Luu;

    aget-object v3, v2, v1

    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v8

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Luu;->g(Lfd;IIII)V

    .line 107
    :cond_2a
    :goto_2a
    iget v13, v0, Lom;->bn:I

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v14, p5

    invoke-virtual/range {v9 .. v14}, Lfd;->b(IIIII)Z

    :cond_39
    return-void
.end method

.method private j(Lfd;III)V
    .registers 12

    .line 14
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v5

    .line 15
    iget v0, p0, Lom;->bn:I

    add-int/lit8 v4, v0, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lfd;->a(IIIII)Z

    move v4, p2

    move v5, p3

    move v6, p4

    .line 16
    invoke-virtual/range {v0 .. v6}, Lfd;->b(IIIIII)V

    .line 17
    invoke-virtual {p1, p2, p3, p4}, Lfd;->j(III)V

    return-void
.end method

.method private k(Lfd;III)[Z
    .registers 15

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ge v8, v1, :cond_57

    .line 153
    iget-object v1, p0, Lom;->c:[I

    const/16 v3, 0x3e8

    aput v3, v1, v8

    if-nez v8, :cond_11

    add-int/lit8 v1, p2, -0x1

    goto :goto_12

    :cond_11
    move v1, p2

    :goto_12
    if-ne v8, v2, :cond_16

    add-int/lit8 v1, v1, 0x1

    :cond_16
    move v3, v1

    const/4 v1, 0x2

    if-ne v8, v1, :cond_1d

    add-int/lit8 v1, p4, -0x1

    goto :goto_1e

    :cond_1d
    move v1, p4

    :goto_1e
    const/4 v2, 0x3

    if-ne v8, v2, :cond_23

    add-int/lit8 v1, v1, 0x1

    :cond_23
    move v5, v1

    .line 162
    invoke-direct {p0, p1, v3, p3, v5}, Lom;->l(Lfd;III)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_54

    .line 164
    :cond_2b
    invoke-virtual {p1, v3, p3, v5}, Lfd;->f(III)Lln;

    move-result-object v1

    iget-object v2, p0, Lom;->bA:Lln;

    if-ne v1, v2, :cond_3a

    invoke-virtual {p1, v3, p3, v5}, Lfd;->e(III)I

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_54

    :cond_3a
    add-int/lit8 v1, p3, -0x1

    .line 167
    invoke-direct {p0, p1, v3, v1, v5}, Lom;->l(Lfd;III)Z

    move-result v1

    if-nez v1, :cond_47

    .line 168
    iget-object v1, p0, Lom;->c:[I

    aput v0, v1, v8

    goto :goto_54

    .line 170
    :cond_47
    iget-object v9, p0, Lom;->c:[I

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lom;->b(Lfd;IIIII)I

    move-result v1

    aput v1, v9, v8

    :goto_54
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 175
    :cond_57
    iget-object p1, p0, Lom;->c:[I

    aget p1, p1, v0

    move p2, v2

    :goto_5c
    if-ge p2, v1, :cond_68

    .line 177
    iget-object p3, p0, Lom;->c:[I

    aget p3, p3, p2

    if-ge p3, p1, :cond_65

    move p1, p3

    :cond_65
    add-int/lit8 p2, p2, 0x1

    goto :goto_5c

    :cond_68
    move p2, v0

    :goto_69
    if-ge p2, v1, :cond_7b

    .line 182
    iget-object p3, p0, Lom;->b:[Z

    iget-object p4, p0, Lom;->c:[I

    aget p4, p4, p2

    if-ne p4, p1, :cond_75

    move p4, v2

    goto :goto_76

    :cond_75
    move p4, v0

    :goto_76
    aput-boolean p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_69

    .line 184
    :cond_7b
    iget-object p1, p0, Lom;->b:[Z

    return-object p1
.end method

.method private l(Lfd;III)Z
    .registers 5

    .line 188
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p1

    .line 189
    sget-object p2, Luu;->aF:Luu;

    iget p2, p2, Luu;->bn:I

    const/4 p3, 0x1

    if-eq p1, p2, :cond_36

    sget-object p2, Luu;->aM:Luu;

    iget p2, p2, Luu;->bn:I

    if-eq p1, p2, :cond_36

    sget-object p2, Luu;->aE:Luu;

    iget p2, p2, Luu;->bn:I

    if-eq p1, p2, :cond_36

    sget-object p2, Luu;->aG:Luu;

    iget p2, p2, Luu;->bn:I

    if-eq p1, p2, :cond_36

    sget-object p2, Luu;->aY:Luu;

    iget p2, p2, Luu;->bn:I

    if-ne p1, p2, :cond_24

    goto :goto_36

    :cond_24
    const/4 p2, 0x0

    if-nez p1, :cond_28

    return p2

    .line 193
    :cond_28
    sget-object p4, Luu;->m:[Luu;

    aget-object p1, p4, p1

    iget-object p1, p1, Luu;->bA:Lln;

    .line 194
    invoke-virtual {p1}, Lln;->c()Z

    move-result p1

    if-eqz p1, :cond_35

    return p3

    :cond_35
    return p2

    :cond_36
    :goto_36
    return p3
.end method

.method private m(Lfd;III)Z
    .registers 8

    .line 209
    invoke-virtual {p1, p2, p3, p4}, Lfd;->f(III)Lln;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lom;->bA:Lln;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return v2

    .line 211
    :cond_a
    sget-object v1, Lln;->h:Lln;

    if-ne v0, v1, :cond_f

    return v2

    .line 212
    :cond_f
    invoke-direct {p0, p1, p2, p3, p4}, Lom;->l(Lfd;III)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lfd;IIILjava/util/Random;)V
    .registers 23

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 23
    invoke-virtual/range {p0 .. p4}, Lom;->h(Lfd;III)I

    move-result v11

    .line 26
    iget-object v0, v6, Lom;->bA:Lln;

    sget-object v1, Lln;->h:Lln;

    const/4 v12, 0x2

    if-ne v0, v1, :cond_1d

    iget-object v0, v7, Lfd;->t:Lxa;

    iget-boolean v0, v0, Lxa;->d:Z

    if-nez v0, :cond_1d

    move v14, v12

    goto :goto_1e

    :cond_1d
    const/4 v14, 0x1

    :goto_1e
    const/4 v15, 0x0

    const/16 v5, 0x8

    if-lez v11, :cond_d4

    const/16 v16, -0x64

    .line 31
    iput v15, v6, Lom;->a:I

    add-int/lit8 v2, v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move v13, v5

    move/from16 v5, v16

    .line 32
    invoke-virtual/range {v0 .. v5}, Lom;->f(Lfd;IIII)I

    move-result v5

    add-int/lit8 v2, v8, 0x1

    .line 33
    invoke-virtual/range {v0 .. v5}, Lom;->f(Lfd;IIII)I

    move-result v5

    add-int/lit8 v4, v10, -0x1

    move/from16 v2, p2

    .line 34
    invoke-virtual/range {v0 .. v5}, Lom;->f(Lfd;IIII)I

    move-result v5

    add-int/lit8 v4, v10, 0x1

    .line 35
    invoke-virtual/range {v0 .. v5}, Lom;->f(Lfd;IIII)I

    move-result v0

    add-int v1, v0, v14

    if-ge v1, v13, :cond_52

    if-gez v0, :cond_53

    :cond_52
    const/4 v1, -0x1

    :cond_53
    add-int/lit8 v0, v9, 0x1

    .line 41
    invoke-virtual {v6, v7, v8, v0, v10}, Lom;->h(Lfd;III)I

    move-result v2

    if-ltz v2, :cond_64

    .line 42
    invoke-virtual {v6, v7, v8, v0, v10}, Lom;->h(Lfd;III)I

    move-result v1

    if-lt v1, v13, :cond_62

    goto :goto_64

    :cond_62
    add-int/lit8 v1, v1, 0x8

    .line 46
    :cond_64
    :goto_64
    iget v0, v6, Lom;->a:I

    if-lt v0, v12, :cond_8b

    iget-object v0, v6, Lom;->bA:Lln;

    sget-object v2, Lln;->g:Lln;

    if-ne v0, v2, :cond_8b

    add-int/lit8 v0, v9, -0x1

    .line 49
    invoke-virtual {v7, v8, v0, v10}, Lfd;->f(III)Lln;

    move-result-object v2

    invoke-virtual {v2}, Lln;->a()Z

    move-result v2

    if-eqz v2, :cond_7c

    :goto_7a
    move v1, v15

    goto :goto_8b

    .line 51
    :cond_7c
    invoke-virtual {v7, v8, v0, v10}, Lfd;->f(III)Lln;

    move-result-object v0

    iget-object v2, v6, Lom;->bA:Lln;

    if-ne v0, v2, :cond_8b

    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_7a

    .line 55
    :cond_8b
    :goto_8b
    iget-object v0, v6, Lom;->bA:Lln;

    sget-object v2, Lln;->h:Lln;

    if-ne v0, v2, :cond_a3

    if-ge v11, v13, :cond_a3

    if-ge v1, v13, :cond_a3

    if-le v1, v11, :cond_a3

    const/4 v0, 0x4

    move-object/from16 v2, p5

    .line 58
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_a3

    move v5, v11

    move v0, v15

    goto :goto_a5

    :cond_a3
    move v5, v1

    const/4 v0, 0x1

    :goto_a5
    if-eq v5, v11, :cond_ce

    if-gez v5, :cond_af

    .line 68
    invoke-virtual {v7, v8, v9, v10, v15}, Lfd;->f(IIII)Z

    move/from16 v16, v5

    goto :goto_cb

    .line 70
    :cond_af
    invoke-virtual {v7, v8, v9, v10, v5}, Lfd;->d(IIII)V

    .line 71
    iget v4, v6, Lom;->bn:I

    invoke-virtual/range {p0 .. p0}, Lom;->e()I

    move-result v11

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v16, v5

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lfd;->c(IIIII)V

    .line 72
    iget v0, v6, Lom;->bn:I

    invoke-virtual {v7, v8, v9, v10, v0}, Lfd;->i(IIII)V

    :goto_cb
    move/from16 v11, v16

    goto :goto_d8

    :cond_ce
    if-eqz v0, :cond_d8

    .line 75
    invoke-direct/range {p0 .. p4}, Lom;->j(Lfd;III)V

    goto :goto_d8

    :cond_d4
    move v13, v5

    .line 78
    invoke-direct/range {p0 .. p4}, Lom;->j(Lfd;III)V

    :cond_d8
    :goto_d8
    move v5, v11

    add-int/lit8 v2, v9, -0x1

    .line 80
    invoke-direct {v6, v7, v8, v2, v10}, Lom;->m(Lfd;III)Z

    move-result v0

    if-eqz v0, :cond_fe

    if-lt v5, v13, :cond_f0

    .line 81
    iget v4, v6, Lom;->bn:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lfd;->b(IIIII)Z

    goto/16 :goto_15e

    .line 82
    :cond_f0
    iget v4, v6, Lom;->bn:I

    add-int/2addr v5, v13

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lfd;->b(IIIII)Z

    goto/16 :goto_15e

    :cond_fe
    if-ltz v5, :cond_15e

    if-eqz v5, :cond_108

    .line 83
    invoke-direct {v6, v7, v8, v2, v10}, Lom;->l(Lfd;III)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 84
    :cond_108
    invoke-direct/range {p0 .. p4}, Lom;->k(Lfd;III)[Z

    move-result-object v11

    add-int/2addr v14, v5

    if-lt v5, v13, :cond_110

    const/4 v14, 0x1

    :cond_110
    if-lt v14, v13, :cond_113

    return-void

    .line 90
    :cond_113
    aget-boolean v0, v11, v15

    if-eqz v0, :cond_125

    add-int/lit8 v2, v8, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lom;->h(Lfd;IIII)V

    :cond_125
    const/4 v0, 0x1

    .line 91
    aget-boolean v1, v11, v0

    if-eqz v1, :cond_138

    add-int/lit8 v2, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lom;->h(Lfd;IIII)V

    .line 92
    :cond_138
    aget-boolean v0, v11, v12

    if-eqz v0, :cond_14a

    add-int/lit8 v4, v10, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lom;->h(Lfd;IIII)V

    :cond_14a
    const/4 v0, 0x3

    .line 93
    aget-boolean v0, v11, v0

    if-eqz v0, :cond_15e

    const/4 v0, 0x1

    add-int/lit8 v4, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lom;->h(Lfd;IIII)V

    :cond_15e
    :goto_15e
    return-void
.end method

.method public c(Lfd;III)V
    .registers 13

    .line 216
    invoke-super {p0, p1, p2, p3, p4}, Lrp;->c(Lfd;III)V

    .line 217
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result v0

    iget v1, p0, Lom;->bn:I

    if-ne v0, v1, :cond_18

    .line 218
    iget v6, p0, Lom;->bn:I

    invoke-virtual {p0}, Lom;->e()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v2 .. v7}, Lfd;->c(IIIII)V

    :cond_18
    return-void
.end method

.method protected f(Lfd;IIII)I
    .registers 6

    .line 199
    invoke-virtual {p0, p1, p2, p3, p4}, Lom;->h(Lfd;III)I

    move-result p1

    if-gez p1, :cond_7

    return p5

    :cond_7
    if-nez p1, :cond_f

    .line 201
    iget p2, p0, Lom;->a:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lom;->a:I

    :cond_f
    const/16 p2, 0x8

    if-lt p1, p2, :cond_14

    const/4 p1, 0x0

    :cond_14
    if-ltz p5, :cond_18

    if-ge p1, p5, :cond_19

    :cond_18
    move p5, p1

    :cond_19
    return p5
.end method
