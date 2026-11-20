###### Class defpackage.ur (ur)
.class public Lur;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lur;->a:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public a(Lfd;Lsn;)V
    .registers 4

    .line 13
    invoke-virtual {p0, p1, p2}, Lur;->b(Lfd;Lsn;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 17
    :cond_7
    invoke-virtual {p0, p1, p2}, Lur;->c(Lfd;Lsn;)Z

    .line 18
    invoke-virtual {p0, p1, p2}, Lur;->b(Lfd;Lsn;)Z

    return-void
.end method

.method public b(Lfd;Lsn;)Z
    .registers 26

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    .line 29
    iget-wide v1, v9, Lsn;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 30
    iget-wide v2, v9, Lsn;->aO:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    add-int/lit8 v3, v1, -0x80

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_17
    add-int/lit16 v11, v1, 0x80

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    if-gt v3, v11, :cond_93

    move/from16 v16, v7

    int-to-double v6, v3

    add-double/2addr v6, v14

    .line 33
    iget-wide v11, v9, Lsn;->aM:D

    sub-double/2addr v6, v11

    add-int/lit8 v11, v2, -0x80

    :goto_26
    add-int/lit16 v12, v2, 0x80

    if-gt v11, v12, :cond_8a

    move v12, v1

    move/from16 v17, v2

    int-to-double v1, v11

    add-double/2addr v1, v14

    .line 35
    iget-wide v13, v9, Lsn;->aO:D

    sub-double/2addr v1, v13

    const/16 v13, 0x7f

    :goto_34
    if-ltz v13, :cond_7f

    .line 37
    invoke-virtual {v0, v3, v13, v11}, Lfd;->a(III)I

    move-result v14

    sget-object v15, Luu;->bf:Lak;

    iget v15, v15, Lak;->bn:I

    if-ne v14, v15, :cond_78

    :goto_40
    add-int/lit8 v14, v13, -0x1

    .line 38
    invoke-virtual {v0, v3, v14, v11}, Lfd;->a(III)I

    move-result v14

    sget-object v15, Luu;->bf:Lak;

    iget v15, v15, Lak;->bn:I

    if-ne v14, v15, :cond_4f

    add-int/lit8 v13, v13, -0x1

    goto :goto_40

    :cond_4f
    int-to-double v14, v13

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v18

    move/from16 v20, v12

    move/from16 v21, v13

    .line 42
    iget-wide v12, v9, Lsn;->aN:D

    sub-double/2addr v14, v12

    mul-double v12, v6, v6

    mul-double/2addr v14, v14

    add-double/2addr v12, v14

    mul-double v14, v1, v1

    add-double/2addr v12, v14

    const-wide/16 v14, 0x0

    cmpg-double v22, v4, v14

    if-ltz v22, :cond_70

    cmpg-double v14, v12, v4

    if-gez v14, :cond_6d

    goto :goto_70

    :cond_6d
    move/from16 v13, v21

    goto :goto_7a

    :cond_70
    :goto_70
    move/from16 v16, v3

    move v10, v11

    move-wide v4, v12

    move/from16 v8, v21

    move v13, v8

    goto :goto_7a

    :cond_78
    move/from16 v20, v12

    :goto_7a
    add-int/lit8 v13, v13, -0x1

    move/from16 v12, v20

    goto :goto_34

    :cond_7f
    move/from16 v20, v12

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v17

    move/from16 v1, v20

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    goto :goto_26

    :cond_8a
    move/from16 v20, v1

    move/from16 v17, v2

    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v16

    goto :goto_17

    :cond_93
    move/from16 v16, v7

    const-wide/16 v1, 0x0

    cmpl-double v3, v4, v1

    if-ltz v3, :cond_ec

    move/from16 v6, v16

    int-to-double v1, v6

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    int-to-double v11, v8

    add-double/2addr v11, v3

    int-to-double v13, v10

    add-double/2addr v13, v3

    add-int/lit8 v7, v6, -0x1

    .line 64
    invoke-virtual {v0, v7, v8, v10}, Lfd;->a(III)I

    move-result v5

    sget-object v7, Luu;->bf:Lak;

    iget v7, v7, Lak;->bn:I

    if-ne v5, v7, :cond_b2

    sub-double/2addr v1, v3

    :cond_b2
    add-int/lit8 v7, v6, 0x1

    .line 65
    invoke-virtual {v0, v7, v8, v10}, Lfd;->a(III)I

    move-result v5

    sget-object v7, Luu;->bf:Lak;

    iget v7, v7, Lak;->bn:I

    if-ne v5, v7, :cond_bf

    add-double/2addr v1, v3

    :cond_bf
    add-int/lit8 v5, v10, -0x1

    .line 67
    invoke-virtual {v0, v6, v8, v5}, Lfd;->a(III)I

    move-result v5

    sget-object v7, Luu;->bf:Lak;

    iget v7, v7, Lak;->bn:I

    if-ne v5, v7, :cond_cc

    sub-double/2addr v13, v3

    :cond_cc
    const/4 v15, 0x1

    add-int/2addr v10, v15

    .line 68
    invoke-virtual {v0, v6, v8, v10}, Lfd;->a(III)I

    move-result v0

    sget-object v5, Luu;->bf:Lak;

    iget v5, v5, Lak;->bn:I

    if-ne v0, v5, :cond_d9

    add-double/2addr v13, v3

    :cond_d9
    move-wide v5, v13

    .line 70
    iget v7, v9, Lsn;->aS:F

    const/4 v8, 0x0

    move-object/from16 v0, p2

    move-wide v3, v11

    invoke-virtual/range {v0 .. v8}, Lsn;->c(DDDFF)V

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, v9, Lsn;->aR:D

    iput-wide v0, v9, Lsn;->aQ:D

    iput-wide v0, v9, Lsn;->aP:D

    return v15

    :cond_ec
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lfd;Lsn;)Z
    .registers 39

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 82
    iget-wide v2, v1, Lsn;->aM:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    .line 83
    iget-wide v3, v1, Lsn;->aN:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    .line 84
    iget-wide v4, v1, Lsn;->aO:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    move-object/from16 v5, p0

    .line 91
    iget-object v6, v5, Lur;->a:Ljava/util/Random;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v8, v2, -0x10

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    move v13, v2

    move v14, v4

    move v12, v8

    const/4 v15, 0x0

    :goto_27
    add-int/lit8 v11, v2, 0x10

    const/16 v16, 0x7f

    const-wide/16 v17, 0x0

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    if-gt v12, v11, :cond_16c

    move/from16 v22, v8

    int-to-double v7, v12

    add-double v7, v7, v19

    move/from16 v23, v2

    move/from16 v24, v3

    .line 95
    iget-wide v2, v1, Lsn;->aM:D

    sub-double/2addr v7, v2

    add-int/lit8 v2, v4, -0x10

    move/from16 v3, v24

    :goto_41
    add-int/lit8 v11, v4, 0x10

    if-gt v2, v11, :cond_156

    move-wide/from16 v24, v9

    int-to-double v9, v2

    add-double v9, v9, v19

    move v11, v13

    move/from16 v26, v14

    .line 97
    iget-wide v13, v1, Lsn;->aO:D

    sub-double/2addr v9, v13

    move v13, v11

    move/from16 v11, v16

    move/from16 v14, v26

    :goto_55
    if-ltz v11, :cond_146

    .line 99
    invoke-virtual {v0, v12, v11, v2}, Lfd;->d(III)Z

    move-result v26

    if-eqz v26, :cond_132

    :goto_5d
    if-lez v11, :cond_6e

    move/from16 v26, v3

    add-int/lit8 v3, v11, -0x1

    .line 100
    invoke-virtual {v0, v12, v3, v2}, Lfd;->d(III)Z

    move-result v3

    if-eqz v3, :cond_70

    add-int/lit8 v11, v11, -0x1

    move/from16 v3, v26

    goto :goto_5d

    :cond_6e
    move/from16 v26, v3

    :cond_70
    move v3, v6

    :goto_71
    add-int/lit8 v5, v6, 0x4

    if-ge v3, v5, :cond_11d

    .line 105
    rem-int/lit8 v5, v3, 0x2

    move/from16 v27, v13

    rsub-int/lit8 v13, v5, 0x1

    move/from16 v28, v14

    .line 108
    rem-int/lit8 v14, v3, 0x4

    move/from16 v29, v15

    const/4 v15, 0x2

    if-lt v14, v15, :cond_86

    neg-int v5, v5

    neg-int v13, v13

    :cond_86
    move/from16 v30, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    :goto_8a
    if-ge v15, v14, :cond_e3

    move/from16 v31, v6

    const/4 v6, 0x4

    const/4 v14, 0x0

    :goto_90
    if-ge v14, v6, :cond_d7

    move/from16 v32, v4

    const/4 v4, -0x1

    :goto_95
    if-ge v4, v6, :cond_cd

    add-int/lit8 v6, v14, -0x1

    mul-int v33, v6, v5

    add-int v33, v12, v33

    mul-int v34, v15, v13

    move/from16 v35, v12

    add-int v12, v33, v34

    move/from16 v33, v3

    add-int v3, v11, v4

    mul-int/2addr v6, v13

    add-int/2addr v6, v2

    mul-int v34, v15, v5

    sub-int v6, v6, v34

    if-gez v4, :cond_bb

    .line 121
    invoke-virtual {v0, v12, v3, v6}, Lfd;->f(III)Lln;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lln;->a()Z

    move-result v34

    if-nez v34, :cond_bb

    goto/16 :goto_129

    :cond_bb
    if-ltz v4, :cond_c5

    .line 122
    invoke-virtual {v0, v12, v3, v6}, Lfd;->d(III)Z

    move-result v3

    if-nez v3, :cond_c5

    goto/16 :goto_129

    :cond_c5
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v33

    move/from16 v12, v35

    const/4 v6, 0x4

    goto :goto_95

    :cond_cd
    move/from16 v33, v3

    move/from16 v35, v12

    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v32

    const/4 v6, 0x4

    goto :goto_90

    :cond_d7
    move/from16 v33, v3

    move/from16 v32, v4

    move/from16 v35, v12

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v31

    const/4 v14, 0x3

    goto :goto_8a

    :cond_e3
    move/from16 v33, v3

    move/from16 v32, v4

    move/from16 v31, v6

    move/from16 v35, v12

    int-to-double v3, v11

    add-double v3, v3, v19

    .line 127
    iget-wide v5, v1, Lsn;->aN:D

    sub-double/2addr v3, v5

    mul-double v5, v7, v7

    mul-double/2addr v3, v3

    add-double/2addr v5, v3

    mul-double v3, v9, v9

    add-double/2addr v5, v3

    cmpg-double v3, v24, v17

    if-ltz v3, :cond_108

    cmpg-double v3, v5, v24

    if-gez v3, :cond_101

    goto :goto_108

    :cond_101
    move/from16 v13, v27

    move/from16 v14, v28

    move/from16 v15, v29

    goto :goto_111

    :cond_108
    :goto_108
    move v14, v2

    move-wide/from16 v24, v5

    move/from16 v26, v11

    move/from16 v15, v30

    move/from16 v13, v35

    :goto_111
    add-int/lit8 v3, v33, 0x1

    move-object/from16 v5, p0

    move/from16 v6, v31

    move/from16 v4, v32

    move/from16 v12, v35

    goto/16 :goto_71

    :cond_11d
    move/from16 v32, v4

    move/from16 v31, v6

    move/from16 v35, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    :goto_129
    move/from16 v3, v26

    move/from16 v13, v27

    move/from16 v14, v28

    move/from16 v15, v29

    goto :goto_13a

    :cond_132
    move/from16 v26, v3

    move/from16 v32, v4

    move/from16 v31, v6

    move/from16 v35, v12

    :goto_13a
    const/4 v4, -0x1

    add-int/2addr v11, v4

    move-object/from16 v5, p0

    move/from16 v6, v31

    move/from16 v4, v32

    move/from16 v12, v35

    goto/16 :goto_55

    :cond_146
    move/from16 v26, v3

    move/from16 v32, v4

    move/from16 v31, v6

    move/from16 v35, v12

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, p0

    move-wide/from16 v9, v24

    goto/16 :goto_41

    :cond_156
    move/from16 v32, v4

    move/from16 v31, v6

    move-wide/from16 v24, v9

    move/from16 v35, v12

    move v11, v13

    move/from16 v26, v14

    add-int/lit8 v12, v35, 0x1

    move-object/from16 v5, p0

    move/from16 v8, v22

    move/from16 v2, v23

    const/4 v7, 0x4

    goto/16 :goto_27

    :cond_16c
    move/from16 v24, v3

    move/from16 v32, v4

    move/from16 v31, v6

    move/from16 v22, v8

    cmpg-double v2, v9, v17

    if-gez v2, :cond_268

    move/from16 v8, v22

    move/from16 v3, v24

    :goto_17c
    if-gt v8, v11, :cond_26a

    int-to-double v4, v8

    add-double v4, v4, v19

    .line 144
    iget-wide v6, v1, Lsn;->aM:D

    sub-double/2addr v4, v6

    add-int/lit8 v2, v32, -0x10

    :goto_186
    add-int/lit8 v6, v32, 0x10

    if-gt v2, v6, :cond_25e

    int-to-double v6, v2

    add-double v6, v6, v19

    move-wide/from16 v23, v9

    .line 146
    iget-wide v9, v1, Lsn;->aO:D

    sub-double/2addr v6, v9

    move/from16 v12, v16

    move-wide/from16 v9, v23

    :goto_196
    if-ltz v12, :cond_254

    .line 148
    invoke-virtual {v0, v8, v12, v2}, Lfd;->d(III)Z

    move-result v22

    if-eqz v22, :cond_246

    :goto_19e
    move/from16 v22, v3

    add-int/lit8 v3, v12, -0x1

    .line 149
    invoke-virtual {v0, v8, v3, v2}, Lfd;->d(III)Z

    move-result v3

    if-eqz v3, :cond_1ad

    add-int/lit8 v12, v12, -0x1

    move/from16 v3, v22

    goto :goto_19e

    :cond_1ad
    move/from16 v25, v11

    move/from16 v3, v31

    :goto_1b1
    const/16 v21, 0x2

    add-int/lit8 v11, v31, 0x2

    if-ge v3, v11, :cond_233

    .line 154
    rem-int/lit8 v11, v3, 0x2

    rsub-int/lit8 v23, v11, 0x1

    move/from16 v24, v13

    move/from16 v26, v14

    const/4 v13, 0x0

    :goto_1c0
    const/4 v14, 0x4

    if-ge v13, v14, :cond_200

    move/from16 v27, v15

    const/4 v15, -0x1

    :goto_1c6
    if-ge v15, v14, :cond_1f7

    add-int/lit8 v14, v13, -0x1

    mul-int v28, v14, v11

    move/from16 v29, v11

    add-int v11, v8, v28

    move/from16 v28, v8

    add-int v8, v12, v15

    mul-int v14, v14, v23

    add-int/2addr v14, v2

    if-gez v15, :cond_1e6

    .line 162
    invoke-virtual {v0, v11, v8, v14}, Lfd;->f(III)Lln;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lln;->a()Z

    move-result v30

    if-nez v30, :cond_1e6

    :goto_1e3
    move v8, v12

    goto/16 :goto_23c

    :cond_1e6
    if-ltz v15, :cond_1ef

    .line 163
    invoke-virtual {v0, v11, v8, v14}, Lfd;->d(III)Z

    move-result v8

    if-nez v8, :cond_1ef

    goto :goto_1e3

    :cond_1ef
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v28

    move/from16 v11, v29

    const/4 v14, 0x4

    goto :goto_1c6

    :cond_1f7
    move/from16 v28, v8

    move/from16 v29, v11

    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v27

    goto :goto_1c0

    :cond_200
    move/from16 v28, v8

    move/from16 v29, v11

    move/from16 v27, v15

    int-to-double v13, v12

    add-double v13, v13, v19

    move v8, v12

    .line 167
    iget-wide v11, v1, Lsn;->aN:D

    sub-double/2addr v13, v11

    mul-double v11, v4, v4

    mul-double/2addr v13, v13

    add-double/2addr v11, v13

    mul-double v13, v6, v6

    add-double/2addr v11, v13

    cmpg-double v13, v9, v17

    if-ltz v13, :cond_224

    cmpg-double v13, v11, v9

    if-gez v13, :cond_21d

    goto :goto_224

    :cond_21d
    move/from16 v13, v24

    move/from16 v14, v26

    move/from16 v15, v27

    goto :goto_22c

    :cond_224
    :goto_224
    move v14, v2

    move/from16 v22, v8

    move-wide v9, v11

    move/from16 v13, v28

    move/from16 v15, v29

    :goto_22c
    add-int/lit8 v3, v3, 0x1

    move v12, v8

    move/from16 v8, v28

    goto/16 :goto_1b1

    :cond_233
    move/from16 v28, v8

    move v8, v12

    move/from16 v24, v13

    move/from16 v26, v14

    move/from16 v27, v15

    :goto_23c
    move v12, v8

    move/from16 v3, v22

    move/from16 v13, v24

    move/from16 v14, v26

    move/from16 v15, v27

    goto :goto_24c

    :cond_246
    move/from16 v22, v3

    move/from16 v28, v8

    move/from16 v25, v11

    :goto_24c
    const/4 v8, -0x1

    add-int/2addr v12, v8

    move/from16 v11, v25

    move/from16 v8, v28

    goto/16 :goto_196

    :cond_254
    move/from16 v22, v3

    move/from16 v28, v8

    move/from16 v25, v11

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_186

    :cond_25e
    move/from16 v28, v8

    move-wide/from16 v23, v9

    move/from16 v25, v11

    add-int/lit8 v8, v28, 0x1

    goto/16 :goto_17c

    :cond_268
    move/from16 v3, v24

    .line 191
    :cond_26a
    rem-int/lit8 v1, v15, 0x2

    rsub-int/lit8 v2, v1, 0x1

    const/4 v4, 0x4

    .line 194
    rem-int/2addr v15, v4

    const/4 v4, 0x2

    if-lt v15, v4, :cond_275

    neg-int v1, v1

    neg-int v2, v2

    :cond_275
    cmpg-double v4, v9, v17

    const/4 v5, 0x1

    if-gez v4, :cond_2b7

    const/16 v4, 0x46

    if-ge v3, v4, :cond_27f

    move v3, v4

    :cond_27f
    const/16 v4, 0x76

    if-le v3, v4, :cond_284

    move v3, v4

    :cond_284
    const/4 v4, -0x1

    :goto_285
    if-gt v4, v5, :cond_2b7

    move v6, v5

    :goto_288
    const/4 v7, 0x3

    if-ge v6, v7, :cond_2b4

    const/4 v8, -0x1

    :goto_28c
    if-ge v8, v7, :cond_2b1

    add-int/lit8 v7, v6, -0x1

    mul-int v9, v7, v1

    add-int/2addr v9, v13

    mul-int v10, v4, v2

    add-int/2addr v9, v10

    add-int v10, v3, v8

    mul-int/2addr v7, v2

    add-int/2addr v7, v14

    mul-int v11, v4, v1

    sub-int/2addr v7, v11

    if-gez v8, :cond_2a1

    move v11, v5

    goto :goto_2a2

    :cond_2a1
    const/4 v11, 0x0

    :goto_2a2
    if-eqz v11, :cond_2a9

    .line 214
    sget-object v11, Luu;->aq:Luu;

    iget v11, v11, Luu;->bn:I

    goto :goto_2aa

    :cond_2a9
    const/4 v11, 0x0

    :goto_2aa
    invoke-virtual {v0, v9, v10, v7, v11}, Lfd;->f(IIII)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x3

    goto :goto_28c

    :cond_2b1
    add-int/lit8 v6, v6, 0x1

    goto :goto_288

    :cond_2b4
    add-int/lit8 v4, v4, 0x1

    goto :goto_285

    :cond_2b7
    const/4 v4, 0x0

    :goto_2b8
    const/4 v6, 0x4

    if-ge v4, v6, :cond_31a

    .line 221
    iput-boolean v5, v0, Lfd;->o:Z

    const/4 v7, 0x0

    :goto_2be
    if-ge v7, v6, :cond_2f2

    const/4 v8, -0x1

    :goto_2c1
    if-ge v8, v6, :cond_2ec

    add-int/lit8 v6, v7, -0x1

    mul-int v9, v6, v1

    add-int/2addr v9, v13

    add-int v10, v3, v8

    mul-int/2addr v6, v2

    add-int/2addr v6, v14

    const/4 v11, 0x3

    const/4 v12, -0x1

    if-eqz v7, :cond_2d9

    if-eq v7, v11, :cond_2d9

    if-eq v8, v12, :cond_2d9

    if-ne v8, v11, :cond_2d7

    goto :goto_2d9

    :cond_2d7
    const/4 v15, 0x0

    goto :goto_2da

    :cond_2d9
    :goto_2d9
    move v15, v5

    :goto_2da
    if-eqz v15, :cond_2e1

    .line 229
    sget-object v15, Luu;->aq:Luu;

    iget v15, v15, Luu;->bn:I

    goto :goto_2e5

    :cond_2e1
    sget-object v15, Luu;->bf:Lak;

    iget v15, v15, Lak;->bn:I

    :goto_2e5
    invoke-virtual {v0, v9, v10, v6, v15}, Lfd;->f(IIII)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x4

    goto :goto_2c1

    :cond_2ec
    const/4 v11, 0x3

    const/4 v12, -0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x4

    goto :goto_2be

    :cond_2f2
    const/4 v6, 0x0

    const/4 v11, 0x3

    const/4 v12, -0x1

    .line 232
    iput-boolean v6, v0, Lfd;->o:Z

    move v7, v6

    :goto_2f8
    const/4 v8, 0x4

    if-ge v7, v8, :cond_317

    move v9, v12

    :goto_2fc
    if-ge v9, v8, :cond_313

    add-int/lit8 v10, v7, -0x1

    mul-int v15, v10, v1

    add-int/2addr v15, v13

    add-int v6, v3, v9

    mul-int/2addr v10, v2

    add-int/2addr v10, v14

    .line 240
    invoke-virtual {v0, v15, v6, v10}, Lfd;->a(III)I

    move-result v8

    invoke-virtual {v0, v15, v6, v10, v8}, Lfd;->i(IIII)V

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x4

    goto :goto_2fc

    :cond_313
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_2f8

    :cond_317
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b8

    :cond_31a
    return v5
.end method
