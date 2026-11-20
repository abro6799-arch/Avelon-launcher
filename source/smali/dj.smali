###### Class defpackage.dj (dj)
.class public Ldj;
.super Lpg;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lpg;-><init>()V

    .line 14
    iput p1, p0, Ldj;->a:I

    return-void
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    add-int/lit8 v3, p3, -0x8

    add-int/lit8 v4, p5, -0x8

    move/from16 v5, p4

    :goto_c
    if-lez v5, :cond_17

    .line 20
    invoke-virtual {v1, v3, v5, v4}, Lfd;->d(III)Z

    move-result v6

    if-eqz v6, :cond_17

    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    :cond_17
    add-int/lit8 v5, v5, -0x4

    const/16 v6, 0x800

    new-array v6, v6, [Z

    const/4 v7, 0x4

    .line 27
    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr v8, v7

    const/4 v10, 0x0

    :goto_24
    const/4 v11, 0x7

    const/16 v12, 0xf

    if-ge v10, v8, :cond_d2

    .line 29
    invoke-virtual/range {p2 .. p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v15

    const-wide/high16 v17, 0x4018000000000000L    # 6.0

    mul-double v15, v15, v17

    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    add-double v15, v15, v19

    .line 30
    invoke-virtual/range {p2 .. p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v21

    const-wide/high16 v23, 0x4010000000000000L    # 4.0

    mul-double v21, v21, v23

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    add-double v21, v21, v25

    .line 31
    invoke-virtual/range {p2 .. p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v27

    mul-double v27, v27, v17

    add-double v27, v27, v19

    .line 33
    invoke-virtual/range {p2 .. p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v17

    const-wide/high16 v19, 0x4030000000000000L    # 16.0

    sub-double v29, v19, v15

    sub-double v29, v29, v25

    mul-double v17, v17, v29

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    add-double v17, v17, v29

    div-double v15, v15, v25

    add-double v17, v17, v15

    .line 34
    invoke-virtual/range {p2 .. p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v31

    const-wide/high16 v33, 0x4020000000000000L    # 8.0

    sub-double v33, v33, v21

    sub-double v33, v33, v23

    mul-double v31, v31, v33

    add-double v31, v31, v25

    div-double v21, v21, v25

    add-double v31, v31, v21

    .line 35
    invoke-virtual/range {p2 .. p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v23

    sub-double v19, v19, v27

    sub-double v19, v19, v25

    mul-double v23, v23, v19

    add-double v23, v23, v29

    div-double v27, v27, v25

    add-double v23, v23, v27

    const/4 v9, 0x1

    :goto_80
    if-ge v9, v12, :cond_c9

    const/4 v7, 0x1

    :goto_83
    if-ge v7, v12, :cond_be

    const/4 v12, 0x1

    :goto_86
    if-ge v12, v11, :cond_b4

    int-to-double v13, v9

    sub-double v13, v13, v17

    div-double/2addr v13, v15

    int-to-double v0, v12

    sub-double v0, v0, v31

    div-double v0, v0, v21

    move/from16 v26, v12

    int-to-double v11, v7

    sub-double v11, v11, v23

    div-double v11, v11, v27

    mul-double/2addr v13, v13

    mul-double/2addr v0, v0

    add-double/2addr v13, v0

    mul-double/2addr v11, v11

    add-double/2addr v13, v11

    cmpg-double v0, v13, v29

    if-gez v0, :cond_ac

    mul-int/lit8 v0, v9, 0x10

    add-int/2addr v0, v7

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    add-int v0, v0, v26

    const/4 v1, 0x1

    .line 44
    aput-boolean v1, v6, v0

    :cond_ac
    add-int/lit8 v12, v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v11, 0x7

    goto :goto_86

    :cond_b4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v11, 0x7

    const/16 v12, 0xf

    goto :goto_83

    :cond_be
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v7, 0x4

    const/4 v11, 0x7

    const/16 v12, 0xf

    goto :goto_80

    :cond_c9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v7, 0x4

    goto/16 :goto_24

    :cond_d2
    const/4 v0, 0x0

    :goto_d3
    const/16 v1, 0x10

    if-ge v0, v1, :cond_182

    const/4 v7, 0x0

    :goto_d8
    if-ge v7, v1, :cond_179

    const/4 v8, 0x0

    :goto_db
    const/16 v9, 0x8

    if-ge v8, v9, :cond_170

    mul-int/lit8 v10, v0, 0x10

    add-int v11, v10, v7

    mul-int/2addr v11, v9

    add-int v12, v11, v8

    .line 53
    aget-boolean v12, v6, v12

    if-nez v12, :cond_136

    const/16 v12, 0xf

    if-ge v0, v12, :cond_f8

    add-int/lit8 v12, v0, 0x1

    mul-int/2addr v12, v1

    add-int/2addr v12, v7

    mul-int/2addr v12, v9

    add-int/2addr v12, v8

    aget-boolean v9, v6, v12

    if-nez v9, :cond_134

    :cond_f8
    if-lez v0, :cond_107

    add-int/lit8 v9, v0, -0x1

    mul-int/2addr v9, v1

    add-int/2addr v9, v7

    const/16 v12, 0x8

    mul-int/2addr v9, v12

    add-int/2addr v9, v8

    aget-boolean v9, v6, v9

    if-nez v9, :cond_134

    goto :goto_109

    :cond_107
    const/16 v12, 0x8

    :goto_109
    const/16 v9, 0xf

    if-ge v7, v9, :cond_116

    add-int/lit8 v9, v7, 0x1

    add-int/2addr v9, v10

    mul-int/2addr v9, v12

    add-int/2addr v9, v8

    aget-boolean v9, v6, v9

    if-nez v9, :cond_134

    :cond_116
    if-lez v7, :cond_121

    add-int/lit8 v9, v7, -0x1

    add-int/2addr v10, v9

    mul-int/2addr v10, v12

    add-int/2addr v10, v8

    aget-boolean v9, v6, v10

    if-nez v9, :cond_134

    :cond_121
    const/4 v9, 0x7

    if-ge v8, v9, :cond_12b

    add-int/lit8 v9, v8, 0x1

    add-int/2addr v9, v11

    aget-boolean v9, v6, v9

    if-nez v9, :cond_134

    :cond_12b
    if-lez v8, :cond_136

    add-int/lit8 v9, v8, -0x1

    add-int/2addr v11, v9

    aget-boolean v9, v6, v11

    if-eqz v9, :cond_136

    :cond_134
    const/4 v9, 0x1

    goto :goto_137

    :cond_136
    const/4 v9, 0x0

    :goto_137
    if-eqz v9, :cond_167

    add-int v9, v3, v0

    add-int v10, v5, v8

    add-int v11, v4, v7

    move-object/from16 v12, p1

    .line 62
    invoke-virtual {v12, v9, v10, v11}, Lfd;->f(III)Lln;

    move-result-object v13

    const/4 v14, 0x4

    if-lt v8, v14, :cond_150

    .line 63
    invoke-virtual {v13}, Lln;->d()Z

    move-result v15

    if-eqz v15, :cond_150

    const/4 v15, 0x0

    return v15

    :cond_150
    const/4 v15, 0x0

    if-ge v8, v14, :cond_164

    .line 64
    invoke-virtual {v13}, Lln;->a()Z

    move-result v13

    if-nez v13, :cond_164

    invoke-virtual {v12, v9, v10, v11}, Lfd;->a(III)I

    move-result v9

    move-object/from16 v10, p0

    iget v11, v10, Ldj;->a:I

    if-eq v9, v11, :cond_16c

    return v15

    :cond_164
    move-object/from16 v10, p0

    goto :goto_16c

    :cond_167
    move-object/from16 v10, p0

    move-object/from16 v12, p1

    const/4 v15, 0x0

    :cond_16c
    :goto_16c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_db

    :cond_170
    move-object/from16 v10, p0

    move-object/from16 v12, p1

    const/4 v15, 0x0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_d8

    :cond_179
    move-object/from16 v10, p0

    move-object/from16 v12, p1

    const/4 v15, 0x0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d3

    :cond_182
    move-object/from16 v10, p0

    move-object/from16 v12, p1

    const/4 v15, 0x0

    move v0, v15

    :goto_188
    if-ge v0, v1, :cond_1b4

    move v7, v15

    :goto_18b
    if-ge v7, v1, :cond_1b1

    move v8, v15

    :goto_18e
    const/16 v9, 0x8

    if-ge v8, v9, :cond_1ae

    mul-int/lit8 v11, v0, 0x10

    add-int/2addr v11, v7

    mul-int/2addr v11, v9

    add-int/2addr v11, v8

    .line 74
    aget-boolean v9, v6, v11

    if-eqz v9, :cond_1ab

    add-int v9, v3, v0

    add-int v11, v5, v8

    add-int v13, v4, v7

    const/4 v14, 0x4

    if-lt v8, v14, :cond_1a6

    move v14, v15

    goto :goto_1a8

    .line 75
    :cond_1a6
    iget v14, v10, Ldj;->a:I

    :goto_1a8
    invoke-virtual {v12, v9, v11, v13, v14}, Lfd;->c(IIII)Z

    :cond_1ab
    add-int/lit8 v8, v8, 0x1

    goto :goto_18e

    :cond_1ae
    add-int/lit8 v7, v7, 0x1

    goto :goto_18b

    :cond_1b1
    add-int/lit8 v0, v0, 0x1

    goto :goto_188

    :cond_1b4
    move v0, v15

    :goto_1b5
    if-ge v0, v1, :cond_1fd

    move v7, v15

    :goto_1b8
    if-ge v7, v1, :cond_1f7

    const/16 v8, 0x8

    const/4 v14, 0x4

    :goto_1bd
    if-ge v14, v8, :cond_1f1

    mul-int/lit8 v9, v0, 0x10

    add-int/2addr v9, v7

    mul-int/2addr v9, v8

    add-int/2addr v9, v14

    .line 84
    aget-boolean v8, v6, v9

    if-eqz v8, :cond_1e9

    add-int v8, v3, v0

    add-int v9, v5, v14

    add-int/lit8 v11, v9, -0x1

    add-int v13, v4, v7

    .line 85
    invoke-virtual {v12, v8, v11, v13}, Lfd;->a(III)I

    move-result v15

    sget-object v1, Luu;->w:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v15, v1, :cond_1e9

    sget-object v1, Leb;->a:Leb;

    invoke-virtual {v12, v1, v8, v9, v13}, Lfd;->a(Leb;III)I

    move-result v1

    if-lez v1, :cond_1e9

    .line 86
    sget-object v1, Luu;->v:Lwp;

    iget v1, v1, Lwp;->bn:I

    invoke-virtual {v12, v8, v11, v13, v1}, Lfd;->c(IIII)Z

    :cond_1e9
    add-int/lit8 v14, v14, 0x1

    const/16 v1, 0x10

    const/16 v8, 0x8

    const/4 v15, 0x0

    goto :goto_1bd

    :cond_1f1
    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x10

    const/4 v15, 0x0

    goto :goto_1b8

    :cond_1f7
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    const/4 v15, 0x0

    goto :goto_1b5

    .line 93
    :cond_1fd
    sget-object v0, Luu;->m:[Luu;

    iget v1, v10, Ldj;->a:I

    aget-object v0, v0, v1

    iget-object v0, v0, Luu;->bA:Lln;

    sget-object v1, Lln;->h:Lln;

    if-ne v0, v1, :cond_2be

    const/4 v0, 0x0

    const/16 v1, 0x10

    :goto_20c
    if-ge v0, v1, :cond_2be

    const/4 v7, 0x0

    :goto_20f
    if-ge v7, v1, :cond_2b7

    const/4 v1, 0x0

    const/16 v8, 0x8

    :goto_214
    if-ge v1, v8, :cond_2af

    mul-int/lit8 v9, v0, 0x10

    add-int v11, v9, v7

    mul-int/2addr v11, v8

    add-int v13, v11, v1

    .line 97
    aget-boolean v13, v6, v13

    if-nez v13, :cond_280

    const/16 v13, 0xf

    if-ge v0, v13, :cond_23a

    add-int/lit8 v13, v0, 0x1

    const/16 v14, 0x10

    mul-int/2addr v13, v14

    add-int/2addr v13, v7

    mul-int/2addr v13, v8

    add-int/2addr v13, v1

    aget-boolean v8, v6, v13

    if-nez v8, :cond_232

    goto :goto_23a

    :cond_232
    const/16 v8, 0xf

    const/4 v9, 0x7

    const/16 v13, 0x10

    const/16 v14, 0x8

    goto :goto_27e

    :cond_23a
    :goto_23a
    if-lez v0, :cond_24f

    add-int/lit8 v8, v0, -0x1

    const/16 v13, 0x10

    mul-int/2addr v8, v13

    add-int/2addr v8, v7

    const/16 v14, 0x8

    mul-int/2addr v8, v14

    add-int/2addr v8, v1

    aget-boolean v8, v6, v8

    if-nez v8, :cond_24b

    goto :goto_253

    :cond_24b
    const/16 v8, 0xf

    :cond_24d
    const/4 v9, 0x7

    goto :goto_27e

    :cond_24f
    const/16 v13, 0x10

    const/16 v14, 0x8

    :goto_253
    const/16 v8, 0xf

    if-ge v7, v8, :cond_260

    add-int/lit8 v15, v7, 0x1

    add-int/2addr v15, v9

    mul-int/2addr v15, v14

    add-int/2addr v15, v1

    aget-boolean v15, v6, v15

    if-nez v15, :cond_24d

    :cond_260
    if-lez v7, :cond_26b

    add-int/lit8 v15, v7, -0x1

    add-int/2addr v9, v15

    mul-int/2addr v9, v14

    add-int/2addr v9, v1

    aget-boolean v9, v6, v9

    if-nez v9, :cond_24d

    :cond_26b
    const/4 v9, 0x7

    if-ge v1, v9, :cond_275

    add-int/lit8 v15, v1, 0x1

    add-int/2addr v15, v11

    aget-boolean v15, v6, v15

    if-nez v15, :cond_27e

    :cond_275
    if-lez v1, :cond_286

    add-int/lit8 v15, v1, -0x1

    add-int/2addr v11, v15

    aget-boolean v11, v6, v11

    if-eqz v11, :cond_286

    :cond_27e
    :goto_27e
    const/4 v11, 0x1

    goto :goto_287

    :cond_280
    move v14, v8

    const/16 v8, 0xf

    const/4 v9, 0x7

    const/16 v13, 0x10

    :cond_286
    const/4 v11, 0x0

    :goto_287
    if-eqz v11, :cond_2aa

    const/4 v11, 0x4

    if-lt v1, v11, :cond_293

    const/4 v15, 0x2

    .line 106
    invoke-virtual {v2, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    if-eqz v15, :cond_2aa

    :cond_293
    add-int v15, v3, v0

    add-int v8, v5, v1

    add-int v9, v4, v7

    invoke-virtual {v12, v15, v8, v9}, Lfd;->f(III)Lln;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lln;->a()Z

    move-result v16

    if-eqz v16, :cond_2aa

    .line 107
    sget-object v11, Luu;->u:Luu;

    iget v11, v11, Luu;->bn:I

    invoke-virtual {v12, v15, v8, v9, v11}, Lfd;->c(IIII)Z

    :cond_2aa
    add-int/lit8 v1, v1, 0x1

    move v8, v14

    goto/16 :goto_214

    :cond_2af
    move v14, v8

    const/16 v13, 0x10

    add-int/lit8 v7, v7, 0x1

    move v1, v13

    goto/16 :goto_20f

    :cond_2b7
    move v13, v1

    const/16 v14, 0x8

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_20c

    :cond_2be
    const/4 v0, 0x1

    return v0
.end method
