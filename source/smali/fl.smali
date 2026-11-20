###### Class defpackage.fl (fl)
.class public Lfl;
.super Lpg;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 13
    invoke-direct {p0}, Lpg;-><init>()V

    .line 14
    iput p1, p0, Lfl;->a:I

    .line 15
    iput p2, p0, Lfl;->b:I

    return-void
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 20
    invoke-virtual/range {p2 .. p2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v3, v4

    add-int/lit8 v5, p3, 0x8

    int-to-float v5, v5

    .line 22
    invoke-static {v3}, Lin;->a(F)F

    move-result v6

    iget v7, v0, Lfl;->b:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x41000000    # 8.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    float-to-double v8, v6

    .line 23
    invoke-static {v3}, Lin;->a(F)F

    move-result v6

    iget v10, v0, Lfl;->b:I

    int-to-float v10, v10

    mul-float/2addr v6, v10

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-double v5, v5

    add-int/lit8 v10, p5, 0x8

    int-to-float v10, v10

    .line 24
    invoke-static {v3}, Lin;->b(F)F

    move-result v11

    iget v12, v0, Lfl;->b:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    div-float/2addr v11, v7

    add-float/2addr v11, v10

    float-to-double v11, v11

    .line 25
    invoke-static {v3}, Lin;->b(F)F

    move-result v3

    iget v13, v0, Lfl;->b:I

    int-to-float v13, v13

    mul-float/2addr v3, v13

    div-float/2addr v3, v7

    sub-float/2addr v10, v3

    float-to-double v13, v10

    const/4 v3, 0x3

    .line 27
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int v7, p4, v7

    add-int/lit8 v7, v7, 0x2

    move-wide v15, v5

    int-to-double v4, v7

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v3, p4, v3

    add-int/lit8 v3, v3, 0x2

    int-to-double v6, v3

    const/4 v3, 0x0

    .line 31
    :goto_57
    iget v10, v0, Lfl;->b:I

    if-gt v3, v10, :cond_184

    sub-double v17, v15, v8

    int-to-double v1, v3

    mul-double v17, v17, v1

    move-wide/from16 v19, v11

    int-to-double v11, v10

    div-double v17, v17, v11

    add-double v17, v8, v17

    sub-double v11, v6, v4

    mul-double/2addr v11, v1

    move-wide/from16 p4, v6

    int-to-double v6, v10

    div-double/2addr v11, v6

    add-double/2addr v11, v4

    sub-double v6, v13, v19

    mul-double/2addr v6, v1

    int-to-double v1, v10

    div-double/2addr v6, v1

    add-double v1, v19, v6

    .line 36
    invoke-virtual/range {p2 .. p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    iget v10, v0, Lfl;->b:I

    move-wide/from16 v21, v4

    int-to-double v4, v10

    mul-double/2addr v6, v4

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v6, v4

    int-to-float v4, v3

    const v5, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v4, v5

    int-to-float v10, v10

    div-float v10, v4, v10

    .line 37
    invoke-static {v10}, Lin;->a(F)F

    move-result v10

    const/high16 v23, 0x3f800000    # 1.0f

    add-float v10, v10, v23

    move-wide/from16 v24, v8

    float-to-double v8, v10

    mul-double/2addr v8, v6

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, v26

    .line 38
    iget v10, v0, Lfl;->b:I

    int-to-float v10, v10

    div-float/2addr v4, v10

    invoke-static {v4}, Lin;->a(F)F

    move-result v4

    add-float v4, v4, v23

    float-to-double v4, v4

    mul-double/2addr v4, v6

    add-double v4, v4, v26

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v6

    sub-double v28, v17, v8

    .line 40
    invoke-static/range {v28 .. v29}, Lin;->b(D)I

    move-result v23

    div-double/2addr v4, v6

    sub-double v6, v11, v4

    .line 41
    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v6

    sub-double v28, v1, v8

    .line 42
    invoke-static/range {v28 .. v29}, Lin;->b(D)I

    move-result v7

    add-double v28, v17, v8

    .line 44
    invoke-static/range {v28 .. v29}, Lin;->b(D)I

    move-result v10

    add-double v28, v11, v4

    move/from16 v30, v6

    .line 45
    invoke-static/range {v28 .. v29}, Lin;->b(D)I

    move-result v6

    add-double v28, v1, v8

    move/from16 v31, v7

    .line 46
    invoke-static/range {v28 .. v29}, Lin;->b(D)I

    move-result v7

    move-wide/from16 v28, v13

    move/from16 v13, v23

    :goto_d9
    if-gt v13, v10, :cond_16f

    move-wide/from16 v32, v15

    int-to-double v14, v13

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v34

    sub-double v14, v14, v17

    div-double/2addr v14, v8

    mul-double/2addr v14, v14

    cmpg-double v16, v14, v26

    if-gez v16, :cond_153

    move/from16 v16, v10

    move/from16 v10, v30

    :goto_ee
    if-gt v10, v6, :cond_14a

    move-wide/from16 v36, v8

    int-to-double v8, v10

    add-double v8, v8, v34

    sub-double/2addr v8, v11

    div-double/2addr v8, v4

    mul-double/2addr v8, v8

    add-double/2addr v8, v14

    cmpg-double v23, v8, v26

    if-gez v23, :cond_137

    move-wide/from16 v38, v4

    move/from16 v4, v31

    :goto_101
    if-gt v4, v7, :cond_130

    move/from16 v23, v6

    int-to-double v5, v4

    add-double v5, v5, v34

    sub-double/2addr v5, v1

    div-double v5, v5, v36

    mul-double/2addr v5, v5

    add-double/2addr v5, v8

    cmpg-double v5, v5, v26

    if-gez v5, :cond_125

    move-object/from16 v5, p1

    .line 57
    invoke-virtual {v5, v13, v10, v4}, Lfd;->a(III)I

    move-result v6

    move-wide/from16 v40, v1

    sget-object v1, Luu;->u:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v6, v1, :cond_129

    iget v1, v0, Lfl;->a:I

    invoke-virtual {v5, v13, v10, v4, v1}, Lfd;->c(IIII)Z

    goto :goto_129

    :cond_125
    move-object/from16 v5, p1

    move-wide/from16 v40, v1

    :cond_129
    :goto_129
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v23

    move-wide/from16 v1, v40

    goto :goto_101

    :cond_130
    move-object/from16 v5, p1

    move-wide/from16 v40, v1

    move/from16 v23, v6

    goto :goto_13f

    :cond_137
    move-wide/from16 v40, v1

    move-wide/from16 v38, v4

    move/from16 v23, v6

    move-object/from16 v5, p1

    :goto_13f
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v23

    move-wide/from16 v8, v36

    move-wide/from16 v4, v38

    move-wide/from16 v1, v40

    goto :goto_ee

    :cond_14a
    move-wide/from16 v40, v1

    move-wide/from16 v38, v4

    move/from16 v23, v6

    move-wide/from16 v36, v8

    goto :goto_15d

    :cond_153
    move-wide/from16 v40, v1

    move-wide/from16 v38, v4

    move/from16 v23, v6

    move-wide/from16 v36, v8

    move/from16 v16, v10

    :goto_15d
    move-object/from16 v5, p1

    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v16

    move/from16 v6, v23

    move-wide/from16 v15, v32

    move-wide/from16 v8, v36

    move-wide/from16 v4, v38

    move-wide/from16 v1, v40

    goto/16 :goto_d9

    :cond_16f
    move-object/from16 v5, p1

    move-wide/from16 v32, v15

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p2

    move-wide/from16 v6, p4

    move-object v1, v5

    move-wide/from16 v11, v19

    move-wide/from16 v4, v21

    move-wide/from16 v8, v24

    move-wide/from16 v13, v28

    goto/16 :goto_57

    :cond_184
    const/4 v1, 0x1

    return v1
.end method
