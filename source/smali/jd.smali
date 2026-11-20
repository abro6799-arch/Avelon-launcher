###### Class defpackage.jd (jd)
.class public Ljd;
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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v1, v0, [D

    .line 136
    iput-object v1, p0, Ljd;->r:[D

    new-array v1, v0, [D

    .line 137
    iput-object v1, p0, Ljd;->s:[D

    new-array v0, v0, [D

    .line 138
    iput-object v0, p0, Ljd;->t:[D

    .line 197
    new-instance v0, Lsq;

    invoke-direct {v0}, Lsq;-><init>()V

    iput-object v0, p0, Ljd;->u:Lfv;

    const/16 v0, 0x20

    .line 342
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Ljd;->i:[[I

    .line 51
    iput-object p1, p0, Ljd;->p:Lfd;

    .line 53
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1, p2, p3}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Ljd;->j:Ljava/util/Random;

    .line 54
    new-instance p2, Luf;

    const/16 p3, 0x10

    invoke-direct {p2, p1, p3}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p2, p0, Ljd;->k:Luf;

    .line 55
    new-instance p1, Luf;

    iget-object p2, p0, Ljd;->j:Ljava/util/Random;

    invoke-direct {p1, p2, p3}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Ljd;->l:Luf;

    .line 56
    new-instance p1, Luf;

    iget-object p2, p0, Ljd;->j:Ljava/util/Random;

    const/16 v0, 0x8

    invoke-direct {p1, p2, v0}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Ljd;->m:Luf;

    .line 57
    new-instance p1, Luf;

    iget-object p2, p0, Ljd;->j:Ljava/util/Random;

    const/4 v1, 0x4

    invoke-direct {p1, p2, v1}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Ljd;->n:Luf;

    .line 58
    new-instance p1, Luf;

    iget-object p2, p0, Ljd;->j:Ljava/util/Random;

    invoke-direct {p1, p2, v1}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Ljd;->o:Luf;

    .line 60
    new-instance p1, Luf;

    iget-object p2, p0, Ljd;->j:Ljava/util/Random;

    const/16 v1, 0xa

    invoke-direct {p1, p2, v1}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Ljd;->a:Luf;

    .line 61
    new-instance p1, Luf;

    iget-object p2, p0, Ljd;->j:Ljava/util/Random;

    invoke-direct {p1, p2, p3}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Ljd;->b:Luf;

    .line 68
    new-instance p1, Luf;

    iget-object p2, p0, Ljd;->j:Ljava/util/Random;

    invoke-direct {p1, p2, v0}, Luf;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Ljd;->c:Luf;

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

    .line 233
    new-array v1, v1, [D

    move-object/from16 v52, v1

    goto :goto_14

    :cond_12
    move-object/from16 v52, p1

    .line 247
    :goto_14
    iget-object v1, v0, Ljd;->p:Lfd;

    invoke-virtual {v1}, Lfd;->a()Lxv;

    move-result-object v1

    iget-object v11, v1, Lxv;->a:[D

    .line 248
    iget-object v1, v0, Ljd;->p:Lfd;

    invoke-virtual {v1}, Lfd;->a()Lxv;

    move-result-object v1

    iget-object v12, v1, Lxv;->b:[D

    .line 249
    iget-object v1, v0, Ljd;->a:Luf;

    iget-object v2, v0, Ljd;->g:[D

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

    iput-object v1, v0, Ljd;->g:[D

    .line 250
    iget-object v1, v0, Ljd;->b:Luf;

    iget-object v2, v0, Ljd;->h:[D

    const-wide/high16 v7, 0x4069000000000000L    # 200.0

    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v1 .. v12}, Luf;->a([DIIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Ljd;->h:[D

    const-wide v33, 0x4095634bc6a7ef9eL    # 1368.824

    move-wide/from16 v46, v33

    move-wide/from16 v50, v33

    move-wide/from16 v29, v33

    .line 255
    iget-object v1, v0, Ljd;->m:Luf;

    iget-object v2, v0, Ljd;->d:[D

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

    const-wide v9, 0x40311c3c9eecbfb2L    # 17.110300000000002

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

    iput-object v1, v0, Ljd;->d:[D

    .line 256
    iget-object v1, v0, Ljd;->k:Luf;

    move-object/from16 v18, v1

    iget-object v1, v0, Ljd;->e:[D

    move-object/from16 v19, v1

    const-wide v31, 0x4085634bc6a7ef9eL    # 684.412

    move/from16 v26, p5

    move/from16 v27, p6

    move/from16 v28, p7

    invoke-virtual/range {v18 .. v34}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Ljd;->e:[D

    .line 257
    iget-object v1, v0, Ljd;->l:Luf;

    move-object/from16 v35, v1

    iget-object v1, v0, Ljd;->f:[D

    move-object/from16 v36, v1

    const-wide v48, 0x4085634bc6a7ef9eL    # 684.412

    move/from16 v43, p5

    move/from16 v44, p6

    move/from16 v45, p7

    invoke-virtual/range {v35 .. v51}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Ljd;->f:[D

    const/16 v1, 0x10

    move/from16 v2, p5

    .line 262
    div-int v3, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_d0
    if-ge v5, v2, :cond_174

    mul-int v8, v5, v3

    .line 264
    div-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    move/from16 v10, p7

    const/4 v11, 0x0

    :goto_da
    if-ge v11, v10, :cond_16b

    mul-int v12, v11, v3

    add-int/2addr v12, v9

    mul-int/lit8 v13, v8, 0x10

    add-int/2addr v13, v12

    .line 268
    aget-wide v14, v53, v13

    .line 269
    aget-wide v12, v54, v13

    .line 275
    iget-object v12, v0, Ljd;->g:[D

    aget-wide v13, v12, v6

    .line 280
    iget-object v12, v0, Ljd;->h:[D

    aget-wide v13, v12, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v12, p6

    const/4 v13, 0x0

    :goto_f3
    if-ge v13, v12, :cond_164

    .line 309
    iget-object v14, v0, Ljd;->e:[D

    aget-wide v15, v14, v7

    const-wide/high16 v17, 0x4080000000000000L    # 512.0

    div-double v15, v15, v17

    .line 310
    iget-object v14, v0, Ljd;->f:[D

    aget-wide v19, v14, v7

    div-double v19, v19, v17

    .line 312
    iget-object v14, v0, Ljd;->d:[D

    aget-wide v17, v14, v7

    const-wide/high16 v21, 0x4024000000000000L    # 10.0

    div-double v17, v17, v21

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    add-double v17, v17, v21

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    div-double v17, v17, v23

    const-wide/16 v23, 0x0

    cmpg-double v14, v17, v23

    if-gez v14, :cond_11a

    goto :goto_127

    :cond_11a
    cmpl-double v14, v17, v21

    if-lez v14, :cond_121

    move-wide/from16 v15, v19

    goto :goto_127

    :cond_121
    sub-double v19, v19, v15

    mul-double v19, v19, v17

    add-double v15, v15, v19

    :goto_127
    const-wide/high16 v17, 0x4020000000000000L    # 8.0

    sub-double v15, v15, v17

    add-int/lit8 v14, v12, -0x20

    const-wide/high16 v17, -0x3fc2000000000000L    # -30.0

    const/high16 v19, 0x3f800000    # 1.0f

    if-le v13, v14, :cond_146

    sub-int v14, v13, v14

    int-to-float v14, v14

    const/16 v1, 0x20

    int-to-float v1, v1

    sub-float v1, v1, v19

    div-float/2addr v14, v1

    move v1, v5

    float-to-double v4, v14

    sub-double v23, v21, v4

    mul-double v15, v15, v23

    mul-double v4, v4, v17

    add-double/2addr v15, v4

    goto :goto_147

    :cond_146
    move v1, v5

    :goto_147
    const/16 v4, 0x8

    if-ge v13, v4, :cond_15a

    rsub-int/lit8 v5, v13, 0x8

    int-to-float v5, v5

    int-to-float v4, v4

    sub-float v4, v4, v19

    div-float/2addr v5, v4

    float-to-double v4, v5

    sub-double v21, v21, v4

    mul-double v15, v15, v21

    mul-double v4, v4, v17

    add-double/2addr v15, v4

    .line 330
    :cond_15a
    aput-wide v15, v52, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v13, v13, 0x1

    move v5, v1

    const/16 v1, 0x10

    goto :goto_f3

    :cond_164
    move v1, v5

    add-int/lit8 v11, v11, 0x1

    const/16 v1, 0x10

    goto/16 :goto_da

    :cond_16b
    move/from16 v12, p6

    move v1, v5

    add-int/lit8 v5, v1, 0x1

    const/16 v1, 0x10

    goto/16 :goto_d0

    :cond_174
    return-object v52
.end method


# virtual methods
.method public a(II[B[Lkd;)V
    .registers 57

    move-object/from16 v0, p0

    .line 142
    iget-object v1, v0, Ljd;->n:Luf;

    iget-object v2, v0, Ljd;->r:[D

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

    iput-object v1, v0, Ljd;->r:[D

    .line 143
    iget-object v1, v0, Ljd;->n:Luf;

    move-object/from16 v18, v1

    iget-object v1, v0, Ljd;->s:[D

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

    iput-object v1, v0, Ljd;->s:[D

    .line 144
    iget-object v1, v0, Ljd;->o:Luf;

    move-object/from16 v35, v1

    iget-object v1, v0, Ljd;->t:[D

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

    iput-object v1, v0, Ljd;->t:[D

    const/4 v1, 0x0

    move v2, v1

    const/16 v3, 0x10

    :goto_6a
    if-ge v2, v3, :cond_d6

    move v4, v1

    :goto_6d
    if-ge v4, v3, :cond_d3

    mul-int/lit8 v5, v4, 0x10

    add-int/2addr v5, v2

    .line 148
    aget-object v6, p4, v5

    .line 149
    iget-object v7, v0, Ljd;->t:[D

    aget-wide v8, v7, v5

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v10

    add-double/2addr v8, v10

    iget-object v7, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v7, v8

    .line 153
    iget-byte v8, v6, Lkd;->p:B

    .line 154
    iget-byte v6, v6, Lkd;->q:B

    const/4 v9, -0x1

    const/16 v10, 0x7f

    move v11, v9

    :goto_8f
    if-ltz v10, :cond_d0

    mul-int/lit16 v12, v5, 0x80

    add-int/2addr v12, v10

    .line 159
    aget-byte v13, p3, v12

    if-nez v13, :cond_9a

    move v11, v9

    goto :goto_cd

    .line 163
    :cond_9a
    sget-object v14, Luu;->u:Luu;

    iget v14, v14, Luu;->bn:I

    if-ne v13, v14, :cond_cd

    if-ne v11, v9, :cond_b3

    if-gtz v7, :cond_aa

    .line 167
    sget-object v6, Luu;->u:Luu;

    iget v6, v6, Luu;->bn:I

    int-to-byte v6, v6

    move v8, v1

    :cond_aa
    if-ltz v10, :cond_af

    .line 178
    aput-byte v8, p3, v12

    goto :goto_b1

    .line 179
    :cond_af
    aput-byte v6, p3, v12

    :goto_b1
    move v11, v7

    goto :goto_cd

    :cond_b3
    if-lez v11, :cond_cd

    add-int/lit8 v11, v11, -0x1

    .line 182
    aput-byte v6, p3, v12

    if-nez v11, :cond_cd

    .line 186
    sget-object v12, Luu;->F:Luu;

    iget v12, v12, Luu;->bn:I

    if-ne v6, v12, :cond_cd

    .line 187
    iget-object v6, v0, Ljd;->j:Ljava/util/Random;

    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    .line 188
    sget-object v6, Luu;->R:Luu;

    iget v6, v6, Luu;->bn:I

    int-to-byte v6, v6

    :cond_cd
    :goto_cd
    add-int/lit8 v10, v10, -0x1

    goto :goto_8f

    :cond_d0
    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    :cond_d3
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_d6
    return-void
.end method

.method public a(II[B[Lkd;[D)V
    .registers 50

    move-object/from16 v8, p0

    const/4 v9, 0x3

    .line 80
    iget-object v1, v8, Ljd;->q:[D

    const/4 v10, 0x2

    mul-int/lit8 v2, p1, 0x2

    const/4 v3, 0x0

    mul-int/lit8 v4, p2, 0x2

    const/16 v6, 0x21

    move-object/from16 v0, p0

    move v5, v9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Ljd;->a([DIIIIII)[D

    move-result-object v0

    iput-object v0, v8, Ljd;->q:[D

    const/4 v0, 0x0

    move v1, v0

    :goto_19
    if-ge v1, v10, :cond_e8

    move v2, v0

    :goto_1c
    if-ge v2, v10, :cond_e1

    move v3, v0

    :goto_1f
    const/16 v4, 0x20

    if-ge v3, v4, :cond_da

    .line 86
    iget-object v4, v8, Ljd;->q:[D

    add-int/lit8 v5, v1, 0x0

    mul-int/2addr v5, v9

    add-int/lit8 v6, v2, 0x0

    add-int v7, v5, v6

    mul-int/lit8 v7, v7, 0x21

    add-int/lit8 v11, v3, 0x0

    add-int v12, v7, v11

    aget-wide v12, v4, v12

    add-int/lit8 v14, v2, 0x1

    add-int/2addr v5, v14

    mul-int/lit8 v5, v5, 0x21

    add-int v15, v5, v11

    .line 87
    aget-wide v15, v4, v15

    add-int/lit8 v17, v1, 0x1

    mul-int/lit8 v17, v17, 0x3

    add-int v6, v17, v6

    mul-int/lit8 v6, v6, 0x21

    add-int v18, v6, v11

    .line 88
    aget-wide v18, v4, v18

    add-int v17, v17, v14

    mul-int/lit8 v17, v17, 0x21

    add-int v11, v17, v11

    .line 89
    aget-wide v20, v4, v11

    add-int/lit8 v11, v3, 0x1

    add-int/2addr v7, v11

    .line 91
    aget-wide v22, v4, v7

    sub-double v22, v22, v12

    const-wide/high16 v24, 0x3fd0000000000000L    # 0.25

    mul-double v22, v22, v24

    add-int/2addr v5, v11

    .line 92
    aget-wide v26, v4, v5

    sub-double v26, v26, v15

    mul-double v26, v26, v24

    add-int/2addr v6, v11

    .line 93
    aget-wide v5, v4, v6

    sub-double v5, v5, v18

    mul-double v5, v5, v24

    add-int v17, v17, v11

    .line 94
    aget-wide v28, v4, v17

    sub-double v28, v28, v20

    mul-double v28, v28, v24

    move v4, v0

    :goto_73
    const/4 v7, 0x4

    if-ge v4, v7, :cond_d7

    sub-double v24, v18, v12

    const-wide/high16 v30, 0x3fc0000000000000L    # 0.125

    mul-double v24, v24, v30

    sub-double v32, v20, v15

    mul-double v32, v32, v30

    move v7, v0

    move-wide/from16 v34, v12

    move-wide/from16 v36, v15

    :goto_85
    const/16 v14, 0x8

    if-ge v7, v14, :cond_c9

    mul-int/lit8 v17, v1, 0x8

    add-int v17, v7, v17

    shl-int/lit8 v17, v17, 0xb

    mul-int/lit8 v38, v2, 0x8

    add-int/lit8 v38, v38, 0x0

    shl-int/lit8 v38, v38, 0x7

    or-int v17, v17, v38

    mul-int/lit8 v38, v3, 0x4

    add-int v38, v38, v4

    or-int v17, v17, v38

    sub-double v38, v36, v34

    mul-double v38, v38, v30

    move v9, v0

    move/from16 v0, v17

    move-wide/from16 v40, v34

    :goto_a6
    if-ge v9, v14, :cond_bf

    const-wide/16 v42, 0x0

    cmpl-double v17, v40, v42

    if-lez v17, :cond_b3

    .line 114
    sget-object v10, Luu;->u:Luu;

    iget v10, v10, Luu;->bn:I

    goto :goto_b4

    :cond_b3
    const/4 v10, 0x0

    :goto_b4
    int-to-byte v10, v10

    .line 118
    aput-byte v10, p3, v0

    add-int/lit16 v0, v0, 0x80

    add-double v40, v40, v38

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x2

    goto :goto_a6

    :cond_bf
    add-double v34, v34, v24

    add-double v36, v36, v32

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    goto :goto_85

    :cond_c9
    add-double v12, v12, v22

    add-double v15, v15, v26

    add-double v18, v18, v5

    add-double v20, v20, v28

    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    goto :goto_73

    :cond_d7
    move v3, v11

    goto/16 :goto_1f

    :cond_da
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    goto/16 :goto_1c

    :cond_e1
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    goto/16 :goto_19

    :cond_e8
    return-void
.end method

.method public a(Lcl;II)V
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x1

    .line 392
    sput-boolean v3, Lgk;->a:Z

    mul-int/lit8 v4, v1, 0x10

    mul-int/lit8 v5, v2, 0x10

    .line 396
    iget-object v6, v0, Ljd;->p:Lfd;

    invoke-virtual {v6}, Lfd;->a()Lxv;

    move-result-object v6

    add-int/lit8 v7, v4, 0x10

    add-int/lit8 v8, v5, 0x10

    invoke-virtual {v6, v7, v8}, Lxv;->a(II)Lkd;

    move-result-object v6

    .line 404
    iget-object v7, v0, Ljd;->j:Ljava/util/Random;

    iget-object v8, v0, Ljd;->p:Lfd;

    invoke-virtual {v8}, Lfd;->s()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Random;->setSeed(J)V

    .line 405
    iget-object v7, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextLong()J

    move-result-wide v7

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    mul-long/2addr v7, v9

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    .line 406
    iget-object v13, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextLong()J

    move-result-wide v13

    div-long/2addr v13, v9

    mul-long/2addr v13, v9

    add-long/2addr v13, v11

    .line 407
    iget-object v9, v0, Ljd;->j:Ljava/util/Random;

    int-to-long v10, v1

    mul-long/2addr v10, v7

    int-to-long v1, v2

    mul-long/2addr v1, v13

    add-long/2addr v10, v1

    iget-object v1, v0, Ljd;->p:Lfd;

    invoke-virtual {v1}, Lfd;->s()J

    move-result-wide v1

    xor-long/2addr v1, v10

    invoke-virtual {v9, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 410
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v7, 0x80

    const/16 v8, 0x8

    const/16 v9, 0x10

    if-nez v1, :cond_84

    .line 411
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v13, v1, 0x8

    .line 412
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 413
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/lit8 v15, v1, 0x8

    .line 414
    new-instance v10, Ldj;

    sget-object v1, Luu;->C:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-direct {v10, v1}, Ldj;-><init>(I)V

    iget-object v11, v0, Ljd;->p:Lfd;

    iget-object v12, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Ldj;->a(Lfd;Ljava/util/Random;III)Z

    .line 417
    :cond_84
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v10, 0x78

    const/16 v11, 0x40

    const/16 v12, 0xa

    if-nez v1, :cond_cb

    .line 418
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v16, v1, 0x8

    .line 419
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/2addr v13, v8

    invoke-virtual {v1, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 420
    iget-object v13, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v13, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/2addr v13, v5

    add-int/lit8 v18, v13, 0x8

    if-lt v1, v11, :cond_b9

    .line 421
    iget-object v13, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v13, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    if-nez v13, :cond_cb

    :cond_b9
    new-instance v13, Ldj;

    sget-object v14, Luu;->E:Luu;

    iget v14, v14, Luu;->bn:I

    invoke-direct {v13, v14}, Ldj;-><init>(I)V

    iget-object v14, v0, Ljd;->p:Lfd;

    iget-object v15, v0, Ljd;->j:Ljava/util/Random;

    move/from16 v17, v1

    invoke-virtual/range {v13 .. v18}, Ldj;->a(Lfd;Ljava/util/Random;III)Z

    :cond_cb
    const/4 v13, 0x0

    :goto_cc
    if-ge v13, v8, :cond_fa

    .line 425
    iget-object v14, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v14, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int/2addr v14, v4

    add-int/lit8 v18, v14, 0x8

    .line 426
    iget-object v14, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v14, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 427
    iget-object v14, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v14, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int/2addr v14, v5

    add-int/lit8 v20, v14, 0x8

    .line 428
    new-instance v15, Ler;

    invoke-direct {v15}, Ler;-><init>()V

    iget-object v14, v0, Ljd;->p:Lfd;

    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

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

    .line 432
    iget-object v14, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v14, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int v18, v4, v14

    .line 433
    iget-object v14, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v14, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 434
    iget-object v14, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v14, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int v20, v5, v14

    .line 435
    new-instance v15, Lms;

    invoke-direct {v15, v13}, Lms;-><init>(I)V

    iget-object v13, v0, Ljd;->p:Lfd;

    iget-object v14, v0, Ljd;->j:Ljava/util/Random;

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

    .line 439
    iget-object v14, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v14, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int v18, v4, v14

    .line 440
    iget-object v14, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v14, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 441
    iget-object v14, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v14, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    add-int v20, v5, v14

    .line 442
    new-instance v15, Lfl;

    sget-object v14, Luu;->w:Luu;

    iget v14, v14, Luu;->bn:I

    invoke-direct {v15, v14, v13}, Lfl;-><init>(II)V

    iget-object v14, v0, Ljd;->p:Lfd;

    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    move-object/from16 v16, v14

    move-object/from16 v17, v1

    invoke-virtual/range {v15 .. v20}, Lfl;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_129

    :cond_15a
    const/4 v1, 0x0

    :goto_15b
    if-ge v1, v12, :cond_18c

    .line 446
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v18, v4, v3

    .line 447
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 448
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v20, v5, v3

    .line 449
    new-instance v15, Lfl;

    sget-object v3, Luu;->G:Luu;

    iget v3, v3, Luu;->bn:I

    invoke-direct {v15, v3, v13}, Lfl;-><init>(II)V

    iget-object v3, v0, Ljd;->p:Lfd;

    iget-object v10, v0, Ljd;->j:Ljava/util/Random;

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

    .line 453
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v18, v4, v3

    .line 454
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 455
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v20, v5, v3

    .line 456
    new-instance v15, Lfl;

    sget-object v3, Luu;->J:Luu;

    iget v3, v3, Luu;->bn:I

    invoke-direct {v15, v3, v9}, Lfl;-><init>(II)V

    iget-object v3, v0, Ljd;->p:Lfd;

    iget-object v10, v0, Ljd;->j:Ljava/util/Random;

    move-object/from16 v16, v3

    move-object/from16 v17, v10

    invoke-virtual/range {v15 .. v20}, Lfl;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18d

    :cond_1bc
    const/4 v1, 0x0

    :goto_1bd
    if-ge v1, v14, :cond_1ec

    .line 460
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v18, v4, v3

    .line 461
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 462
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v20, v5, v3

    .line 463
    new-instance v15, Lfl;

    sget-object v3, Luu;->I:Luu;

    iget v3, v3, Luu;->bn:I

    invoke-direct {v15, v3, v8}, Lfl;-><init>(II)V

    iget-object v3, v0, Ljd;->p:Lfd;

    iget-object v10, v0, Ljd;->j:Ljava/util/Random;

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

    .line 467
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v18, v4, v3

    .line 468
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 469
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v20, v5, v3

    .line 470
    new-instance v15, Lfl;

    sget-object v3, Luu;->H:Luu;

    iget v3, v3, Luu;->bn:I

    invoke-direct {v15, v3, v8}, Lfl;-><init>(II)V

    iget-object v3, v0, Ljd;->p:Lfd;

    iget-object v10, v0, Ljd;->j:Ljava/util/Random;

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

    .line 474
    iget-object v11, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v11, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int v18, v4, v11

    .line 475
    iget-object v11, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v11, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 476
    iget-object v11, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v11, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int v20, v5, v11

    .line 477
    new-instance v15, Lfl;

    sget-object v11, Luu;->aO:Luu;

    iget v11, v11, Luu;->bn:I

    invoke-direct {v15, v11, v10}, Lfl;-><init>(II)V

    iget-object v10, v0, Ljd;->p:Lfd;

    iget-object v11, v0, Ljd;->j:Ljava/util/Random;

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v15 .. v20}, Lfl;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_21e

    .line 481
    :cond_24e
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int v18, v4, v1

    .line 482
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    .line 483
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int v20, v5, v1

    .line 484
    new-instance v15, Lfl;

    sget-object v1, Luu;->ax:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-direct {v15, v1, v10}, Lfl;-><init>(II)V

    iget-object v1, v0, Ljd;->p:Lfd;

    iget-object v10, v0, Ljd;->j:Ljava/util/Random;

    move-object/from16 v16, v1

    move-object/from16 v17, v10

    invoke-virtual/range {v15 .. v20}, Lfl;->a(Lfd;Ljava/util/Random;III)Z

    .line 489
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int v18, v4, v1

    .line 490
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v10, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v10, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int v19, v1, v10

    .line 491
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int v20, v5, v1

    .line 492
    new-instance v15, Lfl;

    sget-object v1, Luu;->O:Luu;

    iget v1, v1, Luu;->bn:I

    const/4 v10, 0x6

    invoke-direct {v15, v1, v10}, Lfl;-><init>(II)V

    iget-object v1, v0, Ljd;->p:Lfd;

    iget-object v10, v0, Ljd;->j:Ljava/util/Random;

    move-object/from16 v16, v1

    move-object/from16 v17, v10

    invoke-virtual/range {v15 .. v20}, Lfl;->a(Lfd;Ljava/util/Random;III)Z

    .line 496
    iget-object v1, v0, Ljd;->c:Luf;

    int-to-double v10, v4

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v15

    int-to-double v13, v5

    mul-double/2addr v13, v15

    invoke-virtual {v1, v10, v11, v13, v14}, Luf;->a(DD)D

    move-result-wide v10

    const-wide/high16 v13, 0x4020000000000000L    # 8.0

    div-double/2addr v10, v13

    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v13

    const-wide/high16 v19, 0x4010000000000000L    # 4.0

    mul-double v13, v13, v19

    add-double/2addr v10, v13

    add-double v10, v10, v19

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v13

    double-to-int v1, v10

    .line 499
    iget-object v10, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v10, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    if-nez v10, :cond_2d5

    const/4 v10, 0x1

    goto :goto_2d6

    :cond_2d5
    const/4 v10, 0x0

    .line 501
    :goto_2d6
    sget-object v11, Lkd;->d:Lkd;

    if-ne v6, v11, :cond_2dd

    add-int/lit8 v11, v1, 0x5

    add-int/2addr v10, v11

    .line 502
    :cond_2dd
    sget-object v11, Lkd;->a:Lkd;

    if-ne v6, v11, :cond_2e4

    add-int/lit8 v11, v1, 0x5

    add-int/2addr v10, v11

    .line 503
    :cond_2e4
    sget-object v11, Lkd;->c:Lkd;

    if-ne v6, v11, :cond_2eb

    add-int/lit8 v11, v1, 0x2

    add-int/2addr v10, v11

    .line 504
    :cond_2eb
    sget-object v11, Lkd;->g:Lkd;

    if-ne v6, v11, :cond_2f2

    add-int/lit8 v1, v1, 0x5

    add-int/2addr v10, v1

    .line 506
    :cond_2f2
    sget-object v1, Lkd;->h:Lkd;

    if-ne v6, v1, :cond_2f8

    add-int/lit8 v10, v10, -0x14

    .line 507
    :cond_2f8
    sget-object v1, Lkd;->k:Lkd;

    if-ne v6, v1, :cond_2fe

    add-int/lit8 v10, v10, -0x14

    .line 508
    :cond_2fe
    sget-object v1, Lkd;->i:Lkd;

    if-ne v6, v1, :cond_304

    add-int/lit8 v10, v10, -0x14

    :cond_304
    const/4 v1, 0x0

    :goto_305
    if-ge v1, v10, :cond_342

    .line 511
    iget-object v11, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v11, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v11, v4

    add-int/2addr v11, v8

    .line 512
    iget-object v13, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v13, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int/2addr v13, v5

    add-int/2addr v13, v8

    .line 513
    iget-object v14, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v6, v14}, Lkd;->a(Ljava/util/Random;)Lpg;

    move-result-object v14

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-object/from16 v19, v14

    .line 514
    invoke-virtual/range {v19 .. v25}, Lpg;->a(DDD)V

    .line 515
    iget-object v15, v0, Ljd;->p:Lfd;

    iget-object v12, v0, Ljd;->j:Ljava/util/Random;

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

    :cond_342
    const/4 v1, 0x0

    :goto_343
    if-ge v1, v3, :cond_370

    .line 519
    iget-object v10, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v10, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v14, v10, 0x8

    .line 520
    iget-object v10, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v10, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    .line 521
    iget-object v10, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v10, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/2addr v10, v5

    add-int/lit8 v16, v10, 0x8

    .line 522
    new-instance v11, Lbe;

    sget-object v10, Luu;->ae:Lwb;

    iget v10, v10, Lwb;->bn:I

    invoke-direct {v11, v10}, Lbe;-><init>(I)V

    iget-object v12, v0, Ljd;->p:Lfd;

    iget-object v13, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual/range {v11 .. v16}, Lbe;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_343

    .line 525
    :cond_370
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_3a0

    .line 526
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v13, v1, 0x8

    .line 527
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 528
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/lit8 v15, v1, 0x8

    .line 529
    new-instance v10, Lbe;

    sget-object v1, Luu;->af:Lwb;

    iget v1, v1, Lwb;->bn:I

    invoke-direct {v10, v1}, Lbe;-><init>(I)V

    iget-object v11, v0, Ljd;->p:Lfd;

    iget-object v12, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lbe;->a(Lfd;Ljava/util/Random;III)Z

    .line 532
    :cond_3a0
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_3d0

    .line 533
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v13, v1, 0x8

    .line 534
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 535
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/lit8 v15, v1, 0x8

    .line 536
    new-instance v10, Lbe;

    sget-object v1, Luu;->ag:Lwb;

    iget v1, v1, Lwb;->bn:I

    invoke-direct {v10, v1}, Lbe;-><init>(I)V

    iget-object v11, v0, Ljd;->p:Lfd;

    iget-object v12, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lbe;->a(Lfd;Ljava/util/Random;III)Z

    .line 539
    :cond_3d0
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_400

    .line 540
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v13, v1, 0x8

    .line 541
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 542
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/lit8 v15, v1, 0x8

    .line 543
    new-instance v10, Lbe;

    sget-object v1, Luu;->ah:Lwb;

    iget v1, v1, Lwb;->bn:I

    invoke-direct {v10, v1}, Lbe;-><init>(I)V

    iget-object v11, v0, Ljd;->p:Lfd;

    iget-object v12, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lbe;->a(Lfd;Ljava/util/Random;III)Z

    :cond_400
    const/4 v1, 0x0

    const/16 v2, 0xa

    :goto_403
    if-ge v1, v2, :cond_42c

    .line 547
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v4

    add-int/lit8 v13, v3, 0x8

    .line 548
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 549
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v5

    add-int/lit8 v15, v3, 0x8

    .line 550
    new-instance v10, Lir;

    invoke-direct {v10}, Lir;-><init>()V

    iget-object v11, v0, Ljd;->p:Lfd;

    iget-object v12, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lir;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_403

    .line 553
    :cond_42c
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_45a

    .line 554
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v13, v1, 0x8

    .line 555
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 556
    iget-object v1, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v5

    add-int/lit8 v15, v1, 0x8

    .line 557
    new-instance v10, Lwx;

    invoke-direct {v10}, Lwx;-><init>()V

    iget-object v11, v0, Ljd;->p:Lfd;

    iget-object v12, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lwx;->a(Lfd;Ljava/util/Random;III)Z

    .line 561
    :cond_45a
    sget-object v1, Lkd;->h:Lkd;

    if-ne v6, v1, :cond_460

    move v12, v2

    goto :goto_461

    :cond_460
    const/4 v12, 0x0

    :goto_461
    const/4 v1, 0x0

    :goto_462
    if-ge v1, v12, :cond_48f

    .line 564
    iget-object v2, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v4

    add-int/lit8 v22, v2, 0x8

    .line 565
    iget-object v2, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    .line 566
    iget-object v2, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v5

    add-int/lit8 v24, v2, 0x8

    .line 567
    new-instance v19, Lfx;

    invoke-direct/range {v19 .. v19}, Lfx;-><init>()V

    iget-object v2, v0, Ljd;->p:Lfd;

    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v19 .. v24}, Lfx;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_462

    :cond_48f
    const/4 v1, 0x0

    :goto_490
    const/16 v2, 0x32

    if-ge v1, v2, :cond_4c6

    .line 572
    iget-object v2, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v4

    add-int/lit8 v13, v2, 0x8

    .line 573
    iget-object v2, v0, Ljd;->j:Ljava/util/Random;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 574
    iget-object v2, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v5

    add-int/lit8 v15, v2, 0x8

    .line 575
    new-instance v10, Lxo;

    sget-object v2, Luu;->B:Luu;

    iget v2, v2, Luu;->bn:I

    invoke-direct {v10, v2}, Lxo;-><init>(I)V

    iget-object v11, v0, Ljd;->p:Lfd;

    iget-object v12, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lxo;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_490

    :cond_4c6
    const/4 v1, 0x0

    const/16 v2, 0x14

    :goto_4c9
    if-ge v1, v2, :cond_502

    .line 579
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v4

    add-int/lit8 v13, v3, 0x8

    .line 580
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    const/16 v6, 0x70

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 581
    iget-object v3, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v5

    add-int/lit8 v15, v3, 0x8

    .line 582
    new-instance v10, Lxo;

    sget-object v3, Luu;->D:Luu;

    iget v3, v3, Luu;->bn:I

    invoke-direct {v10, v3}, Lxo;-><init>(I)V

    iget-object v11, v0, Ljd;->p:Lfd;

    iget-object v12, v0, Ljd;->j:Ljava/util/Random;

    invoke-virtual/range {v10 .. v15}, Lxo;->a(Lfd;Ljava/util/Random;III)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c9

    .line 585
    :cond_502
    iget-object v1, v0, Ljd;->p:Lfd;

    invoke-virtual {v1}, Lfd;->a()Lxv;

    move-result-object v10

    iget-object v11, v0, Ljd;->w:[D

    add-int/2addr v4, v8

    add-int/2addr v5, v8

    const/16 v14, 0x10

    const/16 v15, 0x10

    move v12, v4

    move v13, v5

    invoke-virtual/range {v10 .. v15}, Lxv;->a([DIIII)[D

    move-result-object v1

    iput-object v1, v0, Ljd;->w:[D

    move v1, v4

    :goto_519
    add-int/lit8 v2, v4, 0x10

    if-ge v1, v2, :cond_57a

    move v2, v5

    :goto_51e
    add-int/lit8 v3, v5, 0x10

    if-ge v2, v3, :cond_575

    sub-int v3, v1, v4

    sub-int v6, v2, v5

    .line 590
    iget-object v8, v0, Ljd;->p:Lfd;

    invoke-virtual {v8, v1, v2}, Lfd;->e(II)I

    move-result v8

    .line 591
    iget-object v10, v0, Ljd;->w:[D

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

    if-gez v3, :cond_572

    if-lez v8, :cond_572

    if-ge v8, v7, :cond_572

    .line 593
    iget-object v3, v0, Ljd;->p:Lfd;

    invoke-virtual {v3, v1, v8, v2}, Lfd;->d(III)Z

    move-result v3

    if-eqz v3, :cond_572

    iget-object v3, v0, Ljd;->p:Lfd;

    add-int/lit8 v6, v8, -0x1

    invoke-virtual {v3, v1, v6, v2}, Lfd;->f(III)Lln;

    move-result-object v3

    invoke-virtual {v3}, Lln;->c()Z

    move-result v3

    if-eqz v3, :cond_572

    .line 594
    iget-object v3, v0, Ljd;->p:Lfd;

    invoke-virtual {v3, v1, v6, v2}, Lfd;->f(III)Lln;

    move-result-object v3

    sget-object v6, Lln;->s:Lln;

    if-eq v3, v6, :cond_572

    iget-object v3, v0, Ljd;->p:Lfd;

    sget-object v6, Luu;->aT:Luu;

    iget v6, v6, Luu;->bn:I

    invoke-virtual {v3, v1, v8, v2, v6}, Lfd;->f(IIII)Z

    :cond_572
    add-int/lit8 v2, v2, 0x1

    goto :goto_51e

    :cond_575
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v1, v1, 0x1

    goto :goto_519

    :cond_57a
    const/4 v1, 0x0

    .line 599
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

    .line 207
    iget-object v0, v6, Ljd;->j:Ljava/util/Random;

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

    .line 210
    new-instance v10, Llm;

    iget-object v0, v6, Ljd;->p:Lfd;

    invoke-direct {v10, v0, v9, v7, v8}, Llm;-><init>(Lfd;[BII)V

    .line 211
    iget-object v0, v6, Ljd;->p:Lfd;

    invoke-virtual {v0}, Lfd;->a()Lxv;

    move-result-object v11

    iget-object v12, v6, Ljd;->v:[Lkd;

    mul-int/lit8 v13, v7, 0x10

    mul-int/lit8 v14, v8, 0x10

    const/16 v15, 0x10

    const/16 v16, 0x10

    invoke-virtual/range {v11 .. v16}, Lxv;->a([Lkd;IIII)[Lkd;

    move-result-object v0

    iput-object v0, v6, Ljd;->v:[Lkd;

    .line 212
    iget-object v0, v6, Ljd;->p:Lfd;

    invoke-virtual {v0}, Lfd;->a()Lxv;

    move-result-object v0

    iget-object v5, v0, Lxv;->a:[D

    .line 214
    iget-object v4, v6, Ljd;->v:[Lkd;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Ljd;->a(II[B[Lkd;[D)V

    .line 215
    iget-object v0, v6, Ljd;->v:[Lkd;

    invoke-virtual {v6, v7, v8, v9, v0}, Ljd;->a(II[B[Lkd;)V

    .line 217
    iget-object v0, v6, Ljd;->u:Lfv;

    iget-object v2, v6, Ljd;->p:Lfd;

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lfv;->a(Lcl;Lfd;II[B)V

    .line 223
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

    .line 203
    invoke-virtual {p0, p1, p2}, Ljd;->b(II)Llm;

    move-result-object p1

    return-object p1
.end method
