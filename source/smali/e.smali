###### Class defpackage.e (e)
.class public Le;
.super Lrw;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Random;


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    .line 20
    sget-object v0, Lln;->d:Lln;

    invoke-direct {p0, p1, v0}, Lrw;-><init>(ILln;)V

    .line 17
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Le;->a:Ljava/util/Random;

    const/16 p1, 0x1a

    .line 21
    iput p1, p0, Le;->bm:I

    return-void
.end method

.method private h(Lfd;III)Z
    .registers 9

    .line 101
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result v0

    iget v1, p0, Le;->bn:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    :cond_a
    add-int/lit8 v0, p2, -0x1

    .line 102
    invoke-virtual {p1, v0, p3, p4}, Lfd;->a(III)I

    move-result v0

    iget v1, p0, Le;->bn:I

    const/4 v3, 0x1

    if-ne v0, v1, :cond_16

    return v3

    :cond_16
    add-int/lit8 v0, p2, 0x1

    .line 103
    invoke-virtual {p1, v0, p3, p4}, Lfd;->a(III)I

    move-result v0

    iget v1, p0, Le;->bn:I

    if-ne v0, v1, :cond_21

    return v3

    :cond_21
    add-int/lit8 v0, p4, -0x1

    .line 104
    invoke-virtual {p1, p2, p3, v0}, Lfd;->a(III)I

    move-result v0

    iget v1, p0, Le;->bn:I

    if-ne v0, v1, :cond_2c

    return v3

    :cond_2c
    add-int/2addr p4, v3

    .line 105
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p1

    iget p2, p0, Le;->bn:I

    if-ne p1, p2, :cond_36

    return v3

    :cond_36
    return v2
.end method


# virtual methods
.method public a(I)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 77
    iget p1, p0, Le;->bm:I

    sub-int/2addr p1, v0

    return p1

    :cond_7
    if-nez p1, :cond_d

    .line 78
    iget p1, p0, Le;->bm:I

    sub-int/2addr p1, v0

    return p1

    :cond_d
    const/4 v1, 0x3

    if-ne p1, v1, :cond_14

    .line 79
    iget p1, p0, Le;->bm:I

    add-int/2addr p1, v0

    return p1

    .line 80
    :cond_14
    iget p1, p0, Le;->bm:I

    return p1
.end method

