###### Class defpackage.sq (sq)
.class public Lsq;
.super Lfv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lfv;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(II[BDDD)V
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v15, p0

    .line 12
    iget-object v10, v15, Lsq;->b:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v10

    const/high16 v11, 0x40c00000    # 6.0f

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    move-wide/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lsq;->a(II[BDDDFFFIID)V

    return-void
.end method

.method protected a(II[BDDDFFFIID)V
    .registers 70

    move-object/from16 v14, p0

    mul-int/lit8 v0, p1, 0x10

    add-int/lit8 v1, v0, 0x8

    int-to-double v1, v1

    mul-int/lit8 v3, p2, 0x10

    add-int/lit8 v4, v3, 0x8

    int-to-double v4, v4

    .line 23
    new-instance v13, Ljava/util/Random;

    iget-object v6, v14, Lsq;->b:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    invoke-direct {v13, v6, v7}, Ljava/util/Random;-><init>(J)V

    const/16 v6, 0x10

    if-gtz p14, :cond_28

    .line 26
    iget v7, v14, Lsq;->a:I

    mul-int/2addr v7, v6

    sub-int/2addr v7, v6

    .line 27
    div-int/lit8 v8, v7, 0x4

    invoke-virtual {v13, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    sub-int/2addr v7, v8

    move v8, v7

    goto :goto_2a

    :cond_28
    move/from16 v8, p14

    :goto_2a
    const/4 v7, -0x1

    move/from16 v11, p13

    if-ne v11, v7, :cond_33

    .line 32
    div-int/lit8 v11, v8, 0x2

    const/4 v12, 0x1

    goto :goto_34

    :cond_33
    const/4 v12, 0x0

    .line 37
    :goto_34
    div-int/lit8 v15, v8, 0x2

    invoke-virtual {v13, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    div-int/lit8 v16, v8, 0x4

    add-int v15, v15, v16

    const/4 v9, 0x6

    .line 38
    invoke-virtual {v13, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    if-nez v9, :cond_47

    const/4 v9, 0x1

    goto :goto_48

    :cond_47
    const/4 v9, 0x0

    :goto_48
    const/16 v16, 0x0

    move-wide/from16 v18, p6

    move-wide/from16 v20, p8

    move/from16 v22, p12

    move v14, v11

    move/from16 v23, v16

    move/from16 v24, v23

    move-wide/from16 v16, p4

    move/from16 v11, p11

    :goto_59
    if-ge v14, v8, :cond_356

    int-to-float v7, v14

    const v26, 0x40490fdb    # (float)Math.PI

    mul-float v7, v7, v26

    int-to-float v6, v8

    div-float/2addr v7, v6

    .line 41
    invoke-static {v7}, Lin;->a(F)F

    move-result v6

    mul-float v6, v6, p10

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    move/from16 v27, v8

    float-to-double v7, v6

    const-wide/high16 v28, 0x3ff8000000000000L    # 1.5

    add-double v7, v7, v28

    mul-double v28, v7, p15

    .line 44
    invoke-static/range {v22 .. v22}, Lin;->b(F)F

    move-result v6

    .line 45
    invoke-static/range {v22 .. v22}, Lin;->a(F)F

    move-result v10

    .line 46
    invoke-static {v11}, Lin;->b(F)F

    move-result v31

    move/from16 v32, v3

    mul-float v3, v31, v6

    move-wide/from16 p5, v7

    float-to-double v7, v3

    add-double v34, v16, v7

    float-to-double v7, v10

    add-double v36, v18, v7

    .line 48
    invoke-static {v11}, Lin;->a(F)F

    move-result v3

    mul-float/2addr v3, v6

    float-to-double v6, v3

    add-double v38, v20, v6

    if-eqz v9, :cond_9b

    const v3, 0x3f6b851f    # 0.92f

    goto :goto_9e

    :cond_9b
    const v3, 0x3f333333    # 0.7f

    :goto_9e
    mul-float v22, v22, v3

    const v3, 0x3dcccccd    # 0.1f

    mul-float v6, v23, v3

    add-float v22, v22, v6

    mul-float v3, v3, v24

    add-float v17, v11, v3

    const v3, 0x3f666666    # 0.9f

    mul-float v23, v23, v3

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v24, v24, v3

    .line 60
    invoke-virtual {v13}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {v13}, Ljava/util/Random;->nextFloat()F

    move-result v6

    sub-float/2addr v3, v6

    invoke-virtual {v13}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v3, v6

    add-float v23, v23, v3

    .line 61
    invoke-virtual {v13}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {v13}, Ljava/util/Random;->nextFloat()F

    move-result v7

    sub-float/2addr v3, v7

    invoke-virtual {v13}, Ljava/util/Random;->nextFloat()F

    move-result v7

    mul-float/2addr v3, v7

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v3, v7

    add-float v24, v24, v3

    if-nez v12, :cond_135

    if-ne v14, v15, :cond_135

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p10, v3

    if-lez v3, :cond_135

    .line 65
    invoke-virtual {v13}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v0, v0, v18

    add-float v10, v0, v18

    const v19, 0x3fc90fdb

    sub-float v11, v17, v19

    const/high16 v0, 0x40400000    # 3.0f

    div-float v12, v22, v0

    move/from16 v29, v12

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, v34

    move-wide/from16 v6, v36

    move/from16 v31, v27

    move-wide/from16 v8, v38

    move-object/from16 p4, v13

    move v13, v14

    move/from16 v40, v14

    move/from16 v14, v31

    invoke-virtual/range {v0 .. v16}, Lsq;->a(II[BDDDFFFIID)V

    .line 66
    invoke-virtual/range {p4 .. p4}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float v0, v0, v18

    add-float v27, v0, v18

    add-float v28, v17, v19

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-object/from16 v17, p0

    move/from16 v18, p1

    move/from16 v19, p2

    move-object/from16 v20, p3

    move-wide/from16 v21, v34

    move-wide/from16 v23, v36

    move-wide/from16 v25, v38

    move/from16 v30, v40

    invoke-virtual/range {v17 .. v33}, Lsq;->a(II[BDDDFFFIID)V

    return-void

    :cond_135
    move-object/from16 p4, v13

    move/from16 v40, v14

    move/from16 v31, v27

    if-nez v12, :cond_150

    const/4 v3, 0x4

    move-object/from16 v7, p4

    .line 69
    invoke-virtual {v7, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-nez v3, :cond_152

    move/from16 v46, v0

    move-wide/from16 v20, v1

    move-wide/from16 v18, v4

    move-object/from16 p4, v7

    goto/16 :goto_32f

    :cond_150
    move-object/from16 v7, p4

    :cond_152
    sub-double v10, v34, v1

    sub-double v13, v38, v4

    sub-int v8, v31, v40

    move-object/from16 p4, v7

    int-to-double v7, v8

    add-float v3, p10, v6

    const/high16 v6, 0x41800000    # 16.0f

    add-float/2addr v3, v6

    move-wide/from16 v18, v4

    float-to-double v3, v3

    mul-double/2addr v10, v10

    mul-double/2addr v13, v13

    add-double/2addr v10, v13

    mul-double/2addr v7, v7

    sub-double/2addr v10, v7

    mul-double/2addr v3, v3

    cmpl-double v3, v10, v3

    if-lez v3, :cond_16e

    return-void

    :cond_16e
    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    sub-double v5, v1, v3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    move-wide/from16 v10, p5

    mul-double/2addr v7, v10

    sub-double/2addr v5, v7

    cmpg-double v5, v34, v5

    if-ltz v5, :cond_32b

    sub-double v5, v18, v3

    sub-double/2addr v5, v7

    cmpg-double v5, v38, v5

    if-ltz v5, :cond_32b

    add-double v5, v1, v3

    add-double/2addr v5, v7

    cmpl-double v5, v34, v5

    if-gtz v5, :cond_32b

    add-double v4, v18, v3

    add-double/2addr v4, v7

    cmpl-double v3, v38, v4

    if-lez v3, :cond_193

    goto/16 :goto_32b

    :cond_193
    sub-double v3, v34, v10

    .line 83
    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    add-double v7, v34, v10

    .line 84
    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v5

    sub-int/2addr v5, v0

    add-int/2addr v5, v4

    sub-double v6, v36, v28

    .line 86
    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v6

    sub-int/2addr v6, v4

    add-double v7, v36, v28

    .line 87
    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v7

    add-int/2addr v7, v4

    sub-double v13, v38, v10

    .line 89
    invoke-static {v13, v14}, Lin;->b(D)I

    move-result v8

    sub-int v8, v8, v32

    sub-int/2addr v8, v4

    add-double v13, v38, v10

    .line 90
    invoke-static {v13, v14}, Lin;->b(D)I

    move-result v13

    sub-int v13, v13, v32

    add-int/2addr v13, v4

    if-gez v3, :cond_1c7

    const/4 v3, 0x0

    :cond_1c7
    const/16 v14, 0x10

    if-le v5, v14, :cond_1cd

    const/16 v5, 0x10

    :cond_1cd
    if-ge v6, v4, :cond_1d0

    move v6, v4

    :cond_1d0
    const/16 v14, 0x78

    if-le v7, v14, :cond_1d5

    move v7, v14

    :cond_1d5
    if-gez v8, :cond_1d8

    const/4 v8, 0x0

    :cond_1d8
    const/16 v14, 0x10

    if-le v13, v14, :cond_1dd

    move v13, v14

    :cond_1dd
    move v4, v3

    const/16 v16, 0x0

    :goto_1e0
    if-nez v16, :cond_25d

    if-ge v4, v5, :cond_25d

    move v14, v8

    :goto_1e5
    if-nez v16, :cond_249

    if-ge v14, v13, :cond_249

    add-int/lit8 v20, v7, 0x1

    move-wide/from16 v51, v1

    move/from16 v1, v20

    move-wide/from16 v20, v51

    :goto_1f1
    if-nez v16, :cond_237

    add-int/lit8 v2, v6, -0x1

    if-lt v1, v2, :cond_237

    mul-int/lit8 v27, v4, 0x10

    move/from16 p13, v9

    add-int v9, v27, v14

    move/from16 v27, v15

    const/16 v15, 0x80

    mul-int/2addr v9, v15

    add-int/2addr v9, v1

    if-ltz v1, :cond_22c

    if-lt v1, v15, :cond_208

    goto :goto_22c

    .line 107
    :cond_208
    aget-byte v15, p3, v9

    move/from16 v33, v12

    sget-object v12, Luu;->B:Luu;

    iget v12, v12, Luu;->bn:I

    if-eq v15, v12, :cond_21a

    aget-byte v9, p3, v9

    sget-object v12, Luu;->C:Luu;

    iget v12, v12, Luu;->bn:I

    if-ne v9, v12, :cond_21c

    :cond_21a
    const/16 v16, 0x1

    :cond_21c
    if-eq v1, v2, :cond_22e

    if-eq v4, v3, :cond_22e

    add-int/lit8 v2, v5, -0x1

    if-eq v4, v2, :cond_22e

    if-eq v14, v8, :cond_22e

    add-int/lit8 v2, v13, -0x1

    if-eq v14, v2, :cond_22e

    move v1, v6

    goto :goto_22e

    :cond_22c
    :goto_22c
    move/from16 v33, v12

    :cond_22e
    :goto_22e
    const/4 v2, -0x1

    add-int/2addr v1, v2

    move/from16 v9, p13

    move/from16 v15, v27

    move/from16 v12, v33

    goto :goto_1f1

    :cond_237
    move/from16 p13, v9

    move/from16 v33, v12

    move/from16 v27, v15

    const/4 v2, -0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v9, p13

    move-wide/from16 v1, v20

    move/from16 v15, v27

    move/from16 v12, v33

    goto :goto_1e5

    :cond_249
    move-wide/from16 v20, v1

    move/from16 p13, v9

    move/from16 v33, v12

    move/from16 v27, v15

    const/4 v2, -0x1

    add-int/lit8 v4, v4, 0x1

    move/from16 v9, p13

    move-wide/from16 v1, v20

    move/from16 v15, v27

    move/from16 v12, v33

    goto :goto_1e0

    :cond_25d
    move-wide/from16 v20, v1

    move/from16 p13, v9

    move/from16 v33, v12

    move/from16 v27, v15

    const/4 v2, -0x1

    if-eqz v16, :cond_26c

    move/from16 v46, v0

    goto/16 :goto_335

    :cond_26c
    :goto_26c
    if-ge v3, v5, :cond_326

    add-int v1, v3, v0

    int-to-double v14, v1

    const-wide/high16 v41, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v41

    sub-double v14, v14, v34

    div-double/2addr v14, v10

    move v1, v8

    :goto_279
    if-ge v1, v13, :cond_31a

    add-int v4, v1, v32

    move v9, v3

    int-to-double v2, v4

    add-double v2, v2, v41

    sub-double v2, v2, v38

    div-double/2addr v2, v10

    mul-int/lit8 v4, v9, 0x10

    add-int/2addr v4, v1

    const/16 v12, 0x80

    mul-int/2addr v4, v12

    add-int/2addr v4, v7

    mul-double v43, v14, v14

    mul-double/2addr v2, v2

    add-double v45, v43, v2

    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    cmpg-double v16, v45, v47

    if-gez v16, :cond_308

    add-int/lit8 v16, v7, -0x1

    move/from16 v12, v16

    const/16 v16, 0x0

    :goto_29c
    if-lt v12, v6, :cond_308

    move/from16 v45, v5

    move/from16 p6, v6

    int-to-double v5, v12

    add-double v5, v5, v41

    sub-double v5, v5, v36

    div-double v5, v5, v28

    const-wide v49, -0x401999999999999aL    # -0.7

    cmpl-double v46, v5, v49

    if-lez v46, :cond_2fb

    mul-double/2addr v5, v5

    add-double v5, v43, v5

    add-double/2addr v5, v2

    cmpg-double v5, v5, v47

    if-gez v5, :cond_2fb

    .line 128
    aget-byte v5, p3, v4

    .line 129
    sget-object v6, Luu;->v:Lwp;

    iget v6, v6, Lwp;->bn:I

    if-ne v5, v6, :cond_2c4

    const/16 v16, 0x1

    .line 130
    :cond_2c4
    sget-object v6, Luu;->u:Luu;

    iget v6, v6, Luu;->bn:I

    if-eq v5, v6, :cond_2d6

    sget-object v6, Luu;->w:Luu;

    iget v6, v6, Luu;->bn:I

    if-eq v5, v6, :cond_2d6

    sget-object v6, Luu;->v:Lwp;

    iget v6, v6, Lwp;->bn:I

    if-ne v5, v6, :cond_2fb

    :cond_2d6
    const/16 v5, 0xa

    if-ge v12, v5, :cond_2e2

    .line 132
    sget-object v5, Luu;->D:Luu;

    iget v5, v5, Luu;->bn:I

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    goto :goto_2fb

    :cond_2e2
    const/4 v5, 0x0

    .line 134
    aput-byte v5, p3, v4

    if-eqz v16, :cond_2fb

    add-int/lit8 v6, v4, -0x1

    .line 135
    aget-byte v5, p3, v6

    move/from16 v46, v0

    sget-object v0, Luu;->w:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne v5, v0, :cond_2fd

    sget-object v0, Luu;->v:Lwp;

    iget v0, v0, Lwp;->bn:I

    int-to-byte v0, v0

    aput-byte v0, p3, v6

    goto :goto_2fd

    :cond_2fb
    :goto_2fb
    move/from16 v46, v0

    :cond_2fd
    :goto_2fd
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v12, v12, -0x1

    move/from16 v6, p6

    move/from16 v5, v45

    move/from16 v0, v46

    goto :goto_29c

    :cond_308
    move/from16 v46, v0

    move/from16 v45, v5

    move/from16 p6, v6

    add-int/lit8 v1, v1, 0x1

    move/from16 v6, p6

    move v3, v9

    move/from16 v5, v45

    move/from16 v0, v46

    const/4 v2, -0x1

    goto/16 :goto_279

    :cond_31a
    move/from16 v46, v0

    move v9, v3

    move/from16 v45, v5

    move/from16 p6, v6

    add-int/lit8 v3, v9, 0x1

    const/4 v2, -0x1

    goto/16 :goto_26c

    :cond_326
    move/from16 v46, v0

    if-eqz v33, :cond_335

    goto :goto_356

    :cond_32b
    :goto_32b
    move/from16 v46, v0

    move-wide/from16 v20, v1

    :goto_32f
    move/from16 p13, v9

    move/from16 v33, v12

    move/from16 v27, v15

    :cond_335
    :goto_335
    add-int/lit8 v14, v40, 0x1

    move-object/from16 v13, p4

    move/from16 v9, p13

    move/from16 v11, v17

    move-wide/from16 v4, v18

    move-wide/from16 v1, v20

    move/from16 v15, v27

    move/from16 v8, v31

    move/from16 v3, v32

    move/from16 v12, v33

    move-wide/from16 v16, v34

    move-wide/from16 v18, v36

    move-wide/from16 v20, v38

    move/from16 v0, v46

    const/16 v6, 0x10

    const/4 v7, -0x1

    goto/16 :goto_59

    :cond_356
    :goto_356
    return-void
.end method

.method protected a(Lfd;IIII[B)V
    .registers 36

    move-object/from16 v15, p0

    .line 158
    iget-object v0, v15, Lsq;->b:Ljava/util/Random;

    iget-object v1, v15, Lsq;->b:Ljava/util/Random;

    iget-object v2, v15, Lsq;->b:Ljava/util/Random;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 159
    iget-object v1, v15, Lsq;->b:Ljava/util/Random;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v18, 0x0

    if-eqz v1, :cond_2b

    move/from16 v14, v18

    goto :goto_2c

    :cond_2b
    move v14, v0

    :goto_2c
    move/from16 v13, v18

    :goto_2e
    if-ge v13, v14, :cond_ea

    const/16 v0, 0x10

    mul-int/lit8 v1, p2, 0x10

    .line 162
    iget-object v2, v15, Lsq;->b:Ljava/util/Random;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v10, v1

    .line 165
    iget-object v1, v15, Lsq;->b:Ljava/util/Random;

    iget-object v2, v15, Lsq;->b:Ljava/util/Random;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-double v8, v1

    mul-int/lit8 v1, p3, 0x10

    .line 167
    iget-object v2, v15, Lsq;->b:Ljava/util/Random;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v1, v0

    int-to-double v6, v1

    .line 170
    iget-object v0, v15, Lsq;->b:Ljava/util/Random;

    const/4 v12, 0x4

    invoke-virtual {v0, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_7d

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-wide v4, v10

    move-wide/from16 v19, v6

    move-wide v6, v8

    move-wide/from16 v21, v8

    move-wide/from16 v8, v19

    .line 171
    invoke-virtual/range {v0 .. v9}, Lsq;->a(II[BDDD)V

    .line 172
    iget-object v0, v15, Lsq;->b:Ljava/util/Random;

    invoke-virtual {v0, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v8, v0

    goto :goto_83

    :cond_7d
    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    move/from16 v8, v17

    :goto_83
    move/from16 v9, v18

    :goto_85
    if-ge v9, v8, :cond_e0

    .line 177
    iget-object v0, v15, Lsq;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    move-wide/from16 v23, v10

    move v11, v0

    .line 178
    iget-object v0, v15, Lsq;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    const/high16 v2, 0x41000000    # 8.0f

    div-float v12, v0, v2

    .line 179
    iget-object v0, v15, Lsq;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    iget-object v1, v15, Lsq;->b:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    add-float v10, v0, v1

    const/4 v0, 0x0

    move/from16 v25, v13

    move v13, v0

    move/from16 v26, v14

    move v14, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    move-wide v15, v0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-wide/from16 v4, v23

    move-wide/from16 v6, v21

    move/from16 v28, v8

    move/from16 v27, v9

    move-wide/from16 v8, v19

    .line 181
    invoke-virtual/range {v0 .. v16}, Lsq;->a(II[BDDDFFFIID)V

    add-int/lit8 v9, v27, 0x1

    move-object/from16 v15, p0

    move-wide/from16 v10, v23

    move/from16 v13, v25

    move/from16 v14, v26

    move/from16 v8, v28

    goto :goto_85

    :cond_e0
    move/from16 v25, v13

    move/from16 v26, v14

    add-int/lit8 v13, v25, 0x1

    move-object/from16 v15, p0

    goto/16 :goto_2e

    :cond_ea
    return-void
.end method
