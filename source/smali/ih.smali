###### Class defpackage.ih (ih)
.class public Lih;
.super Lpg;
.source "SourceFile"


# static fields
.field static final a:[B


# instance fields
.field b:Ljava/util/Random;

.field c:Lfd;

.field d:[I

.field e:I

.field f:I

.field g:D

.field h:D

.field i:D

.field j:D

.field k:D

.field l:I

.field m:I

.field n:I

.field o:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 27
    fill-array-data v0, :array_a

    sput-object v0, Lih;->a:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x2t
        0x0t
        0x0t
        0x1t
        0x2t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .line 8
    invoke-direct {p0}, Lpg;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lih;->b:Ljava/util/Random;

    const/4 v0, 0x0

    .line 36
    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lih;->d:[I

    .line 38
    iput v0, p0, Lih;->e:I

    const-wide v0, 0x3fe3c6a7ef9db22dL    # 0.618

    .line 41
    iput-wide v0, p0, Lih;->g:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 42
    iput-wide v0, p0, Lih;->h:D

    const-wide v2, 0x3fd8624dd2f1a9fcL    # 0.381

    .line 43
    iput-wide v2, p0, Lih;->i:D

    .line 44
    iput-wide v0, p0, Lih;->j:D

    .line 45
    iput-wide v0, p0, Lih;->k:D

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lih;->l:I

    const/16 v0, 0xc

    .line 47
    iput v0, p0, Lih;->m:I

    const/4 v0, 0x4

    .line 48
    iput v0, p0, Lih;->n:I

    return-void
.end method


# virtual methods
.method a(I)F
    .registers 9

    int-to-double v0, p1

    .line 181
    iget v2, p0, Lih;->e:I

    int-to-float v3, v2

    float-to-double v3, v3

    const-wide v5, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v3, v5

    cmpg-double v0, v0, v3

    if-gez v0, :cond_13

    const p1, -0x4030e560    # -1.618f

    return p1

    :cond_13
    int-to-float v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v2, v2

    div-float/2addr v2, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    const/4 p1, 0x0

    cmpl-float v1, v2, p1

    if-nez v1, :cond_21

    goto :goto_45

    .line 186
    :cond_21
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_2b

    move v0, p1

    goto :goto_45

    .line 187
    :cond_2b
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v5, p1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_45
    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    return v0
.end method

.method a([I[I)I
    .registers 22

    const/4 v0, 0x0

    .line 340
    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    move v2, v0

    move v3, v2

    :goto_7
    const/4 v4, 0x3

    if-ge v2, v4, :cond_22

    .line 344
    aget v4, p2, v2

    aget v5, p1, v2

    sub-int/2addr v4, v5

    aput v4, v1, v2

    .line 345
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_1e

    move v3, v2

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_7

    .line 351
    :cond_22
    aget v2, v1, v3

    const/4 v4, -0x1

    if-nez v2, :cond_28

    return v4

    .line 353
    :cond_28
    sget-object v5, Lih;->a:[B

    aget-byte v6, v5, v3

    add-int/lit8 v7, v3, 0x3

    .line 354
    aget-byte v5, v5, v7

    if-lez v2, :cond_34

    const/4 v8, 0x1

    goto :goto_35

    :cond_34
    move v8, v4

    .line 361
    :goto_35
    aget v9, v1, v6

    int-to-double v9, v9

    int-to-double v11, v2

    div-double/2addr v9, v11

    .line 362
    aget v1, v1, v5

    int-to-double v11, v1

    int-to-double v13, v2

    div-double/2addr v11, v13

    .line 364
    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    add-int/2addr v2, v8

    move v13, v0

    :goto_45
    if-eq v13, v2, :cond_85

    .line 370
    aget v14, p1, v3

    add-int/2addr v14, v13

    aput v14, v1, v3

    .line 371
    aget v14, p1, v6

    int-to-double v14, v14

    move/from16 v16, v8

    int-to-double v7, v13

    mul-double v17, v7, v9

    add-double v14, v14, v17

    invoke-static {v14, v15}, Lin;->b(D)I

    move-result v14

    aput v14, v1, v6

    .line 372
    aget v14, p1, v5

    int-to-double v14, v14

    mul-double/2addr v7, v11

    add-double/2addr v14, v7

    invoke-static {v14, v15}, Lin;->b(D)I

    move-result v7

    aput v7, v1, v5

    move-object/from16 v7, p0

    .line 373
    iget-object v8, v7, Lih;->c:Lfd;

    aget v14, v1, v0

    const/4 v15, 0x1

    aget v0, v1, v15

    const/16 v18, 0x2

    aget v15, v1, v18

    invoke-virtual {v8, v14, v0, v15}, Lfd;->a(III)I

    move-result v0

    if-eqz v0, :cond_7f

    const/16 v8, 0x12

    if-eq v0, v8, :cond_7f

    goto :goto_87

    :cond_7f
    add-int v13, v13, v16

    move/from16 v8, v16

    const/4 v0, 0x0

    goto :goto_45

    :cond_85
    move-object/from16 v7, p0

    :goto_87
    if-ne v13, v2, :cond_8a

    return v4

    .line 387
    :cond_8a
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method a()V
    .registers 24

    move-object/from16 v0, p0

    .line 58
    iget v1, v0, Lih;->e:I

    int-to-double v2, v1

    iget-wide v4, v0, Lih;->g:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Lih;->f:I

    if-lt v2, v1, :cond_11

    add-int/lit8 v2, v1, -0x1

    .line 59
    iput v2, v0, Lih;->f:I

    .line 60
    :cond_11
    iget-wide v2, v0, Lih;->k:D

    int-to-double v4, v1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x402a000000000000L    # 13.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide v6, 0x3ff61cac083126e9L    # 1.382

    add-double/2addr v1, v6

    double-to-int v1, v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_29

    move v1, v2

    .line 63
    :cond_29
    iget v3, v0, Lih;->e:I

    mul-int/2addr v3, v1

    const/4 v6, 0x4

    filled-new-array {v3, v6}, [I

    move-result-object v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 64
    iget-object v7, v0, Lih;->d:[I

    aget v8, v7, v2

    iget v9, v0, Lih;->e:I

    add-int/2addr v9, v8

    iget v10, v0, Lih;->n:I

    sub-int/2addr v9, v10

    .line 66
    iget v10, v0, Lih;->f:I

    add-int/2addr v10, v8

    sub-int v8, v9, v8

    const/4 v11, 0x0

    .line 69
    aget-object v12, v3, v11

    aget v13, v7, v11

    aput v13, v12, v11

    .line 70
    aput v9, v12, v2

    const/4 v13, 0x2

    .line 71
    aget v7, v7, v13

    aput v7, v12, v13

    const/4 v7, 0x3

    .line 72
    aput v10, v12, v7

    const/4 v12, -0x1

    add-int/2addr v9, v12

    move v14, v2

    :goto_5c
    if-ltz v8, :cond_164

    .line 78
    invoke-virtual {v0, v8}, Lih;->a(I)F

    move-result v15

    const/16 v16, 0x0

    cmpg-float v16, v15, v16

    if-gez v16, :cond_6d

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_5c

    :cond_6d
    move v6, v11

    :goto_6e
    if-ge v6, v1, :cond_14e

    move/from16 v17, v8

    .line 88
    iget-wide v7, v0, Lih;->j:D

    move-object/from16 v18, v3

    float-to-double v2, v15

    iget-object v12, v0, Lih;->b:Ljava/util/Random;

    invoke-virtual {v12}, Ljava/util/Random;->nextFloat()F

    move-result v12

    move/from16 v19, v14

    float-to-double v13, v12

    const-wide v20, 0x3fd4fdf3b645a1cbL    # 0.328

    add-double v13, v13, v20

    mul-double/2addr v2, v13

    mul-double/2addr v7, v2

    .line 89
    iget-object v2, v0, Lih;->b:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v4

    const-wide v12, 0x400921f9f01b866eL    # 3.14159

    mul-double/2addr v2, v12

    .line 90
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v7

    iget-object v14, v0, Lih;->d:[I

    aget v14, v14, v11

    int-to-double v4, v14

    add-double/2addr v12, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v4

    invoke-static {v12, v13}, Lin;->b(D)I

    move-result v12

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v7, v2

    iget-object v2, v0, Lih;->d:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-double v2, v2

    add-double/2addr v7, v2

    add-double/2addr v7, v4

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v2

    .line 92
    filled-new-array {v12, v9, v2}, [I

    move-result-object v3

    .line 93
    iget v4, v0, Lih;->n:I

    add-int/2addr v4, v9

    filled-new-array {v12, v4, v2}, [I

    move-result-object v4

    .line 95
    invoke-virtual {v0, v3, v4}, Lih;->a([I[I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_137

    .line 98
    iget-object v4, v0, Lih;->d:[I

    aget v5, v4, v11

    const/4 v7, 0x1

    aget v8, v4, v7

    const/4 v7, 0x2

    aget v4, v4, v7

    filled-new-array {v5, v8, v4}, [I

    move-result-object v4

    .line 99
    aget v8, v3, v11

    sub-int/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v13, v5

    move v8, v12

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    iget-object v5, v0, Lih;->d:[I

    aget v5, v5, v7

    aget v21, v3, v7

    sub-int v5, v5, v21

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v7, v6

    int-to-double v5, v5

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 100
    iget-wide v13, v0, Lih;->i:D

    mul-double/2addr v5, v13

    const/4 v13, 0x1

    .line 101
    aget v14, v3, v13

    int-to-double v11, v14

    sub-double/2addr v11, v5

    move/from16 v22, v14

    int-to-double v13, v10

    cmpl-double v11, v11, v13

    if-lez v11, :cond_113

    const/4 v11, 0x1

    .line 102
    aput v10, v4, v11

    goto :goto_11b

    :cond_113
    move/from16 v12, v22

    const/4 v11, 0x1

    int-to-double v12, v12

    sub-double/2addr v12, v5

    double-to-int v5, v12

    .line 105
    aput v5, v4, v11

    .line 108
    :goto_11b
    invoke-virtual {v0, v4, v3}, Lih;->a([I[I)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_134

    .line 111
    aget-object v3, v18, v19

    const/4 v5, 0x0

    aput v8, v3, v5

    .line 112
    aput v9, v3, v11

    const/4 v8, 0x2

    .line 113
    aput v2, v3, v8

    .line 114
    aget v2, v4, v11

    const/4 v4, 0x3

    aput v2, v3, v4

    add-int/lit8 v14, v19, 0x1

    goto :goto_13e

    :cond_134
    const/4 v4, 0x3

    const/4 v8, 0x2

    goto :goto_13c

    :cond_137
    move v7, v6

    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v11, 0x1

    move v6, v5

    :goto_13c
    move/from16 v14, v19

    :goto_13e
    add-int/lit8 v2, v7, 0x1

    move v7, v4

    move v12, v6

    move v13, v8

    move/from16 v8, v17

    move-object/from16 v3, v18

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move v6, v2

    move v2, v11

    const/4 v11, 0x0

    goto/16 :goto_6e

    :cond_14e
    move v11, v2

    move-object/from16 v18, v3

    move v4, v7

    move/from16 v17, v8

    move v6, v12

    move v8, v13

    move/from16 v19, v14

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v2, v17, -0x1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/4 v6, 0x4

    move v8, v2

    move v2, v11

    const/4 v11, 0x0

    goto/16 :goto_5c

    :cond_164
    move-object/from16 v18, v3

    move v2, v6

    .line 123
    filled-new-array {v14, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, v0, Lih;->o:[[I

    const/4 v2, 0x0

    .line 124
    invoke-static {v3, v2, v1, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public a(DDD)V
    .registers 9

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    .line 433
    iput v0, p0, Lih;->m:I

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, p1, v0

    if-lez p1, :cond_f

    const/4 p1, 0x5

    .line 434
    iput p1, p0, Lih;->n:I

    .line 435
    :cond_f
    iput-wide p3, p0, Lih;->j:D

    .line 436
    iput-wide p5, p0, Lih;->k:D

    return-void
.end method

.method a(III)V
    .registers 13

    .line 209
    iget v0, p0, Lih;->n:I

    add-int/2addr v0, p2

    move v8, p2

    :goto_4
    if-ge v8, v0, :cond_19

    sub-int v1, v8, p2

    .line 212
    invoke-virtual {p0, v1}, Lih;->b(I)F

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0x12

    move-object v1, p0

    move v2, p1

    move v3, v8

    move v4, p3

    .line 213
    invoke-virtual/range {v1 .. v7}, Lih;->a(IIIFBI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_19
    return-void
.end method

.method a(IIIFBI)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p4

    float-to-double v1, v1

    const-wide v3, 0x3fe3c6a7ef9db22dL    # 0.618

    add-double/2addr v3, v1

    double-to-int v3, v3

    .line 140
    sget-object v4, Lih;->a:[B

    aget-byte v5, v4, p5

    add-int/lit8 v6, p5, 0x3

    .line 141
    aget-byte v4, v4, v6

    .line 142
    filled-new-array/range {p1 .. p3}, [I

    move-result-object v6

    const/4 v7, 0x0

    .line 143
    filled-new-array {v7, v7, v7}, [I

    move-result-object v8

    neg-int v9, v3

    .line 147
    aget v10, v6, p5

    aput v10, v8, p5

    move v10, v9

    :goto_23
    if-gt v10, v3, :cond_8f

    .line 149
    aget v11, v6, v5

    add-int/2addr v11, v10

    aput v11, v8, v5

    move v11, v9

    :goto_2b
    if-gt v11, v3, :cond_87

    .line 152
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v12, v12

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    move-object/from16 p2, v8

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    add-double/2addr v7, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    cmpl-double v7, v7, v1

    if-lez v7, :cond_58

    :goto_52
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, p2

    const/4 v7, 0x0

    goto :goto_2b

    .line 157
    :cond_58
    aget v7, v6, v4

    add-int/2addr v7, v11

    aput v7, p2, v4

    .line 158
    iget-object v7, v0, Lih;->c:Lfd;

    const/4 v8, 0x0

    aget v12, p2, v8

    const/4 v8, 0x1

    aget v13, p2, v8

    const/4 v14, 0x2

    aget v15, p2, v14

    invoke-virtual {v7, v12, v13, v15}, Lfd;->a(III)I

    move-result v7

    if-eqz v7, :cond_73

    const/16 v12, 0x12

    if-eq v7, v12, :cond_73

    goto :goto_52

    .line 165
    :cond_73
    iget-object v7, v0, Lih;->c:Lfd;

    const/4 v12, 0x0

    aget v13, p2, v12

    aget v8, p2, v8

    aget v14, p2, v14

    move/from16 v15, p6

    invoke-virtual {v7, v13, v8, v14, v15}, Lfd;->c(IIII)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, p2

    move v7, v12

    goto :goto_2b

    :cond_87
    move/from16 v15, p6

    move v12, v7

    move-object/from16 p2, v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_8f
    return-void
.end method

.method a([I[II)V
    .registers 24

    const/4 v0, 0x0

    .line 225
    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    move v2, v0

    move v3, v2

    :goto_7
    const/4 v4, 0x3

    if-ge v2, v4, :cond_22

    .line 229
    aget v4, p2, v2

    aget v5, p1, v2

    sub-int/2addr v4, v5

    aput v4, v1, v2

    .line 230
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_1e

    move v3, v2

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_7

    .line 236
    :cond_22
    aget v2, v1, v3

    if-nez v2, :cond_27

    return-void

    .line 238
    :cond_27
    sget-object v4, Lih;->a:[B

    aget-byte v5, v4, v3

    add-int/lit8 v6, v3, 0x3

    .line 239
    aget-byte v4, v4, v6

    if-lez v2, :cond_33

    const/4 v7, 0x1

    goto :goto_34

    :cond_33
    const/4 v7, -0x1

    .line 246
    :goto_34
    aget v8, v1, v5

    int-to-double v8, v8

    int-to-double v10, v2

    div-double/2addr v8, v10

    .line 247
    aget v1, v1, v4

    int-to-double v10, v1

    int-to-double v12, v2

    div-double/2addr v10, v12

    .line 249
    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    add-int/2addr v2, v7

    move v12, v0

    :goto_44
    if-eq v12, v2, :cond_88

    .line 254
    aget v13, p1, v3

    add-int/2addr v13, v12

    int-to-double v13, v13

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Lin;->b(D)I

    move-result v13

    aput v13, v1, v3

    .line 255
    aget v13, p1, v5

    int-to-double v13, v13

    move/from16 v17, v7

    int-to-double v6, v12

    mul-double v18, v6, v8

    add-double v13, v13, v18

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Lin;->b(D)I

    move-result v13

    aput v13, v1, v5

    .line 256
    aget v13, p1, v4

    int-to-double v13, v13

    mul-double/2addr v6, v10

    add-double/2addr v13, v6

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Lin;->b(D)I

    move-result v6

    aput v6, v1, v4

    move-object/from16 v6, p0

    .line 257
    iget-object v7, v6, Lih;->c:Lfd;

    aget v13, v1, v0

    const/4 v14, 0x1

    aget v15, v1, v14

    const/16 v16, 0x2

    aget v0, v1, v16

    move/from16 v14, p3

    invoke-virtual {v7, v13, v15, v0, v14}, Lfd;->c(IIII)Z

    add-int v12, v12, v17

    move/from16 v7, v17

    const/4 v0, 0x0

    goto :goto_44

    :cond_88
    move-object/from16 v6, p0

    return-void
.end method

.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 7

    .line 449
    iput-object p1, p0, Lih;->c:Lfd;

    .line 450
    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide p1

    .line 451
    iget-object v0, p0, Lih;->b:Ljava/util/Random;

    invoke-virtual {v0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 453
    iget-object p1, p0, Lih;->d:[I

    const/4 p2, 0x0

    aput p3, p1, p2

    const/4 p3, 0x1

    .line 454
    aput p4, p1, p3

    const/4 p4, 0x2

    .line 455
    aput p5, p1, p4

    .line 457
    iget p1, p0, Lih;->e:I

    if-nez p1, :cond_26

    .line 458
    iget-object p1, p0, Lih;->b:Ljava/util/Random;

    iget p4, p0, Lih;->m:I

    invoke-virtual {p1, p4}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lih;->e:I

    .line 460
    :cond_26
    invoke-virtual {p0}, Lih;->e()Z

    move-result p1

    if-nez p1, :cond_2d

    return p2

    .line 467
    :cond_2d
    invoke-virtual {p0}, Lih;->a()V

    .line 469
    invoke-virtual {p0}, Lih;->b()V

    .line 471
    invoke-virtual {p0}, Lih;->c()V

    .line 473
    invoke-virtual {p0}, Lih;->d()V

    return p3
.end method

.method b(I)F
    .registers 3

    if-ltz p1, :cond_14

    .line 199
    iget v0, p0, Lih;->n:I

    if-lt p1, v0, :cond_7

    goto :goto_14

    :cond_7
    if-eqz p1, :cond_11

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_e

    goto :goto_11

    :cond_e
    const/high16 p1, 0x40400000    # 3.0f

    return p1

    :cond_11
    :goto_11
    const/high16 p1, 0x40000000    # 2.0f

    return p1

    :cond_14
    :goto_14
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method b()V
    .registers 8

    .line 268
    iget-object v0, p0, Lih;->o:[[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_19

    .line 270
    iget-object v3, p0, Lih;->o:[[I

    aget-object v3, v3, v2

    aget v4, v3, v1

    const/4 v5, 0x1

    .line 271
    aget v5, v3, v5

    const/4 v6, 0x2

    .line 272
    aget v3, v3, v6

    .line 273
    invoke-virtual {p0, v4, v5, v3}, Lih;->a(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method

.method c()V
    .registers 8

    .line 292
    iget-object v0, p0, Lih;->d:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    .line 293
    aget v4, v0, v3

    .line 294
    iget v5, p0, Lih;->f:I

    add-int/2addr v5, v4

    const/4 v6, 0x2

    .line 295
    aget v0, v0, v6

    .line 296
    filled-new-array {v2, v4, v0}, [I

    move-result-object v4

    .line 297
    filled-new-array {v2, v5, v0}, [I

    move-result-object v0

    const/16 v2, 0x11

    .line 298
    invoke-virtual {p0, v4, v0, v2}, Lih;->a([I[II)V

    .line 299
    iget v5, p0, Lih;->l:I

    if-ne v5, v6, :cond_48

    .line 300
    aget v5, v4, v1

    add-int/2addr v5, v3

    aput v5, v4, v1

    .line 301
    aget v5, v0, v1

    add-int/2addr v5, v3

    aput v5, v0, v1

    .line 302
    invoke-virtual {p0, v4, v0, v2}, Lih;->a([I[II)V

    .line 303
    aget v5, v4, v6

    add-int/2addr v5, v3

    aput v5, v4, v6

    .line 304
    aget v5, v0, v6

    add-int/2addr v5, v3

    aput v5, v0, v6

    .line 305
    invoke-virtual {p0, v4, v0, v2}, Lih;->a([I[II)V

    .line 306
    aget v3, v4, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v4, v1

    .line 307
    aget v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v0, v1

    .line 308
    invoke-virtual {p0, v4, v0, v2}, Lih;->a([I[II)V

    :cond_48
    return-void
.end method

.method c(I)Z
    .registers 8

    int-to-double v0, p1

    .line 286
    iget p1, p0, Lih;->e:I

    int-to-double v2, p1

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    const/4 p1, 0x1

    return p1
.end method

.method d()V
    .registers 11

    .line 317
    iget-object v0, p0, Lih;->o:[[I

    array-length v0, v0

    .line 318
    iget-object v1, p0, Lih;->d:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v1, v1, v6

    filled-new-array {v3, v5, v1}, [I

    move-result-object v1

    move v3, v2

    :goto_13
    if-ge v3, v0, :cond_3b

    .line 320
    iget-object v5, p0, Lih;->o:[[I

    aget-object v5, v5, v3

    .line 321
    aget v7, v5, v2

    aget v8, v5, v4

    aget v9, v5, v6

    filled-new-array {v7, v8, v9}, [I

    move-result-object v7

    const/4 v8, 0x3

    .line 322
    aget v5, v5, v8

    aput v5, v1, v4

    .line 324
    iget-object v8, p0, Lih;->d:[I

    aget v8, v8, v4

    sub-int/2addr v5, v8

    .line 325
    invoke-virtual {p0, v5}, Lih;->c(I)Z

    move-result v5

    if-eqz v5, :cond_38

    const/16 v5, 0x11

    .line 326
    invoke-virtual {p0, v1, v7, v5}, Lih;->a([I[II)V

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_3b
    return-void
.end method

.method e()Z
    .registers 10

    .line 400
    iget-object v0, p0, Lih;->d:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x2

    aget v0, v0, v5

    filled-new-array {v2, v4, v0}, [I

    move-result-object v6

    .line 401
    iget v7, p0, Lih;->e:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v3

    filled-new-array {v2, v7, v0}, [I

    move-result-object v7

    .line 403
    iget-object v8, p0, Lih;->c:Lfd;

    sub-int/2addr v4, v3

    invoke-virtual {v8, v2, v4, v0}, Lfd;->a(III)I

    move-result v0

    if-eq v0, v5, :cond_24

    const/4 v2, 0x3

    if-eq v0, v2, :cond_24

    return v1

    .line 407
    :cond_24
    invoke-virtual {p0, v6, v7}, Lih;->a([I[I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2c

    return v3

    :cond_2c
    const/4 v2, 0x6

    if-ge v0, v2, :cond_30

    return v1

    .line 419
    :cond_30
    iput v0, p0, Lih;->e:I

    return v3
.end method
