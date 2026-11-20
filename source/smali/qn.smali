###### Class defpackage.qn (qn)
.class public Lqn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcl;


# instance fields
.field public a:Luf;

.field public b:Luf;

.field c:[D

.field d:[D

.field e:[D

.field f:[D

.field g:[D

.field private h:Ljava/util/Random;

.field private i:Luf;

.field private j:Luf;

.field private k:Luf;

.field private l:Luf;

.field private m:Luf;

.field private n:Lfd;

.field private o:[D

.field private p:[D

.field private q:[D

.field private r:[D

.field private s:Lfv;


# direct methods
.method public constructor <init>(Lfd;J)V
    .registers 6

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [D

    .line 117
    iput-object v1, p0, Lqn;->p:[D

    new-array v1, v0, [D

    .line 118
    iput-object v1, p0, Lqn;->q:[D

    new-array v0, v0, [D

    .line 119
    iput-object v0, p0, Lqn;->r:[D

    .line 182
    new-instance v0, Lpk;

    invoke-direct {v0}, Lpk;-><init>()V

    iput-object v0, p0, Lqn;->s:Lfv;

    .line 30
    iput-object p1, p0, Lqn;->n:Lfd;

    .line 32
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1, p2, p3}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Lqn;->h:Ljava/util/Random;

    .line 33
    new-instance p2, Luf;

    const/16 p3, 0x10

    invoke-direct {p2, p1, p3}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p2, p0, Lqn;->i:Luf;

    .line 34
    new-instance p1, Luf;

    iget-object p2, p0, Lqn;->h:Ljava/util/Random;

    invoke-direct {p1, p2, p3}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lqn;->j:Luf;

    .line 35
    new-instance p1, Luf;

    iget-object p2, p0, Lqn;->h:Ljava/util/Random;

    const/16 v0, 0x8

    invoke-direct {p1, p2, v0}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lqn;->k:Luf;

    .line 36
    new-instance p1, Luf;

    iget-object p2, p0, Lqn;->h:Ljava/util/Random;

    const/4 v0, 0x4

    invoke-direct {p1, p2, v0}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lqn;->l:Luf;

    .line 37
    new-instance p1, Luf;

    iget-object p2, p0, Lqn;->h:Ljava/util/Random;

    invoke-direct {p1, p2, v0}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lqn;->m:Luf;

    .line 39
    new-instance p1, Luf;

    iget-object p2, p0, Lqn;->h:Ljava/util/Random;

    const/16 v0, 0xa

    invoke-direct {p1, p2, v0}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lqn;->a:Luf;

    .line 40
    new-instance p1, Luf;

    iget-object p2, p0, Lqn;->h:Ljava/util/Random;

    invoke-direct {p1, p2, p3}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lqn;->b:Luf;

    return-void
.end method

.method private a([DIIIIII)[D
    .registers 95

    move-object/from16 v0, p0

    move/from16 v11, p5

    move/from16 v9, p6

    move/from16 v14, p7

    if-nez p1, :cond_12

    mul-int v1, v11, v9

    mul-int/2addr v1, v14

    .line 210
    new-array v1, v1, [D

    move-object/from16 v86, v1

    goto :goto_14

    :cond_12
    move-object/from16 v86, p1

    .line 217
    :goto_14
    iget-object v1, v0, Lqn;->a:Luf;

    iget-object v2, v0, Lqn;->f:[D

    move/from16 v3, p2

    int-to-double v3, v3

    move-wide/from16 v71, v3

    move-wide/from16 v54, v3

    move-wide/from16 v37, v3

    move-wide/from16 v20, v3

    move/from16 v5, p3

    int-to-double v5, v5

    move-wide/from16 v73, v5

    move-wide/from16 v56, v5

    move-wide/from16 v39, v5

    move-wide/from16 v22, v5

    move/from16 v7, p4

    int-to-double v7, v7

    move-wide/from16 v75, v7

    move-wide/from16 v58, v7

    move-wide/from16 v41, v7

    move-wide/from16 v24, v7

    const/4 v10, 0x1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/16 v15, 0x0

    move-wide v14, v15

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p5

    move/from16 v11, p7

    invoke-virtual/range {v1 .. v17}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lqn;->f:[D

    .line 218
    iget-object v1, v0, Lqn;->b:Luf;

    move-object/from16 v18, v1

    iget-object v1, v0, Lqn;->g:[D

    move-object/from16 v19, v1

    const/16 v27, 0x1

    const-wide/high16 v29, 0x4059000000000000L    # 100.0

    const-wide/16 v31, 0x0

    const-wide/high16 v33, 0x4059000000000000L    # 100.0

    move/from16 v26, p5

    move/from16 v28, p7

    invoke-virtual/range {v18 .. v34}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lqn;->g:[D

    .line 220
    iget-object v1, v0, Lqn;->k:Luf;

    move-object/from16 v35, v1

    iget-object v1, v0, Lqn;->c:[D

    move-object/from16 v36, v1

    const-wide v46, 0x40211c3c9eecbfb2L    # 8.555150000000001

    move-wide/from16 v50, v46

    const-wide v48, 0x40411c3c9eecbfb1L    # 34.2206

    move/from16 v43, p5

    move/from16 v44, p6

    move/from16 v45, p7

    invoke-virtual/range {v35 .. v51}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lqn;->c:[D

    .line 221
    iget-object v1, v0, Lqn;->i:Luf;

    move-object/from16 v52, v1

    iget-object v1, v0, Lqn;->d:[D

    move-object/from16 v53, v1

    const-wide v63, 0x4085634bc6a7ef9eL    # 684.412

    move-wide/from16 v67, v63

    const-wide v65, 0x40a00a78d4fdf3b6L    # 2053.236

    move/from16 v60, p5

    move/from16 v61, p6

    move/from16 v62, p7

    invoke-virtual/range {v52 .. v68}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lqn;->d:[D

    .line 222
    iget-object v1, v0, Lqn;->j:Luf;

    move-object/from16 v69, v1

    iget-object v1, v0, Lqn;->e:[D

    move-object/from16 v70, v1

    const-wide v80, 0x4085634bc6a7ef9eL    # 684.412

    move-wide/from16 v84, v80

    const-wide v82, 0x40a00a78d4fdf3b6L    # 2053.236

    move/from16 v77, p5

    move/from16 v78, p6

    move/from16 v79, p7

    invoke-virtual/range {v69 .. v85}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lqn;->e:[D

    move/from16 v1, p6

    .line 226
    new-array v2, v1, [D

    const/4 v4, 0x0

    :goto_ca
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    if-ge v4, v1, :cond_fc

    int-to-double v11, v4

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v13, v11

    const-wide/high16 v15, 0x4018000000000000L    # 6.0

    mul-double/2addr v13, v15

    int-to-double v5, v1

    div-double/2addr v13, v5

    .line 228
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    aput-wide v5, v2, v4

    .line 231
    div-int/lit8 v7, v1, 0x2

    if-le v4, v7, :cond_eb

    add-int/lit8 v7, v1, -0x1

    sub-int/2addr v7, v4

    int-to-double v11, v7

    :cond_eb
    cmpg-double v7, v11, v9

    if-gez v7, :cond_f9

    sub-double/2addr v9, v11

    mul-double v7, v9, v9

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    .line 236
    aput-wide v5, v2, v4

    :cond_f9
    add-int/lit8 v4, v4, 0x1

    goto :goto_ca

    :cond_fc
    move/from16 v4, p5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_101
    if-ge v5, v4, :cond_194

    move/from16 v12, p7

    const/4 v13, 0x0

    :goto_106
    if-ge v13, v12, :cond_18c

    .line 244
    iget-object v14, v0, Lqn;->f:[D

    aget-wide v15, v14, v6

    .line 249
    iget-object v14, v0, Lqn;->g:[D

    aget-wide v15, v14, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v14, 0x0

    :goto_113
    if-ge v14, v1, :cond_184

    .line 273
    aget-wide v15, v2, v14

    .line 275
    iget-object v3, v0, Lqn;->d:[D

    aget-wide v17, v3, v11

    const-wide/high16 v19, 0x4080000000000000L    # 512.0

    div-double v17, v17, v19

    .line 276
    iget-object v3, v0, Lqn;->e:[D

    aget-wide v21, v3, v11

    div-double v21, v21, v19

    .line 278
    iget-object v3, v0, Lqn;->c:[D

    aget-wide v19, v3, v11

    const-wide/high16 v23, 0x4024000000000000L    # 10.0

    div-double v19, v19, v23

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    add-double v19, v19, v25

    div-double v19, v19, v7

    const-wide/16 v27, 0x0

    cmpg-double v3, v19, v27

    if-gez v3, :cond_13a

    goto :goto_147

    :cond_13a
    cmpl-double v3, v19, v25

    if-lez v3, :cond_141

    move-wide/from16 v17, v21

    goto :goto_147

    :cond_141
    sub-double v21, v21, v17

    mul-double v21, v21, v19

    add-double v17, v17, v21

    :goto_147
    sub-double v17, v17, v15

    add-int/lit8 v3, v1, -0x4

    const-wide/high16 v15, -0x3fdc000000000000L    # -10.0

    if-le v14, v3, :cond_15e

    sub-int v3, v14, v3

    int-to-float v3, v3

    const/high16 v19, 0x40400000    # 3.0f

    div-float v3, v3, v19

    float-to-double v7, v3

    sub-double v19, v25, v7

    mul-double v17, v17, v19

    mul-double/2addr v7, v15

    add-double v17, v17, v7

    :cond_15e
    int-to-double v7, v14

    cmpg-double v3, v7, v27

    if-gez v3, :cond_17b

    sub-double v7, v27, v7

    div-double/2addr v7, v9

    cmpg-double v3, v7, v27

    if-gez v3, :cond_16b

    goto :goto_16d

    :cond_16b
    move-wide/from16 v27, v7

    :goto_16d
    cmpl-double v3, v27, v25

    if-lez v3, :cond_173

    move-wide/from16 v27, v25

    :cond_173
    sub-double v25, v25, v27

    mul-double v17, v17, v25

    mul-double v27, v27, v15

    add-double v17, v17, v27

    .line 296
    :cond_17b
    aput-wide v17, v86, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v14, v14, 0x1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    goto :goto_113

    :cond_184
    const-wide/high16 v23, 0x4024000000000000L    # 10.0

    add-int/lit8 v13, v13, 0x1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    goto/16 :goto_106

    :cond_18c
    const-wide/high16 v23, 0x4024000000000000L    # 10.0

    add-int/lit8 v5, v5, 0x1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    goto/16 :goto_101

    :cond_194
    return-object v86
.end method


# virtual methods
.method public a(II[B)V
    .registers 48

    move-object/from16 v8, p0

    const/4 v9, 0x5

    .line 58
    iget-object v1, v8, Lqn;->o:[D

    const/4 v10, 0x4

    mul-int/lit8 v2, p1, 0x4

    const/4 v3, 0x0

    mul-int/lit8 v4, p2, 0x4

    const/16 v6, 0x11

    move-object/from16 v0, p0

    move v5, v9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lqn;->a([DIIIIII)[D

    move-result-object v0

    iput-object v0, v8, Lqn;->o:[D

    const/4 v0, 0x0

    move v1, v0

    :goto_19
    if-ge v1, v10, :cond_eb

    move v2, v0

    :goto_1c
    if-ge v2, v10, :cond_e4

    move v3, v0

    :goto_1f
    const/16 v4, 0x10

    if-ge v3, v4, :cond_dd

    .line 64
    iget-object v4, v8, Lqn;->o:[D

    add-int/lit8 v5, v1, 0x0

    mul-int/2addr v5, v9

    add-int/lit8 v6, v2, 0x0

    add-int v7, v5, v6

    mul-int/lit8 v7, v7, 0x11

    add-int/lit8 v11, v3, 0x0

    add-int v12, v7, v11

    aget-wide v12, v4, v12

    add-int/lit8 v14, v2, 0x1

    add-int/2addr v5, v14

    mul-int/lit8 v5, v5, 0x11

    add-int v15, v5, v11

    .line 65
    aget-wide v15, v4, v15

    add-int/lit8 v17, v1, 0x1

    mul-int/lit8 v17, v17, 0x5

    add-int v6, v17, v6

    mul-int/lit8 v6, v6, 0x11

    add-int v18, v6, v11

    .line 66
    aget-wide v18, v4, v18

    add-int v17, v17, v14

    mul-int/lit8 v17, v17, 0x11

    add-int v11, v17, v11

    .line 67
    aget-wide v20, v4, v11

    add-int/lit8 v11, v3, 0x1

    add-int/2addr v7, v11

    .line 69
    aget-wide v22, v4, v7

    sub-double v22, v22, v12

    const-wide/high16 v24, 0x3fc0000000000000L    # 0.125

    mul-double v22, v22, v24

    add-int/2addr v5, v11

    .line 70
    aget-wide v26, v4, v5

    sub-double v26, v26, v15

    mul-double v26, v26, v24

    add-int/2addr v6, v11

    .line 71
    aget-wide v5, v4, v6

    sub-double v5, v5, v18

    mul-double v5, v5, v24

    add-int v17, v17, v11

    .line 72
    aget-wide v28, v4, v17

    sub-double v28, v28, v20

    mul-double v28, v28, v24

    move v4, v0

    :goto_73
    const/16 v7, 0x8

    if-ge v4, v7, :cond_da

    sub-double v24, v18, v12

    const-wide/high16 v30, 0x3fd0000000000000L    # 0.25

    mul-double v24, v24, v30

    sub-double v32, v20, v15

    mul-double v32, v32, v30

    move v7, v0

    move-wide/from16 v34, v12

    move-wide/from16 v36, v15

    :goto_86
    if-ge v7, v10, :cond_cc

    mul-int/lit8 v14, v1, 0x4

    add-int/2addr v14, v7

    shl-int/lit8 v14, v14, 0xb

    mul-int/lit8 v17, v2, 0x4

    add-int/lit8 v17, v17, 0x0

    shl-int/lit8 v17, v17, 0x7

    or-int v14, v14, v17

    mul-int/lit8 v17, v3, 0x8

    add-int v0, v17, v4

    or-int/2addr v14, v0

    sub-double v38, v36, v34

    mul-double v38, v38, v30

    move-wide/from16 v40, v34

    const/4 v9, 0x0

    :goto_a1
    if-ge v9, v10, :cond_c2

    const/16 v10, 0x20

    if-ge v0, v10, :cond_ac

    .line 92
    sget-object v10, Luu;->E:Luu;

    iget v10, v10, Luu;->bn:I

    goto :goto_ad

    :cond_ac
    const/4 v10, 0x0

    :goto_ad
    const-wide/16 v42, 0x0

    cmpl-double v42, v40, v42

    if-lez v42, :cond_b7

    .line 95
    sget-object v10, Luu;->bc:Luu;

    iget v10, v10, Luu;->bn:I

    :cond_b7
    int-to-byte v10, v10

    .line 99
    aput-byte v10, p3, v14

    add-int/lit16 v14, v14, 0x80

    add-double v40, v40, v38

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    goto :goto_a1

    :cond_c2
    add-double v34, v34, v24

    add-double v36, v36, v32

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x4

    goto :goto_86

    :cond_cc
    add-double v12, v12, v22

    add-double v15, v15, v26

    add-double v18, v18, v5

    add-double v20, v20, v28

    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x4

    goto :goto_73

    :cond_da
    move v3, v11

    goto/16 :goto_1f

    :cond_dd
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x4

    goto/16 :goto_1c

    :cond_e4
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x4

    goto/16 :goto_19

    :cond_eb
    return-void
.end method

.method public a(Lcl;II)V
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 310
    sput-boolean v1, Lgk;->a:Z

    const/16 v2, 0x10

    mul-int/lit8 v3, p2, 0x10

    mul-int/lit8 v4, p3, 0x10

    const/4 v5, 0x0

    move v6, v5

    :goto_d
    const/16 v7, 0x78

    const/16 v8, 0x8

    if-ge v6, v8, :cond_40

    .line 316
    iget-object v9, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v9, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/2addr v9, v3

    add-int/lit8 v13, v9, 0x8

    .line 317
    iget-object v9, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v9, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v14, v7, 0x4

    .line 318
    iget-object v7, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v7, v4

    add-int/lit8 v15, v7, 0x8

    .line 319
    new-instance v10, Lqc;

    sget-object v7, Luu;->D:Luu;

    iget v7, v7, Luu;->bn:I

    invoke-direct {v10, v7}, Lqc;-><init>(I)V

    iget-object v11, v0, Lqn;->n:Lfd;

    iget-object v12, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lqc;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 322
    :cond_40
    iget-object v6, v0, Lqn;->h:Ljava/util/Random;

    const/16 v9, 0xa

    invoke-virtual {v6, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v6, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v1

    move v10, v5

    :goto_4f
    if-ge v10, v6, :cond_7a

    .line 325
    iget-object v11, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v11, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v11, v3

    add-int/lit8 v15, v11, 0x8

    .line 326
    iget-object v11, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v11, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/lit8 v16, v11, 0x4

    .line 327
    iget-object v11, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v11, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v11, v4

    add-int/lit8 v17, v11, 0x8

    .line 328
    new-instance v12, Lxs;

    invoke-direct {v12}, Lxs;-><init>()V

    iget-object v13, v0, Lqn;->n:Lfd;

    iget-object v14, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual/range {v12 .. v17}, Lxs;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4f

    .line 331
    :cond_7a
    iget-object v6, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v6, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v6, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    move v10, v5

    :goto_86
    if-ge v10, v6, :cond_b1

    .line 333
    iget-object v11, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v11, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v11, v3

    add-int/lit8 v15, v11, 0x8

    .line 334
    iget-object v11, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v11, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/lit8 v16, v11, 0x4

    .line 335
    iget-object v11, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v11, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v11, v4

    add-int/lit8 v17, v11, 0x8

    .line 336
    new-instance v12, Lgd;

    invoke-direct {v12}, Lgd;-><init>()V

    iget-object v13, v0, Lqn;->n:Lfd;

    iget-object v14, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual/range {v12 .. v17}, Lgd;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_86

    :cond_b1
    move v6, v5

    :goto_b2
    const/16 v7, 0x80

    if-ge v6, v9, :cond_dd

    .line 340
    iget-object v10, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v10, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/2addr v10, v3

    add-int/lit8 v14, v10, 0x8

    .line 341
    iget-object v10, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v10, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    .line 342
    iget-object v7, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v7, v4

    add-int/lit8 v16, v7, 0x8

    .line 343
    new-instance v11, Lsf;

    invoke-direct {v11}, Lsf;-><init>()V

    iget-object v12, v0, Lqn;->n:Lfd;

    iget-object v13, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual/range {v11 .. v16}, Lsf;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_b2

    .line 346
    :cond_dd
    iget-object v6, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-nez v6, :cond_10d

    .line 347
    iget-object v6, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v3

    add-int/lit8 v12, v6, 0x8

    .line 348
    iget-object v6, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    .line 349
    iget-object v6, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v4

    add-int/lit8 v14, v6, 0x8

    .line 350
    new-instance v9, Lbe;

    sget-object v6, Luu;->ag:Lwb;

    iget v6, v6, Lwb;->bn:I

    invoke-direct {v9, v6}, Lbe;-><init>(I)V

    iget-object v10, v0, Lqn;->n:Lfd;

    iget-object v11, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual/range {v9 .. v14}, Lbe;->a(Lfd;Ljava/util/Random;III)Z

    .line 353
    :cond_10d
    iget-object v6, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_13d

    .line 354
    iget-object v1, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v3, v1

    add-int/lit8 v12, v3, 0x8

    .line 355
    iget-object v1, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    .line 356
    iget-object v1, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v4, v1

    add-int/lit8 v14, v4, 0x8

    .line 357
    new-instance v9, Lbe;

    sget-object v1, Luu;->ah:Lwb;

    iget v1, v1, Lwb;->bn:I

    invoke-direct {v9, v1}, Lbe;-><init>(I)V

    iget-object v10, v0, Lqn;->n:Lfd;

    iget-object v11, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual/range {v9 .. v14}, Lbe;->a(Lfd;Ljava/util/Random;III)Z

    .line 360
    :cond_13d
    sput-boolean v5, Lgk;->a:Z

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a(II)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public a(ZLyb;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public b(II)Llm;
    .registers 10

    .line 189
    iget-object v0, p0, Lqn;->h:Ljava/util/Random;

    int-to-long v1, p1

    const-wide v3, 0x4f9939f508L

    mul-long/2addr v1, v3

    int-to-long v3, p2

    const-wide v5, 0x1ef1565bd5L

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    const v0, 0x8000

    new-array v0, v0, [B

    .line 193
    invoke-virtual {p0, p1, p2, v0}, Lqn;->a(II[B)V

    .line 194
    invoke-virtual {p0, p1, p2, v0}, Lqn;->b(II[B)V

    .line 196
    iget-object v1, p0, Lqn;->s:Lfv;

    iget-object v3, p0, Lqn;->n:Lfd;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lfv;->a(Lcl;Lfd;II[B)V

    .line 201
    new-instance v1, Llm;

    iget-object v2, p0, Lqn;->n:Lfd;

    invoke-direct {v1, v2, v0, p1, p2}, Llm;-><init>(Lfd;[BII)V

    return-object v1
.end method

.method public b(II[B)V
    .registers 56

    move-object/from16 v0, p0

    .line 125
    iget-object v1, v0, Lqn;->l:Luf;

    iget-object v2, v0, Lqn;->p:[D

    const/16 v12, 0x10

    mul-int/lit8 v3, p1, 0x10

    int-to-double v3, v3

    move-wide/from16 v37, v3

    move-wide/from16 v20, v3

    mul-int/lit8 v5, p2, 0x10

    int-to-double v5, v5

    move-wide/from16 v39, v5

    move-wide/from16 v24, v5

    const-wide/16 v7, 0x0

    const/16 v9, 0x10

    const/16 v10, 0x10

    const/4 v11, 0x1

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x3fa0000000000000L    # 0.03125

    move-wide/from16 v14, v18

    move-wide/from16 v12, v18

    invoke-virtual/range {v1 .. v17}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lqn;->p:[D

    .line 126
    iget-object v1, v0, Lqn;->l:Luf;

    move-object/from16 v18, v1

    iget-object v1, v0, Lqn;->q:[D

    move-object/from16 v19, v1

    const-wide v22, 0x405b40db8bac710dL    # 109.0134

    const/16 v26, 0x10

    const/16 v27, 0x1

    const/16 v28, 0x10

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v29, 0x3fa0000000000000L    # 0.03125

    move-wide/from16 v33, v29

    invoke-virtual/range {v18 .. v34}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lqn;->q:[D

    .line 127
    iget-object v1, v0, Lqn;->m:Luf;

    move-object/from16 v35, v1

    iget-object v1, v0, Lqn;->r:[D

    move-object/from16 v36, v1

    const-wide/16 v41, 0x0

    const/16 v43, 0x10

    const/16 v44, 0x10

    const/16 v45, 0x1

    const-wide/high16 v46, 0x3fb0000000000000L    # 0.0625

    move-wide/from16 v50, v46

    move-wide/from16 v48, v46

    invoke-virtual/range {v35 .. v51}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lqn;->r:[D

    const/4 v1, 0x0

    move v2, v1

    :goto_68
    const/16 v3, 0x10

    if-ge v2, v3, :cond_15e

    move v4, v1

    :goto_6d
    if-ge v4, v3, :cond_15a

    .line 131
    iget-object v5, v0, Lqn;->p:[D

    mul-int/lit8 v6, v4, 0x10

    add-int/2addr v6, v2

    aget-wide v7, v5, v6

    iget-object v5, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v9

    const-wide v11, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    const-wide/16 v9, 0x0

    cmpl-double v5, v7, v9

    const/4 v7, 0x1

    if-lez v5, :cond_8c

    move v5, v7

    goto :goto_8d

    :cond_8c
    move v5, v1

    .line 132
    :goto_8d
    iget-object v8, v0, Lqn;->q:[D

    aget-wide v13, v8, v6

    iget-object v8, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v15

    mul-double/2addr v15, v11

    add-double/2addr v13, v15

    cmpl-double v8, v13, v9

    if-lez v8, :cond_9e

    goto :goto_9f

    :cond_9e
    move v7, v1

    .line 133
    :goto_9f
    iget-object v8, v0, Lqn;->r:[D

    aget-wide v9, v8, v6

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    div-double/2addr v9, v11

    add-double/2addr v9, v11

    iget-object v8, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v11

    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-int v8, v9

    .line 137
    sget-object v9, Luu;->bc:Luu;

    iget v9, v9, Luu;->bn:I

    int-to-byte v9, v9

    .line 138
    sget-object v10, Luu;->bc:Luu;

    iget v10, v10, Luu;->bn:I

    int-to-byte v10, v10

    const/16 v11, 0x7f

    move v13, v11

    const/4 v14, -0x1

    :goto_c0
    if-ltz v13, :cond_154

    mul-int/lit16 v15, v6, 0x80

    add-int/2addr v15, v13

    .line 143
    iget-object v3, v0, Lqn;->h:Ljava/util/Random;

    const/4 v12, 0x5

    invoke-virtual {v3, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x7f

    if-lt v13, v3, :cond_da

    .line 144
    sget-object v3, Luu;->A:Luu;

    iget v3, v3, Luu;->bn:I

    int-to-byte v3, v3

    aput-byte v3, p3, v15

    :cond_d7
    :goto_d7
    const/4 v3, -0x1

    goto/16 :goto_14e

    .line 145
    :cond_da
    iget-object v3, v0, Lqn;->h:Ljava/util/Random;

    invoke-virtual {v3, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v1

    if-gt v13, v3, :cond_eb

    .line 146
    sget-object v3, Luu;->A:Luu;

    iget v3, v3, Luu;->bn:I

    int-to-byte v3, v3

    aput-byte v3, p3, v15

    goto :goto_d7

    .line 148
    :cond_eb
    aget-byte v3, p3, v15

    if-nez v3, :cond_f2

    const/4 v3, -0x1

    const/4 v14, -0x1

    goto :goto_14e

    .line 152
    :cond_f2
    sget-object v12, Luu;->bc:Luu;

    iget v12, v12, Luu;->bn:I

    if-ne v3, v12, :cond_d7

    const/4 v3, -0x1

    if-ne v14, v3, :cond_148

    if-gtz v8, :cond_104

    .line 156
    sget-object v9, Luu;->bc:Luu;

    iget v9, v9, Luu;->bn:I

    int-to-byte v10, v9

    move v9, v1

    goto :goto_132

    :cond_104
    const/16 v12, 0x3c

    if-lt v13, v12, :cond_132

    const/16 v12, 0x41

    if-gt v13, v12, :cond_132

    .line 158
    sget-object v9, Luu;->bc:Luu;

    iget v9, v9, Luu;->bn:I

    int-to-byte v9, v9

    .line 159
    sget-object v10, Luu;->bc:Luu;

    iget v10, v10, Luu;->bn:I

    int-to-byte v10, v10

    if-eqz v7, :cond_11d

    .line 160
    sget-object v9, Luu;->G:Luu;

    iget v9, v9, Luu;->bn:I

    int-to-byte v9, v9

    :cond_11d
    if-eqz v7, :cond_124

    .line 161
    sget-object v10, Luu;->bc:Luu;

    iget v10, v10, Luu;->bn:I

    int-to-byte v10, v10

    :cond_124
    if-eqz v5, :cond_12b

    .line 162
    sget-object v9, Luu;->bd:Luu;

    iget v9, v9, Luu;->bn:I

    int-to-byte v9, v9

    :cond_12b
    if-eqz v5, :cond_132

    .line 163
    sget-object v10, Luu;->bd:Luu;

    iget v10, v10, Luu;->bn:I

    int-to-byte v10, v10

    :cond_132
    :goto_132
    const/16 v12, 0x40

    if-ge v13, v12, :cond_13d

    if-nez v9, :cond_13d

    .line 166
    sget-object v9, Luu;->E:Luu;

    iget v9, v9, Luu;->bn:I

    int-to-byte v9, v9

    :cond_13d
    const/16 v12, 0x3f

    if-lt v13, v12, :cond_144

    .line 169
    aput-byte v9, p3, v15

    goto :goto_146

    .line 170
    :cond_144
    aput-byte v10, p3, v15

    :goto_146
    move v14, v8

    goto :goto_14e

    :cond_148
    if-lez v14, :cond_14e

    add-int/lit8 v14, v14, -0x1

    .line 173
    aput-byte v10, p3, v15

    :cond_14e
    :goto_14e
    add-int/lit8 v13, v13, -0x1

    const/16 v3, 0x10

    goto/16 :goto_c0

    :cond_154
    add-int/lit8 v4, v4, 0x1

    const/16 v3, 0x10

    goto/16 :goto_6d

    :cond_15a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_68

    :cond_15e
    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "HellRandomLevelSource"

    return-object v0
.end method

.method public c(II)Llm;
    .registers 3

    .line 185
    invoke-virtual {p0, p1, p2}, Lqn;->b(II)Llm;

    move-result-object p1

    return-object p1
.end method
