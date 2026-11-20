###### Class defpackage.ms (ms)
.class public Lms;
.super Lpg;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 14
    invoke-direct {p0}, Lpg;-><init>()V

    .line 15
    sget-object v0, Luu;->aX:Luu;

    iget v0, v0, Luu;->bn:I

    iput v0, p0, Lms;->a:I

    .line 16
    iput p1, p0, Lms;->b:I

    return-void
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 20
    invoke-virtual {v1, v3, v4, v5}, Lfd;->f(III)Lln;

    move-result-object v6

    sget-object v7, Lln;->g:Lln;

    const/4 v8, 0x0

    if-eq v6, v7, :cond_16

    return v8

    .line 22
    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const v7, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v6, v7

    add-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    .line 24
    invoke-static {v6}, Lin;->a(F)F

    move-result v9

    iget v10, v0, Lms;->b:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x41000000    # 8.0f

    div-float/2addr v9, v10

    add-float/2addr v9, v3

    float-to-double v11, v9

    .line 25
    invoke-static {v6}, Lin;->a(F)F

    move-result v9

    iget v13, v0, Lms;->b:I

    int-to-float v13, v13

    mul-float/2addr v9, v13

    div-float/2addr v9, v10

    sub-float/2addr v3, v9

    float-to-double v13, v3

    add-int/lit8 v3, v5, 0x8

    int-to-float v3, v3

    .line 26
    invoke-static {v6}, Lin;->b(F)F

    move-result v5

    iget v9, v0, Lms;->b:I

    int-to-float v9, v9

    mul-float/2addr v5, v9

    div-float/2addr v5, v10

    add-float/2addr v5, v3

    float-to-double v8, v5

    .line 27
    invoke-static {v6}, Lin;->b(F)F

    move-result v5

    iget v6, v0, Lms;->b:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v10

    sub-float/2addr v3, v5

    float-to-double v5, v3

    const/4 v3, 0x3

    .line 29
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x2

    move-wide/from16 v16, v8

    int-to-double v7, v10

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    const/4 v15, 0x0

    .line 32
    :goto_66
    iget v9, v0, Lms;->b:I

    if-gt v15, v9, :cond_15f

    sub-double v18, v13, v11

    move-wide/from16 v20, v13

    int-to-double v13, v15

    mul-double v18, v18, v13

    int-to-double v1, v9

    div-double v18, v18, v1

    add-double v18, v11, v18

    sub-double v1, v3, v7

    mul-double/2addr v1, v13

    move-wide/from16 p3, v3

    int-to-double v3, v9

    div-double/2addr v1, v3

    add-double/2addr v1, v7

    sub-double v3, v5, v16

    mul-double/2addr v3, v13

    int-to-double v9, v9

    div-double/2addr v3, v9

    add-double v3, v16, v3

    .line 37
    invoke-virtual/range {p2 .. p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v9

    iget v13, v0, Lms;->b:I

    move-wide/from16 v22, v5

    int-to-double v5, v13

    mul-double/2addr v9, v5

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    div-double/2addr v9, v5

    int-to-float v5, v15

    const v6, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v5, v6

    int-to-float v13, v13

    div-float v13, v5, v13

    .line 38
    invoke-static {v13}, Lin;->a(F)F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v13, v14

    move-wide/from16 v24, v7

    float-to-double v6, v13

    mul-double/2addr v6, v9

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    add-double v6, v6, v26

    .line 39
    iget v8, v0, Lms;->b:I

    int-to-float v8, v8

    div-float/2addr v5, v8

    invoke-static {v5}, Lin;->a(F)F

    move-result v5

    add-float/2addr v5, v14

    float-to-double v13, v5

    mul-double/2addr v13, v9

    add-double v13, v13, v26

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    sub-double v28, v18, v6

    .line 41
    invoke-static/range {v28 .. v29}, Lin;->b(D)I

    move-result v5

    add-double v28, v18, v6

    .line 42
    invoke-static/range {v28 .. v29}, Lin;->b(D)I

    move-result v10

    div-double/2addr v13, v8

    sub-double v8, v1, v13

    .line 43
    invoke-static {v8, v9}, Lin;->b(D)I

    move-result v8

    add-double v28, v1, v13

    .line 44
    invoke-static/range {v28 .. v29}, Lin;->b(D)I

    move-result v9

    sub-double v28, v3, v6

    .line 45
    invoke-static/range {v28 .. v29}, Lin;->b(D)I

    move-result v28

    add-double v29, v3, v6

    move/from16 p5, v5

    .line 46
    invoke-static/range {v29 .. v30}, Lin;->b(D)I

    move-result v5

    move/from16 v29, v8

    move/from16 v8, p5

    :goto_e4
    if-gt v8, v10, :cond_14d

    move/from16 p5, v10

    move/from16 v10, v29

    :goto_ea
    if-gt v10, v9, :cond_13e

    move/from16 v30, v9

    move/from16 v9, v28

    :goto_f0
    if-gt v9, v5, :cond_131

    move-wide/from16 v31, v11

    int-to-double v11, v8

    const-wide/high16 v33, 0x3fe0000000000000L    # 0.5

    add-double v11, v11, v33

    sub-double v11, v11, v18

    div-double/2addr v11, v6

    move-wide/from16 v35, v11

    int-to-double v11, v10

    add-double v11, v11, v33

    sub-double/2addr v11, v1

    div-double/2addr v11, v13

    move-wide/from16 v37, v1

    int-to-double v1, v9

    add-double v1, v1, v33

    sub-double/2addr v1, v3

    div-double/2addr v1, v6

    mul-double v33, v35, v35

    mul-double/2addr v11, v11

    add-double v33, v33, v11

    mul-double/2addr v1, v1

    add-double v33, v33, v1

    cmpg-double v1, v33, v26

    if-gez v1, :cond_128

    move-object/from16 v1, p1

    .line 55
    invoke-virtual {v1, v8, v10, v9}, Lfd;->a(III)I

    move-result v2

    .line 56
    sget-object v11, Luu;->F:Luu;

    iget v11, v11, Luu;->bn:I

    if-ne v2, v11, :cond_12a

    iget v2, v0, Lms;->a:I

    invoke-virtual {v1, v8, v10, v9, v2}, Lfd;->c(IIII)Z

    goto :goto_12a

    :cond_128
    move-object/from16 v1, p1

    :cond_12a
    :goto_12a
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v11, v31

    move-wide/from16 v1, v37

    goto :goto_f0

    :cond_131
    move-wide/from16 v37, v1

    move-wide/from16 v31, v11

    move-object/from16 v1, p1

    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v30

    move-wide/from16 v1, v37

    goto :goto_ea

    :cond_13e
    move-wide/from16 v37, v1

    move/from16 v30, v9

    move-wide/from16 v31, v11

    move-object/from16 v1, p1

    add-int/lit8 v8, v8, 0x1

    move/from16 v10, p5

    move-wide/from16 v1, v37

    goto :goto_e4

    :cond_14d
    move-object/from16 v1, p1

    move-wide/from16 v31, v11

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v13, v20

    move-wide/from16 v5, v22

    move-wide/from16 v7, v24

    goto/16 :goto_66

    :cond_15f
    const/4 v1, 0x1

    return v1
.end method
