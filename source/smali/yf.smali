###### Class defpackage.yf (yf)
.class public Lyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcl;


# instance fields
.field public a:Luf;

.field public b:Luf;

.field public c:Luf;

.field d:[D

.field e:[D

.field f:[D

.field g:[D

.field h:[D

.field i:[[I

.field private j:Ljava/util/Random;

.field private k:Luf;

.field private l:Luf;

.field private m:Luf;

.field private n:Luf;

.field private o:Luf;

.field private p:Lfd;

.field private q:[D

.field private r:[D

.field private s:[D

.field private t:[D

.field private u:Lfv;

.field private v:[Lkd;

.field private w:[D


# direct methods
.method public constructor <init>(Lfd;J)V
    .registers 6

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [D

    .line 148
    iput-object v1, p0, Lyf;->r:[D

    new-array v1, v0, [D

    .line 149
    iput-object v1, p0, Lyf;->s:[D

    new-array v0, v0, [D

    .line 150
    iput-object v0, p0, Lyf;->t:[D

    .line 219
    new-instance v0, Lsq;

    invoke-direct {v0}, Lsq;-><init>()V

    iput-object v0, p0, Lyf;->u:Lfv;

    const/16 v0, 0x20

    .line 357
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lyf;->i:[[I

    .line 54
    iput-object p1, p0, Lyf;->p:Lfd;

    .line 56
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1, p2, p3}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Lyf;->j:Ljava/util/Random;

    .line 57
    new-instance p2, Luf;

    const/16 p3, 0x10

    invoke-direct {p2, p1, p3}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p2, p0, Lyf;->k:Luf;

    .line 58
    new-instance p1, Luf;

    iget-object p2, p0, Lyf;->j:Ljava/util/Random;

    invoke-direct {p1, p2, p3}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lyf;->l:Luf;

    .line 59
    new-instance p1, Luf;

    iget-object p2, p0, Lyf;->j:Ljava/util/Random;

    const/16 v0, 0x8

    invoke-direct {p1, p2, v0}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lyf;->m:Luf;

    .line 60
    new-instance p1, Luf;

    iget-object p2, p0, Lyf;->j:Ljava/util/Random;

    const/4 v1, 0x4

    invoke-direct {p1, p2, v1}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lyf;->n:Luf;

    .line 61
    new-instance p1, Luf;

    iget-object p2, p0, Lyf;->j:Ljava/util/Random;

    invoke-direct {p1, p2, v1}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lyf;->o:Luf;

    .line 63
    new-instance p1, Luf;

    iget-object p2, p0, Lyf;->j:Ljava/util/Random;

    const/16 v1, 0xa

    invoke-direct {p1, p2, v1}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lyf;->a:Luf;

    .line 64
    new-instance p1, Luf;

    iget-object p2, p0, Lyf;->j:Ljava/util/Random;

    invoke-direct {p1, p2, p3}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lyf;->b:Luf;

    .line 71
    new-instance p1, Luf;

    iget-object p2, p0, Lyf;->j:Ljava/util/Random;

    invoke-direct {p1, p2, v0}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lyf;->c:Luf;

    return-void
.end method

.method private a([DIIIIII)[D
    .registers 63

    move-object/from16 v0, p0

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v13, p7

    if-nez p1, :cond_12

    mul-int v1, v14, v15

    mul-int/2addr v1, v13

    .line 255
    new-array v1, v1, [D

    move-object/from16 v52, v1

    goto :goto_14

    :cond_12
    move-object/from16 v52, p1

    .line 269
    :goto_14
    iget-object v1, v0, Lyf;->p:Lfd;

    invoke-virtual {v1}, Lfd;->a()Lxv;

    move-result-object v1

    iget-object v11, v1, Lxv;->a:[D

    .line 270
    iget-object v1, v0, Lyf;->p:Lfd;

    invoke-virtual {v1}, Lfd;->a()Lxv;

    move-result-object v1

    iget-object v12, v1, Lxv;->b:[D

    .line 271
    iget-object v1, v0, Lyf;->a:Luf;

    iget-object v2, v0, Lyf;->g:[D

    const-wide v7, 0x3ff1ef9db22d0e56L    # 1.121

    const-wide v9, 0x3ff1ef9db22d0e56L    # 1.121

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    move/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    move-object/from16 v53, v11

    move-object/from16 v54, v12

    move-wide/from16 v11, v16

    invoke-virtual/range {v1 .. v12}, Luf;->a([DIIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lyf;->g:[D

    .line 272
    iget-object v1, v0, Lyf;->b:Luf;

    iget-object v2, v0, Lyf;->h:[D

    const-wide/high16 v7, 0x4069000000000000L    # 200.0

    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v1 .. v12}, Luf;->a([DIIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lyf;->h:[D

    .line 274
    iget-object v1, v0, Lyf;->m:Luf;

    iget-object v2, v0, Lyf;->d:[D

    int-to-double v3, v3

    move-wide/from16 v37, v3

    move-wide/from16 v20, v3

    move/from16 v5, p3

    int-to-double v5, v5

    move-wide/from16 v39, v5

    move-wide/from16 v22, v5

    move/from16 v7, p4

    int-to-double v7, v7

    move-wide/from16 v41, v7

    move-wide/from16 v24, v7

    const-wide v9, 0x40211c3c9eecbfb2L    # 8.555150000000001

    move-wide/from16 v16, v9

    move v11, v13

    move-wide v12, v9

    const-wide v9, 0x40111c3c9eecbfb2L    # 4.277575000000001

    move-wide v14, v9

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v1 .. v17}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lyf;->d:[D

    .line 275
    iget-object v1, v0, Lyf;->k:Luf;

    move-object/from16 v18, v1

    iget-object v1, v0, Lyf;->e:[D

    move-object/from16 v19, v1

    const-wide v29, 0x4085634bc6a7ef9eL    # 684.412

    move-wide/from16 v33, v29

    const-wide v31, 0x4085634bc6a7ef9eL    # 684.412

    move/from16 v26, p5

    move/from16 v27, p6

    move/from16 v28, p7

    invoke-virtual/range {v18 .. v34}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lyf;->e:[D

    .line 276
    iget-object v1, v0, Lyf;->l:Luf;

    move-object/from16 v35, v1

    iget-object v1, v0, Lyf;->f:[D

    move-object/from16 v36, v1

    const-wide v46, 0x4085634bc6a7ef9eL    # 684.412

    move-wide/from16 v50, v46

    const-wide v48, 0x4085634bc6a7ef9eL    # 684.412

    move/from16 v43, p5

    move/from16 v44, p6

    move/from16 v45, p7

    invoke-virtual/range {v35 .. v51}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lyf;->f:[D

    const/16 v1, 0x10

    move/from16 v2, p5

    .line 281
    div-int v3, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_d3
    if-ge v5, v2, :cond_1db

    mul-int v8, v5, v3

    .line 283
    div-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    move/from16 v10, p7

    const/4 v11, 0x0

    :goto_dd
    if-ge v11, v10, :cond_1d1

    mul-int v12, v11, v3

    add-int/2addr v12, v9

    mul-int/lit8 v13, v8, 0x10

    add-int/2addr v13, v12

    .line 287
    aget-wide v14, v53, v13

    .line 288
    aget-wide v12, v54, v13

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v12, v14, v12

    mul-double/2addr v12, v12

    mul-double/2addr v12, v12

    sub-double v12, v14, v12

    .line 294
    iget-object v1, v0, Lyf;->g:[D

    aget-wide v16, v1, v6

    const-wide/high16 v18, 0x4070000000000000L    # 256.0

    add-double v16, v16, v18

    const-wide/high16 v18, 0x4080000000000000L    # 512.0

    div-double v16, v16, v18

    mul-double v16, v16, v12

    cmpl-double v1, v16, v14

    if-lez v1, :cond_106

    move-wide/from16 v16, v14

    .line 299
    :cond_106
    iget-object v1, v0, Lyf;->h:[D

    aget-wide v12, v1, v6

    const-wide v20, 0x40bf400000000000L    # 8000.0

    div-double v12, v12, v20

    const-wide/16 v20, 0x0

    cmpg-double v1, v12, v20

    if-gez v1, :cond_11f

    neg-double v12, v12

    const-wide v22, 0x3fd3333333333333L    # 0.3

    mul-double v12, v12, v22

    :cond_11f
    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    mul-double v12, v12, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    sub-double v12, v12, v22

    cmpg-double v1, v12, v20

    if-gez v1, :cond_141

    div-double v12, v12, v22

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpg-double v1, v12, v16

    if-gez v1, :cond_135

    move-wide/from16 v12, v16

    :cond_135
    const-wide v16, 0x3ff6666666666666L    # 1.4

    div-double v12, v12, v16

    div-double v12, v12, v22

    move-wide/from16 v16, v20

    goto :goto_14a

    :cond_141
    cmpl-double v1, v12, v14

    if-lez v1, :cond_146

    move-wide v12, v14

    :cond_146
    const-wide/high16 v24, 0x4020000000000000L    # 8.0

    div-double v12, v12, v24

    :goto_14a
    cmpg-double v1, v16, v20

    if-gez v1, :cond_150

    move-wide/from16 v16, v20

    :cond_150
    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v24

    move/from16 v1, p6

    move/from16 v24, v5

    int-to-double v4, v1

    mul-double/2addr v12, v4

    const-wide/high16 v25, 0x4030000000000000L    # 16.0

    div-double v12, v12, v25

    div-double v4, v4, v22

    const-wide/high16 v25, 0x4010000000000000L    # 4.0

    mul-double v12, v12, v25

    add-double/2addr v4, v12

    add-int/lit8 v6, v6, 0x1

    const/4 v12, 0x0

    :goto_168
    if-ge v12, v1, :cond_1c9

    int-to-double v14, v12

    sub-double/2addr v14, v4

    const-wide/high16 v27, 0x4028000000000000L    # 12.0

    mul-double v14, v14, v27

    div-double v14, v14, v16

    cmpg-double v13, v14, v20

    if-gez v13, :cond_178

    mul-double v14, v14, v25

    .line 331
    :cond_178
    iget-object v13, v0, Lyf;->e:[D

    aget-wide v27, v13, v7

    div-double v27, v27, v18

    .line 332
    iget-object v13, v0, Lyf;->f:[D

    aget-wide v29, v13, v7

    div-double v29, v29, v18

    .line 334
    iget-object v13, v0, Lyf;->d:[D

    aget-wide v31, v13, v7

    const-wide/high16 v33, 0x4024000000000000L    # 10.0

    div-double v31, v31, v33

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    add-double v31, v31, v33

    div-double v31, v31, v22

    cmpg-double v13, v31, v20

    if-gez v13, :cond_197

    goto :goto_1a4

    :cond_197
    cmpl-double v13, v31, v33

    if-lez v13, :cond_19e

    move-wide/from16 v27, v29

    goto :goto_1a4

    :cond_19e
    sub-double v29, v29, v27

    mul-double v29, v29, v31

    add-double v27, v27, v29

    :goto_1a4
    sub-double v27, v27, v14

    add-int/lit8 v13, v1, -0x4

    if-le v12, v13, :cond_1be

    sub-int v13, v12, v13

    int-to-float v13, v13

    const/high16 v14, 0x40400000    # 3.0f

    div-float/2addr v13, v14

    float-to-double v13, v13

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    sub-double v31, v29, v13

    mul-double v27, v27, v31

    const-wide/high16 v31, -0x3fdc000000000000L    # -10.0

    mul-double v13, v13, v31

    add-double v27, v27, v13

    goto :goto_1c0

    :cond_1be
    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    .line 345
    :goto_1c0
    aput-wide v27, v52, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v14, v29

    goto :goto_168

    :cond_1c9
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v24

    const/16 v1, 0x10

    goto/16 :goto_dd

    :cond_1d1
    move/from16 v1, p6

    move/from16 v24, v5

    add-int/lit8 v5, v24, 0x1

    const/16 v1, 0x10

    goto/16 :goto_d3

    :cond_1db
    return-object v52
.end method


# virtual methods
.method public a(II[B[Lkd;)V
    .registers 57

    move-object/from16 v0, p0

    .line 156
    iget-object v1, v0, Lyf;->n:Luf;

    iget-object v2, v0, Lyf;->r:[D

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

    iput-object v1, v0, Lyf;->r:[D

    .line 157
    iget-object v1, v0, Lyf;->n:Luf;

    move-object/from16 v18, v1

    iget-object v1, v0, Lyf;->s:[D

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

    iput-object v1, v0, Lyf;->s:[D

    .line 158
    iget-object v1, v0, Lyf;->o:Luf;

    move-object/from16 v35, v1

    iget-object v1, v0, Lyf;->t:[D

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

    iput-object v1, v0, Lyf;->t:[D

    const/4 v1, 0x0

    move v2, v1

    :goto_68
    const/16 v3, 0x10

    if-ge v2, v3, :cond_152

    move v4, v1

    :goto_6d
    if-ge v4, v3, :cond_14e

    mul-int/lit8 v5, v4, 0x10

    add-int/2addr v5, v2

    .line 162
    aget-object v6, p4, v5

    .line 163
    iget-object v7, v0, Lyf;->r:[D

    aget-wide v8, v7, v5

    iget-object v7, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    const/4 v8, 0x1

    if-lez v7, :cond_8e

    move v7, v8

    goto :goto_8f

    :cond_8e
    move v7, v1

    .line 164
    :goto_8f
    iget-object v9, v0, Lyf;->s:[D

    aget-wide v10, v9, v5

    iget-object v9, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextDouble()D

    move-result-wide v14

    mul-double/2addr v14, v12

    add-double/2addr v10, v14

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_a2

    goto :goto_a3

    :cond_a2
    move v8, v1

    .line 165
    :goto_a3
    iget-object v9, v0, Lyf;->t:[D

    aget-wide v10, v9, v5

    div-double/2addr v10, v12

    add-double/2addr v10, v12

    iget-object v9, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    const-wide/high16 v14, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-int v9, v10

    .line 169
    iget-byte v10, v6, Lkd;->p:B

    .line 170
    iget-byte v11, v6, Lkd;->q:B

    const/16 v13, 0x7f

    const/4 v14, -0x1

    :goto_bb
    if-ltz v13, :cond_148

    mul-int/lit16 v15, v5, 0x80

    add-int/2addr v15, v13

    .line 175
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    const/4 v12, 0x5

    invoke-virtual {v3, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v1

    if-gt v13, v3, :cond_d4

    .line 176
    sget-object v3, Luu;->A:Luu;

    iget v3, v3, Luu;->bn:I

    int-to-byte v3, v3

    aput-byte v3, p3, v15

    :cond_d1
    const/4 v3, -0x1

    goto/16 :goto_142

    .line 178
    :cond_d4
    aget-byte v3, p3, v15

    if-nez v3, :cond_dc

    const/4 v3, -0x1

    const/4 v14, -0x1

    goto/16 :goto_142

    .line 182
    :cond_dc
    sget-object v12, Luu;->u:Luu;

    iget v12, v12, Luu;->bn:I

    if-ne v3, v12, :cond_d1

    const/4 v3, -0x1

    if-ne v14, v3, :cond_128

    if-gtz v9, :cond_ee

    .line 186
    sget-object v10, Luu;->u:Luu;

    iget v10, v10, Luu;->bn:I

    int-to-byte v11, v10

    move v10, v1

    goto :goto_112

    :cond_ee
    const/16 v12, 0x3c

    if-lt v13, v12, :cond_112

    const/16 v12, 0x41

    if-gt v13, v12, :cond_112

    .line 188
    iget-byte v10, v6, Lkd;->p:B

    .line 189
    iget-byte v11, v6, Lkd;->q:B

    if-eqz v8, :cond_fd

    move v10, v1

    :cond_fd
    if-eqz v8, :cond_104

    .line 191
    sget-object v11, Luu;->G:Luu;

    iget v11, v11, Luu;->bn:I

    int-to-byte v11, v11

    :cond_104
    if-eqz v7, :cond_10b

    .line 192
    sget-object v10, Luu;->F:Luu;

    iget v10, v10, Luu;->bn:I

    int-to-byte v10, v10

    :cond_10b
    if-eqz v7, :cond_112

    .line 193
    sget-object v11, Luu;->F:Luu;

    iget v11, v11, Luu;->bn:I

    int-to-byte v11, v11

    :cond_112
    :goto_112
    const/16 v12, 0x40

    if-ge v13, v12, :cond_11d

    if-nez v10, :cond_11d

    .line 196
    sget-object v10, Luu;->C:Luu;

    iget v10, v10, Luu;->bn:I

    int-to-byte v10, v10

    :cond_11d
    const/16 v12, 0x3f

    if-lt v13, v12, :cond_124

    .line 199
    aput-byte v10, p3, v15

    goto :goto_126

    .line 200
    :cond_124
    aput-byte v11, p3, v15

    :goto_126
    move v14, v9

    goto :goto_142

    :cond_128
    if-lez v14, :cond_142

    add-int/lit8 v14, v14, -0x1

    .line 203
    aput-byte v11, p3, v15

    if-nez v14, :cond_142

    .line 207
    sget-object v12, Luu;->F:Luu;

    iget v12, v12, Luu;->bn:I

    if-ne v11, v12, :cond_142

    .line 208
    iget-object v11, v0, Lyf;->j:Ljava/util/Random;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 209
    sget-object v11, Luu;->R:Luu;

    iget v11, v11, Luu;->bn:I

    int-to-byte v11, v11

    :cond_142
    :goto_142
    add-int/lit8 v13, v13, -0x1

    const/16 v3, 0x10

    goto/16 :goto_bb

    :cond_148
    add-int/lit8 v4, v4, 0x1

    const/16 v3, 0x10

    goto/16 :goto_6d

    :cond_14e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_68

    :cond_152
    return-void
.end method

.method public a(II[B[Lkd;[D)V
    .registers 53

    move-object/from16 v8, p0

    const/4 v9, 0x5

    .line 84
    iget-object v1, v8, Lyf;->q:[D

    const/4 v10, 0x4

    mul-int/lit8 v2, p1, 0x4

    const/4 v3, 0x0

    mul-int/lit8 v4, p2, 0x4

    const/16 v6, 0x11

    move-object/from16 v0, p0

    move v5, v9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lyf;->a([DIIIIII)[D

    move-result-object v0

    iput-object v0, v8, Lyf;->q:[D

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v10, :cond_107

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v10, :cond_101

    const/4 v3, 0x0

    :goto_1e
    const/16 v4, 0x10

    if-ge v3, v4, :cond_fb

    .line 90
    iget-object v4, v8, Lyf;->q:[D

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

    .line 91
    aget-wide v15, v4, v15

    add-int/lit8 v17, v1, 0x1

    mul-int/lit8 v17, v17, 0x5

    add-int v6, v17, v6

    mul-int/lit8 v6, v6, 0x11

    add-int v18, v6, v11

    .line 92
    aget-wide v18, v4, v18

    add-int v17, v17, v14

    mul-int/lit8 v17, v17, 0x11

    add-int v11, v17, v11

    .line 93
    aget-wide v20, v4, v11

    add-int/lit8 v11, v3, 0x1

    add-int/2addr v7, v11

    .line 95
    aget-wide v22, v4, v7

    sub-double v22, v22, v12

    const-wide/high16 v24, 0x3fc0000000000000L    # 0.125

    mul-double v22, v22, v24

    add-int/2addr v5, v11

    .line 96
    aget-wide v26, v4, v5

    sub-double v26, v26, v15

    mul-double v26, v26, v24

    add-int/2addr v6, v11

    .line 97
    aget-wide v5, v4, v6

    sub-double v5, v5, v18

    mul-double v5, v5, v24

    add-int v17, v17, v11

    .line 98
    aget-wide v28, v4, v17

    sub-double v28, v28, v20

    mul-double v28, v28, v24

    const/4 v4, 0x0

    :goto_72
    const/16 v7, 0x8

    if-ge v4, v7, :cond_f8

    sub-double v24, v18, v12

    const-wide/high16 v30, 0x3fd0000000000000L    # 0.25

    mul-double v24, v24, v30

    sub-double v32, v20, v15

    mul-double v32, v32, v30

    move-wide/from16 v34, v12

    move-wide/from16 v36, v15

    const/4 v7, 0x0

    :goto_85
    if-ge v7, v10, :cond_e8

    mul-int/lit8 v14, v1, 0x4

    add-int/2addr v14, v7

    shl-int/lit8 v17, v14, 0xb

    mul-int/lit8 v38, v2, 0x4

    add-int/lit8 v39, v38, 0x0

    shl-int/lit8 v39, v39, 0x7

    or-int v17, v17, v39

    mul-int/lit8 v39, v3, 0x8

    add-int v0, v39, v4

    or-int v17, v17, v0

    sub-double v39, v36, v34

    mul-double v39, v39, v30

    move/from16 v9, v17

    move-wide/from16 v41, v34

    move/from16 v17, v3

    const/4 v3, 0x0

    :goto_a5
    if-ge v3, v10, :cond_dd

    mul-int/lit8 v43, v14, 0x10

    add-int v44, v38, v3

    add-int v43, v43, v44

    .line 116
    aget-wide v43, p5, v43

    const/16 v10, 0x40

    if-ge v0, v10, :cond_c7

    const-wide/high16 v45, 0x3fe0000000000000L    # 0.5

    cmpg-double v10, v43, v45

    if-gez v10, :cond_c2

    const/16 v10, 0x3f

    if-lt v0, v10, :cond_c2

    .line 120
    sget-object v10, Luu;->aU:Luu;

    iget v10, v10, Luu;->bn:I

    goto :goto_c8

    .line 122
    :cond_c2
    sget-object v10, Luu;->C:Luu;

    iget v10, v10, Luu;->bn:I

    goto :goto_c8

    :cond_c7
    const/4 v10, 0x0

    :goto_c8
    const-wide/16 v43, 0x0

    cmpl-double v43, v41, v43

    if-lez v43, :cond_d2

    .line 126
    sget-object v10, Luu;->u:Luu;

    iget v10, v10, Luu;->bn:I

    :cond_d2
    int-to-byte v10, v10

    .line 130
    aput-byte v10, p3, v9

    add-int/lit16 v9, v9, 0x80

    add-double v41, v41, v39

    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x4

    goto :goto_a5

    :cond_dd
    add-double v34, v34, v24

    add-double v36, v36, v32

    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    const/4 v9, 0x5

    const/4 v10, 0x4

    goto :goto_85

    :cond_e8
    move/from16 v17, v3

    add-double v12, v12, v22

    add-double v15, v15, v26

    add-double v18, v18, v5

    add-double v20, v20, v28

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x4

    goto/16 :goto_72

    :cond_f8
    move v3, v11

    goto/16 :goto_1e

    :cond_fb
    add-int/lit8 v2, v2, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x4

    goto/16 :goto_1b

    :cond_101
    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x4

    goto/16 :goto_18

    :cond_107
    return-void
.end method

.method public a(Lcl;II)V
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x1

    .line 407
    sput-boolean v3, Lgk;->a:Z

    mul-int/lit8 v4, v1, 0x10

    mul-int/lit8 v5, v2, 0x10

    .line 411
    iget-object v6, v0, Lyf;->p:Lfd;

    invoke-virtual {v6}, Lfd;->a()Lxv;

    move-result-object v6

    add-int/lit8 v7, v4, 0x10

    add-int/lit8 v8, v5, 0x10

    invoke-virtual {v6, v7, v8}, Lxv;->a(II)Lkd;

    move-result-object v6

    .line 419
    iget-object v7, v0, Lyf;->j:Ljava/util/Random;

    iget-object v8, v0, Lyf;->p:Lfd;

    invoke-virtual {v8}, Lfd;->s()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Random;->setSeed(J)V

    .line 420
    iget-object v7, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextLong()J

    move-result-wide v7

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    mul-long/2addr v7, v9

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    .line 421
    iget-object v13, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextLong()J

    move-result-wide v13

    div-long/2addr v13, v9

    mul-long/2addr v13, v9

    add-long/2addr v13, v11

    .line 422
    iget-object v9, v0, Lyf;->j:Ljava/util/Random;

    int-to-long v10, v1

    mul-long/2addr v10, v7

    int-to-long v1, v2

    mul-long/2addr v1, v13

    add-long/2addr v10, v1

    iget-object v1, v0, Lyf;->p:Lfd;

    invoke-virtual {v1}, Lfd;->s()J

    move-result-wide v1

    xor-long/2addr v1, v10

    invoke-virtual {v9, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 425
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v7, 0x80

    const/16 v8, 0x8

    const/16 v9, 0x10

    if-nez v1, :cond_84

    .line 426
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v13, v1, 0x8

    .line 427
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 428
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/lit8 v15, v1, 0x8

    .line 429
    new-instance v10, Ldj;

    sget-object v1, Luu;->C:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-direct {v10, v1}, Ldj;-><init>(I)V

    iget-object v11, v0, Lyf;->p:Lfd;

    iget-object v12, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Ldj;->a(Lfd;Ljava/util/Random;III)Z

    .line 432
    :cond_84
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v10, 0x78

    const/16 v11, 0x40

    const/16 v12, 0xa

    if-nez v1, :cond_cb

    .line 433
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v16, v1, 0x8

    .line 434
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/2addr v13, v8

    invoke-virtual {v1, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 435
    iget-object v13, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v13, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/2addr v13, v5

    add-int/lit8 v18, v13, 0x8

    if-lt v1, v11, :cond_b9

    .line 436
    iget-object v13, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v13, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    if-nez v13, :cond_cb

    :cond_b9
    new-instance v13, Ldj;

    sget-object v14, Luu;->E:Luu;

    iget v14, v14, Luu;->bn:I

    invoke-direct {v13, v14}, Ldj;-><init>(I)V

    iget-object v14, v0, Lyf;->p:Lfd;

    iget-object v15, v0, Lyf;->j:Ljava/util/Random;

    move/from16 v17, v1

    invoke-virtual/range {v13 .. v18}, Ldj;->a(Lfd;Ljava/util/Random;III)Z

    :cond_cb
    const/4 v13, 0x0

    :goto_cc
    if-ge v13, v8, :cond_fa

    .line 440
    iget-object v14, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v14, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int/2addr v14, v4

    add-int/lit8 v18, v14, 0x8

    .line 441
    iget-object v14, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v14, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 442
    iget-object v14, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v14, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int/2addr v14, v5

    add-int/lit8 v20, v14, 0x8

    .line 443
    new-instance v15, Ler;

    invoke-direct {v15}, Ler;-><init>()V

    iget-object v14, v0, Lyf;->p:Lfd;

    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v16, v14

    move-object/from16 v17, v3

    invoke-virtual/range {v15 .. v20}, Ler;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    goto :goto_cc

    :cond_fa
    const/4 v3, 0x0

    :goto_fb
    const/16 v13, 0x20

    if-ge v3, v12, :cond_128

    .line 447
    iget-object v14, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v14, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int v18, v4, v14

    .line 448
    iget-object v14, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v14, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 449
    iget-object v14, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v14, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int v20, v5, v14

    .line 450
    new-instance v15, Lms;

    invoke-direct {v15, v13}, Lms;-><init>(I)V

    iget-object v13, v0, Lyf;->p:Lfd;

    iget-object v14, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    invoke-virtual/range {v15 .. v20}, Lms;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_fb

    :cond_128
    const/4 v3, 0x0

    :goto_129
    const/16 v14, 0x14

    if-ge v3, v14, :cond_15a

    .line 454
    iget-object v14, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v14, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int v18, v4, v14

    .line 455
    iget-object v14, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v14, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 456
    iget-object v14, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v14, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int v20, v5, v14

    .line 457
    new-instance v15, Lfl;

    sget-object v14, Luu;->w:Luu;

    iget v14, v14, Luu;->bn:I

    invoke-direct {v15, v14, v13}, Lfl;-><init>(II)V

    iget-object v14, v0, Lyf;->p:Lfd;

    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v16, v14

    move-object/from16 v17, v1

    invoke-virtual/range {v15 .. v20}, Lfl;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_129

    :cond_15a
    const/4 v1, 0x0

    :goto_15b
    if-ge v1, v12, :cond_18c

    .line 461
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v18, v4, v3

    .line 462
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 463
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v20, v5, v3

    .line 464
    new-instance v15, Lfl;

    sget-object v3, Luu;->G:Luu;

    iget v3, v3, Luu;->bn:I

    invoke-direct {v15, v3, v13}, Lfl;-><init>(II)V

    iget-object v3, v0, Lyf;->p:Lfd;

    iget-object v10, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v16, v3

    move-object/from16 v17, v10

    invoke-virtual/range {v15 .. v20}, Lfl;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    const/16 v10, 0x78

    goto :goto_15b

    :cond_18c
    const/4 v1, 0x0

    :goto_18d
    if-ge v1, v14, :cond_1bc

    .line 468
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v18, v4, v3

    .line 469
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 470
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v20, v5, v3

    .line 471
    new-instance v15, Lfl;

    sget-object v3, Luu;->J:Luu;

    iget v3, v3, Luu;->bn:I

    invoke-direct {v15, v3, v9}, Lfl;-><init>(II)V

    iget-object v3, v0, Lyf;->p:Lfd;

    iget-object v10, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v16, v3

    move-object/from16 v17, v10

    invoke-virtual/range {v15 .. v20}, Lfl;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18d

    :cond_1bc
    const/4 v1, 0x0

    :goto_1bd
    if-ge v1, v14, :cond_1ec

    .line 475
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v18, v4, v3

    .line 476
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 477
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v20, v5, v3

    .line 478
    new-instance v15, Lfl;

    sget-object v3, Luu;->I:Luu;

    iget v3, v3, Luu;->bn:I

    invoke-direct {v15, v3, v8}, Lfl;-><init>(II)V

    iget-object v3, v0, Lyf;->p:Lfd;

    iget-object v10, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v16, v3

    move-object/from16 v17, v10

    invoke-virtual/range {v15 .. v20}, Lfl;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1bd

    :cond_1ec
    const/4 v1, 0x0

    :goto_1ed
    const/4 v3, 0x2

    if-ge v1, v3, :cond_21d

    .line 482
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v18, v4, v3

    .line 483
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 484
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v20, v5, v3

    .line 485
    new-instance v15, Lfl;

    sget-object v3, Luu;->H:Luu;

    iget v3, v3, Luu;->bn:I

    invoke-direct {v15, v3, v8}, Lfl;-><init>(II)V

    iget-object v3, v0, Lyf;->p:Lfd;

    iget-object v10, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v16, v3

    move-object/from16 v17, v10

    invoke-virtual/range {v15 .. v20}, Lfl;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ed

    :cond_21d
    const/4 v1, 0x0

    :goto_21e
    const/4 v10, 0x7

    if-ge v1, v8, :cond_24e

    .line 489
    iget-object v11, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v11, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int v18, v4, v11

    .line 490
    iget-object v11, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v11, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 491
    iget-object v11, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v11, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int v20, v5, v11

    .line 492
    new-instance v15, Lfl;

    sget-object v11, Luu;->aO:Luu;

    iget v11, v11, Luu;->bn:I

    invoke-direct {v15, v11, v10}, Lfl;-><init>(II)V

    iget-object v10, v0, Lyf;->p:Lfd;

    iget-object v11, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v15 .. v20}, Lfl;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_21e

    .line 496
    :cond_24e
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int v18, v4, v1

    .line 497
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 498
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int v20, v5, v1

    .line 499
    new-instance v15, Lfl;

    sget-object v1, Luu;->ax:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-direct {v15, v1, v10}, Lfl;-><init>(II)V

    iget-object v1, v0, Lyf;->p:Lfd;

    iget-object v10, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v16, v1

    move-object/from16 v17, v10

    invoke-virtual/range {v15 .. v20}, Lfl;->a(Lfd;Ljava/util/Random;III)Z

    .line 504
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int v18, v4, v1

    .line 505
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v10, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v10, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int v19, v1, v10

    .line 506
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int v20, v5, v1

    .line 507
    new-instance v15, Lfl;

    sget-object v1, Luu;->O:Luu;

    iget v1, v1, Luu;->bn:I

    const/4 v10, 0x6

    invoke-direct {v15, v1, v10}, Lfl;-><init>(II)V

    iget-object v1, v0, Lyf;->p:Lfd;

    iget-object v10, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v16, v1

    move-object/from16 v17, v10

    invoke-virtual/range {v15 .. v20}, Lfl;->a(Lfd;Ljava/util/Random;III)Z

    .line 511
    iget-object v1, v0, Lyf;->c:Luf;

    int-to-double v10, v4

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v15

    int-to-double v13, v5

    mul-double/2addr v13, v15

    invoke-virtual {v1, v10, v11, v13, v14}, Luf;->a(DD)D

    move-result-wide v10

    const-wide/high16 v13, 0x4020000000000000L    # 8.0

    div-double/2addr v10, v13

    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v13

    const-wide/high16 v19, 0x4010000000000000L    # 4.0

    mul-double v13, v13, v19

    add-double/2addr v10, v13

    add-double v10, v10, v19

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v13

    double-to-int v1, v10

    .line 514
    iget-object v10, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v10, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    if-nez v10, :cond_2d5

    const/4 v10, 0x1

    goto :goto_2d6

    :cond_2d5
    const/4 v10, 0x0

    .line 516
    :goto_2d6
    sget-object v11, Lkd;->d:Lkd;

    if-ne v6, v11, :cond_2dd

    add-int/lit8 v11, v1, 0x5

    add-int/2addr v10, v11

    .line 517
    :cond_2dd
    sget-object v11, Lkd;->a:Lkd;

    if-ne v6, v11, :cond_2e4

    add-int/lit8 v11, v1, 0x5

    add-int/2addr v10, v11

    .line 518
    :cond_2e4
    sget-object v11, Lkd;->c:Lkd;

    if-ne v6, v11, :cond_2eb

    add-int/lit8 v11, v1, 0x2

    add-int/2addr v10, v11

    .line 519
    :cond_2eb
    sget-object v11, Lkd;->g:Lkd;

    if-ne v6, v11, :cond_2f2

    add-int/lit8 v1, v1, 0x5

    add-int/2addr v10, v1

    .line 521
    :cond_2f2
    sget-object v1, Lkd;->h:Lkd;

    if-ne v6, v1, :cond_2f8

    add-int/lit8 v10, v10, -0x14

    .line 522
    :cond_2f8
    sget-object v1, Lkd;->k:Lkd;

    if-ne v6, v1, :cond_2fe

    add-int/lit8 v10, v10, -0x14

    .line 523
    :cond_2fe
    sget-object v1, Lkd;->i:Lkd;

    if-ne v6, v1, :cond_304

    add-int/lit8 v10, v10, -0x14

    :cond_304
    const/4 v1, 0x0

    :goto_305
    if-ge v1, v10, :cond_342

    .line 526
    iget-object v11, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v11, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v11, v4

    add-int/2addr v11, v8

    .line 527
    iget-object v13, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v13, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/2addr v13, v5

    add-int/2addr v13, v8

    .line 528
    iget-object v14, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v6, v14}, Lkd;->a(Ljava/util/Random;)Lpg;

    move-result-object v14

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-object/from16 v19, v14

    .line 529
    invoke-virtual/range {v19 .. v25}, Lpg;->a(DDD)V

    .line 530
    iget-object v15, v0, Lyf;->p:Lfd;

    iget-object v12, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v15, v11, v13}, Lfd;->d(II)I

    move-result v23

    move-object/from16 v20, v15

    move-object/from16 v21, v12

    move/from16 v22, v11

    move/from16 v24, v13

    invoke-virtual/range {v19 .. v24}, Lpg;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    const/16 v12, 0xa

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    goto :goto_305

    .line 534
    :cond_342
    sget-object v1, Lkd;->d:Lkd;

    if-ne v6, v1, :cond_348

    move v1, v3

    goto :goto_349

    :cond_348
    const/4 v1, 0x0

    .line 535
    :goto_349
    sget-object v10, Lkd;->c:Lkd;

    if-ne v6, v10, :cond_34e

    move v1, v2

    .line 536
    :cond_34e
    sget-object v10, Lkd;->g:Lkd;

    if-ne v6, v10, :cond_353

    move v1, v3

    .line 537
    :cond_353
    sget-object v10, Lkd;->i:Lkd;

    const/4 v11, 0x3

    if-ne v6, v10, :cond_359

    move v1, v11

    :cond_359
    const/4 v10, 0x0

    :goto_35a
    if-ge v10, v1, :cond_38d

    .line 540
    iget-object v12, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v12, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v12, v4

    add-int/lit8 v22, v12, 0x8

    .line 541
    iget-object v12, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v12, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    .line 542
    iget-object v12, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v12, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v12, v5

    add-int/lit8 v24, v12, 0x8

    .line 543
    new-instance v12, Lbe;

    sget-object v13, Luu;->ae:Lwb;

    iget v13, v13, Lwb;->bn:I

    invoke-direct {v12, v13}, Lbe;-><init>(I)V

    iget-object v13, v0, Lyf;->p:Lfd;

    iget-object v14, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    invoke-virtual/range {v19 .. v24}, Lbe;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_35a

    .line 548
    :cond_38d
    sget-object v1, Lkd;->d:Lkd;

    if-ne v6, v1, :cond_393

    move v1, v3

    goto :goto_394

    :cond_393
    const/4 v1, 0x0

    .line 549
    :goto_394
    sget-object v10, Lkd;->a:Lkd;

    if-ne v6, v10, :cond_39a

    const/16 v1, 0xa

    .line 550
    :cond_39a
    sget-object v10, Lkd;->c:Lkd;

    if-ne v6, v10, :cond_39f

    move v1, v3

    .line 551
    :cond_39f
    sget-object v10, Lkd;->g:Lkd;

    if-ne v6, v10, :cond_3a4

    const/4 v1, 0x1

    .line 552
    :cond_3a4
    sget-object v10, Lkd;->i:Lkd;

    if-ne v6, v10, :cond_3aa

    const/16 v1, 0xa

    :cond_3aa
    const/4 v10, 0x0

    :goto_3ab
    if-ge v10, v1, :cond_3ed

    .line 557
    sget-object v12, Lkd;->a:Lkd;

    if-ne v6, v12, :cond_3bb

    iget-object v12, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v12, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    if-eqz v12, :cond_3bb

    move v12, v3

    goto :goto_3bc

    :cond_3bb
    const/4 v12, 0x1

    .line 559
    :goto_3bc
    iget-object v13, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v13, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/2addr v13, v4

    add-int/lit8 v22, v13, 0x8

    .line 560
    iget-object v13, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v13, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    .line 561
    iget-object v13, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v13, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/2addr v13, v5

    add-int/lit8 v24, v13, 0x8

    .line 562
    new-instance v13, Lap;

    sget-object v14, Luu;->Y:Lru;

    iget v14, v14, Lru;->bn:I

    invoke-direct {v13, v14, v12}, Lap;-><init>(II)V

    iget-object v12, v0, Lyf;->p:Lfd;

    iget-object v14, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v19, v13

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    invoke-virtual/range {v19 .. v24}, Lap;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3ab

    .line 566
    :cond_3ed
    sget-object v1, Lkd;->h:Lkd;

    if-ne v6, v1, :cond_3f3

    move v1, v3

    goto :goto_3f4

    :cond_3f3
    const/4 v1, 0x0

    :goto_3f4
    const/4 v10, 0x0

    :goto_3f5
    if-ge v10, v1, :cond_428

    .line 569
    iget-object v11, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v11, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v11, v4

    add-int/lit8 v22, v11, 0x8

    .line 570
    iget-object v11, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v11, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    .line 571
    iget-object v11, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v11, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v11, v5

    add-int/lit8 v24, v11, 0x8

    .line 572
    new-instance v11, Lkt;

    sget-object v12, Luu;->Z:Ljb;

    iget v12, v12, Ljb;->bn:I

    invoke-direct {v11, v12}, Lkt;-><init>(I)V

    iget-object v12, v0, Lyf;->p:Lfd;

    iget-object v13, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v19 .. v24}, Lkt;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3f5

    .line 575
    :cond_428
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_458

    .line 576
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v13, v1, 0x8

    .line 577
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 578
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/lit8 v15, v1, 0x8

    .line 579
    new-instance v10, Lbe;

    sget-object v1, Luu;->af:Lwb;

    iget v1, v1, Lwb;->bn:I

    invoke-direct {v10, v1}, Lbe;-><init>(I)V

    iget-object v11, v0, Lyf;->p:Lfd;

    iget-object v12, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lbe;->a(Lfd;Ljava/util/Random;III)Z

    .line 582
    :cond_458
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_488

    .line 583
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v13, v1, 0x8

    .line 584
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 585
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/lit8 v15, v1, 0x8

    .line 586
    new-instance v10, Lbe;

    sget-object v1, Luu;->ag:Lwb;

    iget v1, v1, Lwb;->bn:I

    invoke-direct {v10, v1}, Lbe;-><init>(I)V

    iget-object v11, v0, Lyf;->p:Lfd;

    iget-object v12, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lbe;->a(Lfd;Ljava/util/Random;III)Z

    .line 589
    :cond_488
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_4b8

    .line 590
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v13, v1, 0x8

    .line 591
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 592
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/lit8 v15, v1, 0x8

    .line 593
    new-instance v10, Lbe;

    sget-object v1, Luu;->ah:Lwb;

    iget v1, v1, Lwb;->bn:I

    invoke-direct {v10, v1}, Lbe;-><init>(I)V

    iget-object v11, v0, Lyf;->p:Lfd;

    iget-object v12, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lbe;->a(Lfd;Ljava/util/Random;III)Z

    :cond_4b8
    const/4 v1, 0x0

    const/16 v2, 0xa

    :goto_4bb
    if-ge v1, v2, :cond_4e4

    .line 597
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v4

    add-int/lit8 v13, v3, 0x8

    .line 598
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 599
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v5

    add-int/lit8 v15, v3, 0x8

    .line 600
    new-instance v10, Lir;

    invoke-direct {v10}, Lir;-><init>()V

    iget-object v11, v0, Lyf;->p:Lfd;

    iget-object v12, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lir;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4bb

    .line 603
    :cond_4e4
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_512

    .line 604
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v13, v1, 0x8

    .line 605
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 606
    iget-object v1, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/lit8 v15, v1, 0x8

    .line 607
    new-instance v10, Lwx;

    invoke-direct {v10}, Lwx;-><init>()V

    iget-object v11, v0, Lyf;->p:Lfd;

    iget-object v12, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lwx;->a(Lfd;Ljava/util/Random;III)Z

    .line 611
    :cond_512
    sget-object v1, Lkd;->h:Lkd;

    if-ne v6, v1, :cond_518

    move v12, v2

    goto :goto_519

    :cond_518
    const/4 v12, 0x0

    :goto_519
    const/4 v1, 0x0

    :goto_51a
    if-ge v1, v12, :cond_547

    .line 614
    iget-object v2, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v4

    add-int/lit8 v22, v2, 0x8

    .line 615
    iget-object v2, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    .line 616
    iget-object v2, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v5

    add-int/lit8 v24, v2, 0x8

    .line 617
    new-instance v19, Lfx;

    invoke-direct/range {v19 .. v19}, Lfx;-><init>()V

    iget-object v2, v0, Lyf;->p:Lfd;

    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v19 .. v24}, Lfx;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_51a

    :cond_547
    const/4 v1, 0x0

    :goto_548
    const/16 v2, 0x32

    if-ge v1, v2, :cond_57e

    .line 622
    iget-object v2, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v4

    add-int/lit8 v13, v2, 0x8

    .line 623
    iget-object v2, v0, Lyf;->j:Ljava/util/Random;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 624
    iget-object v2, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v5

    add-int/lit8 v15, v2, 0x8

    .line 625
    new-instance v10, Lxo;

    sget-object v2, Luu;->B:Luu;

    iget v2, v2, Luu;->bn:I

    invoke-direct {v10, v2}, Lxo;-><init>(I)V

    iget-object v11, v0, Lyf;->p:Lfd;

    iget-object v12, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lxo;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_548

    :cond_57e
    const/4 v1, 0x0

    const/16 v2, 0x14

    :goto_581
    if-ge v1, v2, :cond_5ba

    .line 629
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v4

    add-int/lit8 v13, v3, 0x8

    .line 630
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    const/16 v6, 0x70

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 631
    iget-object v3, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v5

    add-int/lit8 v15, v3, 0x8

    .line 632
    new-instance v10, Lxo;

    sget-object v3, Luu;->D:Luu;

    iget v3, v3, Luu;->bn:I

    invoke-direct {v10, v3}, Lxo;-><init>(I)V

    iget-object v11, v0, Lyf;->p:Lfd;

    iget-object v12, v0, Lyf;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lxo;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_581

    .line 635
    :cond_5ba
    iget-object v1, v0, Lyf;->p:Lfd;

    invoke-virtual {v1}, Lfd;->a()Lxv;

    move-result-object v10

    iget-object v11, v0, Lyf;->w:[D

    add-int/2addr v4, v8

    add-int/2addr v5, v8

    const/16 v14, 0x10

    const/16 v15, 0x10

    move v12, v4

    move v13, v5

    invoke-virtual/range {v10 .. v15}, Lxv;->a([DIIII)[D

    move-result-object v1

    iput-object v1, v0, Lyf;->w:[D

    move v1, v4

    :goto_5d1
    add-int/lit8 v2, v4, 0x10

    if-ge v1, v2, :cond_632

    move v2, v5

    :goto_5d6
    add-int/lit8 v3, v5, 0x10

    if-ge v2, v3, :cond_62d

    sub-int v3, v1, v4

    sub-int v6, v2, v5

    .line 640
    iget-object v8, v0, Lyf;->p:Lfd;

    invoke-virtual {v8, v1, v2}, Lfd;->e(II)I

    move-result v8

    .line 641
    iget-object v10, v0, Lyf;->w:[D

    mul-int/2addr v3, v9

    add-int/2addr v3, v6

    aget-wide v11, v10, v3

    add-int/lit8 v3, v8, -0x40

    int-to-double v13, v3

    const-wide/high16 v15, 0x4050000000000000L    # 64.0

    div-double/2addr v13, v15

    const-wide v15, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v11, v13

    if-gez v3, :cond_62a

    if-lez v8, :cond_62a

    if-ge v8, v7, :cond_62a

    .line 643
    iget-object v3, v0, Lyf;->p:Lfd;

    invoke-virtual {v3, v1, v8, v2}, Lfd;->d(III)Z

    move-result v3

    if-eqz v3, :cond_62a

    iget-object v3, v0, Lyf;->p:Lfd;

    add-int/lit8 v6, v8, -0x1

    invoke-virtual {v3, v1, v6, v2}, Lfd;->f(III)Lln;

    move-result-object v3

    invoke-virtual {v3}, Lln;->c()Z

    move-result v3

    if-eqz v3, :cond_62a

    .line 644
    iget-object v3, v0, Lyf;->p:Lfd;

    invoke-virtual {v3, v1, v6, v2}, Lfd;->f(III)Lln;

    move-result-object v3

    sget-object v6, Lln;->s:Lln;

    if-eq v3, v6, :cond_62a

    iget-object v3, v0, Lyf;->p:Lfd;

    sget-object v6, Luu;->aT:Luu;

    iget v6, v6, Luu;->bn:I

    invoke-virtual {v3, v1, v8, v2, v6}, Lfd;->f(IIII)Z

    :cond_62a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d6

    :cond_62d
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d1

    :cond_632
    const/4 v1, 0x0

    .line 649
    sput-boolean v1, Lgk;->a:Z

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
    .registers 20

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    .line 229
    iget-object v0, v6, Lyf;->j:Ljava/util/Random;

    int-to-long v1, v7

    const-wide v3, 0x4f9939f508L

    mul-long/2addr v1, v3

    int-to-long v3, v8

    const-wide v9, 0x1ef1565bd5L

    mul-long/2addr v3, v9

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    const v0, 0x8000

    new-array v9, v0, [B

    .line 232
    new-instance v10, Llm;

    iget-object v0, v6, Lyf;->p:Lfd;

    invoke-direct {v10, v0, v9, v7, v8}, Llm;-><init>(Lfd;[BII)V

    .line 233
    iget-object v0, v6, Lyf;->p:Lfd;

    invoke-virtual {v0}, Lfd;->a()Lxv;

    move-result-object v11

    iget-object v12, v6, Lyf;->v:[Lkd;

    mul-int/lit8 v13, v7, 0x10

    mul-int/lit8 v14, v8, 0x10

    const/16 v15, 0x10

    const/16 v16, 0x10

    invoke-virtual/range {v11 .. v16}, Lxv;->a([Lkd;IIII)[Lkd;

    move-result-object v0

    iput-object v0, v6, Lyf;->v:[Lkd;

    .line 234
    iget-object v0, v6, Lyf;->p:Lfd;

    invoke-virtual {v0}, Lfd;->a()Lxv;

    move-result-object v0

    iget-object v5, v0, Lxv;->a:[D

    .line 236
    iget-object v4, v6, Lyf;->v:[Lkd;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lyf;->a(II[B[Lkd;[D)V

    .line 237
    iget-object v0, v6, Lyf;->v:[Lkd;

    invoke-virtual {v6, v7, v8, v9, v0}, Lyf;->a(II[B[Lkd;)V

    .line 239
    iget-object v0, v6, Lyf;->u:Lfv;

    iget-object v2, v6, Lyf;->p:Lfd;

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lfv;->a(Lcl;Lfd;II[B)V

    .line 245
    invoke-virtual {v10}, Llm;->c()V

    return-object v10
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "RandomLevelSource"

    return-object v0
.end method

.method public c(II)Llm;
    .registers 3

    .line 225
    invoke-virtual {p0, p1, p2}, Lyf;->b(II)Llm;

    move-result-object p1

    return-object p1
.end method
