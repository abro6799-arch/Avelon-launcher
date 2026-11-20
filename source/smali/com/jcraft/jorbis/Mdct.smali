###### Class com.jcraft.jorbis.Mdct (com.jcraft.jorbis.Mdct)
.class Lcom/jcraft/jorbis/Mdct;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field _w:[F

.field _x:[F

.field bitrev:[I

.field log2n:I

.field n:I

.field scale:F

.field trig:[F


# direct methods
.method constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v1, v0, [F

    .line 86
    iput-object v1, p0, Lcom/jcraft/jorbis/Mdct;->_x:[F

    new-array v0, v0, [F

    .line 87
    iput-object v0, p0, Lcom/jcraft/jorbis/Mdct;->_w:[F

    return-void
.end method

.method private mdct_kernel([F[FIIII)[F
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v6, p4

    move v4, v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_9
    const/4 v7, 0x1

    if-ge v3, v1, :cond_4a

    .line 165
    aget v8, p1, v4

    aget v9, p1, v5

    sub-float v10, v8, v9

    add-int v11, v1, v3

    add-int/2addr v4, v7

    add-int/2addr v5, v7

    add-float/2addr v8, v9

    .line 167
    aput v8, p2, v11

    .line 169
    aget v8, p1, v4

    aget v9, p1, v5

    sub-float/2addr v8, v9

    add-int/lit8 v6, v6, -0x4

    add-int/lit8 v9, v3, 0x1

    .line 172
    iget-object v11, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v12, v11, v6

    mul-float/2addr v12, v10

    add-int/lit8 v13, v6, 0x1

    aget v14, v11, v13

    mul-float/2addr v14, v8

    add-float/2addr v12, v14

    aput v12, p2, v3

    .line 173
    aget v3, v11, v6

    mul-float/2addr v8, v3

    aget v3, v11, v13

    mul-float/2addr v10, v3

    sub-float/2addr v8, v10

    aput v8, p2, v9

    add-int v3, v1, v9

    add-int/lit8 v8, v4, 0x1

    .line 175
    aget v4, p1, v4

    add-int/lit8 v10, v5, 0x1

    aget v5, p1, v5

    add-float/2addr v4, v5

    aput v4, p2, v3

    add-int/lit8 v3, v9, 0x1

    move v4, v8

    move v5, v10

    goto :goto_9

    :cond_4a
    move-object/from16 v1, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 182
    :goto_4f
    iget v5, v0, Lcom/jcraft/jorbis/Mdct;->log2n:I

    add-int/lit8 v5, v5, -0x3

    if-ge v4, v5, :cond_b8

    add-int/lit8 v5, v4, 0x2

    ushr-int v5, p3, v5

    add-int/lit8 v6, v4, 0x3

    shl-int v6, v7, v6

    add-int/lit8 v8, p4, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_61
    ushr-int/lit8 v11, v5, 0x2

    if-ge v9, v11, :cond_b0

    shr-int/lit8 v11, v5, 0x1

    sub-int v11, v8, v11

    .line 193
    iget-object v12, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v13, v12, v10

    add-int/lit8 v14, v10, 0x1

    .line 194
    aget v12, v12, v14

    add-int/lit8 v14, v8, -0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v15, 0x0

    :goto_76
    const/16 v16, 0x2

    shl-int v2, v16, v4

    if-ge v15, v2, :cond_a9

    .line 199
    aget v2, v3, v8

    aget v16, v3, v11

    sub-float v18, v2, v16

    add-float v2, v2, v16

    .line 200
    aput v2, v1, v8

    add-int/2addr v8, v7

    .line 202
    aget v2, v3, v8

    add-int/2addr v11, v7

    aget v16, v3, v11

    sub-float v19, v2, v16

    add-float v2, v2, v16

    .line 203
    aput v2, v1, v8

    mul-float v2, v19, v13

    mul-float v16, v18, v12

    sub-float v2, v2, v16

    .line 205
    aput v2, v1, v11

    add-int/lit8 v2, v11, -0x1

    mul-float v18, v18, v13

    mul-float v19, v19, v12

    add-float v18, v18, v19

    .line 206
    aput v18, v1, v2

    sub-int/2addr v8, v5

    sub-int/2addr v11, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_76

    :cond_a9
    add-int/lit8 v5, v5, -0x1

    add-int/2addr v10, v6

    add-int/lit8 v9, v9, 0x1

    move v8, v14

    goto :goto_61

    :cond_b0
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v20, v3

    move-object v3, v1

    move-object/from16 v1, v20

    goto :goto_4f

    :cond_b8
    add-int/lit8 v2, p4, -0x1

    move/from16 v8, p6

    move v6, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    move/from16 v2, p3

    :goto_c3
    if-ge v4, v8, :cond_118

    .line 229
    iget-object v9, v0, Lcom/jcraft/jorbis/Mdct;->bitrev:[I

    add-int/lit8 v10, v17, 0x1

    aget v11, v9, v17

    add-int/lit8 v17, v10, 0x1

    .line 230
    aget v9, v9, v10

    .line 232
    aget v10, v3, v11

    add-int/lit8 v12, v9, 0x1

    aget v12, v3, v12

    sub-float v13, v10, v12

    sub-int/2addr v11, v7

    .line 233
    aget v11, v3, v11

    aget v9, v3, v9

    add-float v14, v11, v9

    add-float/2addr v10, v12

    sub-float/2addr v11, v9

    .line 237
    iget-object v9, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    aget v12, v9, v2

    mul-float v15, v13, v12

    add-int/2addr v2, v7

    mul-float/2addr v12, v14

    .line 239
    aget v9, v9, v2

    mul-float/2addr v13, v9

    add-int/2addr v2, v7

    mul-float/2addr v14, v9

    add-int/lit8 v9, v5, 0x1

    add-float v16, v10, v13

    add-float v16, v16, v12

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v16, v16, v18

    .line 242
    aput v16, v1, v5

    add-int/lit8 v5, v6, -0x1

    neg-float v7, v11

    add-float/2addr v7, v14

    sub-float/2addr v7, v15

    mul-float v7, v7, v18

    .line 243
    aput v7, v1, v6

    add-int/lit8 v6, v9, 0x1

    add-float/2addr v11, v14

    sub-float/2addr v11, v15

    mul-float v11, v11, v18

    .line 244
    aput v11, v1, v9

    add-int/lit8 v7, v5, -0x1

    sub-float/2addr v10, v13

    sub-float/2addr v10, v12

    mul-float v10, v10, v18

    .line 245
    aput v10, v1, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    move v6, v7

    const/4 v7, 0x1

    goto :goto_c3

    :cond_118
    return-object v1
.end method


# virtual methods
.method declared-synchronized backward([F[F)V
    .registers 21

    move-object/from16 v8, p0

    monitor-enter p0

    .line 90
    :try_start_3
    iget-object v0, v8, Lcom/jcraft/jorbis/Mdct;->_x:[F

    array-length v0, v0

    iget v1, v8, Lcom/jcraft/jorbis/Mdct;->n:I

    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_12

    .line 91
    div-int/lit8 v0, v1, 0x2

    new-array v0, v0, [F

    iput-object v0, v8, Lcom/jcraft/jorbis/Mdct;->_x:[F

    .line 93
    :cond_12
    iget-object v0, v8, Lcom/jcraft/jorbis/Mdct;->_w:[F

    array-length v0, v0

    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_1f

    .line 94
    div-int/lit8 v0, v1, 0x2

    new-array v0, v0, [F

    iput-object v0, v8, Lcom/jcraft/jorbis/Mdct;->_w:[F

    .line 96
    :cond_1f
    iget-object v2, v8, Lcom/jcraft/jorbis/Mdct;->_x:[F

    .line 97
    iget-object v3, v8, Lcom/jcraft/jorbis/Mdct;->_w:[F

    ushr-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v9, v1, 0x2

    ushr-int/lit8 v7, v1, 0x3

    const/4 v10, 0x0

    const/4 v1, 0x1

    move v5, v0

    move v4, v10

    move v6, v4

    :goto_2e
    if-ge v4, v7, :cond_5f

    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v1, 0x2

    .line 111
    aget v13, p1, v12

    neg-float v13, v13

    iget-object v14, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v15, v5, 0x1

    aget v16, v14, v15

    mul-float v13, v13, v16

    aget v16, p1, v1

    aget v17, v14, v5

    mul-float v16, v16, v17

    sub-float v13, v13, v16

    aput v13, v2, v6

    add-int/lit8 v6, v11, 0x1

    .line 112
    aget v13, p1, v1

    aget v15, v14, v15

    mul-float/2addr v13, v15

    aget v12, p1, v12

    aget v14, v14, v5

    mul-float/2addr v12, v14

    sub-float/2addr v13, v12

    aput v13, v2, v11

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_5f
    add-int/lit8 v1, v0, -0x4

    move v4, v10

    :goto_62
    if-ge v4, v7, :cond_92

    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v11, v6, 0x1

    .line 120
    aget v12, p1, v1

    iget-object v13, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v14, v5, 0x1

    aget v15, v13, v14

    mul-float/2addr v12, v15

    add-int/lit8 v15, v1, 0x2

    aget v16, p1, v15

    aget v17, v13, v5

    mul-float v16, v16, v17

    add-float v12, v12, v16

    aput v12, v2, v6

    add-int/lit8 v6, v11, 0x1

    .line 121
    aget v12, p1, v1

    aget v16, v13, v5

    mul-float v12, v12, v16

    aget v15, p1, v15

    aget v13, v13, v14

    mul-float/2addr v15, v13

    sub-float/2addr v12, v15

    aput v12, v2, v11

    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 126
    :cond_92
    iget v4, v8, Lcom/jcraft/jorbis/Mdct;->n:I

    move-object/from16 v1, p0

    move v5, v0

    move v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/jcraft/jorbis/Mdct;->mdct_kernel([F[FIIII)[F

    move-result-object v1

    add-int/lit8 v2, v9, -0x1

    add-int v3, v9, v0

    add-int/lit8 v4, v3, -0x1

    move v6, v9

    move v5, v10

    :goto_a4
    if-ge v10, v9, :cond_d5

    .line 137
    aget v7, v1, v5

    iget-object v11, v8, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/lit8 v12, v0, 0x1

    aget v12, v11, v12

    mul-float v13, v7, v12

    add-int/lit8 v14, v5, 0x1

    aget v14, v1, v14

    aget v11, v11, v0

    mul-float v15, v14, v11

    sub-float/2addr v13, v15

    mul-float/2addr v7, v11

    mul-float/2addr v14, v12

    add-float/2addr v7, v14

    neg-float v7, v7

    neg-float v11, v13

    .line 140
    aput v11, p2, v6

    .line 141
    aput v13, p2, v2

    .line 142
    aput v7, p2, v3

    .line 143
    aput v7, p2, v4
    :try_end_c6
    .catchall {:try_start_3 .. :try_end_c6} :catchall_d7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v10, v10, 0x1

    goto :goto_a4

    .line 153
    :cond_d5
    monitor-exit p0

    return-void

    :catchall_d7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method clear()V
    .registers 1

    return-void
.end method

.method forward([F[F)V
    .registers 3

    return-void
.end method

.method init(I)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 40
    div-int/lit8 v2, v1, 0x4

    new-array v3, v2, [I

    iput-object v3, v0, Lcom/jcraft/jorbis/Mdct;->bitrev:[I

    add-int v3, v1, v2

    .line 41
    new-array v3, v3, [F

    iput-object v3, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    int-to-double v3, v1

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v0, Lcom/jcraft/jorbis/Mdct;->log2n:I

    .line 44
    iput v1, v0, Lcom/jcraft/jorbis/Mdct;->n:I

    .line 48
    div-int/lit8 v5, v1, 0x2

    add-int/lit8 v6, v5, 0x0

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v5, v6

    add-int/lit8 v8, v5, 0x1

    const/4 v9, 0x0

    move v10, v9

    :goto_30
    const-wide v11, 0x400921fb54442d18L    # Math.PI

    const/4 v13, 0x1

    if-ge v10, v2, :cond_82

    .line 54
    iget-object v14, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    mul-int/lit8 v15, v10, 0x2

    add-int v16, v9, v15

    div-double v17, v11, v3

    mul-int/lit8 v9, v10, 0x4

    int-to-double v11, v9

    mul-double v17, v17, v11

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v9, v11

    aput v9, v14, v16

    .line 55
    iget-object v9, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/2addr v13, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    neg-double v11, v11

    double-to-float v11, v11

    aput v11, v9, v13

    .line 56
    iget-object v9, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int v11, v6, v15

    mul-int/lit8 v12, v1, 0x2

    move v14, v2

    move-wide/from16 v16, v3

    int-to-double v2, v12

    const-wide v19, 0x400921fb54442d18L    # Math.PI

    div-double v2, v19, v2

    int-to-double v12, v13

    mul-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v4, v12

    aput v4, v9, v11

    .line 57
    iget-object v4, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/2addr v15, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v4, v15

    add-int/lit8 v10, v10, 0x1

    move v2, v14

    move-wide/from16 v3, v16

    const/4 v9, 0x0

    goto :goto_30

    :cond_82
    move-wide/from16 v16, v3

    const/4 v2, 0x0

    .line 59
    :goto_85
    div-int/lit8 v3, v1, 0x8

    if-ge v2, v3, :cond_b1

    .line 60
    iget-object v3, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    mul-int/lit8 v4, v2, 0x2

    add-int v6, v5, v4

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    div-double v11, v9, v16

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x2

    int-to-double v14, v7

    mul-double/2addr v11, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v7, v14

    aput v7, v3, v6

    .line 61
    iget-object v3, v0, Lcom/jcraft/jorbis/Mdct;->trig:[F

    add-int/2addr v4, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    neg-double v6, v6

    double-to-float v6, v6

    aput v6, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 65
    :cond_b1
    iget v2, v0, Lcom/jcraft/jorbis/Mdct;->log2n:I

    add-int/lit8 v4, v2, -0x1

    shl-int v4, v13, v4

    sub-int/2addr v4, v13

    add-int/lit8 v2, v2, -0x2

    shl-int v2, v13, v2

    const/4 v5, 0x0

    :goto_bd
    if-ge v5, v3, :cond_dc

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_c1
    ushr-int v8, v2, v6

    if-eqz v8, :cond_ce

    and-int/2addr v8, v5

    if-eqz v8, :cond_cb

    shl-int v8, v13, v6

    or-int/2addr v7, v8

    :cond_cb
    add-int/lit8 v6, v6, 0x1

    goto :goto_c1

    .line 72
    :cond_ce
    iget-object v6, v0, Lcom/jcraft/jorbis/Mdct;->bitrev:[I

    mul-int/lit8 v8, v5, 0x2

    not-int v9, v7

    and-int/2addr v9, v4

    aput v9, v6, v8

    add-int/2addr v8, v13

    .line 74
    aput v7, v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_bd

    :cond_dc
    const/high16 v2, 0x40800000    # 4.0f

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 77
    iput v2, v0, Lcom/jcraft/jorbis/Mdct;->scale:F

    return-void
.end method