.method public a(Lxp;IIII)I
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_13

    .line 25
    iget v1, v0, Le;->bm:I

    :goto_11
    sub-int/2addr v1, v6

    return v1

    :cond_13
    if-nez v5, :cond_18

    .line 26
    iget v1, v0, Le;->bm:I

    goto :goto_11

    :cond_18
    add-int/lit8 v7, v4, -0x1

    .line 28
    invoke-interface {v1, v2, v3, v7}, Lxp;->a(III)I

    move-result v8

    add-int/lit8 v9, v4, 0x1

    .line 29
    invoke-interface {v1, v2, v3, v9}, Lxp;->a(III)I

    move-result v10

    add-int/lit8 v11, v2, -0x1

    .line 30
    invoke-interface {v1, v11, v3, v4}, Lxp;->a(III)I

    move-result v12

    add-int/2addr v2, v6

    .line 31
    invoke-interface {v1, v2, v3, v4}, Lxp;->a(III)I

    move-result v4

    .line 34
    iget v13, v0, Le;->bn:I

    const/16 v16, -0x1

    const/4 v14, 0x4

    const/4 v15, 0x3

    if-eq v8, v13, :cond_e2

    iget v13, v0, Le;->bn:I

    if-ne v10, v13, :cond_3d

    goto/16 :goto_e2

    .line 50
    :cond_3d
    iget v13, v0, Le;->bn:I

    if-eq v12, v13, :cond_7e

    iget v13, v0, Le;->bn:I

    if-ne v4, v13, :cond_46

    goto :goto_7e

    .line 68
    :cond_46
    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v8

    if-eqz v1, :cond_50

    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v10

    .line 69
    :cond_50
    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_5d

    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v8

    if-nez v1, :cond_5d

    const/4 v15, 0x2

    .line 70
    :cond_5d
    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v12

    if-eqz v1, :cond_6a

    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_6a

    const/4 v15, 0x5

    .line 71
    :cond_6a
    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_77

    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v12

    if-nez v1, :cond_77

    goto :goto_78

    :cond_77
    move v14, v15

    .line 72
    :goto_78
    iget v1, v0, Le;->bm:I

    if-ne v5, v14, :cond_7d

    add-int/2addr v1, v6

    :cond_7d
    return v1

    :cond_7e
    :goto_7e
    if-eq v5, v14, :cond_df

    const/4 v6, 0x5

    if-ne v5, v6, :cond_84

    goto :goto_df

    .line 53
    :cond_84
    iget v4, v0, Le;->bn:I

    if-ne v12, v4, :cond_8b

    move/from16 v14, v16

    goto :goto_8c

    :cond_8b
    const/4 v14, 0x0

    .line 57
    :goto_8c
    iget v4, v0, Le;->bn:I

    if-ne v12, v4, :cond_92

    move v4, v11

    goto :goto_93

    :cond_92
    move v4, v2

    :goto_93
    invoke-interface {v1, v4, v3, v7}, Lxp;->a(III)I

    move-result v4

    .line 58
    iget v6, v0, Le;->bn:I

    if-ne v12, v6, :cond_9c

    goto :goto_9d

    :cond_9c
    move v11, v2

    :goto_9d
    invoke-interface {v1, v11, v3, v9}, Lxp;->a(III)I

    move-result v1

    if-ne v5, v15, :cond_a5

    rsub-int/lit8 v14, v14, -0x1

    .line 62
    :cond_a5
    sget-object v2, Luu;->o:[Z

    aget-boolean v2, v2, v8

    if-nez v2, :cond_b1

    sget-object v2, Luu;->o:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_bb

    :cond_b1
    sget-object v2, Luu;->o:[Z

    aget-boolean v2, v2, v10

    if-nez v2, :cond_bb

    sget-object v2, Luu;->o:[Z

    aget-boolean v2, v2, v1

    .line 63
    :cond_bb
    sget-object v2, Luu;->o:[Z

    aget-boolean v2, v2, v10

    if-nez v2, :cond_c7

    sget-object v2, Luu;->o:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_d4

    :cond_c7
    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v8

    if-nez v1, :cond_d4

    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_d4

    const/4 v15, 0x2

    .line 65
    :cond_d4
    iget v1, v0, Le;->bm:I

    if-ne v5, v15, :cond_db

    add-int/lit8 v1, v1, 0x10

    goto :goto_dd

    :cond_db
    add-int/lit8 v1, v1, 0x20

    :goto_dd
    add-int/2addr v1, v14

    return v1

    .line 51
    :cond_df
    :goto_df
    iget v1, v0, Le;->bm:I

    return v1

    :cond_e2
    :goto_e2
    const/4 v6, 0x5

    const/4 v10, 0x2

    if-eq v5, v10, :cond_147

    if-ne v5, v15, :cond_ea

    goto/16 :goto_147

    .line 37
    :cond_ea
    iget v10, v0, Le;->bn:I

    if-ne v8, v10, :cond_ef

    goto :goto_f1

    :cond_ef
    const/16 v16, 0x0

    .line 41
    :goto_f1
    iget v10, v0, Le;->bn:I

    if-ne v8, v10, :cond_f7

    move v10, v7

    goto :goto_f8

    :cond_f7
    move v10, v9

    :goto_f8
    invoke-interface {v1, v11, v3, v10}, Lxp;->a(III)I

    move-result v10

    .line 42
    iget v11, v0, Le;->bn:I

    if-ne v8, v11, :cond_101

    goto :goto_102

    :cond_101
    move v7, v9

    :goto_102
    invoke-interface {v1, v2, v3, v7}, Lxp;->a(III)I

    move-result v1

    if-ne v5, v14, :cond_10a

    rsub-int/lit8 v16, v16, -0x1

    .line 47
    :cond_10a
    sget-object v2, Luu;->o:[Z

    aget-boolean v2, v2, v12

    if-nez v2, :cond_116

    sget-object v2, Luu;->o:[Z

    aget-boolean v2, v2, v10

    if-eqz v2, :cond_120

    :cond_116
    sget-object v2, Luu;->o:[Z

    aget-boolean v2, v2, v4

    if-nez v2, :cond_120

    sget-object v2, Luu;->o:[Z

    aget-boolean v2, v2, v1

    .line 48
    :cond_120
    sget-object v2, Luu;->o:[Z

    aget-boolean v2, v2, v4

    if-nez v2, :cond_12c

    sget-object v2, Luu;->o:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_13a

    :cond_12c
    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v12

    if-nez v1, :cond_13a

    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v10

    if-nez v1, :cond_13a

    move v15, v14

    goto :goto_13b

    :cond_13a
    move v15, v6

    .line 49
    :goto_13b
    iget v1, v0, Le;->bm:I

    if-ne v5, v15, :cond_142

    add-int/lit8 v1, v1, 0x10

    goto :goto_144

    :cond_142
    add-int/lit8 v1, v1, 0x20

    :goto_144
    add-int v1, v1, v16

    return v1

    .line 35
    :cond_147
    :goto_147
    iget v1, v0, Le;->bm:I

    return v1
.end method

.method public a(Lfd;III)Z
    .registers 14

    add-int/lit8 v0, p2, -0x1

    .line 86
    invoke-virtual {p1, v0, p3, p4}, Lfd;->a(III)I

    move-result v1

    iget v2, p0, Le;->bn:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_e

    move v1, v4

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    add-int/lit8 v2, p2, 0x1

    .line 87
    invoke-virtual {p1, v2, p3, p4}, Lfd;->a(III)I

    move-result v5

    iget v6, p0, Le;->bn:I

    if-ne v5, v6, :cond_1b

    add-int/lit8 v1, v1, 0x1

    :cond_1b
    add-int/lit8 v5, p4, -0x1

    .line 88
    invoke-virtual {p1, p2, p3, v5}, Lfd;->a(III)I

    move-result v6

    iget v7, p0, Le;->bn:I

    if-ne v6, v7, :cond_27

    add-int/lit8 v1, v1, 0x1

    :cond_27
    add-int/lit8 v6, p4, 0x1

    .line 89
    invoke-virtual {p1, p2, p3, v6}, Lfd;->a(III)I

    move-result v7

    iget v8, p0, Le;->bn:I

    if-ne v7, v8, :cond_33

    add-int/lit8 v1, v1, 0x1

    :cond_33
    if-le v1, v4, :cond_36

    return v3

    .line 93
    :cond_36
    invoke-direct {p0, p1, v0, p3, p4}, Le;->h(Lfd;III)Z

    move-result v0

    if-eqz v0, :cond_3d

    return v3

    .line 94
    :cond_3d
    invoke-direct {p0, p1, v2, p3, p4}, Le;->h(Lfd;III)Z

    move-result p4

    if-eqz p4, :cond_44

    return v3

    .line 95
    :cond_44
    invoke-direct {p0, p1, p2, p3, v5}, Le;->h(Lfd;III)Z

    move-result p4

    if-eqz p4, :cond_4b

    return v3

    .line 96
    :cond_4b
    invoke-direct {p0, p1, p2, p3, v6}, Le;->h(Lfd;III)Z

    move-result p1

    if-eqz p1, :cond_52

    return v3

    :cond_52
    return v4
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 15

    .line 136
    invoke-virtual {p1, p2, p3, p4}, Lfd;->b(III)Low;

    move-result-object v0

    check-cast v0, Ljs;

    add-int/lit8 v1, p3, 0x1

    .line 138
    invoke-virtual {p1, p2, v1, p4}, Lfd;->h(III)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    return v3

    :cond_10
    add-int/lit8 v2, p2, -0x1

    .line 140
    invoke-virtual {p1, v2, p3, p4}, Lfd;->a(III)I

    move-result v4

    iget v5, p0, Le;->bn:I

    if-ne v4, v5, :cond_21

    invoke-virtual {p1, v2, v1, p4}, Lfd;->h(III)Z

    move-result v4

    if-eqz v4, :cond_21

    return v3

    :cond_21
    add-int/lit8 v4, p2, 0x1

    .line 141
    invoke-virtual {p1, v4, p3, p4}, Lfd;->a(III)I

    move-result v5

    iget v6, p0, Le;->bn:I

    if-ne v5, v6, :cond_32

    invoke-virtual {p1, v4, v1, p4}, Lfd;->h(III)Z

    move-result v5

    if-eqz v5, :cond_32

    return v3

    :cond_32
    add-int/lit8 v5, p4, -0x1

    .line 142
    invoke-virtual {p1, p2, p3, v5}, Lfd;->a(III)I

    move-result v6

    iget v7, p0, Le;->bn:I

    if-ne v6, v7, :cond_43

    invoke-virtual {p1, p2, v1, v5}, Lfd;->h(III)Z

    move-result v6

    if-eqz v6, :cond_43

    return v3

    :cond_43
    add-int/lit8 v6, p4, 0x1

    .line 143
    invoke-virtual {p1, p2, p3, v6}, Lfd;->a(III)I

    move-result v7

    iget v8, p0, Le;->bn:I

    if-ne v7, v8, :cond_54

    invoke-virtual {p1, p2, v1, v6}, Lfd;->h(III)Z

    move-result v1

    if-eqz v1, :cond_54

    return v3

    .line 145
    :cond_54
    invoke-virtual {p1, v2, p3, p4}, Lfd;->a(III)I

    move-result v1

    iget v7, p0, Le;->bn:I

    const-string v8, "Large chest"

    if-ne v1, v7, :cond_6a

    new-instance v1, Log;

    invoke-virtual {p1, v2, p3, p4}, Lfd;->b(III)Low;

    move-result-object v2

    check-cast v2, Ljs;

    invoke-direct {v1, v8, v2, v0}, Log;-><init>(Ljava/lang/String;Llw;Llw;)V

    move-object v0, v1

    .line 146
    :cond_6a
    invoke-virtual {p1, v4, p3, p4}, Lfd;->a(III)I

    move-result v1

    iget v2, p0, Le;->bn:I

    if-ne v1, v2, :cond_7e

    new-instance v1, Log;

    invoke-virtual {p1, v4, p3, p4}, Lfd;->b(III)Low;

    move-result-object p4

    check-cast p4, Ljs;

    invoke-direct {v1, v8, v0, p4}, Log;-><init>(Ljava/lang/String;Llw;Llw;)V

    move-object v0, v1

    .line 147
    :cond_7e
    invoke-virtual {p1, p2, p3, v5}, Lfd;->a(III)I

    move-result p4

    iget v1, p0, Le;->bn:I

    if-ne p4, v1, :cond_92

    new-instance p4, Log;

    invoke-virtual {p1, p2, p3, v5}, Lfd;->b(III)Low;

    move-result-object v1

    check-cast v1, Ljs;

    invoke-direct {p4, v8, v1, v0}, Log;-><init>(Ljava/lang/String;Llw;Llw;)V

    move-object v0, p4

    .line 148
    :cond_92
    invoke-virtual {p1, p2, p3, v6}, Lfd;->a(III)I

    move-result p4

    iget v1, p0, Le;->bn:I

    if-ne p4, v1, :cond_a6

    new-instance p4, Log;

    invoke-virtual {p1, p2, p3, v6}, Lfd;->b(III)Low;

    move-result-object p2

    check-cast p2, Ljs;

    invoke-direct {p4, v8, v0, p2}, Log;-><init>(Ljava/lang/String;Llw;Llw;)V

    move-object v0, p4

    .line 150
    :cond_a6
    iget-boolean p1, p1, Lfd;->B:Z

    if-eqz p1, :cond_ab

    return v3

    .line 154
    :cond_ab
    invoke-virtual {p5, v0}, Lgs;->a(Llw;)V

    return v3
.end method

.method protected a_()Low;
    .registers 2

    .line 160
    new-instance v0, Ljs;

    invoke-direct {v0}, Ljs;-><init>()V

    return-object v0
.end method

.method public b(Lfd;III)V
    .registers 27

    move-object/from16 v0, p0

    .line 110
    invoke-virtual/range {p1 .. p4}, Lfd;->b(III)Low;

    move-result-object v1

    check-cast v1, Ljs;

    const/4 v2, 0x0

    .line 111
    :goto_9
    invoke-interface {v1}, Llw;->a()I

    move-result v3

    if-ge v2, v3, :cond_bf

    .line 112
    invoke-interface {v1, v2}, Llw;->f_(I)Liz;

    move-result-object v3

    if-eqz v3, :cond_b5

    .line 114
    iget-object v4, v0, Le;->a:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr v4, v6

    .line 115
    iget-object v7, v0, Le;->a:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v6

    .line 116
    iget-object v8, v0, Le;->a:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v8, v5

    add-float/2addr v8, v6

    .line 118
    :goto_33
    iget v5, v3, Liz;->a:I

    if-lez v5, :cond_b5

    .line 119
    iget-object v5, v0, Le;->a:Ljava/util/Random;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    .line 120
    iget v6, v3, Liz;->a:I

    if-le v5, v6, :cond_47

    iget v5, v3, Liz;->a:I

    .line 121
    :cond_47
    iget v6, v3, Liz;->a:I

    sub-int/2addr v6, v5

    iput v6, v3, Liz;->a:I

    .line 123
    new-instance v6, Lhl;

    move/from16 v15, p2

    int-to-float v9, v15

    add-float/2addr v9, v4

    float-to-double v11, v9

    move/from16 v13, p3

    int-to-float v9, v13

    add-float/2addr v9, v7

    float-to-double v9, v9

    move/from16 v14, p4

    move-object/from16 v18, v1

    int-to-float v1, v14

    add-float/2addr v1, v8

    move/from16 v19, v7

    move/from16 v20, v8

    float-to-double v7, v1

    new-instance v1, Liz;

    move/from16 v21, v4

    iget v4, v3, Liz;->c:I

    move-wide/from16 v16, v9

    invoke-virtual {v3}, Liz;->i()I

    move-result v9

    invoke-direct {v1, v4, v5, v9}, Liz;-><init>(III)V

    move-wide/from16 v4, v16

    move-object v9, v6

    move-object/from16 v10, p1

    move-wide v13, v4

    move-wide v15, v7

    move-object/from16 v17, v1

    invoke-direct/range {v9 .. v17}, Lhl;-><init>(Lfd;DDDLiz;)V

    .line 125
    iget-object v1, v0, Le;->a:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v4

    double-to-float v1, v4

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v4

    float-to-double v7, v1

    iput-wide v7, v6, Lhl;->aP:D

    .line 126
    iget-object v1, v0, Le;->a:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v7

    double-to-float v1, v7

    mul-float/2addr v1, v4

    const v5, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v5

    float-to-double v7, v1

    iput-wide v7, v6, Lhl;->aQ:D

    .line 127
    iget-object v1, v0, Le;->a:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v7

    double-to-float v1, v7

    mul-float/2addr v1, v4

    float-to-double v4, v1

    iput-wide v4, v6, Lhl;->aR:D

    move-object/from16 v1, p1

    .line 128
    invoke-virtual {v1, v6}, Lfd;->b(Lsn;)Z

    move-object/from16 v1, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v4, v21

    goto/16 :goto_33

    :cond_b5
    move-object/from16 v18, v1

    move-object/from16 v1, p1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v18

    goto/16 :goto_9

    :cond_bf
    move-object/from16 v1, p1

    .line 132
    invoke-super/range {p0 .. p4}, Lrw;->b(Lfd;III)V

    return-void
.end method
