###### Class defpackage.cv (cv)
.class public Lcv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = true


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:F

.field private N:F

.field private O:I

.field private P:F

.field private Q:F

.field private R:F

.field private S:F

.field private T:F

.field private U:F

.field private V:F

.field private W:F

.field private X:F

.field private Y:F

.field private Z:F

.field private aa:F

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Z

.field public b:Z

.field private c:Lxp;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcv;->d:I

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcv;->e:Z

    .line 18
    iput-boolean v0, p0, Lcv;->f:Z

    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcv;->b:Z

    .line 395
    iput v0, p0, Lcv;->g:I

    .line 396
    iput v0, p0, Lcv;->h:I

    .line 397
    iput v0, p0, Lcv;->i:I

    .line 398
    iput v0, p0, Lcv;->j:I

    .line 399
    iput v0, p0, Lcv;->k:I

    .line 400
    iput v0, p0, Lcv;->l:I

    .line 1798
    iput v1, p0, Lcv;->O:I

    return-void
.end method

.method public constructor <init>(Lxp;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcv;->d:I

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcv;->e:Z

    .line 18
    iput-boolean v0, p0, Lcv;->f:Z

    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcv;->b:Z

    .line 395
    iput v0, p0, Lcv;->g:I

    .line 396
    iput v0, p0, Lcv;->h:I

    .line 397
    iput v0, p0, Lcv;->i:I

    .line 398
    iput v0, p0, Lcv;->j:I

    .line 399
    iput v0, p0, Lcv;->k:I

    .line 400
    iput v0, p0, Lcv;->l:I

    .line 1798
    iput v1, p0, Lcv;->O:I

    .line 25
    iput-object p1, p0, Lcv;->c:Lxp;

    return-void
.end method

.method private a(IIILln;)F
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_4
    const/4 v3, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v0, v3, :cond_4e

    and-int/lit8 v3, v0, 0x1

    sub-int v3, p1, v3

    shr-int/lit8 v5, v0, 0x1

    and-int/lit8 v5, v5, 0x1

    sub-int v5, p3, v5

    .line 1707
    iget-object v6, p0, Lcv;->c:Lxp;

    add-int/lit8 v7, p2, 0x1

    invoke-interface {v6, v3, v7, v5}, Lxp;->f(III)Lln;

    move-result-object v6

    if-ne v6, p4, :cond_1e

    return v4

    .line 1710
    :cond_1e
    iget-object v6, p0, Lcv;->c:Lxp;

    invoke-interface {v6, v3, p2, v5}, Lxp;->f(III)Lln;

    move-result-object v6

    if-ne v6, p4, :cond_42

    .line 1712
    iget-object v4, p0, Lcv;->c:Lxp;

    invoke-interface {v4, v3, p2, v5}, Lxp;->e(III)I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_32

    if-nez v3, :cond_3c

    .line 1714
    :cond_32
    invoke-static {v3}, Lrp;->d(I)F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    add-int/lit8 v1, v1, 0xa

    .line 1717
    :cond_3c
    invoke-static {v3}, Lrp;->d(I)F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_49

    .line 1719
    :cond_42
    invoke-virtual {v6}, Lln;->a()Z

    move-result v3

    if-nez v3, :cond_4b

    add-float/2addr v2, v4

    :goto_49
    add-int/lit8 v1, v1, 0x1

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4e
    int-to-float p1, v1

    div-float/2addr v2, p1

    sub-float/2addr v4, v2

    return v4
.end method

.method private a(DDDDDDFD)V
    .registers 37

    move-object/from16 v0, p0

    .line 511
    iget v1, v0, Lcv;->d:I

    if-ltz v1, :cond_7

    goto :goto_9

    :cond_7
    const/16 v1, 0x6c

    :goto_9
    and-int/lit8 v2, v1, 0xf

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v1, v1, 0xf0

    .line 515
    sget-object v14, Lnw;->a:Lnw;

    add-int/lit8 v3, v2, 0x0

    int-to-float v3, v3

    const/high16 v4, 0x43800000    # 256.0f

    div-float/2addr v3, v4

    float-to-double v12, v3

    add-int/lit8 v3, v1, 0x0

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-double v10, v3

    int-to-double v2, v2

    add-double v2, v2, p14

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v2, v4

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    div-double v15, v2, v6

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    sub-double/2addr v1, v4

    div-double/2addr v1, v6

    move/from16 v3, p13

    .line 523
    invoke-virtual {v14, v3, v3, v3}, Lnw;->a(FFF)V

    move-object v3, v14

    move-wide/from16 v4, p1

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-wide/from16 v17, v10

    move-wide v10, v15

    move-wide/from16 v19, v12

    move-wide/from16 v12, v17

    .line 525
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, p5

    move-wide/from16 v10, v19

    .line 526
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, p3

    move-wide/from16 v8, p11

    move-wide v12, v1

    .line 527
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, p7

    move-wide v10, v15

    .line 528
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    return-void
.end method

.method public static a(I)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/16 v1, 0xd

    if-ne p0, v1, :cond_9

    return v0

    :cond_9
    const/16 v1, 0xa

    if-ne p0, v1, :cond_e

    return v0

    :cond_e
    const/16 v1, 0xb

    if-ne p0, v1, :cond_13

    return v0

    :cond_13
    const/16 v1, 0x10

    if-ne p0, v1, :cond_18

    return v0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private b(DDDDDDFD)V
    .registers 37

    move-object/from16 v0, p0

    .line 533
    iget v1, v0, Lcv;->d:I

    if-ltz v1, :cond_7

    goto :goto_9

    :cond_7
    const/16 v1, 0x6c

    :goto_9
    and-int/lit8 v2, v1, 0xf

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v1, v1, 0xf0

    .line 537
    sget-object v14, Lnw;->a:Lnw;

    add-int/lit8 v3, v2, 0x0

    int-to-float v3, v3

    const/high16 v4, 0x43800000    # 256.0f

    div-float/2addr v3, v4

    float-to-double v12, v3

    add-int/lit8 v3, v1, 0x0

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-double v10, v3

    int-to-double v2, v2

    add-double v2, v2, p14

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v2, v4

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    div-double v15, v2, v6

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    sub-double/2addr v1, v4

    div-double/2addr v1, v6

    move/from16 v3, p13

    .line 545
    invoke-virtual {v14, v3, v3, v3}, Lnw;->a(FFF)V

    move-object v3, v14

    move-wide/from16 v4, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p11

    move-wide/from16 v17, v10

    move-wide v10, v15

    move-wide/from16 v19, v12

    move-wide/from16 v12, v17

    .line 547
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, p9

    move-wide/from16 v10, v19

    .line 548
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, p3

    move-wide/from16 v6, p7

    move-wide v12, v1

    .line 549
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, p11

    move-wide v10, v15

    .line 550
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    return-void
.end method

.method private b(Luu;IIIZ)Z
    .registers 32

    move-object/from16 v0, p0

    .line 411
    iget-object v1, v0, Lcv;->c:Lxp;

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v1, v2, v3, v4}, Lxp;->e(III)I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p5, :cond_19

    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_17

    goto :goto_19

    :cond_17
    move v7, v5

    goto :goto_1a

    :cond_19
    :goto_19
    move v7, v6

    .line 413
    :goto_1a
    invoke-static {v1}, Ljq;->d(I)I

    move-result v1

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v7, :cond_d4

    if-eqz v1, :cond_9e

    if-eq v1, v6, :cond_8f

    if-eq v1, v11, :cond_7a

    if-eq v1, v10, :cond_63

    if-eq v1, v9, :cond_49

    if-eq v1, v8, :cond_32

    goto/16 :goto_b6

    .line 449
    :cond_32
    iput v11, v0, Lcv;->g:I

    .line 450
    iput v6, v0, Lcv;->h:I

    .line 451
    iput v6, v0, Lcv;->k:I

    .line 452
    iput v11, v0, Lcv;->l:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f400000    # 0.75f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v12, p1

    .line 453
    invoke-virtual/range {v12 .. v18}, Luu;->a(FFFFFF)V

    goto :goto_b6

    .line 442
    :cond_49
    iput v6, v0, Lcv;->g:I

    .line 443
    iput v11, v0, Lcv;->h:I

    .line 444
    iput v11, v0, Lcv;->k:I

    .line 445
    iput v6, v0, Lcv;->l:I

    const/high16 v20, 0x3e800000    # 0.25f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v19, p1

    .line 446
    invoke-virtual/range {v19 .. v25}, Luu;->a(FFFFFF)V

    goto :goto_b6

    .line 435
    :cond_63
    iput v11, v0, Lcv;->i:I

    .line 436
    iput v6, v0, Lcv;->j:I

    .line 437
    iput v10, v0, Lcv;->k:I

    .line 438
    iput v10, v0, Lcv;->l:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f400000    # 0.75f

    move-object/from16 v7, p1

    .line 439
    invoke-virtual/range {v7 .. v13}, Luu;->a(FFFFFF)V

    goto :goto_b6

    .line 430
    :cond_7a
    iput v6, v0, Lcv;->i:I

    .line 431
    iput v11, v0, Lcv;->j:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3e800000    # 0.25f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v14, p1

    .line 432
    invoke-virtual/range {v14 .. v20}, Luu;->a(FFFFFF)V

    goto :goto_b6

    :cond_8f
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f400000    # 0.75f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v7, p1

    .line 427
    invoke-virtual/range {v7 .. v13}, Luu;->a(FFFFFF)V

    goto :goto_b6

    .line 420
    :cond_9e
    iput v10, v0, Lcv;->g:I

    .line 421
    iput v10, v0, Lcv;->h:I

    .line 422
    iput v10, v0, Lcv;->i:I

    .line 423
    iput v10, v0, Lcv;->j:I

    const/4 v15, 0x0

    const/high16 v16, 0x3e800000    # 0.25f

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v14, p1

    .line 424
    invoke-virtual/range {v14 .. v20}, Luu;->a(FFFFFF)V

    .line 456
    :goto_b6
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    .line 457
    iput v5, v0, Lcv;->g:I

    .line 458
    iput v5, v0, Lcv;->h:I

    .line 459
    iput v5, v0, Lcv;->i:I

    .line 460
    iput v5, v0, Lcv;->j:I

    .line 461
    iput v5, v0, Lcv;->k:I

    .line 462
    iput v5, v0, Lcv;->l:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v7, p1

    .line 463
    invoke-virtual/range {v7 .. v13}, Luu;->a(FFFFFF)V

    goto :goto_116

    :cond_d4
    if-eqz v1, :cond_ff

    if-eq v1, v11, :cond_fa

    if-eq v1, v10, :cond_f1

    if-eq v1, v9, :cond_e8

    if-eq v1, v8, :cond_df

    goto :goto_107

    .line 491
    :cond_df
    iput v11, v0, Lcv;->g:I

    .line 492
    iput v6, v0, Lcv;->h:I

    .line 493
    iput v6, v0, Lcv;->k:I

    .line 494
    iput v11, v0, Lcv;->l:I

    goto :goto_107

    .line 485
    :cond_e8
    iput v6, v0, Lcv;->g:I

    .line 486
    iput v11, v0, Lcv;->h:I

    .line 487
    iput v11, v0, Lcv;->k:I

    .line 488
    iput v6, v0, Lcv;->l:I

    goto :goto_107

    .line 479
    :cond_f1
    iput v11, v0, Lcv;->i:I

    .line 480
    iput v6, v0, Lcv;->j:I

    .line 481
    iput v10, v0, Lcv;->k:I

    .line 482
    iput v10, v0, Lcv;->l:I

    goto :goto_107

    .line 475
    :cond_fa
    iput v6, v0, Lcv;->i:I

    .line 476
    iput v11, v0, Lcv;->j:I

    goto :goto_107

    .line 467
    :cond_ff
    iput v10, v0, Lcv;->g:I

    .line 468
    iput v10, v0, Lcv;->h:I

    .line 469
    iput v10, v0, Lcv;->i:I

    .line 470
    iput v10, v0, Lcv;->j:I

    .line 497
    :goto_107
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    .line 498
    iput v5, v0, Lcv;->g:I

    .line 499
    iput v5, v0, Lcv;->h:I

    .line 500
    iput v5, v0, Lcv;->i:I

    .line 501
    iput v5, v0, Lcv;->j:I

    .line 502
    iput v5, v0, Lcv;->k:I

    .line 503
    iput v5, v0, Lcv;->l:I

    :goto_116
    return v6
.end method

.method private c(DDDDDDFD)V
    .registers 37

    move-object/from16 v0, p0

    .line 555
    iget v1, v0, Lcv;->d:I

    if-ltz v1, :cond_7

    goto :goto_9

    :cond_7
    const/16 v1, 0x6c

    :goto_9
    and-int/lit8 v2, v1, 0xf

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v1, v1, 0xf0

    .line 559
    sget-object v14, Lnw;->a:Lnw;

    add-int/lit8 v3, v2, 0x0

    int-to-float v3, v3

    const/high16 v4, 0x43800000    # 256.0f

    div-float/2addr v3, v4

    float-to-double v12, v3

    add-int/lit8 v3, v1, 0x0

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-double v10, v3

    int-to-double v2, v2

    add-double v2, v2, p14

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v2, v4

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    div-double v15, v2, v6

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    sub-double/2addr v1, v4

    div-double/2addr v1, v6

    move/from16 v3, p13

    .line 567
    invoke-virtual {v14, v3, v3, v3}, Lnw;->a(FFF)V

    move-object v3, v14

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p9

    move-wide/from16 v17, v10

    move-wide v10, v15

    move-wide/from16 v19, v12

    move-wide/from16 v12, v17

    .line 569
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, p1

    move-wide/from16 v10, v19

    .line 570
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, p7

    move-wide/from16 v8, p11

    move-wide v12, v1

    .line 571
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, p3

    move-wide v10, v15

    .line 572
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    return-void
.end method

.method private c(Luu;IIIZ)Z
    .registers 42

    move-object/from16 v14, p0

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    .line 583
    iget-object v3, v14, Lcv;->c:Lxp;

    invoke-interface {v3, v0, v1, v2}, Lxp;->e(III)I

    move-result v3

    .line 584
    invoke-static {v3}, Lh;->c(I)I

    move-result v3

    .line 589
    iget-object v4, v14, Lcv;->c:Lxp;

    move-object/from16 v15, p1

    invoke-virtual {v15, v4, v0, v1, v2}, Luu;->d(Lxp;III)F

    move-result v16

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f000000    # 0.5f

    if-eqz p5, :cond_22

    move v12, v4

    goto :goto_24

    :cond_22
    move/from16 v12, v17

    :goto_24
    if-eqz p5, :cond_29

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    goto :goto_2b

    :cond_29
    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    :goto_2b
    move-wide/from16 v18, v5

    const v13, 0x3f4ccccd    # 0.8f

    const v20, 0x3f19999a    # 0.6f

    const/high16 v21, 0x3e800000    # 0.25f

    const/4 v5, 0x3

    const/4 v11, 0x1

    const/high16 v22, 0x3f200000    # 0.625f

    const/high16 v23, 0x3ec00000    # 0.375f

    if-eqz v3, :cond_2a6

    if-eq v3, v11, :cond_235

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1c2

    if-eq v3, v5, :cond_145

    const/4 v5, 0x4

    if-eq v3, v5, :cond_cc

    const/4 v5, 0x5

    if-eq v3, v5, :cond_4e

    move/from16 v33, v11

    goto/16 :goto_31a

    .line 655
    :cond_4e
    iput v6, v14, Lcv;->g:I

    .line 656
    iput v11, v14, Lcv;->h:I

    .line 657
    iput v11, v14, Lcv;->k:I

    .line 658
    iput v6, v14, Lcv;->l:I

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v5, p1

    move v13, v11

    move v11, v3

    .line 659
    invoke-virtual/range {v5 .. v11}, Luu;->a(FFFFFF)V

    .line 660
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    int-to-float v0, v0

    sub-float v0, v0, v21

    add-float/2addr v0, v4

    sub-float v3, v0, v12

    float-to-double v11, v3

    float-to-double v9, v0

    int-to-float v7, v1

    add-float v0, v7, v23

    float-to-double v5, v0

    int-to-float v0, v2

    add-float v1, v0, v22

    float-to-double v3, v1

    add-float v0, v0, v23

    float-to-double v1, v0

    mul-float v17, v17, v16

    move-object/from16 v0, p0

    move-wide/from16 v23, v1

    move-wide v1, v11

    move-wide/from16 v25, v3

    move-wide v3, v9

    move-wide/from16 v27, v5

    move/from16 v21, v7

    move-wide/from16 v7, v27

    move-wide/from16 v29, v9

    move-wide/from16 v9, v25

    move-wide/from16 v31, v11

    move-wide/from16 v11, v23

    move/from16 v13, v17

    move-wide/from16 v14, v18

    .line 662
    invoke-direct/range {v0 .. v15}, Lcv;->c(DDDDDDFD)V

    add-float v7, v21, v22

    float-to-double v14, v7

    move-wide/from16 v1, v31

    move-wide/from16 v3, v29

    move-wide v5, v14

    move-wide v7, v14

    move-wide/from16 v9, v23

    move-wide/from16 v11, v25

    move/from16 v13, v16

    move-wide/from16 v21, v14

    move-wide/from16 v14, v18

    .line 663
    invoke-direct/range {v0 .. v15}, Lcv;->c(DDDDDDFD)V

    mul-float v16, v16, v20

    move-wide/from16 v5, v27

    move-wide/from16 v7, v21

    move-wide/from16 v11, v23

    move/from16 v13, v16

    .line 664
    invoke-direct/range {v0 .. v15}, Lcv;->c(DDDDDDFD)V

    move-wide/from16 v5, v21

    move-wide/from16 v7, v27

    move-wide/from16 v9, v25

    move-wide/from16 v11, v25

    .line 665
    invoke-direct/range {v0 .. v15}, Lcv;->c(DDDDDDFD)V

    goto/16 :goto_1be

    :cond_cc
    move v15, v11

    .line 642
    iput v15, v14, Lcv;->g:I

    .line 643
    iput v6, v14, Lcv;->h:I

    .line 644
    iput v6, v14, Lcv;->k:I

    .line 645
    iput v15, v14, Lcv;->l:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3e800000    # 0.25f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v5, p1

    .line 646
    invoke-virtual/range {v5 .. v11}, Luu;->a(FFFFFF)V

    .line 647
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    int-to-float v0, v0

    add-float v0, v0, v21

    float-to-double v9, v0

    add-float/2addr v0, v12

    float-to-double v11, v0

    int-to-float v13, v1

    add-float v0, v13, v23

    float-to-double v7, v0

    int-to-float v0, v2

    add-float v1, v0, v22

    float-to-double v5, v1

    add-float v0, v0, v23

    float-to-double v3, v0

    mul-float v17, v17, v16

    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide/from16 v23, v3

    move-wide v3, v11

    move-wide/from16 v25, v5

    move-wide v5, v7

    move-wide/from16 v27, v7

    move-wide/from16 v29, v9

    move-wide/from16 v9, v25

    move-wide/from16 v31, v11

    move-wide/from16 v11, v23

    move/from16 v21, v13

    move/from16 v13, v17

    move-wide/from16 v14, v18

    .line 649
    invoke-direct/range {v0 .. v15}, Lcv;->c(DDDDDDFD)V

    add-float v13, v21, v22

    float-to-double v14, v13

    move-wide/from16 v1, v29

    move-wide/from16 v3, v31

    move-wide v5, v14

    move-wide v7, v14

    move-wide/from16 v9, v23

    move-wide/from16 v11, v25

    move/from16 v13, v16

    move-wide/from16 v21, v14

    move-wide/from16 v14, v18

    .line 650
    invoke-direct/range {v0 .. v15}, Lcv;->c(DDDDDDFD)V

    mul-float v16, v16, v20

    move-wide/from16 v5, v27

    move-wide/from16 v7, v21

    move-wide/from16 v11, v23

    move/from16 v13, v16

    .line 651
    invoke-direct/range {v0 .. v15}, Lcv;->c(DDDDDDFD)V

    move-wide/from16 v5, v21

    move-wide/from16 v7, v27

    move-wide/from16 v9, v25

    move-wide/from16 v11, v25

    .line 652
    invoke-direct/range {v0 .. v15}, Lcv;->c(DDDDDDFD)V

    goto/16 :goto_1be

    .line 629
    :cond_145
    iput v6, v14, Lcv;->i:I

    const/4 v15, 0x1

    .line 630
    iput v15, v14, Lcv;->j:I

    .line 631
    iput v5, v14, Lcv;->k:I

    .line 632
    iput v5, v14, Lcv;->l:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f400000    # 0.75f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v5, p1

    .line 633
    invoke-virtual/range {v5 .. v11}, Luu;->a(FFFFFF)V

    .line 634
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    int-to-float v13, v0

    add-float v0, v13, v23

    float-to-double v9, v0

    int-to-float v0, v1

    add-float v1, v0, v22

    float-to-double v7, v1

    add-float v0, v0, v23

    float-to-double v5, v0

    int-to-float v0, v2

    sub-float v0, v0, v21

    add-float/2addr v0, v4

    sub-float v1, v0, v12

    float-to-double v11, v1

    float-to-double v3, v0

    mul-float v20, v20, v16

    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide/from16 v23, v3

    move-wide v3, v9

    move-wide/from16 v25, v5

    move-wide v5, v7

    move-wide/from16 v27, v7

    move-wide/from16 v7, v25

    move-wide/from16 v29, v9

    move-wide v9, v11

    move-wide/from16 v31, v11

    move-wide/from16 v11, v23

    move/from16 v21, v13

    move/from16 v13, v20

    move-wide/from16 v14, v18

    .line 636
    invoke-direct/range {v0 .. v15}, Lcv;->b(DDDDDDFD)V

    add-float v13, v21, v22

    float-to-double v14, v13

    move-wide v1, v14

    move-wide v3, v14

    move-wide/from16 v5, v25

    move-wide/from16 v7, v27

    move-wide/from16 v9, v31

    move/from16 v13, v20

    move-wide/from16 v20, v14

    move-wide/from16 v14, v18

    .line 637
    invoke-direct/range {v0 .. v15}, Lcv;->b(DDDDDDFD)V

    mul-float v13, v16, v17

    move-wide/from16 v1, v29

    move-wide/from16 v3, v20

    move-wide/from16 v7, v25

    .line 638
    invoke-direct/range {v0 .. v15}, Lcv;->b(DDDDDDFD)V

    move-wide/from16 v1, v20

    move-wide/from16 v3, v29

    move-wide/from16 v5, v27

    move-wide/from16 v7, v27

    move/from16 v13, v16

    .line 639
    invoke-direct/range {v0 .. v15}, Lcv;->b(DDDDDDFD)V

    :goto_1be
    const/16 v33, 0x1

    goto/16 :goto_31a

    :cond_1c2
    move v15, v11

    .line 618
    iput v15, v14, Lcv;->i:I

    .line 619
    iput v6, v14, Lcv;->j:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3e800000    # 0.25f

    move-object/from16 v5, p1

    .line 620
    invoke-virtual/range {v5 .. v11}, Luu;->a(FFFFFF)V

    .line 621
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    int-to-float v13, v0

    add-float v0, v13, v23

    float-to-double v9, v0

    int-to-float v0, v1

    add-float v1, v0, v22

    float-to-double v7, v1

    add-float v0, v0, v23

    float-to-double v5, v0

    int-to-float v0, v2

    add-float v0, v0, v21

    float-to-double v3, v0

    add-float/2addr v0, v12

    float-to-double v11, v0

    mul-float v20, v20, v16

    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide/from16 v23, v3

    move-wide v3, v9

    move-wide/from16 v25, v5

    move-wide v5, v7

    move-wide/from16 v27, v7

    move-wide/from16 v7, v25

    move-wide/from16 v29, v9

    move-wide/from16 v9, v23

    move-wide/from16 v31, v11

    move/from16 v21, v13

    move/from16 v13, v20

    move/from16 v33, v15

    move-wide/from16 v14, v18

    .line 623
    invoke-direct/range {v0 .. v15}, Lcv;->b(DDDDDDFD)V

    add-float v13, v21, v22

    float-to-double v14, v13

    move-wide v1, v14

    move-wide v3, v14

    move-wide/from16 v5, v25

    move-wide/from16 v7, v27

    move/from16 v13, v20

    move-wide/from16 v20, v14

    move-wide/from16 v14, v18

    .line 624
    invoke-direct/range {v0 .. v15}, Lcv;->b(DDDDDDFD)V

    mul-float v13, v16, v17

    move-wide/from16 v1, v29

    move-wide/from16 v3, v20

    move-wide/from16 v7, v25

    .line 625
    invoke-direct/range {v0 .. v15}, Lcv;->b(DDDDDDFD)V

    move-wide/from16 v1, v20

    move-wide/from16 v3, v29

    move-wide/from16 v5, v27

    move-wide/from16 v7, v27

    move/from16 v13, v16

    .line 626
    invoke-direct/range {v0 .. v15}, Lcv;->b(DDDDDDFD)V

    goto/16 :goto_31a

    :cond_235
    move/from16 v33, v11

    const/4 v6, 0x0

    const/high16 v7, 0x3f400000    # 0.75f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v5, p1

    .line 609
    invoke-virtual/range {v5 .. v11}, Luu;->a(FFFFFF)V

    .line 610
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    int-to-float v0, v0

    add-float v3, v0, v23

    float-to-double v14, v3

    add-float v0, v0, v22

    float-to-double v9, v0

    int-to-float v0, v1

    sub-float v0, v0, v21

    add-float/2addr v0, v4

    sub-float v1, v0, v12

    float-to-double v11, v1

    float-to-double v7, v0

    int-to-float v5, v2

    add-float v0, v5, v22

    float-to-double v3, v0

    mul-float v17, v16, v13

    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide/from16 v21, v3

    move-wide v3, v9

    move/from16 v24, v5

    move-wide v5, v11

    move-wide/from16 v25, v7

    move-wide/from16 v27, v9

    move-wide/from16 v9, v21

    move-wide/from16 v29, v11

    move-wide/from16 v11, v21

    move/from16 v13, v17

    move-wide/from16 v31, v14

    move-wide/from16 v14, v18

    .line 612
    invoke-direct/range {v0 .. v15}, Lcv;->a(DDDDDDFD)V

    add-float v5, v24, v23

    float-to-double v14, v5

    move-wide/from16 v1, v27

    move-wide/from16 v3, v31

    move-wide/from16 v5, v29

    move-wide v9, v14

    move-wide v11, v14

    move-wide/from16 v23, v14

    move-wide/from16 v14, v18

    .line 613
    invoke-direct/range {v0 .. v15}, Lcv;->a(DDDDDDFD)V

    mul-float v16, v16, v20

    move-wide/from16 v1, v31

    move-wide/from16 v9, v23

    move-wide/from16 v11, v21

    move/from16 v13, v16

    .line 614
    invoke-direct/range {v0 .. v15}, Lcv;->a(DDDDDDFD)V

    move-wide/from16 v1, v27

    move-wide/from16 v3, v27

    move-wide/from16 v9, v21

    move-wide/from16 v11, v23

    .line 615
    invoke-direct/range {v0 .. v15}, Lcv;->a(DDDDDDFD)V

    goto/16 :goto_31a

    :cond_2a6
    move/from16 v33, v11

    .line 595
    iput v5, v14, Lcv;->g:I

    .line 596
    iput v5, v14, Lcv;->h:I

    .line 597
    iput v5, v14, Lcv;->i:I

    .line 598
    iput v5, v14, Lcv;->j:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3e800000    # 0.25f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v5, p1

    .line 599
    invoke-virtual/range {v5 .. v11}, Luu;->a(FFFFFF)V

    .line 600
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    int-to-float v0, v0

    add-float v3, v0, v23

    float-to-double v9, v3

    add-float v0, v0, v22

    float-to-double v7, v0

    int-to-float v0, v1

    add-float v0, v0, v21

    float-to-double v5, v0

    add-float/2addr v0, v12

    float-to-double v11, v0

    int-to-float v15, v2

    add-float v0, v15, v22

    float-to-double v3, v0

    mul-float v17, v16, v13

    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide/from16 v21, v3

    move-wide v3, v7

    move-wide/from16 v24, v5

    move-wide/from16 v26, v7

    move-wide v7, v11

    move-wide/from16 v28, v9

    move-wide/from16 v9, v21

    move-wide/from16 v30, v11

    move-wide/from16 v11, v21

    move/from16 v13, v17

    move/from16 v32, v15

    move-wide/from16 v14, v18

    .line 602
    invoke-direct/range {v0 .. v15}, Lcv;->a(DDDDDDFD)V

    add-float v15, v32, v23

    float-to-double v14, v15

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    move-wide/from16 v7, v30

    move-wide v9, v14

    move-wide v11, v14

    move-wide/from16 v34, v14

    move-wide/from16 v14, v18

    .line 603
    invoke-direct/range {v0 .. v15}, Lcv;->a(DDDDDDFD)V

    mul-float v16, v16, v20

    move-wide/from16 v1, v28

    move-wide/from16 v9, v34

    move-wide/from16 v11, v21

    move/from16 v13, v16

    .line 604
    invoke-direct/range {v0 .. v15}, Lcv;->a(DDDDDDFD)V

    move-wide/from16 v1, v26

    move-wide/from16 v3, v26

    move-wide/from16 v9, v21

    move-wide/from16 v11, v34

    .line 605
    invoke-direct/range {v0 .. v15}, Lcv;->a(DDDDDDFD)V

    :goto_31a
    const/4 v0, 0x0

    move-object/from16 v1, p0

    .line 668
    iput v0, v1, Lcv;->g:I

    .line 669
    iput v0, v1, Lcv;->h:I

    .line 670
    iput v0, v1, Lcv;->i:I

    .line 671
    iput v0, v1, Lcv;->j:I

    .line 672
    iput v0, v1, Lcv;->k:I

    .line 673
    iput v0, v1, Lcv;->l:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v5, p1

    .line 674
    invoke-virtual/range {v5 .. v11}, Luu;->a(FFFFFF)V

    return v33
.end method

.method private q(Luu;III)Z
    .registers 63

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 98
    sget-object v8, Lnw;->a:Lnw;

    .line 100
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-interface {v0, v11, v12, v13}, Lxp;->e(III)I

    move-result v0

    .line 101
    invoke-static {v0}, Lve;->d(I)I

    move-result v6

    .line 102
    invoke-static {v0}, Lve;->e(I)Z

    move-result v7

    .line 126
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v11, v12, v13}, Luu;->d(Lxp;III)F

    move-result v25

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v0, v0, v25

    .line 130
    invoke-virtual {v8, v0, v0, v0}, Lnw;->a(FFF)V

    .line 132
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x4

    shl-int/2addr v1, v5

    and-int/lit16 v0, v0, 0xf0

    int-to-float v2, v1

    const/high16 v26, 0x43800000    # 256.0f

    div-float v2, v2, v26

    float-to-double v2, v2

    add-int/lit8 v1, v1, 0x10

    int-to-double v14, v1

    const-wide v27, 0x3f847ae147ae147bL    # 0.01

    sub-double v14, v14, v27

    const-wide/high16 v29, 0x4070000000000000L    # 256.0

    div-double v31, v14, v29

    int-to-float v1, v0

    div-float v1, v1, v26

    float-to-double v14, v1

    add-int/lit8 v0, v0, 0x10

    int-to-double v0, v0

    sub-double v0, v0, v27

    div-double v0, v0, v29

    move/from16 v33, v6

    int-to-double v5, v11

    move-wide/from16 v16, v14

    .line 142
    iget-wide v14, v10, Luu;->bs:D

    add-double v35, v5, v14

    .line 143
    iget-wide v14, v10, Luu;->bv:D

    add-double v37, v5, v14

    int-to-double v14, v12

    move-wide/from16 v39, v5

    .line 144
    iget-wide v4, v10, Luu;->bt:D

    add-double/2addr v4, v14

    const-wide/high16 v18, 0x3fc8000000000000L    # 0.1875

    add-double v4, v4, v18

    move/from16 v41, v7

    int-to-double v6, v13

    move-wide/from16 v18, v14

    .line 145
    iget-wide v14, v10, Luu;->bu:D

    add-double v42, v6, v14

    .line 146
    iget-wide v14, v10, Luu;->bx:D

    add-double v44, v6, v14

    move-wide/from16 v46, v16

    move-wide/from16 v48, v18

    move-object v14, v8

    move-wide/from16 v15, v35

    move-wide/from16 v17, v4

    move-wide/from16 v19, v44

    move-wide/from16 v21, v2

    move-wide/from16 v23, v0

    .line 148
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    move-wide/from16 v19, v42

    move-wide/from16 v23, v46

    .line 149
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    move-wide/from16 v15, v37

    move-wide/from16 v21, v31

    .line 150
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    move-wide/from16 v19, v44

    move-wide/from16 v23, v0

    .line 151
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    .line 156
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v12, 0x1

    invoke-virtual {v10, v0, v11, v1, v13}, Luu;->d(Lxp;III)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 157
    invoke-virtual {v8, v0, v0, v0}, Lnw;->a(FFF)V

    .line 159
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v31, v39

    const/4 v15, 0x4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    shl-int/2addr v1, v15

    and-int/lit16 v0, v0, 0xf0

    int-to-float v2, v1

    div-float v2, v2, v26

    float-to-double v2, v2

    add-int/lit8 v1, v1, 0x10

    int-to-double v4, v1

    sub-double v4, v4, v27

    div-double v4, v4, v29

    int-to-float v1, v0

    div-float v1, v1, v26

    move-wide/from16 v16, v2

    float-to-double v1, v1

    add-int/lit8 v0, v0, 0x10

    move-wide/from16 v18, v1

    int-to-double v0, v0

    sub-double v0, v0, v27

    div-double v0, v0, v29

    const/4 v3, 0x2

    const/4 v2, 0x3

    if-nez v33, :cond_fb

    move-wide/from16 v23, v0

    move-wide/from16 v28, v23

    move-wide/from16 v21, v4

    move-wide/from16 v26, v21

    move-wide/from16 v0, v16

    move-wide v4, v0

    move-wide/from16 v35, v18

    move/from16 v14, v33

    move-wide/from16 v33, v35

    goto :goto_12d

    :cond_fb
    move/from16 v14, v33

    if-ne v14, v3, :cond_10d

    move-wide/from16 v33, v0

    move-wide/from16 v35, v33

    move-wide v0, v4

    move-wide/from16 v21, v16

    move-wide/from16 v26, v21

    move-wide/from16 v23, v18

    move-wide/from16 v28, v23

    goto :goto_12d

    :cond_10d
    if-ne v14, v2, :cond_11e

    move-wide/from16 v28, v0

    move-wide/from16 v33, v28

    move-wide/from16 v21, v4

    move-wide/from16 v0, v16

    move-wide/from16 v26, v0

    move-wide/from16 v23, v18

    move-wide/from16 v35, v23

    goto :goto_12d

    :cond_11e
    move-wide/from16 v23, v0

    move-wide/from16 v35, v23

    move-wide v0, v4

    move-wide/from16 v26, v0

    move-wide/from16 v4, v16

    move-wide/from16 v21, v4

    move-wide/from16 v28, v18

    move-wide/from16 v33, v28

    .line 202
    :goto_12d
    iget-wide v2, v10, Luu;->bs:D

    add-double v2, v31, v2

    move/from16 v17, v14

    .line 203
    iget-wide v14, v10, Luu;->bv:D

    add-double v38, v31, v14

    .line 204
    iget-wide v14, v10, Luu;->bw:D

    add-double v42, v48, v14

    .line 205
    iget-wide v14, v10, Luu;->bu:D

    add-double v44, v6, v14

    .line 206
    iget-wide v14, v10, Luu;->bx:D

    add-double v46, v6, v14

    move/from16 v15, v17

    move-object v14, v8

    move-wide/from16 v50, v6

    move v6, v15

    const/4 v7, 0x4

    move-wide/from16 v15, v38

    move-wide/from16 v17, v42

    move-wide/from16 v19, v46

    .line 208
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    move-wide/from16 v19, v44

    move-wide/from16 v21, v4

    move-wide/from16 v23, v28

    .line 209
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    move-wide v15, v2

    move-wide/from16 v21, v0

    move-wide/from16 v23, v33

    .line 210
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    move-wide/from16 v19, v46

    move-wide/from16 v21, v26

    move-wide/from16 v23, v35

    .line 211
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    .line 215
    sget-object v0, Ljj;->a:[I

    aget v0, v0, v6

    if-eqz v41, :cond_17b

    .line 217
    sget-object v0, Ljj;->a:[I

    sget-object v1, Ljj;->b:[I

    aget v1, v1, v6

    aget v0, v0, v1

    :cond_17b
    move v14, v0

    const/4 v5, 0x1

    if-eqz v6, :cond_18b

    if-eq v6, v5, :cond_188

    const/4 v2, 0x3

    if-eq v6, v2, :cond_186

    move v6, v7

    goto :goto_18d

    :cond_186
    const/4 v6, 0x2

    goto :goto_18d

    :cond_188
    const/4 v2, 0x3

    move v6, v2

    goto :goto_18d

    :cond_18b
    const/4 v2, 0x3

    const/4 v6, 0x5

    :goto_18d
    const-wide/16 v16, 0x0

    const/4 v4, 0x0

    const v18, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x2

    if-eq v14, v3, :cond_1fb

    .line 235
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_1b5

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v19, v13, -0x1

    const/16 v20, 0x2

    move-object/from16 v0, p1

    move v15, v2

    move/from16 v2, p2

    move v7, v3

    move/from16 v3, p3

    move/from16 v4, v19

    move/from16 v19, v5

    move/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_1fe

    goto :goto_1b9

    :cond_1b5
    move v15, v2

    move v7, v3

    move/from16 v19, v5

    .line 236
    :goto_1b9
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v13, -0x1

    invoke-virtual {v10, v0, v11, v12, v1}, Luu;->d(Lxp;III)F

    move-result v0

    .line 237
    iget-wide v1, v10, Luu;->bu:D

    cmpl-double v1, v1, v16

    if-lez v1, :cond_1c9

    move/from16 v0, v25

    :cond_1c9
    mul-float v0, v0, v18

    .line 238
    invoke-virtual {v8, v0, v0, v0}, Lnw;->a(FFF)V

    if-ne v6, v7, :cond_1d3

    move/from16 v5, v19

    goto :goto_1d4

    :cond_1d3
    const/4 v5, 0x0

    .line 239
    :goto_1d4
    iput-boolean v5, v9, Lcv;->e:Z

    .line 240
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x2

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v31

    move-wide/from16 v4, v48

    move/from16 v52, v6

    move-wide/from16 v22, v50

    move-wide/from16 v6, v22

    move-object/from16 v53, v8

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lcv;->c(Luu;DDDI)V

    goto :goto_204

    :cond_1fb
    move v15, v2

    move/from16 v19, v5

    :cond_1fe
    move/from16 v52, v6

    move-object/from16 v53, v8

    move-wide/from16 v22, v50

    :goto_204
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    if-eq v14, v15, :cond_260

    .line 243
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_21d

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v4, v13, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_260

    .line 244
    :cond_21d
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v13, 0x1

    invoke-virtual {v10, v0, v11, v12, v1}, Luu;->d(Lxp;III)F

    move-result v0

    .line 245
    iget-wide v1, v10, Luu;->bx:D

    cmpg-double v1, v1, v26

    if-gez v1, :cond_22d

    move/from16 v0, v25

    :cond_22d
    mul-float v0, v0, v18

    move-object/from16 v8, v53

    .line 246
    invoke-virtual {v8, v0, v0, v0}, Lnw;->a(FFF)V

    move/from16 v6, v52

    if-ne v6, v15, :cond_23b

    move/from16 v5, v19

    goto :goto_23c

    :cond_23b
    const/4 v5, 0x0

    .line 247
    :goto_23c
    iput-boolean v5, v9, Lcv;->e:Z

    .line 248
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x3

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v31

    move-wide/from16 v4, v48

    move/from16 v54, v6

    move-wide/from16 v6, v22

    move-object/from16 v55, v8

    move v8, v15

    invoke-virtual/range {v0 .. v8}, Lcv;->d(Luu;DDDI)V

    goto :goto_264

    :cond_260
    move/from16 v54, v52

    move-object/from16 v55, v53

    :goto_264
    const v15, 0x3f19999a    # 0.6f

    const/4 v6, 0x4

    if-eq v14, v6, :cond_2c2

    .line 251
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_27f

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v2, v11, -0x1

    const/4 v5, 0x4

    move-object/from16 v0, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_2c2

    .line 252
    :cond_27f
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {v10, v0, v1, v12, v13}, Luu;->d(Lxp;III)F

    move-result v0

    .line 253
    iget-wide v1, v10, Luu;->bs:D

    cmpl-double v1, v1, v16

    if-lez v1, :cond_28f

    move/from16 v0, v25

    :cond_28f
    mul-float/2addr v0, v15

    move-object/from16 v8, v55

    .line 254
    invoke-virtual {v8, v0, v0, v0}, Lnw;->a(FFF)V

    move/from16 v7, v54

    if-ne v7, v6, :cond_29c

    move/from16 v5, v19

    goto :goto_29d

    :cond_29c
    const/4 v5, 0x0

    .line 255
    :goto_29d
    iput-boolean v5, v9, Lcv;->e:Z

    .line 256
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x4

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v31

    move-wide/from16 v4, v48

    move/from16 v56, v7

    move-wide/from16 v6, v22

    move-object/from16 v57, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcv;->e(Luu;DDDI)V

    goto :goto_2c6

    :cond_2c2
    move/from16 v56, v54

    move-object/from16 v57, v55

    :goto_2c6
    const/4 v0, 0x5

    if-eq v14, v0, :cond_31d

    .line 259
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_2de

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v2, v11, 0x1

    const/4 v5, 0x5

    move-object/from16 v0, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_31d

    .line 260
    :cond_2de
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v10, v0, v1, v12, v13}, Luu;->d(Lxp;III)F

    move-result v0

    .line 261
    iget-wide v1, v10, Luu;->bv:D

    cmpg-double v1, v1, v26

    if-gez v1, :cond_2ed

    goto :goto_2ef

    :cond_2ed
    move/from16 v25, v0

    :goto_2ef
    mul-float v15, v15, v25

    move-object/from16 v0, v57

    .line 262
    invoke-virtual {v0, v15, v15, v15}, Lnw;->a(FFF)V

    move/from16 v15, v56

    const/4 v0, 0x5

    if-ne v15, v0, :cond_2fe

    move/from16 v5, v19

    goto :goto_2ff

    :cond_2fe
    const/4 v5, 0x0

    .line 263
    :goto_2ff
    iput-boolean v5, v9, Lcv;->e:Z

    .line 264
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x5

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v31

    move-wide/from16 v4, v48

    move-wide/from16 v6, v22

    invoke-virtual/range {v0 .. v8}, Lcv;->f(Luu;DDDI)V

    :cond_31d
    const/4 v0, 0x0

    .line 266
    iput-boolean v0, v9, Lcv;->e:Z

    return v19
.end method

.method private r(Luu;III)Z
    .registers 40

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v10, p4

    .line 297
    iget-object v0, v12, Lcv;->c:Lxp;

    invoke-interface {v0, v14, v15, v10}, Lxp;->e(III)I

    move-result v0

    and-int/lit8 v11, v0, 0x3

    and-int/lit8 v0, v0, 0xc

    const/4 v8, 0x2

    shr-int/2addr v0, v8

    .line 302
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    .line 304
    sget-object v9, Lnw;->a:Lnw;

    .line 306
    iget-object v1, v12, Lcv;->c:Lxp;

    invoke-virtual {v13, v1, v14, v15, v10}, Luu;->d(Lxp;III)F

    move-result v1

    .line 307
    sget-object v2, Luu;->s:[I

    iget v3, v13, Luu;->bn:I

    aget v2, v2, v3

    if-lez v2, :cond_2f

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 308
    :cond_2f
    invoke-virtual {v9, v1, v1, v1}, Lnw;->a(FFF)V

    const-wide/high16 v1, -0x402c000000000000L    # -0.3125

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-eqz v11, :cond_6e

    const-wide/high16 v16, 0x3fd4000000000000L    # 0.3125

    if-eq v11, v6, :cond_61

    if-eq v11, v8, :cond_57

    if-eq v11, v7, :cond_4a

    move-wide v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v18, v16

    move/from16 v20, v11

    goto :goto_7a

    .line 327
    :cond_4a
    sget-object v5, Lwo;->a:[D

    aget-wide v16, v5, v0

    move-wide/from16 v18, v3

    move/from16 v20, v11

    move-wide/from16 v3, v16

    move-wide/from16 v16, v1

    goto :goto_6b

    .line 323
    :cond_57
    sget-object v1, Lwo;->a:[D

    aget-wide v0, v1, v0

    neg-double v0, v0

    move/from16 v20, v11

    move-wide/from16 v18, v16

    goto :goto_78

    .line 331
    :cond_61
    sget-object v1, Lwo;->a:[D

    aget-wide v0, v1, v0

    neg-double v0, v0

    move-wide/from16 v18, v3

    move/from16 v20, v11

    move-wide v3, v0

    :goto_6b
    move-wide/from16 v0, v18

    goto :goto_7a

    .line 319
    :cond_6e
    sget-object v5, Lwo;->a:[D

    aget-wide v16, v5, v0

    move-wide/from16 v18, v1

    move/from16 v20, v11

    move-wide/from16 v0, v16

    :goto_78
    move-wide/from16 v16, v3

    :goto_7a
    int-to-double v11, v14

    add-double v2, v11, v3

    int-to-double v4, v15

    const-wide/high16 v21, -0x4038000000000000L    # -0.1875

    add-double v21, v4, v21

    int-to-double v4, v10

    add-double v23, v4, v0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v29, v4

    move-wide/from16 v4, v21

    move-wide/from16 v6, v23

    move-object/from16 v24, v9

    move-wide/from16 v31, v11

    move v12, v8

    move-wide/from16 v8, v25

    move/from16 v33, v20

    move-wide/from16 v25, v31

    move-wide/from16 v10, v27

    .line 336
    invoke-virtual/range {v0 .. v11}, Lcv;->a(Luu;DDDDD)V

    add-double v2, v25, v16

    add-double v6, v29, v18

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    .line 338
    invoke-virtual/range {v0 .. v11}, Lcv;->a(Luu;DDDDD)V

    const/4 v0, 0x1

    .line 341
    invoke-virtual {v13, v0}, Luu;->a(I)I

    move-result v1

    and-int/lit8 v2, v1, 0xf

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v1, v1, 0xf0

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float v4, v2, v3

    float-to-double v4, v4

    const v6, 0x417fd70a    # 15.99f

    add-float/2addr v2, v6

    div-float/2addr v2, v3

    float-to-double v7, v2

    int-to-float v1, v1

    div-float v2, v1, v3

    float-to-double v9, v2

    add-float/2addr v1, v6

    div-float/2addr v1, v3

    float-to-double v1, v1

    add-int/lit8 v3, v14, 0x1

    int-to-float v3, v3

    add-int/lit8 v6, v14, 0x0

    int-to-float v6, v6

    add-int/lit8 v11, p4, 0x0

    int-to-float v11, v11

    add-int/lit8 v13, p4, 0x1

    int-to-float v13, v13

    int-to-float v14, v15

    const/high16 v15, 0x3e000000    # 0.125f

    add-float/2addr v14, v15

    move/from16 v15, v33

    if-ne v15, v12, :cond_ea

    move v12, v6

    move-wide/from16 v25, v7

    move v0, v11

    move v15, v0

    move/from16 v34, v13

    move v6, v3

    :goto_e8
    move v11, v12

    goto :goto_10c

    :cond_ea
    const/4 v12, 0x3

    if-ne v15, v12, :cond_f8

    move v12, v6

    move-wide/from16 v25, v7

    move v0, v11

    move/from16 v34, v0

    move v15, v13

    move v6, v3

    move v11, v6

    move v3, v12

    goto :goto_10c

    :cond_f8
    move v12, v3

    move-wide/from16 v25, v7

    if-ne v15, v0, :cond_104

    move v15, v11

    move v0, v13

    move/from16 v34, v0

    move v13, v15

    move v11, v6

    goto :goto_10c

    :cond_104
    move/from16 v34, v11

    move v0, v13

    move v15, v0

    move v3, v6

    move/from16 v13, v34

    goto :goto_e8

    :goto_10c
    float-to-double v7, v3

    move v3, v11

    move/from16 v27, v12

    float-to-double v11, v14

    float-to-double v13, v13

    move-wide/from16 v18, v13

    move-object/from16 v13, v24

    move/from16 v28, v0

    move v0, v15

    move-wide v14, v7

    move-wide/from16 v16, v11

    move-wide/from16 v20, v4

    move-wide/from16 v22, v9

    .line 385
    invoke-virtual/range {v13 .. v23}, Lnw;->a(DDDDD)V

    float-to-double v14, v6

    float-to-double v6, v0

    move-wide/from16 v18, v6

    move-wide/from16 v22, v1

    .line 386
    invoke-virtual/range {v13 .. v23}, Lnw;->a(DDDDD)V

    float-to-double v14, v3

    move/from16 v13, v28

    float-to-double v3, v13

    move-object/from16 v13, v24

    move-wide/from16 v18, v3

    move-wide/from16 v20, v25

    .line 387
    invoke-virtual/range {v13 .. v23}, Lnw;->a(DDDDD)V

    move/from16 v3, v27

    float-to-double v14, v3

    move/from16 v13, v34

    float-to-double v0, v13

    move-object/from16 v13, v24

    move-wide/from16 v18, v0

    move-wide/from16 v22, v9

    .line 388
    invoke-virtual/range {v13 .. v23}, Lnw;->a(DDDDD)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Luu;DDDDD)V
    .registers 63

    .line 1372
    sget-object v11, Lnw;->a:Lnw;

    const/4 v0, 0x0

    move-object/from16 v1, p1

    .line 1373
    invoke-virtual {v1, v0}, Luu;->a(I)I

    move-result v0

    move-object/from16 v12, p0

    .line 1375
    iget v1, v12, Lcv;->d:I

    if-ltz v1, :cond_10

    move v0, v1

    :cond_10
    and-int/lit8 v1, v0, 0xf

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v0, v0, 0xf0

    int-to-float v1, v1

    const/high16 v2, 0x43800000    # 256.0f

    div-float v3, v1, v2

    const v4, 0x417fd70a    # 15.99f

    add-float/2addr v1, v4

    div-float v13, v1, v2

    int-to-float v0, v0

    div-float v1, v0, v2

    add-float/2addr v0, v4

    div-float v14, v0, v2

    float-to-double v9, v3

    const-wide/high16 v2, 0x3f9c000000000000L    # 0.02734375

    add-double v15, v9, v2

    float-to-double v7, v1

    const-wide/high16 v0, 0x3f98000000000000L    # 0.0234375

    add-double v17, v7, v0

    const-wide/high16 v0, 0x3fa2000000000000L    # 0.03515625

    add-double v19, v9, v0

    const-wide/high16 v0, 0x3fa0000000000000L    # 0.03125

    add-double v21, v7, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v23, p2, v0

    add-double v25, p6, v0

    sub-double v27, v23, v0

    add-double v29, v23, v0

    sub-double v31, v25, v0

    add-double v33, v25, v0

    const-wide/high16 v0, 0x3fd8000000000000L    # 0.375

    mul-double v2, p8, v0

    add-double v35, v23, v2

    const-wide/high16 v37, 0x3fb0000000000000L    # 0.0625

    sub-double v39, v35, v37

    const-wide/high16 v2, 0x3fe4000000000000L    # 0.625

    add-double v41, p4, v2

    mul-double v0, v0, p10

    add-double v43, v25, v0

    sub-double v45, v43, v37

    move-object v0, v11

    move-wide/from16 v1, v39

    move-wide/from16 v3, v41

    move-wide/from16 v5, v45

    move-wide/from16 v47, v7

    move-wide v7, v15

    move-wide/from16 v49, v9

    move-wide/from16 v9, v17

    .line 1398
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-double v43, v43, v37

    move-wide/from16 v5, v43

    move-wide/from16 v9, v21

    .line 1399
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-double v15, v35, v37

    move-wide v1, v15

    move-wide/from16 v7, v19

    .line 1400
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v5, v45

    move-wide/from16 v9, v17

    .line 1401
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    sub-double v15, v23, v37

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v17, p4, v0

    move-object v0, v11

    move-wide v1, v15

    move-wide/from16 v3, v17

    move-wide/from16 v5, v31

    move-wide/from16 v7, v49

    move-wide/from16 v9, v47

    .line 1403
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-double v19, v15, p8

    const-wide/16 v0, 0x0

    add-double v21, p4, v0

    add-double v35, v31, p10

    float-to-double v9, v14

    move-object v0, v11

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    move-wide/from16 v5, v35

    move-wide/from16 v39, v9

    .line 1404
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-double v41, v33, p10

    float-to-double v13, v13

    move-wide/from16 v5, v41

    move-wide v7, v13

    .line 1405
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v1, v15

    move-wide/from16 v3, v17

    move-wide/from16 v5, v33

    move-wide/from16 v9, v47

    .line 1406
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-double v15, v23, v37

    move-wide v1, v15

    move-wide/from16 v7, v49

    .line 1408
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-double v23, v23, p8

    add-double v19, v23, v37

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    move-wide/from16 v5, v41

    move-wide/from16 v9, v39

    .line 1409
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v5, v35

    move-wide v7, v13

    .line 1410
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v1, v15

    move-wide/from16 v3, v17

    move-wide/from16 v5, v31

    move-wide/from16 v9, v47

    .line 1411
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-double v15, v25, v37

    move-wide/from16 v1, v27

    move-wide v5, v15

    move-wide/from16 v7, v49

    .line 1413
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-double v19, v27, p8

    add-double v23, v15, p10

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    move-wide/from16 v5, v23

    move-wide/from16 v9, v39

    .line 1414
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-double v31, v29, p8

    move-wide/from16 v1, v31

    move-wide v7, v13

    .line 1415
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v1, v29

    move-wide/from16 v3, v17

    move-wide v5, v15

    move-wide/from16 v9, v47

    .line 1416
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    sub-double v15, v25, v37

    move-wide v5, v15

    move-wide/from16 v7, v49

    .line 1418
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-double v0, v15, p10

    move-object/from16 p1, v11

    move-wide/from16 p2, v31

    move-wide/from16 p4, v21

    move-wide/from16 p6, v0

    move-wide/from16 p8, v49

    move-wide/from16 p10, v39

    .line 1419
    invoke-virtual/range {p1 .. p11}, Lnw;->a(DDDDD)V

    move-wide/from16 p2, v19

    move-wide/from16 p8, v13

    .line 1420
    invoke-virtual/range {p1 .. p11}, Lnw;->a(DDDDD)V

    move-wide/from16 p2, v27

    move-wide/from16 p4, v17

    move-wide/from16 p6, v15

    move-wide/from16 p10, v47

    .line 1421
    invoke-virtual/range {p1 .. p11}, Lnw;->a(DDDDD)V

    return-void
.end method

.method public a(Luu;DDDI)V
    .registers 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2657
    sget-object v12, Lnw;->a:Lnw;

    .line 2659
    iget v2, v0, Lcv;->d:I

    if-ltz v2, :cond_b

    goto :goto_d

    :cond_b
    move/from16 v2, p8

    :goto_d
    and-int/lit8 v3, v2, 0xf

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v2, v2, 0xf0

    int-to-double v4, v3

    .line 2663
    iget-wide v6, v1, Luu;->bs:D

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    const-wide/high16 v10, 0x4070000000000000L    # 256.0

    div-double/2addr v6, v10

    .line 2664
    iget-wide v13, v1, Luu;->bv:D

    mul-double/2addr v13, v8

    add-double/2addr v13, v4

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v13, v15

    div-double/2addr v13, v10

    int-to-double v10, v2

    move-wide/from16 v19, v6

    .line 2665
    iget-wide v6, v1, Luu;->bu:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    const-wide/high16 v17, 0x4070000000000000L    # 256.0

    div-double v6, v6, v17

    move-wide/from16 v21, v6

    .line 2666
    iget-wide v6, v1, Luu;->bx:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    sub-double/2addr v6, v15

    div-double v6, v6, v17

    .line 2668
    iget-wide v8, v1, Luu;->bs:D

    const-wide/16 v25, 0x0

    cmpg-double v8, v8, v25

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    const/16 v29, 0x0

    const/high16 v30, 0x43800000    # 256.0f

    move-wide/from16 v31, v10

    if-ltz v8, :cond_56

    iget-wide v9, v1, Luu;->bv:D

    cmpl-double v8, v9, v27

    if-lez v8, :cond_53

    goto :goto_56

    :cond_53
    move-wide/from16 v9, v19

    goto :goto_63

    :cond_56
    :goto_56
    int-to-float v8, v3

    add-float v9, v8, v29

    div-float v9, v9, v30

    float-to-double v9, v9

    const v11, 0x417fd70a    # 15.99f

    add-float/2addr v8, v11

    div-float v8, v8, v30

    float-to-double v13, v8

    :goto_63
    move-wide/from16 v19, v6

    .line 2672
    iget-wide v6, v1, Luu;->bu:D

    cmpg-double v6, v6, v25

    if-ltz v6, :cond_75

    iget-wide v6, v1, Luu;->bx:D

    cmpl-double v6, v6, v27

    if-lez v6, :cond_72

    goto :goto_75

    :cond_72
    move-wide/from16 v6, v21

    goto :goto_8a

    :cond_75
    :goto_75
    int-to-float v6, v2

    add-float v29, v6, v29

    div-float v7, v29, v30

    float-to-double v7, v7

    const v11, 0x417fd70a    # 15.99f

    add-float/2addr v6, v11

    div-float v6, v6, v30

    move-wide/from16 v19, v7

    float-to-double v6, v6

    move-wide/from16 v35, v6

    move-wide/from16 v6, v19

    move-wide/from16 v19, v35

    .line 2679
    :goto_8a
    iget v8, v0, Lcv;->l:I

    const/4 v11, 0x2

    if-ne v8, v11, :cond_c2

    .line 2680
    iget-wide v6, v1, Luu;->bu:D

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    mul-double v6, v6, v21

    add-double/2addr v6, v4

    const-wide/high16 v17, 0x4070000000000000L    # 256.0

    div-double v6, v6, v17

    add-int/lit8 v2, v2, 0x10

    int-to-double v2, v2

    .line 2681
    iget-wide v8, v1, Luu;->bv:D

    mul-double v8, v8, v21

    sub-double v8, v2, v8

    div-double v8, v8, v17

    .line 2682
    iget-wide v10, v1, Luu;->bx:D

    mul-double v10, v10, v21

    add-double/2addr v4, v10

    div-double v4, v4, v17

    .line 2683
    iget-wide v10, v1, Luu;->bs:D

    mul-double v10, v10, v21

    sub-double/2addr v2, v10

    div-double v2, v2, v17

    move-wide v10, v2

    move-wide/from16 v19, v10

    move-wide/from16 v17, v4

    move-wide v13, v6

    move-wide v15, v13

    move-wide/from16 v21, v8

    move-wide/from16 v23, v21

    move-wide/from16 v8, v17

    goto/16 :goto_13b

    :cond_c2
    const-wide/high16 v17, 0x4070000000000000L    # 256.0

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    const/4 v4, 0x1

    if-ne v8, v4, :cond_f7

    add-int/lit8 v3, v3, 0x10

    int-to-double v2, v3

    .line 2695
    iget-wide v4, v1, Luu;->bx:D

    mul-double v4, v4, v21

    sub-double v4, v2, v4

    div-double v4, v4, v17

    .line 2696
    iget-wide v6, v1, Luu;->bs:D

    mul-double v6, v6, v21

    add-double v10, v31, v6

    div-double v10, v10, v17

    .line 2697
    iget-wide v6, v1, Luu;->bu:D

    mul-double v6, v6, v21

    sub-double/2addr v2, v6

    div-double v2, v2, v17

    .line 2698
    iget-wide v6, v1, Luu;->bv:D

    mul-double v6, v6, v21

    add-double v6, v31, v6

    div-double v6, v6, v17

    move-wide v13, v2

    move-wide v15, v13

    move-wide v8, v4

    move-wide/from16 v17, v8

    move-wide/from16 v21, v6

    move-wide/from16 v23, v21

    move-wide/from16 v19, v10

    goto :goto_13b

    :cond_f7
    const/4 v4, 0x3

    if-ne v8, v4, :cond_12e

    add-int/lit8 v3, v3, 0x10

    int-to-double v3, v3

    .line 2710
    iget-wide v5, v1, Luu;->bs:D

    mul-double v5, v5, v21

    sub-double v5, v3, v5

    div-double v5, v5, v17

    .line 2711
    iget-wide v7, v1, Luu;->bv:D

    mul-double v7, v7, v21

    sub-double/2addr v3, v7

    sub-double/2addr v3, v15

    div-double v3, v3, v17

    add-int/lit8 v2, v2, 0x10

    int-to-double v7, v2

    .line 2712
    iget-wide v9, v1, Luu;->bu:D

    mul-double v9, v9, v21

    sub-double v9, v7, v9

    div-double v9, v9, v17

    .line 2713
    iget-wide v13, v1, Luu;->bx:D

    mul-double v13, v13, v21

    sub-double/2addr v7, v13

    sub-double/2addr v7, v15

    div-double v7, v7, v17

    move-wide v15, v3

    move-wide/from16 v17, v15

    move-wide v13, v5

    move-wide/from16 v23, v7

    move-wide/from16 v19, v9

    move-wide/from16 v21, v19

    move-wide/from16 v10, v23

    move-wide v8, v13

    goto :goto_13b

    :cond_12e
    move-wide/from16 v21, v6

    move-wide v15, v13

    move-wide/from16 v17, v15

    move-wide/from16 v23, v19

    move-wide v13, v9

    move-wide v8, v13

    move-wide/from16 v10, v23

    move-wide/from16 v19, v21

    .line 2721
    :goto_13b
    iget-wide v2, v1, Luu;->bs:D

    add-double v25, p2, v2

    .line 2722
    iget-wide v2, v1, Luu;->bv:D

    add-double v27, p2, v2

    .line 2723
    iget-wide v2, v1, Luu;->bt:D

    add-double v29, p4, v2

    .line 2724
    iget-wide v2, v1, Luu;->bu:D

    add-double v31, p6, v2

    .line 2725
    iget-wide v1, v1, Luu;->bx:D

    add-double v33, p6, v1

    .line 2727
    iget-boolean v1, v0, Lcv;->m:Z

    if-eqz v1, :cond_1a2

    .line 2728
    iget v1, v0, Lcv;->P:F

    iget v2, v0, Lcv;->T:F

    iget v3, v0, Lcv;->X:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v4, v29

    move-wide/from16 v6, v33

    .line 2729
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 2730
    iget v1, v0, Lcv;->Q:F

    iget v2, v0, Lcv;->U:F

    iget v3, v0, Lcv;->Y:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v6, v31

    move-wide v8, v13

    move-wide/from16 v10, v19

    .line 2731
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 2732
    iget v1, v0, Lcv;->R:F

    iget v2, v0, Lcv;->V:F

    iget v3, v0, Lcv;->Z:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v27

    move-wide v8, v15

    move-wide/from16 v10, v21

    .line 2733
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 2734
    iget v1, v0, Lcv;->S:F

    iget v2, v0, Lcv;->W:F

    iget v3, v0, Lcv;->aa:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v27

    move-wide/from16 v6, v33

    move-wide/from16 v8, v17

    move-wide/from16 v10, v23

    .line 2735
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    goto :goto_1c5

    :cond_1a2
    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v4, v29

    move-wide/from16 v6, v33

    .line 2737
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v31

    move-wide v8, v13

    move-wide/from16 v10, v19

    .line 2738
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v27

    move-wide v8, v15

    move-wide/from16 v10, v21

    .line 2739
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v33

    move-wide/from16 v8, v17

    move-wide/from16 v10, v23

    .line 2740
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    :goto_1c5
    return-void
.end method

.method public a(Luu;IDDD)V
    .registers 42

    .line 1425
    sget-object v11, Lnw;->a:Lnw;

    const/4 v0, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1427
    invoke-virtual {v1, v0, v2}, Luu;->a(II)I

    move-result v0

    move-object/from16 v12, p0

    .line 1429
    iget v1, v12, Lcv;->d:I

    if-ltz v1, :cond_12

    move v0, v1

    :cond_12
    and-int/lit8 v1, v0, 0xf

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v0, v0, 0xf0

    int-to-float v1, v1

    const/high16 v2, 0x43800000    # 256.0f

    div-float v3, v1, v2

    float-to-double v13, v3

    const v3, 0x417fd70a    # 15.99f

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    float-to-double v9, v1

    int-to-float v0, v0

    div-float v1, v0, v2

    float-to-double v7, v1

    add-float/2addr v0, v3

    div-float/2addr v0, v2

    float-to-double v5, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v2, p3, v0

    const-wide v15, 0x3fdcccccc0000000L    # 0.44999998807907104

    sub-double v17, v2, v15

    add-double v19, v2, v15

    add-double v0, p7, v0

    sub-double v21, v0, v15

    add-double/2addr v15, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v23, p5, v0

    move-object v0, v11

    move-wide/from16 v1, v17

    move-wide/from16 v3, v23

    move-wide/from16 v25, v5

    move-wide/from16 v5, v21

    move-wide/from16 v27, v7

    move-wide v7, v13

    move-wide/from16 v29, v9

    move-wide/from16 v9, v27

    .line 1442
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    const-wide/16 v0, 0x0

    add-double v31, p5, v0

    move-object v0, v11

    move-wide/from16 v1, v17

    move-wide/from16 v3, v31

    move-wide/from16 v9, v25

    .line 1443
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v1, v19

    move-wide v5, v15

    move-wide/from16 v7, v29

    .line 1444
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v23

    move-wide/from16 v9, v27

    .line 1445
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v7, v13

    .line 1447
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v31

    move-wide/from16 v9, v25

    .line 1448
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v1, v17

    move-wide/from16 v5, v21

    move-wide/from16 v7, v29

    .line 1449
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v23

    move-wide/from16 v9, v27

    .line 1450
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v5, v15

    move-wide v7, v13

    .line 1452
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v31

    move-wide/from16 v9, v25

    .line 1453
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v1, v19

    move-wide/from16 v5, v21

    move-wide/from16 v7, v29

    .line 1454
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v23

    move-wide/from16 v9, v27

    .line 1455
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v7, v13

    .line 1457
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v31

    move-wide/from16 v9, v25

    .line 1458
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v1, v17

    move-wide v5, v15

    move-wide/from16 v7, v29

    .line 1459
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v23

    move-wide/from16 v9, v27

    .line 1460
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    return-void
.end method

.method public a(Luu;IF)V
    .registers 29

    move-object/from16 v9, p1

    .line 3239
    sget-object v12, Lnw;->a:Lnw;

    move-object/from16 v13, p0

    .line 3241
    iget-boolean v0, v13, Lcv;->b:Z

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2b

    .line 3242
    invoke-virtual/range {p1 .. p2}, Luu;->b(I)I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v2

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v2

    mul-float v1, v1, p3

    mul-float v3, v3, p3

    mul-float v0, v0, p3

    .line 3247
    invoke-static {v1, v3, v0, v10}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 3251
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Luu;->b()I

    move-result v0

    const/16 v1, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, -0x41000000    # -0.5f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_310

    if-ne v0, v1, :cond_41

    goto/16 :goto_310

    :cond_41
    if-ne v0, v7, :cond_5d

    .line 3291
    invoke-virtual {v12}, Lnw;->b()V

    .line 3292
    invoke-virtual {v12, v3, v2, v3}, Lnw;->b(FFF)V

    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    const-wide/high16 v7, -0x4020000000000000L    # -0.5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 3293
    invoke-virtual/range {v0 .. v8}, Lcv;->a(Luu;IDDD)V

    .line 3294
    invoke-virtual {v12}, Lnw;->a()V

    goto/16 :goto_3aa

    :cond_5d
    const/16 v1, 0xd

    if-ne v0, v1, :cond_115

    .line 3296
    invoke-virtual/range {p1 .. p1}, Luu;->g()V

    .line 3297
    invoke-static {v5, v5, v5}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 3299
    invoke-virtual {v12}, Lnw;->b()V

    .line 3300
    invoke-virtual {v12, v3, v2, v3}, Lnw;->b(FFF)V

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    .line 3301
    invoke-virtual {v9, v8}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v2

    move v11, v3

    move-wide/from16 v2, v16

    move v14, v5

    move-wide/from16 v4, v18

    move v15, v7

    move-wide/from16 v6, v20

    invoke-virtual/range {v0 .. v8}, Lcv;->a(Luu;DDDI)V

    .line 3302
    invoke-virtual {v12}, Lnw;->a()V

    .line 3304
    invoke-virtual {v12}, Lnw;->b()V

    .line 3305
    invoke-virtual {v12, v11, v10, v11}, Lnw;->b(FFF)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    .line 3306
    invoke-virtual {v9, v15}, Luu;->a(I)I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcv;->b(Luu;DDDI)V

    .line 3307
    invoke-virtual {v12}, Lnw;->a()V

    .line 3309
    invoke-virtual {v12}, Lnw;->b()V

    .line 3310
    invoke-virtual {v12, v11, v11, v14}, Lnw;->b(FFF)V

    const/high16 v15, 0x3d800000    # 0.0625f

    .line 3311
    invoke-virtual {v12, v11, v11, v15}, Lnw;->c(FFF)V

    const/4 v0, 0x2

    .line 3312
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->c(Luu;DDDI)V

    const/high16 v8, -0x42800000    # -0.0625f

    .line 3313
    invoke-virtual {v12, v11, v11, v8}, Lnw;->c(FFF)V

    .line 3314
    invoke-virtual {v12}, Lnw;->a()V

    .line 3316
    invoke-virtual {v12}, Lnw;->b()V

    .line 3317
    invoke-virtual {v12, v11, v11, v10}, Lnw;->b(FFF)V

    .line 3318
    invoke-virtual {v12, v11, v11, v8}, Lnw;->c(FFF)V

    const/4 v0, 0x3

    .line 3319
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v17

    move-object/from16 v0, p0

    move v10, v8

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcv;->d(Luu;DDDI)V

    .line 3320
    invoke-virtual {v12, v11, v11, v15}, Lnw;->c(FFF)V

    .line 3321
    invoke-virtual {v12}, Lnw;->a()V

    .line 3323
    invoke-virtual {v12}, Lnw;->b()V

    .line 3324
    invoke-virtual {v12, v14, v11, v11}, Lnw;->b(FFF)V

    .line 3325
    invoke-virtual {v12, v15, v11, v11}, Lnw;->c(FFF)V

    const/4 v0, 0x4

    .line 3326
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->e(Luu;DDDI)V

    .line 3327
    invoke-virtual {v12, v10, v11, v11}, Lnw;->c(FFF)V

    .line 3328
    invoke-virtual {v12}, Lnw;->a()V

    .line 3330
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3331
    invoke-virtual {v12, v0, v11, v11}, Lnw;->b(FFF)V

    .line 3332
    invoke-virtual {v12, v10, v11, v11}, Lnw;->c(FFF)V

    const/4 v0, 0x5

    .line 3333
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->f(Luu;DDDI)V

    .line 3334
    invoke-virtual {v12, v15, v11, v11}, Lnw;->c(FFF)V

    .line 3335
    invoke-virtual {v12}, Lnw;->a()V

    const/high16 v10, 0x3f000000    # 0.5f

    .line 3337
    invoke-static {v10, v10, v10}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    goto/16 :goto_3aa

    :cond_115
    move v14, v2

    move v11, v3

    move v10, v4

    move v15, v7

    const/4 v1, 0x6

    if-ne v0, v1, :cond_136

    .line 3339
    invoke-virtual {v12}, Lnw;->b()V

    .line 3340
    invoke-virtual {v12, v11, v14, v11}, Lnw;->b(FFF)V

    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    const-wide/high16 v7, -0x4020000000000000L    # -0.5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 3341
    invoke-virtual/range {v0 .. v8}, Lcv;->b(Luu;IDDD)V

    .line 3342
    invoke-virtual {v12}, Lnw;->a()V

    goto/16 :goto_3aa

    :cond_136
    const/4 v1, 0x2

    if-ne v0, v1, :cond_157

    .line 3344
    invoke-virtual {v12}, Lnw;->b()V

    .line 3345
    invoke-virtual {v12, v11, v14, v11}, Lnw;->b(FFF)V

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    const-wide/16 v10, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v8, v10

    move-wide v10, v14

    .line 3346
    invoke-virtual/range {v0 .. v11}, Lcv;->a(Luu;DDDDD)V

    .line 3347
    invoke-virtual {v12}, Lnw;->a()V

    goto/16 :goto_3aa

    :cond_157
    const/16 v1, 0xa

    if-ne v0, v1, :cond_21d

    move v7, v8

    const/4 v0, 0x2

    :goto_15d
    if-ge v7, v0, :cond_3aa

    if-nez v7, :cond_174

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move v10, v5

    move v5, v6

    move/from16 v6, v20

    .line 3350
    invoke-virtual/range {v0 .. v6}, Luu;->a(FFFFFF)V

    goto :goto_175

    :cond_174
    move v10, v5

    :goto_175
    if-ne v7, v15, :cond_186

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    .line 3351
    invoke-virtual/range {v0 .. v6}, Luu;->a(FFFFFF)V

    .line 3353
    :cond_186
    invoke-static {v10, v10, v10}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 3354
    invoke-virtual {v12}, Lnw;->b()V

    .line 3355
    invoke-virtual {v12, v11, v14, v11}, Lnw;->b(FFF)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v20, 0x0

    .line 3356
    invoke-virtual {v9, v8}, Luu;->a(I)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v23, v7

    move-wide/from16 v6, v20

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcv;->a(Luu;DDDI)V

    .line 3357
    invoke-virtual {v12}, Lnw;->a()V

    .line 3359
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3360
    invoke-virtual {v12, v11, v0, v11}, Lnw;->b(FFF)V

    const-wide/16 v6, 0x0

    .line 3361
    invoke-virtual {v9, v15}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->b(Luu;DDDI)V

    .line 3362
    invoke-virtual {v12}, Lnw;->a()V

    .line 3364
    invoke-virtual {v12}, Lnw;->b()V

    .line 3365
    invoke-virtual {v12, v11, v11, v14}, Lnw;->b(FFF)V

    const/4 v0, 0x2

    .line 3366
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->c(Luu;DDDI)V

    .line 3367
    invoke-virtual {v12}, Lnw;->a()V

    .line 3369
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3370
    invoke-virtual {v12, v11, v11, v0}, Lnw;->b(FFF)V

    const/4 v0, 0x3

    .line 3371
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->d(Luu;DDDI)V

    .line 3372
    invoke-virtual {v12}, Lnw;->a()V

    .line 3374
    invoke-virtual {v12}, Lnw;->b()V

    .line 3375
    invoke-virtual {v12, v14, v11, v11}, Lnw;->b(FFF)V

    const/4 v0, 0x4

    .line 3376
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->e(Luu;DDDI)V

    .line 3377
    invoke-virtual {v12}, Lnw;->a()V

    .line 3379
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3380
    invoke-virtual {v12, v0, v11, v11}, Lnw;->b(FFF)V

    const/4 v0, 0x5

    .line 3381
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->f(Luu;DDDI)V

    .line 3382
    invoke-virtual {v12}, Lnw;->a()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 3384
    invoke-static {v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    add-int/lit8 v7, v23, 0x1

    move v5, v10

    const/4 v0, 0x2

    const/4 v8, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    goto/16 :goto_15d

    :cond_21d
    move v10, v5

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3aa

    const/4 v0, 0x4

    const/4 v8, 0x0

    :goto_224
    if-ge v8, v0, :cond_300

    if-nez v8, :cond_237

    const/high16 v1, 0x3ec00000    # 0.375f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f200000    # 0.625f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3e800000    # 0.25f

    move-object/from16 v0, p1

    .line 3389
    invoke-virtual/range {v0 .. v6}, Luu;->a(FFFFFF)V

    :cond_237
    if-ne v8, v15, :cond_249

    const/high16 v1, 0x3ec00000    # 0.375f

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f200000    # 0.625f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    .line 3390
    invoke-virtual/range {v0 .. v6}, Luu;->a(FFFFFF)V

    :cond_249
    const/4 v0, 0x2

    if-ne v8, v0, :cond_25d

    const/high16 v1, 0x3ee00000    # 0.4375f

    const/high16 v2, 0x3f500000    # 0.8125f

    const/high16 v3, -0x42000000    # -0.125f

    const/high16 v4, 0x3f100000    # 0.5625f

    const/high16 v5, 0x3f700000    # 0.9375f

    const/high16 v6, 0x3f900000    # 1.125f

    move-object/from16 v0, p1

    .line 3392
    invoke-virtual/range {v0 .. v6}, Luu;->a(FFFFFF)V

    :cond_25d
    const/4 v0, 0x3

    if-ne v8, v0, :cond_270

    const/high16 v5, 0x3ee00000    # 0.4375f

    const/high16 v2, 0x3ea00000    # 0.3125f

    const/high16 v3, -0x42000000    # -0.125f

    const/high16 v4, 0x3f100000    # 0.5625f

    const/high16 v6, 0x3f900000    # 1.125f

    move-object/from16 v0, p1

    move v1, v5

    .line 3393
    invoke-virtual/range {v0 .. v6}, Luu;->a(FFFFFF)V

    .line 3395
    :cond_270
    invoke-static {v10, v10, v10}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 3396
    invoke-virtual {v12}, Lnw;->b()V

    .line 3397
    invoke-virtual {v12, v11, v14, v11}, Lnw;->b(FFF)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 3398
    invoke-virtual {v9, v1}, Luu;->a(I)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v24, v8

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Lcv;->a(Luu;DDDI)V

    .line 3399
    invoke-virtual {v12}, Lnw;->a()V

    .line 3401
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3402
    invoke-virtual {v12, v11, v0, v11}, Lnw;->b(FFF)V

    .line 3403
    invoke-virtual {v9, v15}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->b(Luu;DDDI)V

    .line 3404
    invoke-virtual {v12}, Lnw;->a()V

    .line 3406
    invoke-virtual {v12}, Lnw;->b()V

    .line 3407
    invoke-virtual {v12, v11, v11, v14}, Lnw;->b(FFF)V

    const/4 v0, 0x2

    .line 3408
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->c(Luu;DDDI)V

    .line 3409
    invoke-virtual {v12}, Lnw;->a()V

    .line 3411
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3412
    invoke-virtual {v12, v11, v11, v0}, Lnw;->b(FFF)V

    const/4 v0, 0x3

    .line 3413
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->d(Luu;DDDI)V

    .line 3414
    invoke-virtual {v12}, Lnw;->a()V

    .line 3416
    invoke-virtual {v12}, Lnw;->b()V

    .line 3417
    invoke-virtual {v12, v14, v11, v11}, Lnw;->b(FFF)V

    const/4 v0, 0x4

    .line 3418
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->e(Luu;DDDI)V

    .line 3419
    invoke-virtual {v12}, Lnw;->a()V

    .line 3421
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3422
    invoke-virtual {v12, v0, v11, v11}, Lnw;->b(FFF)V

    const/4 v0, 0x5

    .line 3423
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->f(Luu;DDDI)V

    .line 3424
    invoke-virtual {v12}, Lnw;->a()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 3426
    invoke-static {v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    add-int/lit8 v8, v24, 0x1

    const/4 v0, 0x4

    goto/16 :goto_224

    :cond_300
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    .line 3428
    invoke-virtual/range {v0 .. v6}, Luu;->a(FFFFFF)V

    goto/16 :goto_3aa

    :cond_310
    :goto_310
    move v14, v2

    move v11, v3

    move v10, v5

    move v15, v7

    if-ne v0, v1, :cond_318

    move v8, v15

    goto :goto_31a

    :cond_318
    move/from16 v8, p2

    .line 3257
    :goto_31a
    invoke-virtual/range {p1 .. p1}, Luu;->g()V

    .line 3258
    invoke-static {v10, v10, v10}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 3259
    invoke-virtual {v12}, Lnw;->b()V

    .line 3260
    invoke-virtual {v12, v11, v14, v11}, Lnw;->b(FFF)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 3261
    invoke-virtual {v9, v0, v8}, Luu;->a(II)I

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v14, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lcv;->a(Luu;DDDI)V

    .line 3262
    invoke-virtual {v12}, Lnw;->a()V

    .line 3264
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3265
    invoke-virtual {v12, v11, v0, v11}, Lnw;->b(FFF)V

    .line 3266
    invoke-virtual {v9, v15, v14}, Luu;->a(II)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->b(Luu;DDDI)V

    .line 3267
    invoke-virtual {v12}, Lnw;->a()V

    .line 3269
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 3270
    invoke-virtual {v12, v11, v11, v0}, Lnw;->b(FFF)V

    const/4 v0, 0x2

    .line 3271
    invoke-virtual {v9, v0, v14}, Luu;->a(II)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->c(Luu;DDDI)V

    .line 3272
    invoke-virtual {v12}, Lnw;->a()V

    .line 3274
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3275
    invoke-virtual {v12, v11, v11, v0}, Lnw;->b(FFF)V

    const/4 v0, 0x3

    .line 3276
    invoke-virtual {v9, v0, v14}, Luu;->a(II)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->d(Luu;DDDI)V

    .line 3277
    invoke-virtual {v12}, Lnw;->a()V

    .line 3279
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 3280
    invoke-virtual {v12, v0, v11, v11}, Lnw;->b(FFF)V

    const/4 v0, 0x4

    .line 3281
    invoke-virtual {v9, v0, v14}, Luu;->a(II)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->e(Luu;DDDI)V

    .line 3282
    invoke-virtual {v12}, Lnw;->a()V

    .line 3284
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3285
    invoke-virtual {v12, v0, v11, v11}, Lnw;->b(FFF)V

    const/4 v0, 0x5

    .line 3286
    invoke-virtual {v9, v0, v14}, Luu;->a(II)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lcv;->f(Luu;DDDI)V

    .line 3287
    invoke-virtual {v12}, Lnw;->a()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 3289
    invoke-static {v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    :cond_3aa
    :goto_3aa
    return-void
.end method

.method public a(Luu;III)V
    .registers 6

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcv;->f:Z

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->b(Luu;III)Z

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcv;->f:Z

    return-void
.end method

.method public a(Luu;IIII)V
    .registers 6

    .line 40
    iput p5, p0, Lcv;->d:I

    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->b(Luu;III)Z

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcv;->d:I

    return-void
.end method

.method public a(Luu;IIIZ)V
    .registers 7

    const/4 v0, 0x1

    .line 576
    iput-boolean v0, p0, Lcv;->f:Z

    .line 577
    invoke-direct/range {p0 .. p5}, Lcv;->c(Luu;IIIZ)Z

    const/4 p1, 0x0

    .line 578
    iput-boolean p1, p0, Lcv;->f:Z

    return-void
.end method

.method public a(Luu;Lfd;III)V
    .registers 24

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    .line 1733
    sget-object v14, Lnw;->a:Lnw;

    .line 1734
    invoke-virtual {v14}, Lnw;->b()V

    .line 1735
    invoke-virtual/range {p1 .. p5}, Luu;->d(Lxp;III)F

    move-result v15

    add-int/lit8 v0, v12, -0x1

    .line 1737
    invoke-virtual {v9, v10, v11, v0, v13}, Luu;->d(Lxp;III)F

    move-result v0

    cmpg-float v1, v0, v15

    if-gez v1, :cond_1e

    move v0, v15

    :cond_1e
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    .line 1739
    invoke-virtual {v14, v1, v1, v1}, Lnw;->a(FFF)V

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    const/4 v0, 0x0

    .line 1740
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcv;->a(Luu;DDDI)V

    add-int/lit8 v0, v12, 0x1

    .line 1742
    invoke-virtual {v9, v10, v11, v0, v13}, Luu;->d(Lxp;III)F

    move-result v0

    cmpg-float v1, v0, v15

    if-gez v1, :cond_41

    move v0, v15

    :cond_41
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    .line 1744
    invoke-virtual {v14, v1, v1, v1}, Lnw;->a(FFF)V

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    const/4 v8, 0x1

    .line 1745
    invoke-virtual {v9, v8}, Luu;->a(I)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v17, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcv;->b(Luu;DDDI)V

    add-int/lit8 v0, v13, -0x1

    .line 1747
    invoke-virtual {v9, v10, v11, v12, v0}, Luu;->d(Lxp;III)F

    move-result v0

    cmpg-float v1, v0, v15

    if-gez v1, :cond_68

    move v0, v15

    :cond_68
    const v16, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v16

    .line 1749
    invoke-virtual {v14, v0, v0, v0}, Lnw;->a(FFF)V

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    const/4 v0, 0x2

    .line 1750
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcv;->c(Luu;DDDI)V

    add-int/lit8 v0, v13, 0x1

    .line 1752
    invoke-virtual {v9, v10, v11, v12, v0}, Luu;->d(Lxp;III)F

    move-result v0

    cmpg-float v1, v0, v15

    if-gez v1, :cond_8d

    move v0, v15

    :cond_8d
    mul-float v0, v0, v16

    .line 1754
    invoke-virtual {v14, v0, v0, v0}, Lnw;->a(FFF)V

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    const/4 v0, 0x3

    .line 1755
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcv;->d(Luu;DDDI)V

    add-int/lit8 v0, v11, -0x1

    .line 1757
    invoke-virtual {v9, v10, v0, v12, v13}, Luu;->d(Lxp;III)F

    move-result v0

    cmpg-float v1, v0, v15

    if-gez v1, :cond_af

    move v0, v15

    :cond_af
    const v16, 0x3f19999a    # 0.6f

    mul-float v0, v0, v16

    .line 1759
    invoke-virtual {v14, v0, v0, v0}, Lnw;->a(FFF)V

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    const/4 v0, 0x4

    .line 1760
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcv;->e(Luu;DDDI)V

    add-int/lit8 v0, v11, 0x1

    .line 1762
    invoke-virtual {v9, v10, v0, v12, v13}, Luu;->d(Lxp;III)F

    move-result v0

    cmpg-float v1, v0, v15

    if-gez v1, :cond_d4

    goto :goto_d5

    :cond_d4
    move v15, v0

    :goto_d5
    mul-float v0, v16, v15

    .line 1764
    invoke-virtual {v14, v0, v0, v0}, Lnw;->a(FFF)V

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    const/4 v0, 0x5

    .line 1765
    invoke-virtual {v9, v0}, Luu;->a(I)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcv;->f(Luu;DDDI)V

    .line 1766
    invoke-virtual {v14}, Lnw;->a()V

    return-void
.end method

.method public a(Lpc;III)Z
    .registers 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1199
    sget-object v12, Lnw;->a:Lnw;

    .line 1200
    iget-object v5, v0, Lcv;->c:Lxp;

    invoke-interface {v5, v2, v3, v4}, Lxp;->e(III)I

    move-result v5

    const/4 v6, 0x0

    .line 1202
    invoke-virtual {v1, v6, v5}, Lpc;->a(II)I

    move-result v7

    .line 1203
    iget v8, v0, Lcv;->d:I

    if-ltz v8, :cond_1c

    move v7, v8

    .line 1205
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lpc;->i()Z

    move-result v8

    if-eqz v8, :cond_24

    and-int/lit8 v5, v5, 0x7

    .line 1209
    :cond_24
    iget-object v8, v0, Lcv;->c:Lxp;

    invoke-virtual {v1, v8, v2, v3, v4}, Lpc;->d(Lxp;III)F

    move-result v1

    .line 1210
    invoke-virtual {v12, v1, v1, v1}, Lnw;->a(FFF)V

    and-int/lit8 v1, v7, 0xf

    const/4 v8, 0x4

    shl-int/2addr v1, v8

    and-int/lit16 v7, v7, 0xf0

    int-to-float v1, v1

    const/high16 v9, 0x43800000    # 256.0f

    div-float v10, v1, v9

    float-to-double v13, v10

    const v10, 0x417fd70a    # 15.99f

    add-float/2addr v1, v10

    div-float/2addr v1, v9

    float-to-double v10, v1

    int-to-float v1, v7

    div-float v7, v1, v9

    float-to-double v6, v7

    const v16, 0x417fd70a    # 15.99f

    add-float v1, v1, v16

    div-float/2addr v1, v9

    float-to-double v8, v1

    add-int/lit8 v1, v2, 0x1

    int-to-float v1, v1

    const/4 v15, 0x0

    add-int/2addr v2, v15

    int-to-float v2, v2

    add-int/lit8 v15, v4, 0x0

    int-to-float v15, v15

    const/4 v0, 0x1

    add-int/2addr v4, v0

    int-to-float v4, v4

    int-to-float v3, v3

    const/high16 v16, 0x3d800000    # 0.0625f

    add-float v3, v3, v16

    move/from16 v16, v1

    const/4 v1, 0x2

    if-eq v5, v0, :cond_97

    if-eq v5, v1, :cond_97

    const/4 v0, 0x3

    if-eq v5, v0, :cond_97

    const/4 v0, 0x7

    if-ne v5, v0, :cond_69

    goto :goto_97

    :cond_69
    const/16 v0, 0x8

    if-ne v5, v0, :cond_77

    move v0, v2

    move/from16 v19, v4

    move-wide/from16 v17, v13

    move v13, v15

    move v14, v13

    move/from16 p3, v16

    goto :goto_94

    :cond_77
    const/16 v0, 0x9

    move/from16 p3, v2

    if-ne v5, v0, :cond_89

    move/from16 v19, v4

    move-wide/from16 v17, v13

    move v13, v15

    move/from16 v0, v16

    move/from16 v14, v19

    move v4, v13

    move v15, v0

    goto :goto_a3

    :cond_89
    move-wide/from16 v17, v13

    move/from16 v19, v15

    move/from16 v0, v16

    move v13, v4

    move v14, v13

    move/from16 v4, v19

    move v2, v0

    :goto_94
    move/from16 v15, p3

    goto :goto_a3

    :cond_97
    :goto_97
    move v0, v2

    move-wide/from16 v17, v13

    move v14, v15

    move/from16 v19, v14

    move/from16 p3, v16

    move v15, v0

    move v13, v4

    move/from16 v2, p3

    :goto_a3
    const/high16 v16, 0x3f800000    # 1.0f

    if-eq v5, v1, :cond_c3

    const/4 v1, 0x4

    if-ne v5, v1, :cond_ab

    goto :goto_c3

    :cond_ab
    const/4 v1, 0x3

    if-eq v5, v1, :cond_b9

    const/4 v1, 0x5

    if-ne v5, v1, :cond_b2

    goto :goto_b9

    :cond_b2
    move v1, v3

    move v5, v1

    move/from16 v20, v5

    move/from16 p1, v14

    goto :goto_cd

    :cond_b9
    :goto_b9
    add-float v16, v3, v16

    move/from16 v20, v3

    move/from16 p1, v14

    move/from16 v1, v16

    move v5, v1

    goto :goto_cd

    :cond_c3
    :goto_c3
    add-float v16, v3, v16

    move v1, v3

    move v5, v1

    move/from16 p1, v14

    move/from16 v3, v16

    move/from16 v20, v3

    :goto_cd
    move/from16 v16, v15

    float-to-double v14, v2

    float-to-double v2, v3

    move-wide/from16 v21, v8

    float-to-double v8, v4

    move v4, v1

    move-object v1, v12

    move-wide/from16 v23, v2

    move-wide v2, v14

    move/from16 v27, p3

    move-wide/from16 v25, v14

    move v15, v4

    move v14, v5

    move-wide/from16 v4, v23

    move-wide/from16 v28, v6

    move-wide v6, v8

    move-wide/from16 v30, v8

    move-wide v8, v10

    move-wide/from16 v32, v10

    move-wide/from16 v10, v28

    .line 1262
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    float-to-double v10, v0

    float-to-double v8, v14

    float-to-double v13, v13

    move-wide v2, v10

    move-wide v4, v8

    move-wide v6, v13

    move-wide/from16 v34, v8

    move-wide/from16 v8, v32

    move-wide/from16 v36, v10

    move-wide/from16 v10, v21

    .line 1263
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move/from16 v2, v16

    float-to-double v10, v2

    float-to-double v8, v15

    move/from16 v15, p1

    float-to-double v6, v15

    move-wide v2, v10

    move-wide v4, v8

    move-wide v15, v6

    move-wide/from16 v38, v8

    move-wide/from16 v8, v17

    move-wide/from16 v40, v10

    move-wide/from16 v10, v21

    .line 1264
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move/from16 v2, v27

    float-to-double v10, v2

    move/from16 v3, v20

    float-to-double v8, v3

    move/from16 v4, v19

    float-to-double v6, v4

    move-wide v2, v10

    move-wide v4, v8

    move-wide/from16 v19, v6

    move-wide/from16 v42, v8

    move-wide/from16 v8, v17

    move-wide/from16 v44, v10

    move-wide/from16 v10, v28

    .line 1265
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v44

    move-wide/from16 v4, v42

    .line 1267
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v40

    move-wide/from16 v4, v38

    move-wide v6, v15

    move-wide/from16 v10, v21

    .line 1268
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v36

    move-wide/from16 v4, v34

    move-wide v6, v13

    move-wide/from16 v8, v32

    .line 1269
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v25

    move-wide/from16 v4, v23

    move-wide/from16 v6, v30

    move-wide/from16 v10, v28

    .line 1270
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Luu;IIIFFF)Z
    .registers 41

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v6, p3

    move/from16 v12, p4

    const/4 v13, 0x1

    .line 1807
    iput-boolean v13, v9, Lcv;->m:Z

    .line 1820
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v11, v6, v12}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->n:F

    .line 1821
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v10, v0, v14, v6, v12}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->o:F

    .line 1822
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v3, v6, -0x1

    invoke-virtual {v10, v0, v11, v3, v12}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->p:F

    .line 1823
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v15, v12, -0x1

    invoke-virtual {v10, v0, v11, v6, v15}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->q:F

    .line 1824
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v8, v11, 0x1

    invoke-virtual {v10, v0, v8, v6, v12}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->r:F

    .line 1825
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v10, v0, v11, v1, v12}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->s:F

    .line 1826
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v7, v12, 0x1

    invoke-virtual {v10, v0, v11, v6, v7}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->t:F

    .line 1828
    sget-object v0, Luu;->r:[Z

    iget-object v2, v9, Lcv;->c:Lxp;

    invoke-interface {v2, v8, v1, v12}, Lxp;->a(III)I

    move-result v2

    aget-boolean v0, v0, v2

    iput-boolean v0, v9, Lcv;->ac:Z

    .line 1829
    sget-object v0, Luu;->r:[Z

    iget-object v2, v9, Lcv;->c:Lxp;

    invoke-interface {v2, v8, v3, v12}, Lxp;->a(III)I

    move-result v2

    aget-boolean v0, v0, v2

    iput-boolean v0, v9, Lcv;->ak:Z

    .line 1830
    sget-object v0, Luu;->r:[Z

    iget-object v2, v9, Lcv;->c:Lxp;

    invoke-interface {v2, v8, v6, v7}, Lxp;->a(III)I

    move-result v2

    aget-boolean v0, v0, v2

    iput-boolean v0, v9, Lcv;->ag:Z

    .line 1831
    sget-object v0, Luu;->r:[Z

    iget-object v2, v9, Lcv;->c:Lxp;

    invoke-interface {v2, v8, v6, v15}, Lxp;->a(III)I

    move-result v2

    aget-boolean v0, v0, v2

    iput-boolean v0, v9, Lcv;->ai:Z

    .line 1832
    sget-object v0, Luu;->r:[Z

    iget-object v2, v9, Lcv;->c:Lxp;

    invoke-interface {v2, v14, v1, v12}, Lxp;->a(III)I

    move-result v2

    aget-boolean v0, v0, v2

    iput-boolean v0, v9, Lcv;->ad:Z

    .line 1833
    sget-object v0, Luu;->r:[Z

    iget-object v2, v9, Lcv;->c:Lxp;

    invoke-interface {v2, v14, v3, v12}, Lxp;->a(III)I

    move-result v2

    aget-boolean v0, v0, v2

    iput-boolean v0, v9, Lcv;->al:Z

    .line 1834
    sget-object v0, Luu;->r:[Z

    iget-object v2, v9, Lcv;->c:Lxp;

    invoke-interface {v2, v14, v6, v15}, Lxp;->a(III)I

    move-result v2

    aget-boolean v0, v0, v2

    iput-boolean v0, v9, Lcv;->af:Z

    .line 1835
    sget-object v0, Luu;->r:[Z

    iget-object v2, v9, Lcv;->c:Lxp;

    invoke-interface {v2, v14, v6, v7}, Lxp;->a(III)I

    move-result v2

    aget-boolean v0, v0, v2

    iput-boolean v0, v9, Lcv;->ah:Z

    .line 1836
    sget-object v0, Luu;->r:[Z

    iget-object v2, v9, Lcv;->c:Lxp;

    invoke-interface {v2, v11, v1, v7}, Lxp;->a(III)I

    move-result v2

    aget-boolean v0, v0, v2

    iput-boolean v0, v9, Lcv;->ae:Z

    .line 1837
    sget-object v0, Luu;->r:[Z

    iget-object v2, v9, Lcv;->c:Lxp;

    invoke-interface {v2, v11, v1, v15}, Lxp;->a(III)I

    move-result v1

    aget-boolean v0, v0, v1

    iput-boolean v0, v9, Lcv;->ab:Z

    .line 1838
    sget-object v0, Luu;->r:[Z

    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-interface {v1, v11, v3, v7}, Lxp;->a(III)I

    move-result v1

    aget-boolean v0, v0, v1

    iput-boolean v0, v9, Lcv;->am:Z

    .line 1839
    sget-object v0, Luu;->r:[Z

    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-interface {v1, v11, v3, v15}, Lxp;->a(III)I

    move-result v1

    aget-boolean v0, v0, v1

    iput-boolean v0, v9, Lcv;->aj:Z

    .line 1841
    iget v0, v10, Luu;->bm:I

    const/4 v5, 0x0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_e9

    move v0, v5

    goto :goto_ea

    :cond_e9
    move v0, v13

    :goto_ea
    move v1, v0

    move v2, v1

    move/from16 v16, v2

    move/from16 v17, v16

    .line 1842
    iget v4, v9, Lcv;->d:I

    if-ltz v4, :cond_ff

    move/from16 v16, v5

    move/from16 v17, v16

    move/from16 v19, v17

    move/from16 v20, v19

    move/from16 v21, v20

    goto :goto_109

    :cond_ff
    move/from16 v19, v2

    move/from16 v20, v16

    move/from16 v21, v17

    move/from16 v16, v0

    move/from16 v17, v1

    .line 1844
    :goto_109
    iget-boolean v0, v9, Lcv;->f:Z

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x40800000    # 4.0f

    if-nez v0, :cond_12c

    iget-object v1, v9, Lcv;->c:Lxp;

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_124

    goto :goto_12c

    :cond_124
    move/from16 v18, v6

    move/from16 v32, v7

    move v11, v8

    const/4 v6, 0x0

    goto/16 :goto_264

    .line 1845
    :cond_12c
    :goto_12c
    iget v0, v9, Lcv;->O:I

    if-lez v0, :cond_1d6

    add-int/lit8 v0, v6, -0x1

    .line 1848
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v14, v0, v12}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->v:F

    .line 1849
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v11, v0, v15}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->x:F

    .line 1850
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v11, v0, v7}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->y:F

    .line 1851
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v8, v0, v12}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->A:F

    .line 1853
    iget-boolean v1, v9, Lcv;->aj:Z

    if-nez v1, :cond_160

    iget-boolean v1, v9, Lcv;->al:Z

    if-eqz v1, :cond_15b

    goto :goto_160

    .line 1856
    :cond_15b
    iget v1, v9, Lcv;->v:F

    iput v1, v9, Lcv;->u:F

    goto :goto_168

    .line 1854
    :cond_160
    :goto_160
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v14, v0, v15}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->u:F

    .line 1858
    :goto_168
    iget-boolean v1, v9, Lcv;->am:Z

    if-nez v1, :cond_176

    iget-boolean v1, v9, Lcv;->al:Z

    if-eqz v1, :cond_171

    goto :goto_176

    .line 1861
    :cond_171
    iget v1, v9, Lcv;->v:F

    iput v1, v9, Lcv;->w:F

    goto :goto_17e

    .line 1859
    :cond_176
    :goto_176
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v14, v0, v7}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->w:F

    .line 1863
    :goto_17e
    iget-boolean v1, v9, Lcv;->aj:Z

    if-nez v1, :cond_18c

    iget-boolean v1, v9, Lcv;->ak:Z

    if-eqz v1, :cond_187

    goto :goto_18c

    .line 1866
    :cond_187
    iget v1, v9, Lcv;->A:F

    iput v1, v9, Lcv;->z:F

    goto :goto_194

    .line 1864
    :cond_18c
    :goto_18c
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v8, v0, v15}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->z:F

    .line 1868
    :goto_194
    iget-boolean v1, v9, Lcv;->am:Z

    if-nez v1, :cond_1a2

    iget-boolean v1, v9, Lcv;->ak:Z

    if-eqz v1, :cond_19d

    goto :goto_1a2

    .line 1871
    :cond_19d
    iget v1, v9, Lcv;->A:F

    iput v1, v9, Lcv;->B:F

    goto :goto_1aa

    .line 1869
    :cond_1a2
    :goto_1a2
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v8, v0, v7}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->B:F

    :goto_1aa
    add-int/2addr v0, v13

    .line 1875
    iget v1, v9, Lcv;->w:F

    iget v2, v9, Lcv;->v:F

    add-float/2addr v1, v2

    iget v3, v9, Lcv;->y:F

    add-float/2addr v1, v3

    iget v4, v9, Lcv;->p:F

    add-float/2addr v1, v4

    div-float v1, v1, v23

    add-float/2addr v3, v4

    .line 1876
    iget v5, v9, Lcv;->B:F

    add-float/2addr v3, v5

    iget v5, v9, Lcv;->A:F

    add-float/2addr v3, v5

    div-float v3, v3, v23

    .line 1877
    iget v6, v9, Lcv;->x:F

    add-float v18, v4, v6

    add-float v18, v18, v5

    iget v5, v9, Lcv;->z:F

    add-float v18, v18, v5

    div-float v18, v18, v23

    .line 1878
    iget v5, v9, Lcv;->u:F

    add-float/2addr v2, v5

    add-float/2addr v2, v4

    add-float/2addr v2, v6

    div-float v2, v2, v23

    move v6, v0

    goto :goto_1dc

    .line 1879
    :cond_1d6
    iget v1, v9, Lcv;->p:F

    move v2, v1

    move v3, v2

    move/from16 v18, v3

    :goto_1dc
    if-eqz v16, :cond_1e1

    move/from16 v0, p5

    goto :goto_1e3

    :cond_1e1
    move/from16 v0, v22

    :goto_1e3
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    .line 1880
    iput v0, v9, Lcv;->S:F

    iput v0, v9, Lcv;->R:F

    iput v0, v9, Lcv;->Q:F

    iput v0, v9, Lcv;->P:F

    if-eqz v16, :cond_1f3

    move/from16 v5, p6

    goto :goto_1f5

    :cond_1f3
    move/from16 v5, v22

    :goto_1f5
    mul-float/2addr v5, v4

    .line 1881
    iput v5, v9, Lcv;->W:F

    iput v5, v9, Lcv;->V:F

    iput v5, v9, Lcv;->U:F

    iput v5, v9, Lcv;->T:F

    if-eqz v16, :cond_203

    move/from16 v16, p7

    goto :goto_205

    :cond_203
    move/from16 v16, v22

    :goto_205
    mul-float v16, v16, v4

    mul-float v4, v0, v1

    .line 1883
    iput v4, v9, Lcv;->P:F

    mul-float v4, v5, v1

    .line 1884
    iput v4, v9, Lcv;->T:F

    mul-float v1, v1, v16

    .line 1885
    iput v1, v9, Lcv;->X:F

    mul-float v1, v0, v2

    .line 1886
    iput v1, v9, Lcv;->Q:F

    mul-float v1, v5, v2

    .line 1887
    iput v1, v9, Lcv;->U:F

    mul-float v2, v2, v16

    .line 1888
    iput v2, v9, Lcv;->Y:F

    mul-float v1, v0, v18

    .line 1889
    iput v1, v9, Lcv;->R:F

    mul-float v1, v5, v18

    .line 1890
    iput v1, v9, Lcv;->V:F

    mul-float v1, v16, v18

    .line 1891
    iput v1, v9, Lcv;->Z:F

    mul-float/2addr v0, v3

    .line 1892
    iput v0, v9, Lcv;->S:F

    mul-float/2addr v5, v3

    .line 1893
    iput v5, v9, Lcv;->W:F

    mul-float v0, v16, v3

    .line 1894
    iput v0, v9, Lcv;->aa:F

    int-to-double v4, v11

    int-to-double v2, v6

    int-to-double v0, v12

    .line 1896
    iget-object v13, v9, Lcv;->c:Lxp;

    const/16 v18, 0x0

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-object v1, v13

    move-wide/from16 v28, v2

    move/from16 v2, p2

    move v3, v6

    move-wide/from16 v30, v4

    move/from16 v4, p4

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    move-wide/from16 v4, v28

    move/from16 v18, v6

    move/from16 v32, v7

    move-wide/from16 v6, v26

    move v11, v8

    move v8, v13

    invoke-virtual/range {v0 .. v8}, Lcv;->a(Luu;DDDI)V

    const/4 v6, 0x1

    .line 1899
    :goto_264
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_281

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v3, v18, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_27a

    goto :goto_281

    :cond_27a
    move v13, v11

    move/from16 v8, v18

    move/from16 v11, p2

    goto/16 :goto_394

    .line 1900
    :cond_281
    :goto_281
    iget v0, v9, Lcv;->O:I

    if-lez v0, :cond_32f

    add-int/lit8 v0, v18, 0x1

    .line 1903
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v14, v0, v12}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->D:F

    .line 1904
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v11, v0, v12}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->H:F

    .line 1905
    iget-object v1, v9, Lcv;->c:Lxp;

    move v13, v11

    move/from16 v11, p2

    invoke-virtual {v10, v1, v11, v0, v15}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->F:F

    .line 1906
    iget-object v1, v9, Lcv;->c:Lxp;

    move/from16 v2, v32

    invoke-virtual {v10, v1, v11, v0, v2}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->I:F

    .line 1908
    iget-boolean v1, v9, Lcv;->ab:Z

    if-nez v1, :cond_2ba

    iget-boolean v1, v9, Lcv;->ad:Z

    if-eqz v1, :cond_2b5

    goto :goto_2ba

    .line 1911
    :cond_2b5
    iget v1, v9, Lcv;->D:F

    iput v1, v9, Lcv;->C:F

    goto :goto_2c2

    .line 1909
    :cond_2ba
    :goto_2ba
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v14, v0, v15}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->C:F

    .line 1913
    :goto_2c2
    iget-boolean v1, v9, Lcv;->ab:Z

    if-nez v1, :cond_2d0

    iget-boolean v1, v9, Lcv;->ac:Z

    if-eqz v1, :cond_2cb

    goto :goto_2d0

    .line 1916
    :cond_2cb
    iget v1, v9, Lcv;->H:F

    iput v1, v9, Lcv;->G:F

    goto :goto_2d8

    .line 1914
    :cond_2d0
    :goto_2d0
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v13, v0, v15}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->G:F

    .line 1918
    :goto_2d8
    iget-boolean v1, v9, Lcv;->ae:Z

    if-nez v1, :cond_2e6

    iget-boolean v1, v9, Lcv;->ad:Z

    if-eqz v1, :cond_2e1

    goto :goto_2e6

    .line 1921
    :cond_2e1
    iget v1, v9, Lcv;->D:F

    iput v1, v9, Lcv;->E:F

    goto :goto_2ee

    .line 1919
    :cond_2e6
    :goto_2e6
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v14, v0, v2}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->E:F

    .line 1923
    :goto_2ee
    iget-boolean v1, v9, Lcv;->ae:Z

    if-nez v1, :cond_2fc

    iget-boolean v1, v9, Lcv;->ac:Z

    if-eqz v1, :cond_2f7

    goto :goto_2fc

    .line 1926
    :cond_2f7
    iget v1, v9, Lcv;->H:F

    iput v1, v9, Lcv;->J:F

    goto :goto_304

    .line 1924
    :cond_2fc
    :goto_2fc
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v13, v0, v2}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->J:F

    :goto_304
    add-int/lit8 v0, v0, -0x1

    .line 1930
    iget v1, v9, Lcv;->E:F

    iget v2, v9, Lcv;->D:F

    add-float/2addr v1, v2

    iget v3, v9, Lcv;->I:F

    add-float/2addr v1, v3

    iget v4, v9, Lcv;->s:F

    add-float/2addr v1, v4

    div-float v1, v1, v23

    add-float/2addr v3, v4

    .line 1931
    iget v5, v9, Lcv;->J:F

    add-float/2addr v3, v5

    iget v5, v9, Lcv;->H:F

    add-float/2addr v3, v5

    div-float v3, v3, v23

    .line 1932
    iget v6, v9, Lcv;->F:F

    add-float v7, v4, v6

    add-float/2addr v7, v5

    iget v5, v9, Lcv;->G:F

    add-float/2addr v7, v5

    div-float v7, v7, v23

    .line 1933
    iget v5, v9, Lcv;->C:F

    add-float/2addr v2, v5

    add-float/2addr v2, v4

    add-float/2addr v2, v6

    div-float v2, v2, v23

    move v8, v0

    goto :goto_339

    :cond_32f
    move v13, v11

    move/from16 v11, p2

    .line 1934
    iget v1, v9, Lcv;->s:F

    move v2, v1

    move v3, v2

    move v7, v3

    move/from16 v8, v18

    :goto_339
    mul-float v0, p5, v3

    .line 1938
    iput v0, v9, Lcv;->P:F

    mul-float v0, p6, v3

    .line 1939
    iput v0, v9, Lcv;->T:F

    mul-float v0, p7, v3

    .line 1940
    iput v0, v9, Lcv;->X:F

    mul-float v0, p5, v7

    .line 1941
    iput v0, v9, Lcv;->Q:F

    mul-float v0, p6, v7

    .line 1942
    iput v0, v9, Lcv;->U:F

    mul-float v0, p7, v7

    .line 1943
    iput v0, v9, Lcv;->Y:F

    mul-float v0, p5, v2

    .line 1944
    iput v0, v9, Lcv;->R:F

    mul-float v0, p6, v2

    .line 1945
    iput v0, v9, Lcv;->V:F

    mul-float v0, p7, v2

    .line 1946
    iput v0, v9, Lcv;->Z:F

    mul-float v0, p5, v1

    .line 1947
    iput v0, v9, Lcv;->S:F

    mul-float v0, p6, v1

    .line 1948
    iput v0, v9, Lcv;->W:F

    mul-float v0, p7, v1

    .line 1949
    iput v0, v9, Lcv;->aa:F

    int-to-double v6, v11

    int-to-double v4, v8

    int-to-double v2, v12

    .line 1950
    iget-object v1, v9, Lcv;->c:Lxp;

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v26, v2

    move/from16 v2, p2

    move v3, v8

    move-wide/from16 v28, v4

    move/from16 v4, p4

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide/from16 v4, v28

    move-wide/from16 v6, v26

    move/from16 v24, v8

    move/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Lcv;->b(Luu;DDDI)V

    move/from16 v8, v24

    const/4 v6, 0x1

    .line 1953
    :goto_394
    iget-boolean v0, v9, Lcv;->f:Z

    const v18, 0x3f4ccccd    # 0.8f

    if-nez v0, :cond_3b2

    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x2

    move-object/from16 v0, p1

    move/from16 v2, p2

    move v3, v8

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_3ab

    goto :goto_3b2

    :cond_3ab
    move v7, v6

    move/from16 p3, v8

    move v6, v12

    const/4 v12, 0x3

    goto/16 :goto_54d

    .line 1954
    :cond_3b2
    :goto_3b2
    iget v0, v9, Lcv;->O:I

    if-lez v0, :cond_45f

    add-int/lit8 v0, v12, -0x1

    .line 1956
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v14, v8, v0}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->K:F

    .line 1957
    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v10, v1, v11, v2, v0}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->x:F

    .line 1958
    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v10, v1, v11, v3, v0}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->F:F

    .line 1959
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v13, v8, v0}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->L:F

    .line 1961
    iget-boolean v1, v9, Lcv;->af:Z

    if-nez v1, :cond_3ea

    iget-boolean v1, v9, Lcv;->aj:Z

    if-eqz v1, :cond_3e5

    goto :goto_3ea

    .line 1964
    :cond_3e5
    iget v1, v9, Lcv;->K:F

    iput v1, v9, Lcv;->u:F

    goto :goto_3f2

    .line 1962
    :cond_3ea
    :goto_3ea
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v14, v2, v0}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->u:F

    .line 1966
    :goto_3f2
    iget-boolean v1, v9, Lcv;->af:Z

    if-nez v1, :cond_400

    iget-boolean v1, v9, Lcv;->ab:Z

    if-eqz v1, :cond_3fb

    goto :goto_400

    .line 1969
    :cond_3fb
    iget v1, v9, Lcv;->K:F

    iput v1, v9, Lcv;->C:F

    goto :goto_408

    .line 1967
    :cond_400
    :goto_400
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v14, v3, v0}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->C:F

    .line 1971
    :goto_408
    iget-boolean v1, v9, Lcv;->ai:Z

    if-nez v1, :cond_416

    iget-boolean v1, v9, Lcv;->aj:Z

    if-eqz v1, :cond_411

    goto :goto_416

    .line 1974
    :cond_411
    iget v1, v9, Lcv;->L:F

    iput v1, v9, Lcv;->z:F

    goto :goto_41e

    .line 1972
    :cond_416
    :goto_416
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v13, v2, v0}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->z:F

    .line 1976
    :goto_41e
    iget-boolean v1, v9, Lcv;->ai:Z

    if-nez v1, :cond_42c

    iget-boolean v1, v9, Lcv;->ab:Z

    if-eqz v1, :cond_427

    goto :goto_42c

    .line 1979
    :cond_427
    iget v1, v9, Lcv;->L:F

    iput v1, v9, Lcv;->G:F

    goto :goto_434

    .line 1977
    :cond_42c
    :goto_42c
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v13, v3, v0}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->G:F

    :goto_434
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1982
    iget v1, v9, Lcv;->K:F

    iget v2, v9, Lcv;->C:F

    add-float/2addr v2, v1

    iget v3, v9, Lcv;->q:F

    add-float/2addr v2, v3

    iget v4, v9, Lcv;->F:F

    add-float/2addr v2, v4

    div-float v2, v2, v23

    add-float/2addr v4, v3

    .line 1983
    iget v5, v9, Lcv;->L:F

    add-float/2addr v4, v5

    iget v6, v9, Lcv;->G:F

    add-float/2addr v4, v6

    div-float v4, v4, v23

    .line 1984
    iget v6, v9, Lcv;->x:F

    add-float v7, v6, v3

    iget v12, v9, Lcv;->z:F

    add-float/2addr v7, v12

    add-float/2addr v7, v5

    div-float v7, v7, v23

    .line 1985
    iget v5, v9, Lcv;->u:F

    add-float/2addr v5, v1

    add-float/2addr v5, v6

    add-float/2addr v5, v3

    div-float v5, v5, v23

    move v12, v0

    goto :goto_464

    .line 1986
    :cond_45f
    iget v2, v9, Lcv;->q:F

    move v4, v2

    move v5, v4

    move v7, v5

    :goto_464
    if-eqz v17, :cond_469

    move/from16 v0, p5

    goto :goto_46b

    :cond_469
    move/from16 v0, v22

    :goto_46b
    mul-float v0, v0, v18

    .line 1987
    iput v0, v9, Lcv;->S:F

    iput v0, v9, Lcv;->R:F

    iput v0, v9, Lcv;->Q:F

    iput v0, v9, Lcv;->P:F

    if-eqz v17, :cond_47a

    move/from16 v1, p6

    goto :goto_47c

    :cond_47a
    move/from16 v1, v22

    :goto_47c
    mul-float v1, v1, v18

    .line 1988
    iput v1, v9, Lcv;->W:F

    iput v1, v9, Lcv;->V:F

    iput v1, v9, Lcv;->U:F

    iput v1, v9, Lcv;->T:F

    if-eqz v17, :cond_48b

    move/from16 v3, p7

    goto :goto_48d

    :cond_48b
    move/from16 v3, v22

    :goto_48d
    mul-float v3, v3, v18

    mul-float v6, v0, v2

    .line 1990
    iput v6, v9, Lcv;->P:F

    mul-float v6, v1, v2

    .line 1991
    iput v6, v9, Lcv;->T:F

    mul-float/2addr v2, v3

    .line 1992
    iput v2, v9, Lcv;->X:F

    mul-float v2, v0, v4

    .line 1993
    iput v2, v9, Lcv;->Q:F

    mul-float v2, v1, v4

    .line 1994
    iput v2, v9, Lcv;->U:F

    mul-float/2addr v4, v3

    .line 1995
    iput v4, v9, Lcv;->Y:F

    mul-float v2, v0, v7

    .line 1996
    iput v2, v9, Lcv;->R:F

    mul-float v2, v1, v7

    .line 1997
    iput v2, v9, Lcv;->V:F

    mul-float/2addr v7, v3

    .line 1998
    iput v7, v9, Lcv;->Z:F

    mul-float/2addr v0, v5

    .line 1999
    iput v0, v9, Lcv;->S:F

    mul-float/2addr v1, v5

    .line 2000
    iput v1, v9, Lcv;->W:F

    mul-float/2addr v3, v5

    .line 2001
    iput v3, v9, Lcv;->aa:F

    .line 2003
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x2

    move-object/from16 v0, p1

    move/from16 v2, p2

    move v3, v8

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v15

    int-to-double v6, v11

    int-to-double v4, v8

    int-to-double v2, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v26, v2

    move-wide v2, v6

    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    move-wide/from16 v6, v26

    move/from16 p3, v8

    move v8, v15

    .line 2004
    invoke-virtual/range {v0 .. v8}, Lcv;->c(Luu;DDDI)V

    .line 2006
    sget-boolean v0, Lcv;->a:Z

    if-eqz v0, :cond_547

    const/4 v8, 0x3

    if-ne v15, v8, :cond_543

    iget v0, v9, Lcv;->d:I

    if-gez v0, :cond_543

    .line 2007
    iget v0, v9, Lcv;->P:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->P:F

    .line 2008
    iget v0, v9, Lcv;->Q:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->Q:F

    .line 2009
    iget v0, v9, Lcv;->R:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->R:F

    .line 2010
    iget v0, v9, Lcv;->S:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->S:F

    .line 2011
    iget v0, v9, Lcv;->T:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->T:F

    .line 2012
    iget v0, v9, Lcv;->U:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->U:F

    .line 2013
    iget v0, v9, Lcv;->V:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->V:F

    .line 2014
    iget v0, v9, Lcv;->W:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->W:F

    .line 2015
    iget v0, v9, Lcv;->X:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->X:F

    .line 2016
    iget v0, v9, Lcv;->Y:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->Y:F

    .line 2017
    iget v0, v9, Lcv;->Z:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->Z:F

    .line 2018
    iget v0, v9, Lcv;->aa:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->aa:F

    const/16 v15, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v30

    move-wide/from16 v4, v28

    move-wide/from16 v6, v26

    move/from16 p4, v12

    move v12, v8

    move v8, v15

    .line 2019
    invoke-virtual/range {v0 .. v8}, Lcv;->c(Luu;DDDI)V

    goto :goto_54a

    :cond_543
    move/from16 p4, v12

    move v12, v8

    goto :goto_54a

    :cond_547
    move/from16 p4, v12

    const/4 v12, 0x3

    :goto_54a
    move/from16 v6, p4

    const/4 v7, 0x1

    .line 2024
    :goto_54d
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_568

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v4, v6, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_563

    goto :goto_568

    :cond_563
    move/from16 v15, p3

    move v13, v6

    goto/16 :goto_70c

    .line 2025
    :cond_568
    :goto_568
    iget v0, v9, Lcv;->O:I

    if-lez v0, :cond_616

    add-int/lit8 v6, v6, 0x1

    .line 2028
    iget-object v0, v9, Lcv;->c:Lxp;

    move/from16 v15, p3

    invoke-virtual {v10, v0, v14, v15, v6}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->M:F

    .line 2029
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v13, v15, v6}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->N:F

    .line 2030
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v8, v15, -0x1

    invoke-virtual {v10, v0, v11, v8, v6}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->y:F

    .line 2031
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v15, 0x1

    invoke-virtual {v10, v0, v11, v1, v6}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->I:F

    .line 2033
    iget-boolean v0, v9, Lcv;->ah:Z

    if-nez v0, :cond_5a2

    iget-boolean v0, v9, Lcv;->am:Z

    if-eqz v0, :cond_59d

    goto :goto_5a2

    .line 2036
    :cond_59d
    iget v0, v9, Lcv;->M:F

    iput v0, v9, Lcv;->w:F

    goto :goto_5aa

    .line 2034
    :cond_5a2
    :goto_5a2
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v14, v8, v6}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->w:F

    .line 2038
    :goto_5aa
    iget-boolean v0, v9, Lcv;->ah:Z

    if-nez v0, :cond_5b8

    iget-boolean v0, v9, Lcv;->ae:Z

    if-eqz v0, :cond_5b3

    goto :goto_5b8

    .line 2041
    :cond_5b3
    iget v0, v9, Lcv;->M:F

    iput v0, v9, Lcv;->E:F

    goto :goto_5c0

    .line 2039
    :cond_5b8
    :goto_5b8
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v14, v1, v6}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->E:F

    .line 2043
    :goto_5c0
    iget-boolean v0, v9, Lcv;->ag:Z

    if-nez v0, :cond_5ce

    iget-boolean v0, v9, Lcv;->am:Z

    if-eqz v0, :cond_5c9

    goto :goto_5ce

    .line 2046
    :cond_5c9
    iget v0, v9, Lcv;->N:F

    iput v0, v9, Lcv;->B:F

    goto :goto_5d6

    .line 2044
    :cond_5ce
    :goto_5ce
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v13, v8, v6}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->B:F

    .line 2048
    :goto_5d6
    iget-boolean v0, v9, Lcv;->ag:Z

    if-nez v0, :cond_5e4

    iget-boolean v0, v9, Lcv;->ae:Z

    if-eqz v0, :cond_5df

    goto :goto_5e4

    .line 2051
    :cond_5df
    iget v0, v9, Lcv;->N:F

    iput v0, v9, Lcv;->J:F

    goto :goto_5ec

    .line 2049
    :cond_5e4
    :goto_5e4
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v13, v1, v6}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->J:F

    :goto_5ec
    add-int/lit8 v6, v6, -0x1

    .line 2054
    iget v0, v9, Lcv;->M:F

    iget v1, v9, Lcv;->E:F

    add-float/2addr v1, v0

    iget v2, v9, Lcv;->t:F

    add-float/2addr v1, v2

    iget v3, v9, Lcv;->I:F

    add-float/2addr v1, v3

    div-float v1, v1, v23

    add-float/2addr v3, v2

    .line 2055
    iget v4, v9, Lcv;->N:F

    add-float/2addr v3, v4

    iget v5, v9, Lcv;->J:F

    add-float/2addr v3, v5

    div-float v3, v3, v23

    .line 2056
    iget v5, v9, Lcv;->y:F

    add-float v7, v5, v2

    iget v8, v9, Lcv;->B:F

    add-float/2addr v7, v8

    add-float/2addr v7, v4

    div-float v7, v7, v23

    .line 2057
    iget v4, v9, Lcv;->w:F

    add-float/2addr v4, v0

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    div-float v4, v4, v23

    goto :goto_61d

    :cond_616
    move/from16 v15, p3

    .line 2058
    iget v1, v9, Lcv;->t:F

    move v3, v1

    move v4, v3

    move v7, v4

    :goto_61d
    move v13, v6

    if-eqz v19, :cond_623

    move/from16 v0, p5

    goto :goto_625

    :cond_623
    move/from16 v0, v22

    :goto_625
    mul-float v0, v0, v18

    .line 2059
    iput v0, v9, Lcv;->S:F

    iput v0, v9, Lcv;->R:F

    iput v0, v9, Lcv;->Q:F

    iput v0, v9, Lcv;->P:F

    if-eqz v19, :cond_634

    move/from16 v2, p6

    goto :goto_636

    :cond_634
    move/from16 v2, v22

    :goto_636
    mul-float v2, v2, v18

    .line 2060
    iput v2, v9, Lcv;->W:F

    iput v2, v9, Lcv;->V:F

    iput v2, v9, Lcv;->U:F

    iput v2, v9, Lcv;->T:F

    if-eqz v19, :cond_645

    move/from16 v5, p7

    goto :goto_647

    :cond_645
    move/from16 v5, v22

    :goto_647
    mul-float v5, v5, v18

    mul-float v6, v0, v1

    .line 2062
    iput v6, v9, Lcv;->P:F

    mul-float v6, v2, v1

    .line 2063
    iput v6, v9, Lcv;->T:F

    mul-float/2addr v1, v5

    .line 2064
    iput v1, v9, Lcv;->X:F

    mul-float v1, v0, v4

    .line 2065
    iput v1, v9, Lcv;->Q:F

    mul-float v1, v2, v4

    .line 2066
    iput v1, v9, Lcv;->U:F

    mul-float/2addr v4, v5

    .line 2067
    iput v4, v9, Lcv;->Y:F

    mul-float v1, v0, v7

    .line 2068
    iput v1, v9, Lcv;->R:F

    mul-float v1, v2, v7

    .line 2069
    iput v1, v9, Lcv;->V:F

    mul-float/2addr v7, v5

    .line 2070
    iput v7, v9, Lcv;->Z:F

    mul-float/2addr v0, v3

    .line 2071
    iput v0, v9, Lcv;->S:F

    mul-float/2addr v2, v3

    .line 2072
    iput v2, v9, Lcv;->W:F

    mul-float/2addr v5, v3

    .line 2073
    iput v5, v9, Lcv;->aa:F

    .line 2074
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x3

    move-object/from16 v0, p1

    move/from16 v2, p2

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v8

    int-to-double v6, v11

    int-to-double v4, v15

    int-to-double v2, v13

    .line 2075
    iget-object v1, v9, Lcv;->c:Lxp;

    const/16 v17, 0x3

    move-wide/from16 v18, v2

    move/from16 v2, p2

    move v3, v15

    move-wide/from16 v24, v4

    move v4, v13

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide/from16 v4, v24

    move-wide/from16 v26, v6

    move-wide/from16 v6, v18

    move/from16 p3, v13

    move v13, v8

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcv;->d(Luu;DDDI)V

    .line 2076
    sget-boolean v0, Lcv;->a:Z

    if-eqz v0, :cond_709

    if-ne v13, v12, :cond_709

    iget v0, v9, Lcv;->d:I

    if-gez v0, :cond_709

    .line 2077
    iget v0, v9, Lcv;->P:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->P:F

    .line 2078
    iget v0, v9, Lcv;->Q:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->Q:F

    .line 2079
    iget v0, v9, Lcv;->R:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->R:F

    .line 2080
    iget v0, v9, Lcv;->S:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->S:F

    .line 2081
    iget v0, v9, Lcv;->T:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->T:F

    .line 2082
    iget v0, v9, Lcv;->U:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->U:F

    .line 2083
    iget v0, v9, Lcv;->V:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->V:F

    .line 2084
    iget v0, v9, Lcv;->W:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->W:F

    .line 2085
    iget v0, v9, Lcv;->X:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->X:F

    .line 2086
    iget v0, v9, Lcv;->Y:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->Y:F

    .line 2087
    iget v0, v9, Lcv;->Z:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->Z:F

    .line 2088
    iget v0, v9, Lcv;->aa:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->aa:F

    const/16 v8, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    move-wide/from16 v4, v24

    move-wide/from16 v6, v18

    .line 2089
    invoke-virtual/range {v0 .. v8}, Lcv;->d(Luu;DDDI)V

    :cond_709
    move/from16 v13, p3

    const/4 v7, 0x1

    .line 2093
    :goto_70c
    iget-boolean v0, v9, Lcv;->f:Z

    const v17, 0x3f19999a    # 0.6f

    if-nez v0, :cond_725

    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x4

    move-object/from16 v0, p1

    move v2, v14

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_722

    goto :goto_725

    :cond_722
    const/4 v14, 0x1

    goto/16 :goto_8b6

    .line 2094
    :cond_725
    :goto_725
    iget v0, v9, Lcv;->O:I

    if-lez v0, :cond_7d6

    add-int/lit8 v0, v11, -0x1

    .line 2096
    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v8, v15, -0x1

    invoke-virtual {v10, v1, v0, v8, v13}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->v:F

    .line 2097
    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v2, v13, -0x1

    invoke-virtual {v10, v1, v0, v15, v2}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->K:F

    .line 2098
    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v10, v1, v0, v15, v3}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->M:F

    .line 2099
    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v10, v1, v0, v4, v13}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->D:F

    .line 2101
    iget-boolean v1, v9, Lcv;->af:Z

    if-nez v1, :cond_761

    iget-boolean v1, v9, Lcv;->al:Z

    if-eqz v1, :cond_75c

    goto :goto_761

    .line 2104
    :cond_75c
    iget v1, v9, Lcv;->K:F

    iput v1, v9, Lcv;->u:F

    goto :goto_769

    .line 2102
    :cond_761
    :goto_761
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v0, v8, v2}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->u:F

    .line 2106
    :goto_769
    iget-boolean v1, v9, Lcv;->ah:Z

    if-nez v1, :cond_777

    iget-boolean v1, v9, Lcv;->al:Z

    if-eqz v1, :cond_772

    goto :goto_777

    .line 2109
    :cond_772
    iget v1, v9, Lcv;->M:F

    iput v1, v9, Lcv;->w:F

    goto :goto_77f

    .line 2107
    :cond_777
    :goto_777
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v0, v8, v3}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->w:F

    .line 2111
    :goto_77f
    iget-boolean v1, v9, Lcv;->af:Z

    if-nez v1, :cond_78d

    iget-boolean v1, v9, Lcv;->ad:Z

    if-eqz v1, :cond_788

    goto :goto_78d

    .line 2114
    :cond_788
    iget v1, v9, Lcv;->K:F

    iput v1, v9, Lcv;->C:F

    goto :goto_795

    .line 2112
    :cond_78d
    :goto_78d
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v0, v4, v2}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->C:F

    .line 2116
    :goto_795
    iget-boolean v1, v9, Lcv;->ah:Z

    if-nez v1, :cond_7a3

    iget-boolean v1, v9, Lcv;->ad:Z

    if-eqz v1, :cond_79e

    goto :goto_7a3

    .line 2119
    :cond_79e
    iget v1, v9, Lcv;->M:F

    iput v1, v9, Lcv;->E:F

    goto :goto_7ab

    .line 2117
    :cond_7a3
    :goto_7a3
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v1, v0, v4, v3}, Luu;->d(Lxp;III)F

    move-result v1

    iput v1, v9, Lcv;->E:F

    :goto_7ab
    const/4 v14, 0x1

    add-int/2addr v0, v14

    .line 2122
    iget v1, v9, Lcv;->v:F

    iget v2, v9, Lcv;->w:F

    add-float/2addr v2, v1

    iget v3, v9, Lcv;->o:F

    add-float/2addr v2, v3

    iget v4, v9, Lcv;->M:F

    add-float/2addr v2, v4

    div-float v2, v2, v23

    add-float/2addr v4, v3

    .line 2123
    iget v5, v9, Lcv;->D:F

    add-float/2addr v4, v5

    iget v6, v9, Lcv;->E:F

    add-float/2addr v4, v6

    div-float v4, v4, v23

    .line 2124
    iget v6, v9, Lcv;->K:F

    add-float v7, v6, v3

    iget v8, v9, Lcv;->C:F

    add-float/2addr v7, v8

    add-float/2addr v7, v5

    div-float v7, v7, v23

    .line 2125
    iget v5, v9, Lcv;->u:F

    add-float/2addr v5, v1

    add-float/2addr v5, v6

    add-float/2addr v5, v3

    div-float v5, v5, v23

    move v11, v0

    goto :goto_7dc

    :cond_7d6
    const/4 v14, 0x1

    .line 2126
    iget v2, v9, Lcv;->o:F

    move v4, v2

    move v5, v4

    move v7, v5

    :goto_7dc
    if-eqz v20, :cond_7e1

    move/from16 v0, p5

    goto :goto_7e3

    :cond_7e1
    move/from16 v0, v22

    :goto_7e3
    mul-float v0, v0, v17

    .line 2127
    iput v0, v9, Lcv;->S:F

    iput v0, v9, Lcv;->R:F

    iput v0, v9, Lcv;->Q:F

    iput v0, v9, Lcv;->P:F

    if-eqz v20, :cond_7f2

    move/from16 v1, p6

    goto :goto_7f4

    :cond_7f2
    move/from16 v1, v22

    :goto_7f4
    mul-float v1, v1, v17

    .line 2128
    iput v1, v9, Lcv;->W:F

    iput v1, v9, Lcv;->V:F

    iput v1, v9, Lcv;->U:F

    iput v1, v9, Lcv;->T:F

    if-eqz v20, :cond_803

    move/from16 v3, p7

    goto :goto_805

    :cond_803
    move/from16 v3, v22

    :goto_805
    mul-float v3, v3, v17

    mul-float v6, v0, v4

    .line 2130
    iput v6, v9, Lcv;->P:F

    mul-float v6, v1, v4

    .line 2131
    iput v6, v9, Lcv;->T:F

    mul-float/2addr v4, v3

    .line 2132
    iput v4, v9, Lcv;->X:F

    mul-float v4, v0, v7

    .line 2133
    iput v4, v9, Lcv;->Q:F

    mul-float v4, v1, v7

    .line 2134
    iput v4, v9, Lcv;->U:F

    mul-float/2addr v7, v3

    .line 2135
    iput v7, v9, Lcv;->Y:F

    mul-float v4, v0, v5

    .line 2136
    iput v4, v9, Lcv;->R:F

    mul-float v4, v1, v5

    .line 2137
    iput v4, v9, Lcv;->V:F

    mul-float/2addr v5, v3

    .line 2138
    iput v5, v9, Lcv;->Z:F

    mul-float/2addr v0, v2

    .line 2139
    iput v0, v9, Lcv;->S:F

    mul-float/2addr v1, v2

    .line 2140
    iput v1, v9, Lcv;->W:F

    mul-float/2addr v3, v2

    .line 2141
    iput v3, v9, Lcv;->aa:F

    .line 2142
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x4

    move-object/from16 v0, p1

    move v2, v11

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v8

    int-to-double v6, v11

    int-to-double v4, v15

    int-to-double v2, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v18, v2

    move-wide v2, v6

    move-wide/from16 v24, v4

    move-wide/from16 v26, v6

    move-wide/from16 v6, v18

    move/from16 p2, v8

    .line 2143
    invoke-virtual/range {v0 .. v8}, Lcv;->e(Luu;DDDI)V

    .line 2144
    sget-boolean v0, Lcv;->a:Z

    if-eqz v0, :cond_8b5

    move/from16 v0, p2

    if-ne v0, v12, :cond_8b5

    iget v0, v9, Lcv;->d:I

    if-gez v0, :cond_8b5

    .line 2145
    iget v0, v9, Lcv;->P:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->P:F

    .line 2146
    iget v0, v9, Lcv;->Q:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->Q:F

    .line 2147
    iget v0, v9, Lcv;->R:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->R:F

    .line 2148
    iget v0, v9, Lcv;->S:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->S:F

    .line 2149
    iget v0, v9, Lcv;->T:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->T:F

    .line 2150
    iget v0, v9, Lcv;->U:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->U:F

    .line 2151
    iget v0, v9, Lcv;->V:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->V:F

    .line 2152
    iget v0, v9, Lcv;->W:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->W:F

    .line 2153
    iget v0, v9, Lcv;->X:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->X:F

    .line 2154
    iget v0, v9, Lcv;->Y:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->Y:F

    .line 2155
    iget v0, v9, Lcv;->Z:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->Z:F

    .line 2156
    iget v0, v9, Lcv;->aa:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->aa:F

    const/16 v8, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    move-wide/from16 v4, v24

    move-wide/from16 v6, v18

    .line 2157
    invoke-virtual/range {v0 .. v8}, Lcv;->e(Luu;DDDI)V

    :cond_8b5
    move v7, v14

    .line 2161
    :goto_8b6
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_8ce

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v2, v11, 0x1

    const/4 v5, 0x5

    move-object/from16 v0, p1

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_8ca

    goto :goto_8ce

    :cond_8ca
    move v13, v7

    :goto_8cb
    const/4 v0, 0x0

    goto/16 :goto_a5a

    .line 2162
    :cond_8ce
    :goto_8ce
    iget v0, v9, Lcv;->O:I

    if-lez v0, :cond_97e

    add-int/lit8 v11, v11, 0x1

    .line 2164
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v8, v15, -0x1

    invoke-virtual {v10, v0, v11, v8, v13}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->A:F

    .line 2165
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v13, -0x1

    invoke-virtual {v10, v0, v11, v15, v1}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->L:F

    .line 2166
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v2, v13, 0x1

    invoke-virtual {v10, v0, v11, v15, v2}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->N:F

    .line 2167
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v10, v0, v11, v3, v13}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->H:F

    .line 2169
    iget-boolean v0, v9, Lcv;->ak:Z

    if-nez v0, :cond_90a

    iget-boolean v0, v9, Lcv;->ai:Z

    if-eqz v0, :cond_905

    goto :goto_90a

    .line 2172
    :cond_905
    iget v0, v9, Lcv;->L:F

    iput v0, v9, Lcv;->z:F

    goto :goto_912

    .line 2170
    :cond_90a
    :goto_90a
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v11, v8, v1}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->z:F

    .line 2174
    :goto_912
    iget-boolean v0, v9, Lcv;->ak:Z

    if-nez v0, :cond_920

    iget-boolean v0, v9, Lcv;->ag:Z

    if-eqz v0, :cond_91b

    goto :goto_920

    .line 2177
    :cond_91b
    iget v0, v9, Lcv;->N:F

    iput v0, v9, Lcv;->B:F

    goto :goto_928

    .line 2175
    :cond_920
    :goto_920
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v11, v8, v2}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->B:F

    .line 2179
    :goto_928
    iget-boolean v0, v9, Lcv;->ac:Z

    if-nez v0, :cond_936

    iget-boolean v0, v9, Lcv;->ai:Z

    if-eqz v0, :cond_931

    goto :goto_936

    .line 2182
    :cond_931
    iget v0, v9, Lcv;->L:F

    iput v0, v9, Lcv;->G:F

    goto :goto_93e

    .line 2180
    :cond_936
    :goto_936
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v11, v3, v1}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->G:F

    .line 2184
    :goto_93e
    iget-boolean v0, v9, Lcv;->ac:Z

    if-nez v0, :cond_94c

    iget-boolean v0, v9, Lcv;->ag:Z

    if-eqz v0, :cond_947

    goto :goto_94c

    .line 2187
    :cond_947
    iget v0, v9, Lcv;->N:F

    iput v0, v9, Lcv;->J:F

    goto :goto_954

    .line 2185
    :cond_94c
    :goto_94c
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v11, v3, v2}, Luu;->d(Lxp;III)F

    move-result v0

    iput v0, v9, Lcv;->J:F

    :goto_954
    add-int/lit8 v11, v11, -0x1

    .line 2190
    iget v0, v9, Lcv;->A:F

    iget v1, v9, Lcv;->B:F

    add-float/2addr v1, v0

    iget v2, v9, Lcv;->r:F

    add-float/2addr v1, v2

    iget v3, v9, Lcv;->N:F

    add-float/2addr v1, v3

    div-float v1, v1, v23

    add-float/2addr v3, v2

    .line 2191
    iget v4, v9, Lcv;->H:F

    add-float/2addr v3, v4

    iget v5, v9, Lcv;->J:F

    add-float/2addr v3, v5

    div-float v3, v3, v23

    .line 2192
    iget v5, v9, Lcv;->L:F

    add-float v6, v5, v2

    iget v7, v9, Lcv;->G:F

    add-float/2addr v6, v7

    add-float/2addr v6, v4

    div-float v6, v6, v23

    .line 2193
    iget v4, v9, Lcv;->z:F

    add-float/2addr v4, v0

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    div-float v4, v4, v23

    goto :goto_983

    .line 2194
    :cond_97e
    iget v1, v9, Lcv;->r:F

    move v3, v1

    move v4, v3

    move v6, v4

    :goto_983
    if-eqz v21, :cond_988

    move/from16 v0, p5

    goto :goto_98a

    :cond_988
    move/from16 v0, v22

    :goto_98a
    mul-float v0, v0, v17

    .line 2195
    iput v0, v9, Lcv;->S:F

    iput v0, v9, Lcv;->R:F

    iput v0, v9, Lcv;->Q:F

    iput v0, v9, Lcv;->P:F

    if-eqz v21, :cond_999

    move/from16 v2, p6

    goto :goto_99b

    :cond_999
    move/from16 v2, v22

    :goto_99b
    mul-float v2, v2, v17

    .line 2196
    iput v2, v9, Lcv;->W:F

    iput v2, v9, Lcv;->V:F

    iput v2, v9, Lcv;->U:F

    iput v2, v9, Lcv;->T:F

    if-eqz v21, :cond_9a9

    move/from16 v22, p7

    :cond_9a9
    mul-float v22, v22, v17

    mul-float v5, v0, v1

    .line 2198
    iput v5, v9, Lcv;->P:F

    mul-float v5, v2, v1

    .line 2199
    iput v5, v9, Lcv;->T:F

    mul-float v1, v1, v22

    .line 2200
    iput v1, v9, Lcv;->X:F

    mul-float v1, v0, v4

    .line 2201
    iput v1, v9, Lcv;->Q:F

    mul-float v1, v2, v4

    .line 2202
    iput v1, v9, Lcv;->U:F

    mul-float v4, v4, v22

    .line 2203
    iput v4, v9, Lcv;->Y:F

    mul-float v1, v0, v6

    .line 2204
    iput v1, v9, Lcv;->R:F

    mul-float v1, v2, v6

    .line 2205
    iput v1, v9, Lcv;->V:F

    mul-float v6, v6, v22

    .line 2206
    iput v6, v9, Lcv;->Z:F

    mul-float/2addr v0, v3

    .line 2207
    iput v0, v9, Lcv;->S:F

    mul-float/2addr v2, v3

    .line 2208
    iput v2, v9, Lcv;->W:F

    mul-float v0, v22, v3

    .line 2209
    iput v0, v9, Lcv;->aa:F

    .line 2211
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x5

    move-object/from16 v0, p1

    move v2, v11

    move v3, v15

    move v4, v13

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v8

    int-to-double v6, v11

    int-to-double v4, v15

    int-to-double v2, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v15, v2

    move-wide v2, v6

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    move-wide v6, v15

    move v11, v8

    .line 2212
    invoke-virtual/range {v0 .. v8}, Lcv;->f(Luu;DDDI)V

    .line 2213
    sget-boolean v0, Lcv;->a:Z

    if-eqz v0, :cond_a57

    if-ne v11, v12, :cond_a57

    iget v0, v9, Lcv;->d:I

    if-gez v0, :cond_a57

    .line 2214
    iget v0, v9, Lcv;->P:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->P:F

    .line 2215
    iget v0, v9, Lcv;->Q:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->Q:F

    .line 2216
    iget v0, v9, Lcv;->R:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->R:F

    .line 2217
    iget v0, v9, Lcv;->S:F

    mul-float v0, v0, p5

    iput v0, v9, Lcv;->S:F

    .line 2218
    iget v0, v9, Lcv;->T:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->T:F

    .line 2219
    iget v0, v9, Lcv;->U:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->U:F

    .line 2220
    iget v0, v9, Lcv;->V:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->V:F

    .line 2221
    iget v0, v9, Lcv;->W:F

    mul-float v0, v0, p6

    iput v0, v9, Lcv;->W:F

    .line 2222
    iget v0, v9, Lcv;->X:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->X:F

    .line 2223
    iget v0, v9, Lcv;->Y:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->Y:F

    .line 2224
    iget v0, v9, Lcv;->Z:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->Z:F

    .line 2225
    iget v0, v9, Lcv;->aa:F

    mul-float v0, v0, p7

    iput v0, v9, Lcv;->aa:F

    const/16 v8, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v19

    move-wide/from16 v4, v17

    move-wide v6, v15

    .line 2226
    invoke-virtual/range {v0 .. v8}, Lcv;->f(Luu;DDDI)V

    :cond_a57
    move v13, v14

    goto/16 :goto_8cb

    .line 2230
    :goto_a5a
    iput-boolean v0, v9, Lcv;->m:Z

    return v13
.end method

.method public b(Luu;DDDI)V
    .registers 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2745
    sget-object v12, Lnw;->a:Lnw;

    .line 2747
    iget v2, v0, Lcv;->d:I

    if-ltz v2, :cond_b

    goto :goto_d

    :cond_b
    move/from16 v2, p8

    :goto_d
    and-int/lit8 v3, v2, 0xf

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v2, v2, 0xf0

    int-to-double v4, v3

    .line 2751
    iget-wide v6, v1, Luu;->bs:D

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    const-wide/high16 v10, 0x4070000000000000L    # 256.0

    div-double/2addr v6, v10

    .line 2752
    iget-wide v13, v1, Luu;->bv:D

    mul-double/2addr v13, v8

    add-double/2addr v13, v4

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v13, v15

    div-double/2addr v13, v10

    int-to-double v10, v2

    move-wide/from16 v19, v6

    .line 2753
    iget-wide v6, v1, Luu;->bu:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    const-wide/high16 v17, 0x4070000000000000L    # 256.0

    div-double v6, v6, v17

    move-wide/from16 v21, v6

    .line 2754
    iget-wide v6, v1, Luu;->bx:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v10

    sub-double/2addr v6, v15

    div-double v6, v6, v17

    .line 2756
    iget-wide v8, v1, Luu;->bs:D

    const-wide/16 v25, 0x0

    cmpg-double v8, v8, v25

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    const/16 v29, 0x0

    const/high16 v30, 0x43800000    # 256.0f

    move-wide/from16 v31, v10

    if-ltz v8, :cond_56

    iget-wide v9, v1, Luu;->bv:D

    cmpl-double v8, v9, v27

    if-lez v8, :cond_53

    goto :goto_56

    :cond_53
    move-wide/from16 v9, v19

    goto :goto_63

    :cond_56
    :goto_56
    int-to-float v8, v3

    add-float v9, v8, v29

    div-float v9, v9, v30

    float-to-double v9, v9

    const v11, 0x417fd70a    # 15.99f

    add-float/2addr v8, v11

    div-float v8, v8, v30

    float-to-double v13, v8

    :goto_63
    move-wide/from16 v19, v6

    .line 2760
    iget-wide v6, v1, Luu;->bu:D

    cmpg-double v6, v6, v25

    if-ltz v6, :cond_75

    iget-wide v6, v1, Luu;->bx:D

    cmpl-double v6, v6, v27

    if-lez v6, :cond_72

    goto :goto_75

    :cond_72
    move-wide/from16 v6, v21

    goto :goto_8a

    :cond_75
    :goto_75
    int-to-float v6, v2

    add-float v29, v6, v29

    div-float v7, v29, v30

    float-to-double v7, v7

    const v11, 0x417fd70a    # 15.99f

    add-float/2addr v6, v11

    div-float v6, v6, v30

    move-wide/from16 v19, v7

    float-to-double v6, v6

    move-wide/from16 v35, v6

    move-wide/from16 v6, v19

    move-wide/from16 v19, v35

    .line 2767
    :goto_8a
    iget v8, v0, Lcv;->k:I

    const/4 v11, 0x1

    if-ne v8, v11, :cond_c2

    .line 2768
    iget-wide v6, v1, Luu;->bu:D

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    mul-double v6, v6, v21

    add-double/2addr v6, v4

    const-wide/high16 v17, 0x4070000000000000L    # 256.0

    div-double v6, v6, v17

    add-int/lit8 v2, v2, 0x10

    int-to-double v2, v2

    .line 2769
    iget-wide v8, v1, Luu;->bv:D

    mul-double v8, v8, v21

    sub-double v8, v2, v8

    div-double v8, v8, v17

    .line 2770
    iget-wide v10, v1, Luu;->bx:D

    mul-double v10, v10, v21

    add-double/2addr v4, v10

    div-double v4, v4, v17

    .line 2771
    iget-wide v10, v1, Luu;->bs:D

    mul-double v10, v10, v21

    sub-double/2addr v2, v10

    div-double v2, v2, v17

    move-wide/from16 v21, v2

    move-wide/from16 v23, v21

    move-wide/from16 v17, v4

    move-wide v13, v6

    move-wide v15, v13

    move-wide v10, v8

    move-wide/from16 v19, v10

    move-wide/from16 v8, v17

    goto/16 :goto_13c

    :cond_c2
    const-wide/high16 v17, 0x4070000000000000L    # 256.0

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    const/4 v4, 0x2

    if-ne v8, v4, :cond_f9

    add-int/lit8 v3, v3, 0x10

    int-to-double v2, v3

    .line 2783
    iget-wide v4, v1, Luu;->bx:D

    mul-double v4, v4, v21

    sub-double v4, v2, v4

    div-double v4, v4, v17

    .line 2784
    iget-wide v6, v1, Luu;->bs:D

    mul-double v6, v6, v21

    add-double v10, v31, v6

    div-double v10, v10, v17

    .line 2785
    iget-wide v6, v1, Luu;->bu:D

    mul-double v6, v6, v21

    sub-double/2addr v2, v6

    div-double v2, v2, v17

    .line 2786
    iget-wide v6, v1, Luu;->bv:D

    mul-double v6, v6, v21

    add-double v6, v31, v6

    div-double v6, v6, v17

    move-wide v13, v2

    move-wide v15, v13

    move-wide v8, v4

    move-wide/from16 v17, v8

    move-wide/from16 v19, v6

    move-wide/from16 v21, v10

    move-wide/from16 v23, v21

    move-wide/from16 v10, v19

    goto :goto_13c

    :cond_f9
    const/4 v4, 0x3

    if-ne v8, v4, :cond_130

    add-int/lit8 v3, v3, 0x10

    int-to-double v3, v3

    .line 2798
    iget-wide v5, v1, Luu;->bs:D

    mul-double v5, v5, v21

    sub-double v5, v3, v5

    div-double v5, v5, v17

    .line 2799
    iget-wide v7, v1, Luu;->bv:D

    mul-double v7, v7, v21

    sub-double/2addr v3, v7

    sub-double/2addr v3, v15

    div-double v3, v3, v17

    add-int/lit8 v2, v2, 0x10

    int-to-double v7, v2

    .line 2800
    iget-wide v9, v1, Luu;->bu:D

    mul-double v9, v9, v21

    sub-double v9, v7, v9

    div-double v9, v9, v17

    .line 2801
    iget-wide v13, v1, Luu;->bx:D

    mul-double v13, v13, v21

    sub-double/2addr v7, v13

    sub-double/2addr v7, v15

    div-double v7, v7, v17

    move-wide v13, v3

    move-wide v15, v5

    move-wide/from16 v17, v15

    move-wide/from16 v23, v7

    move-wide/from16 v19, v9

    move-wide/from16 v21, v19

    move-wide/from16 v10, v23

    move-wide v8, v13

    goto :goto_13c

    :cond_130
    move-wide/from16 v21, v6

    move-wide v15, v9

    move-wide/from16 v17, v15

    move-wide v8, v13

    move-wide/from16 v10, v19

    move-wide/from16 v23, v10

    move-wide/from16 v19, v21

    .line 2810
    :goto_13c
    iget-wide v2, v1, Luu;->bs:D

    add-double v25, p2, v2

    .line 2811
    iget-wide v2, v1, Luu;->bv:D

    add-double v27, p2, v2

    .line 2812
    iget-wide v2, v1, Luu;->bw:D

    add-double v29, p4, v2

    .line 2813
    iget-wide v2, v1, Luu;->bu:D

    add-double v31, p6, v2

    .line 2814
    iget-wide v1, v1, Luu;->bx:D

    add-double v33, p6, v1

    .line 2816
    iget-boolean v1, v0, Lcv;->m:Z

    if-eqz v1, :cond_1a3

    .line 2817
    iget v1, v0, Lcv;->P:F

    iget v2, v0, Lcv;->T:F

    iget v3, v0, Lcv;->X:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v27

    move-wide/from16 v4, v29

    move-wide/from16 v6, v33

    .line 2818
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 2819
    iget v1, v0, Lcv;->Q:F

    iget v2, v0, Lcv;->U:F

    iget v3, v0, Lcv;->Y:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v27

    move-wide/from16 v6, v31

    move-wide v8, v13

    move-wide/from16 v10, v19

    .line 2820
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 2821
    iget v1, v0, Lcv;->R:F

    iget v2, v0, Lcv;->V:F

    iget v3, v0, Lcv;->Z:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide v8, v15

    move-wide/from16 v10, v21

    .line 2822
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 2823
    iget v1, v0, Lcv;->S:F

    iget v2, v0, Lcv;->W:F

    iget v3, v0, Lcv;->aa:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v6, v33

    move-wide/from16 v8, v17

    move-wide/from16 v10, v23

    .line 2824
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    goto :goto_1c6

    :cond_1a3
    move-object v1, v12

    move-wide/from16 v2, v27

    move-wide/from16 v4, v29

    move-wide/from16 v6, v33

    .line 2826
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v31

    move-wide v8, v13

    move-wide/from16 v10, v19

    .line 2827
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v25

    move-wide v8, v15

    move-wide/from16 v10, v21

    .line 2828
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v33

    move-wide/from16 v8, v17

    move-wide/from16 v10, v23

    .line 2829
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    :goto_1c6
    return-void
.end method

.method public b(Luu;IDDD)V
    .registers 50

    .line 1464
    sget-object v11, Lnw;->a:Lnw;

    const/4 v0, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1466
    invoke-virtual {v1, v0, v2}, Luu;->a(II)I

    move-result v0

    move-object/from16 v12, p0

    .line 1468
    iget v1, v12, Lcv;->d:I

    if-ltz v1, :cond_12

    move v0, v1

    :cond_12
    and-int/lit8 v1, v0, 0xf

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v0, v0, 0xf0

    int-to-float v1, v1

    const/high16 v2, 0x43800000    # 256.0f

    div-float v3, v1, v2

    float-to-double v13, v3

    const v3, 0x417fd70a    # 15.99f

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    float-to-double v9, v1

    int-to-float v0, v0

    div-float v1, v0, v2

    float-to-double v7, v1

    add-float/2addr v0, v3

    div-float/2addr v0, v2

    float-to-double v5, v0

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double v17, p3, v15

    const-wide/high16 v19, 0x3fd0000000000000L    # 0.25

    sub-double v21, v17, v19

    add-double v23, v17, v19

    add-double v25, p7, v15

    sub-double v27, v25, v15

    add-double v29, v25, v15

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v31, p5, v0

    move-object v0, v11

    move-wide/from16 v1, v21

    move-wide/from16 v3, v31

    move-wide/from16 v33, v5

    move-wide/from16 v5, v27

    move-wide/from16 v35, v7

    move-wide v7, v13

    move-wide/from16 v37, v9

    move-wide/from16 v9, v35

    .line 1481
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    const-wide/16 v0, 0x0

    add-double v39, p5, v0

    move-object v0, v11

    move-wide/from16 v1, v21

    move-wide/from16 v3, v39

    move-wide/from16 v9, v33

    .line 1482
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v5, v29

    move-wide/from16 v7, v37

    .line 1483
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v31

    move-wide/from16 v9, v35

    .line 1484
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v7, v13

    .line 1486
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v39

    move-wide/from16 v9, v33

    .line 1487
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v5, v27

    move-wide/from16 v7, v37

    .line 1488
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v31

    move-wide/from16 v9, v35

    .line 1489
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v1, v23

    move-wide/from16 v5, v29

    move-wide v7, v13

    .line 1491
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v39

    move-wide/from16 v9, v33

    .line 1492
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v5, v27

    move-wide/from16 v7, v37

    .line 1493
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v31

    move-wide/from16 v9, v35

    .line 1494
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v7, v13

    .line 1496
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v39

    move-wide/from16 v9, v33

    .line 1497
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v5, v29

    move-wide/from16 v7, v37

    .line 1498
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v31

    move-wide/from16 v9, v35

    .line 1499
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    sub-double v21, v17, v15

    add-double v15, v17, v15

    sub-double v17, v25, v19

    add-double v19, v25, v19

    move-wide/from16 v1, v21

    move-wide/from16 v5, v17

    move-wide v7, v13

    .line 1506
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v39

    move-wide/from16 v9, v33

    .line 1507
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v1, v15

    move-wide/from16 v7, v37

    .line 1508
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v31

    move-wide/from16 v9, v35

    .line 1509
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v7, v13

    .line 1511
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v39

    move-wide/from16 v9, v33

    .line 1512
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v1, v21

    move-wide/from16 v7, v37

    .line 1513
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v31

    move-wide/from16 v9, v35

    .line 1514
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v1, v15

    move-wide/from16 v5, v19

    move-wide v7, v13

    .line 1516
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v39

    move-wide/from16 v9, v33

    .line 1517
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v1, v21

    move-wide/from16 v7, v37

    .line 1518
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v31

    move-wide/from16 v9, v35

    .line 1519
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v7, v13

    .line 1521
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v39

    move-wide/from16 v9, v33

    .line 1522
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v1, v15

    move-wide/from16 v7, v37

    .line 1523
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v3, v31

    move-wide/from16 v9, v35

    .line 1524
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    return-void
.end method

.method public b(Luu;III)Z
    .registers 13

    .line 52
    invoke-virtual {p1}, Luu;->b()I

    move-result v0

    .line 53
    iget-object v1, p0, Lcv;->c:Lxp;

    invoke-virtual {p1, v1, p2, p3, p4}, Luu;->a(Lxp;III)V

    if-nez v0, :cond_10

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->l(Luu;III)Z

    move-result p1

    return p1

    :cond_10
    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    .line 58
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->k(Luu;III)Z

    move-result p1

    return p1

    :cond_18
    const/16 v1, 0xd

    if-ne v0, v1, :cond_21

    .line 60
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->m(Luu;III)Z

    move-result p1

    return p1

    :cond_21
    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 62
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->i(Luu;III)Z

    move-result p1

    return p1

    :cond_29
    const/4 v1, 0x6

    if-ne v0, v1, :cond_31

    .line 64
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->j(Luu;III)Z

    move-result p1

    return p1

    :cond_31
    const/4 v1, 0x2

    if-ne v0, v1, :cond_39

    .line 66
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->c(Luu;III)Z

    move-result p1

    return p1

    :cond_39
    const/4 v1, 0x3

    if-ne v0, v1, :cond_41

    .line 68
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->f(Luu;III)Z

    move-result p1

    return p1

    :cond_41
    const/4 v1, 0x5

    if-ne v0, v1, :cond_49

    .line 70
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->g(Luu;III)Z

    move-result p1

    return p1

    :cond_49
    const/16 v1, 0x8

    if-ne v0, v1, :cond_52

    .line 72
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->h(Luu;III)Z

    move-result p1

    return p1

    :cond_52
    const/4 v1, 0x7

    if-ne v0, v1, :cond_5a

    .line 74
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->p(Luu;III)Z

    move-result p1

    return p1

    :cond_5a
    const/16 v1, 0x9

    if-ne v0, v1, :cond_65

    .line 76
    check-cast p1, Lpc;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->a(Lpc;III)Z

    move-result p1

    return p1

    :cond_65
    const/16 v1, 0xa

    if-ne v0, v1, :cond_6e

    .line 78
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->o(Luu;III)Z

    move-result p1

    return p1

    :cond_6e
    const/16 v1, 0xb

    if-ne v0, v1, :cond_77

    .line 80
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->n(Luu;III)Z

    move-result p1

    return p1

    :cond_77
    const/16 v1, 0xc

    if-ne v0, v1, :cond_80

    .line 82
    invoke-virtual {p0, p1, p2, p3, p4}, Lcv;->e(Luu;III)Z

    move-result p1

    return p1

    :cond_80
    const/16 v1, 0xe

    if-ne v0, v1, :cond_89

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcv;->q(Luu;III)Z

    move-result p1

    return p1

    :cond_89
    const/16 v1, 0xf

    if-ne v0, v1, :cond_92

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcv;->r(Luu;III)Z

    move-result p1

    return p1

    :cond_92
    const/16 v1, 0x10

    if-ne v0, v1, :cond_a1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 88
    invoke-direct/range {v2 .. v7}, Lcv;->b(Luu;IIIZ)Z

    move-result p1

    return p1

    :cond_a1
    const/16 v1, 0x11

    if-ne v0, v1, :cond_b0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 90
    invoke-direct/range {v2 .. v7}, Lcv;->c(Luu;IIIZ)Z

    move-result p1

    return p1

    :cond_b0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Luu;IIIFFF)Z
    .registers 43

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    const/4 v6, 0x0

    .line 2235
    iput-boolean v6, v9, Lcv;->m:Z

    .line 2237
    sget-object v14, Lnw;->a:Lnw;

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v15, p5, v0

    mul-float v16, p6, v0

    mul-float v17, p7, v0

    .line 2261
    sget-object v0, Luu;->v:Lwp;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f19999a    # 0.6f

    if-eq v10, v0, :cond_46

    mul-float v0, p5, v1

    mul-float v4, p5, v2

    mul-float v5, p5, v3

    mul-float v7, p6, v1

    mul-float v8, p6, v2

    mul-float v18, p6, v3

    mul-float v1, v1, p7

    mul-float v2, v2, p7

    mul-float v3, v3, p7

    move/from16 v21, v2

    move/from16 v24, v3

    move/from16 v19, v4

    move/from16 v22, v5

    move/from16 v20, v8

    move/from16 v23, v18

    move/from16 v18, v1

    move v8, v7

    move v7, v0

    goto :goto_56

    :cond_46
    move v7, v1

    move v8, v7

    move/from16 v18, v8

    move/from16 v19, v2

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v3

    move/from16 v23, v22

    move/from16 v24, v23

    .line 2275
    :goto_56
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v11, v12, v13}, Luu;->d(Lxp;III)F

    move-result v25

    .line 2277
    iget-boolean v0, v9, Lcv;->f:Z

    const/16 v26, 0x1

    if-nez v0, :cond_73

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v3, v12, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 2278
    :cond_73
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v12, -0x1

    invoke-virtual {v10, v0, v11, v1, v13}, Luu;->d(Lxp;III)F

    move-result v0

    mul-float/2addr v7, v0

    mul-float/2addr v8, v0

    mul-float v0, v0, v18

    .line 2279
    invoke-virtual {v14, v7, v8, v0}, Lnw;->a(FFF)V

    int-to-double v6, v11

    int-to-double v4, v12

    int-to-double v2, v13

    .line 2280
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v27, v2

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v29, v4

    move/from16 v4, p4

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide/from16 v4, v29

    move-wide/from16 v6, v27

    invoke-virtual/range {v0 .. v8}, Lcv;->a(Luu;DDDI)V

    move/from16 v6, v26

    .line 2284
    :cond_a7
    iget-boolean v0, v9, Lcv;->f:Z

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_be

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v3, v12, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 2285
    :cond_be
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v12, 0x1

    invoke-virtual {v10, v0, v11, v1, v13}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2286
    iget-wide v1, v10, Luu;->bw:D

    cmpl-double v1, v1, v27

    if-eqz v1, :cond_d6

    iget-object v1, v10, Luu;->bA:Lln;

    invoke-virtual {v1}, Lln;->d()Z

    move-result v1

    if-nez v1, :cond_d6

    move/from16 v0, v25

    :cond_d6
    mul-float/2addr v15, v0

    mul-float v1, v16, v0

    mul-float v0, v0, v17

    .line 2287
    invoke-virtual {v14, v15, v1, v0}, Lnw;->a(FFF)V

    int-to-double v6, v11

    int-to-double v4, v12

    int-to-double v2, v13

    .line 2288
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move-wide v15, v2

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v17, v4

    move/from16 v4, p4

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide/from16 v4, v17

    move-wide v6, v15

    invoke-virtual/range {v0 .. v8}, Lcv;->b(Luu;DDDI)V

    move/from16 v6, v26

    .line 2292
    :cond_101
    iget-boolean v0, v9, Lcv;->f:Z

    const-wide/16 v15, 0x0

    const/4 v8, 0x3

    if-nez v0, :cond_11d

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v4, v13, -0x1

    const/4 v5, 0x2

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_11a

    goto :goto_11d

    :cond_11a
    move v15, v8

    goto/16 :goto_189

    .line 2293
    :cond_11d
    :goto_11d
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v13, -0x1

    invoke-virtual {v10, v0, v11, v12, v1}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2294
    iget-wide v1, v10, Luu;->bu:D

    cmpl-double v1, v1, v15

    if-lez v1, :cond_12d

    move/from16 v0, v25

    :cond_12d
    mul-float v6, v19, v0

    mul-float v7, v20, v0

    mul-float v5, v21, v0

    .line 2295
    invoke-virtual {v14, v6, v7, v5}, Lnw;->a(FFF)V

    .line 2297
    iget-object v1, v9, Lcv;->c:Lxp;

    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v4

    int-to-double v2, v11

    int-to-double v0, v12

    int-to-double v10, v13

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v31, v2

    move/from16 v17, v4

    move-wide/from16 v4, v29

    move/from16 v33, v6

    move/from16 v34, v7

    move-wide v6, v10

    move v15, v8

    move/from16 v8, v17

    .line 2298
    invoke-virtual/range {v0 .. v8}, Lcv;->c(Luu;DDDI)V

    .line 2299
    sget-boolean v0, Lcv;->a:Z

    if-eqz v0, :cond_187

    move/from16 v0, v17

    if-ne v0, v15, :cond_187

    iget v0, v9, Lcv;->d:I

    if-gez v0, :cond_187

    mul-float v6, v33, p5

    mul-float v7, v34, p6

    mul-float v5, v18, p7

    .line 2300
    invoke-virtual {v14, v6, v7, v5}, Lnw;->a(FFF)V

    const/16 v8, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v31

    move-wide/from16 v4, v29

    move-wide v6, v10

    .line 2301
    invoke-virtual/range {v0 .. v8}, Lcv;->c(Luu;DDDI)V

    :cond_187
    move/from16 v6, v26

    .line 2306
    :goto_189
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_19e

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v4, v13, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 2307
    :cond_19e
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v13, 0x1

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-virtual {v10, v0, v11, v12, v1}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2308
    iget-wide v1, v10, Luu;->bx:D

    cmpg-double v1, v1, v27

    if-gez v1, :cond_1b2

    move/from16 v0, v25

    :cond_1b2
    mul-float v8, v19, v0

    mul-float v6, v20, v0

    mul-float v7, v21, v0

    .line 2309
    invoke-virtual {v14, v8, v6, v7}, Lnw;->a(FFF)V

    .line 2310
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x3

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v4

    int-to-double v2, v11

    int-to-double v0, v12

    int-to-double v10, v13

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v18, v2

    move/from16 v20, v4

    move-wide/from16 v4, v16

    move/from16 v21, v6

    move/from16 v29, v7

    move-wide v6, v10

    move/from16 v30, v8

    move/from16 v8, v20

    .line 2311
    invoke-virtual/range {v0 .. v8}, Lcv;->d(Luu;DDDI)V

    .line 2312
    sget-boolean v0, Lcv;->a:Z

    if-eqz v0, :cond_208

    move/from16 v0, v20

    if-ne v0, v15, :cond_208

    iget v0, v9, Lcv;->d:I

    if-gez v0, :cond_208

    mul-float v8, v30, p5

    mul-float v6, v21, p6

    mul-float v7, v29, p7

    .line 2313
    invoke-virtual {v14, v8, v6, v7}, Lnw;->a(FFF)V

    const/16 v8, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    move-wide/from16 v4, v16

    move-wide v6, v10

    .line 2314
    invoke-virtual/range {v0 .. v8}, Lcv;->d(Luu;DDDI)V

    :cond_208
    move/from16 v6, v26

    .line 2319
    :cond_20a
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_222

    iget-object v1, v9, Lcv;->c:Lxp;

    move/from16 v10, p2

    add-int/lit8 v2, v10, -0x1

    const/4 v5, 0x4

    move-object/from16 v0, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_290

    goto :goto_224

    :cond_222
    move/from16 v10, p2

    .line 2320
    :goto_224
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v10, -0x1

    move-object/from16 v11, p1

    invoke-virtual {v11, v0, v1, v12, v13}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2321
    iget-wide v1, v11, Luu;->bs:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_238

    move/from16 v0, v25

    :cond_238
    mul-float v8, v22, v0

    mul-float v6, v23, v0

    mul-float v7, v24, v0

    .line 2322
    invoke-virtual {v14, v8, v6, v7}, Lnw;->a(FFF)V

    .line 2323
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x4

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v4

    int-to-double v2, v10

    int-to-double v0, v12

    int-to-double v11, v13

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v18, v2

    move/from16 v20, v4

    move-wide/from16 v4, v16

    move/from16 v21, v6

    move/from16 v29, v7

    move-wide v6, v11

    move/from16 v30, v8

    move/from16 v8, v20

    .line 2324
    invoke-virtual/range {v0 .. v8}, Lcv;->e(Luu;DDDI)V

    .line 2325
    sget-boolean v0, Lcv;->a:Z

    if-eqz v0, :cond_28e

    move/from16 v0, v20

    if-ne v0, v15, :cond_28e

    iget v0, v9, Lcv;->d:I

    if-gez v0, :cond_28e

    mul-float v8, v30, p5

    mul-float v6, v21, p6

    mul-float v7, v29, p7

    .line 2326
    invoke-virtual {v14, v8, v6, v7}, Lnw;->a(FFF)V

    const/16 v8, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    move-wide/from16 v4, v16

    move-wide v6, v11

    .line 2327
    invoke-virtual/range {v0 .. v8}, Lcv;->e(Luu;DDDI)V

    :cond_28e
    move/from16 v6, v26

    .line 2332
    :cond_290
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_2aa

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v2, v10, 0x1

    const/4 v5, 0x5

    move-object/from16 v0, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_2a6

    goto :goto_2aa

    :cond_2a6
    move/from16 v26, v6

    goto/16 :goto_313

    .line 2333
    :cond_2aa
    :goto_2aa
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v10, 0x1

    move-object/from16 v11, p1

    move/from16 v6, p3

    invoke-virtual {v11, v0, v1, v6, v13}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2334
    iget-wide v1, v11, Luu;->bv:D

    cmpg-double v1, v1, v27

    if-gez v1, :cond_2bd

    goto :goto_2bf

    :cond_2bd
    move/from16 v25, v0

    :goto_2bf
    mul-float v12, v22, v25

    mul-float v8, v23, v25

    mul-float v7, v24, v25

    .line 2335
    invoke-virtual {v14, v12, v8, v7}, Lnw;->a(FFF)V

    .line 2336
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x5

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v4

    int-to-double v2, v10

    int-to-double v5, v6

    int-to-double v0, v13

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v18, v2

    move v10, v4

    move-wide/from16 v20, v5

    move-wide/from16 v4, v20

    move/from16 v24, v7

    move-wide/from16 v6, v16

    move/from16 v23, v8

    move v8, v10

    .line 2337
    invoke-virtual/range {v0 .. v8}, Lcv;->f(Luu;DDDI)V

    .line 2338
    sget-boolean v0, Lcv;->a:Z

    if-eqz v0, :cond_313

    if-ne v10, v15, :cond_313

    iget v0, v9, Lcv;->d:I

    if-gez v0, :cond_313

    mul-float v12, v12, p5

    mul-float v8, v23, p6

    mul-float v7, v24, p7

    .line 2339
    invoke-virtual {v14, v12, v8, v7}, Lnw;->a(FFF)V

    const/16 v8, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    move-wide/from16 v4, v20

    move-wide/from16 v6, v16

    .line 2340
    invoke-virtual/range {v0 .. v8}, Lcv;->f(Luu;DDDI)V

    :cond_313
    :goto_313
    return v26
.end method

.method public c(Luu;DDDI)V
    .registers 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2834
    sget-object v12, Lnw;->a:Lnw;

    .line 2836
    iget v2, v0, Lcv;->d:I

    if-ltz v2, :cond_b

    goto :goto_d

    :cond_b
    move/from16 v2, p8

    :goto_d
    and-int/lit8 v3, v2, 0xf

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v2, v2, 0xf0

    int-to-double v4, v3

    .line 2840
    iget-wide v6, v1, Luu;->bs:D

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    const-wide/high16 v10, 0x4070000000000000L    # 256.0

    div-double/2addr v6, v10

    .line 2841
    iget-wide v13, v1, Luu;->bv:D

    mul-double/2addr v13, v8

    add-double/2addr v13, v4

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v13, v15

    div-double/2addr v13, v10

    add-int/lit8 v15, v2, 0x10

    int-to-double v10, v15

    move-wide v15, v6

    .line 2842
    iget-wide v6, v1, Luu;->bw:D

    mul-double/2addr v6, v8

    sub-double v6, v10, v6

    const-wide/high16 v19, 0x4070000000000000L    # 256.0

    div-double v6, v6, v19

    move-wide/from16 v21, v6

    .line 2843
    iget-wide v6, v1, Luu;->bt:D

    mul-double/2addr v6, v8

    sub-double v6, v10, v6

    const-wide v17, 0x3f847ae147ae147bL    # 0.01

    sub-double v6, v6, v17

    div-double v6, v6, v19

    .line 2844
    iget-boolean v8, v0, Lcv;->e:Z

    if-eqz v8, :cond_4a

    goto :goto_4f

    :cond_4a
    move-wide/from16 v35, v13

    move-wide v13, v15

    move-wide/from16 v15, v35

    .line 2850
    :goto_4f
    iget-wide v8, v1, Luu;->bs:D

    const-wide/16 v25, 0x0

    cmpg-double v8, v8, v25

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    const/16 v29, 0x0

    const/high16 v30, 0x43800000    # 256.0f

    move-wide/from16 v31, v10

    if-ltz v8, :cond_65

    iget-wide v9, v1, Luu;->bv:D

    cmpl-double v8, v9, v27

    if-lez v8, :cond_73

    :cond_65
    int-to-float v8, v3

    add-float v9, v8, v29

    div-float v9, v9, v30

    float-to-double v13, v9

    const v9, 0x417fd70a    # 15.99f

    add-float/2addr v8, v9

    div-float v8, v8, v30

    float-to-double v8, v8

    move-wide v15, v8

    .line 2854
    :cond_73
    iget-wide v8, v1, Luu;->bt:D

    cmpg-double v8, v8, v25

    if-ltz v8, :cond_84

    iget-wide v8, v1, Luu;->bw:D

    cmpl-double v8, v8, v27

    if-lez v8, :cond_80

    goto :goto_84

    :cond_80
    move-wide v9, v6

    move-wide/from16 v6, v21

    goto :goto_92

    :cond_84
    :goto_84
    int-to-float v6, v2

    add-float v29, v6, v29

    div-float v7, v29, v30

    float-to-double v7, v7

    const v9, 0x417fd70a    # 15.99f

    add-float/2addr v6, v9

    div-float v6, v6, v30

    float-to-double v9, v6

    move-wide v6, v7

    .line 2861
    :goto_92
    iget v8, v0, Lcv;->g:I

    const/4 v11, 0x2

    if-ne v8, v11, :cond_c6

    .line 2862
    iget-wide v2, v1, Luu;->bt:D

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    mul-double v2, v2, v21

    add-double/2addr v2, v4

    const-wide/high16 v19, 0x4070000000000000L    # 256.0

    div-double v2, v2, v19

    .line 2863
    iget-wide v6, v1, Luu;->bs:D

    mul-double v6, v6, v21

    sub-double v10, v31, v6

    div-double v10, v10, v19

    .line 2864
    iget-wide v6, v1, Luu;->bw:D

    mul-double v6, v6, v21

    add-double/2addr v4, v6

    div-double v4, v4, v19

    .line 2865
    iget-wide v6, v1, Luu;->bv:D

    mul-double v6, v6, v21

    sub-double v6, v31, v6

    div-double v6, v6, v19

    move-wide v8, v2

    move-wide v13, v8

    move-wide v15, v4

    move-wide/from16 v17, v15

    move-wide/from16 v19, v6

    move-wide/from16 v21, v19

    move-wide/from16 v23, v10

    goto/16 :goto_146

    :cond_c6
    const-wide/high16 v19, 0x4070000000000000L    # 256.0

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    const/4 v4, 0x1

    if-ne v8, v4, :cond_fc

    add-int/lit8 v3, v3, 0x10

    int-to-double v3, v3

    .line 2877
    iget-wide v5, v1, Luu;->bw:D

    mul-double v5, v5, v21

    sub-double v5, v3, v5

    div-double v5, v5, v19

    int-to-double v7, v2

    .line 2878
    iget-wide v9, v1, Luu;->bv:D

    mul-double v9, v9, v21

    add-double/2addr v9, v7

    div-double v9, v9, v19

    .line 2879
    iget-wide v13, v1, Luu;->bt:D

    mul-double v13, v13, v21

    sub-double/2addr v3, v13

    div-double v3, v3, v19

    .line 2880
    iget-wide v13, v1, Luu;->bs:D

    mul-double v13, v13, v21

    add-double/2addr v7, v13

    div-double v7, v7, v19

    move-wide v13, v3

    move-wide v15, v5

    move-wide/from16 v17, v15

    move-wide/from16 v23, v7

    move-wide/from16 v19, v9

    move-wide/from16 v21, v19

    move-wide/from16 v10, v23

    move-wide v8, v13

    goto :goto_146

    :cond_fc
    const/4 v4, 0x3

    if-ne v8, v4, :cond_13a

    add-int/lit8 v3, v3, 0x10

    int-to-double v3, v3

    .line 2892
    iget-wide v5, v1, Luu;->bs:D

    mul-double v5, v5, v21

    sub-double v5, v3, v5

    div-double v5, v5, v19

    .line 2893
    iget-wide v7, v1, Luu;->bv:D

    mul-double v7, v7, v21

    sub-double/2addr v3, v7

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v3, v7

    div-double v3, v3, v19

    int-to-double v9, v2

    .line 2894
    iget-wide v13, v1, Luu;->bw:D

    mul-double v13, v13, v21

    add-double/2addr v13, v9

    div-double v13, v13, v19

    .line 2895
    iget-wide v7, v1, Luu;->bt:D

    mul-double v7, v7, v21

    add-double/2addr v9, v7

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v9, v7

    div-double v9, v9, v19

    move-wide/from16 v17, v3

    move-wide v15, v5

    move-wide/from16 v21, v9

    move-wide/from16 v23, v21

    move-wide v10, v13

    move-wide/from16 v19, v10

    move-wide/from16 v8, v17

    move-wide v13, v15

    goto :goto_146

    :cond_13a
    move-wide/from16 v19, v6

    move-wide/from16 v21, v9

    move-wide/from16 v23, v21

    move-wide v8, v15

    move-wide/from16 v17, v8

    move-wide/from16 v10, v19

    move-wide v15, v13

    .line 2903
    :goto_146
    iget-wide v2, v1, Luu;->bs:D

    add-double v25, p2, v2

    .line 2904
    iget-wide v2, v1, Luu;->bv:D

    add-double v27, p2, v2

    .line 2905
    iget-wide v2, v1, Luu;->bt:D

    add-double v29, p4, v2

    .line 2906
    iget-wide v2, v1, Luu;->bw:D

    add-double v31, p4, v2

    .line 2907
    iget-wide v1, v1, Luu;->bu:D

    add-double v33, p6, v1

    .line 2909
    iget-boolean v1, v0, Lcv;->m:Z

    if-eqz v1, :cond_1ab

    .line 2910
    iget v1, v0, Lcv;->P:F

    iget v2, v0, Lcv;->T:F

    iget v3, v0, Lcv;->X:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v4, v31

    move-wide/from16 v6, v33

    .line 2911
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 2912
    iget v1, v0, Lcv;->Q:F

    iget v2, v0, Lcv;->U:F

    iget v3, v0, Lcv;->Y:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v27

    move-wide v8, v13

    move-wide/from16 v10, v19

    .line 2913
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 2914
    iget v1, v0, Lcv;->R:F

    iget v2, v0, Lcv;->V:F

    iget v3, v0, Lcv;->Z:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v27

    move-wide/from16 v4, v29

    move-wide v8, v15

    move-wide/from16 v10, v21

    .line 2915
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 2916
    iget v1, v0, Lcv;->S:F

    iget v2, v0, Lcv;->W:F

    iget v3, v0, Lcv;->aa:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v8, v17

    move-wide/from16 v10, v23

    .line 2917
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    goto :goto_1ce

    :cond_1ab
    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v4, v31

    move-wide/from16 v6, v33

    .line 2919
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v27

    move-wide v8, v13

    move-wide/from16 v10, v19

    .line 2920
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v29

    move-wide v8, v15

    move-wide/from16 v10, v21

    .line 2921
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v25

    move-wide/from16 v8, v17

    move-wide/from16 v10, v23

    .line 2922
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    :goto_1ce
    return-void
.end method

.method public c(Luu;III)Z
    .registers 25

    move-object/from16 v12, p0

    move-object/from16 v1, p1

    move/from16 v0, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 271
    iget-object v4, v12, Lcv;->c:Lxp;

    invoke-interface {v4, v0, v2, v3}, Lxp;->e(III)I

    move-result v4

    .line 273
    sget-object v5, Lnw;->a:Lnw;

    .line 275
    iget-object v6, v12, Lcv;->c:Lxp;

    invoke-virtual {v1, v6, v0, v2, v3}, Luu;->d(Lxp;III)F

    move-result v6

    .line 276
    sget-object v7, Luu;->s:[I

    iget v8, v1, Luu;->bn:I

    aget v7, v7, v8

    if-lez v7, :cond_22

    const/high16 v6, 0x3f800000    # 1.0f

    .line 277
    :cond_22
    invoke-virtual {v5, v6, v6, v6}, Lnw;->a(FFF)V

    const/4 v13, 0x1

    const-wide v5, 0x3fb9999980000000L    # 0.09999999403953552

    const-wide v7, 0x3fc99999a0000000L    # 0.20000000298023224

    if-ne v4, v13, :cond_4e

    int-to-double v9, v0

    sub-double v4, v9, v5

    int-to-double v9, v2

    add-double v6, v9, v7

    int-to-double v8, v3

    const-wide v10, -0x4026666660000000L    # -0.4000000059604645

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v14

    .line 283
    invoke-virtual/range {v0 .. v11}, Lcv;->a(Luu;DDDDD)V

    goto/16 :goto_bc

    :cond_4e
    const/4 v9, 0x2

    if-ne v4, v9, :cond_6b

    int-to-double v9, v0

    add-double v4, v9, v5

    int-to-double v9, v2

    add-double v6, v9, v7

    int-to-double v8, v3

    const-wide/16 v10, 0x0

    const-wide v14, 0x3fd99999a0000000L    # 0.4000000059604645

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v14

    .line 285
    invoke-virtual/range {v0 .. v11}, Lcv;->a(Luu;DDDDD)V

    goto :goto_bc

    :cond_6b
    const/4 v9, 0x3

    if-ne v4, v9, :cond_8a

    int-to-double v9, v0

    int-to-double v14, v2

    add-double/2addr v7, v14

    int-to-double v2, v3

    sub-double v14, v2, v5

    const-wide/16 v16, 0x0

    const-wide v18, -0x4026666660000000L    # -0.4000000059604645

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v9

    move-wide v4, v7

    move-wide v6, v14

    move-wide/from16 v8, v16

    move-wide/from16 v10, v18

    .line 287
    invoke-virtual/range {v0 .. v11}, Lcv;->a(Luu;DDDDD)V

    goto :goto_bc

    :cond_8a
    const/4 v9, 0x4

    if-ne v4, v9, :cond_a9

    int-to-double v9, v0

    int-to-double v14, v2

    add-double/2addr v7, v14

    int-to-double v2, v3

    add-double v14, v2, v5

    const-wide/16 v16, 0x0

    const-wide v18, 0x3fd99999a0000000L    # 0.4000000059604645

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v9

    move-wide v4, v7

    move-wide v6, v14

    move-wide/from16 v8, v16

    move-wide/from16 v10, v18

    .line 289
    invoke-virtual/range {v0 .. v11}, Lcv;->a(Luu;DDDDD)V

    goto :goto_bc

    :cond_a9
    int-to-double v4, v0

    int-to-double v6, v2

    int-to-double v8, v3

    const-wide/16 v10, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v14

    .line 291
    invoke-virtual/range {v0 .. v11}, Lcv;->a(Luu;DDDDD)V

    :goto_bc
    return v13
.end method

.method public c(Luu;IIIFFF)Z
    .registers 44

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 2368
    sget-object v14, Lnw;->a:Lnw;

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v6, p5, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v15, p5, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v16, p5, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float v17, p5, v3

    mul-float v7, p6, v0

    mul-float v18, p6, v1

    mul-float v19, p6, v2

    mul-float v20, p6, v3

    mul-float v8, p7, v0

    mul-float v21, p7, v1

    mul-float v22, p7, v2

    mul-float v23, p7, v3

    .line 2393
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v11, v12, v13}, Luu;->d(Lxp;III)F

    move-result v24

    .line 2395
    iget-boolean v0, v9, Lcv;->f:Z

    const/16 v25, 0x1

    if-nez v0, :cond_4f

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v3, v12, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_4f

    :cond_4c
    const/4 v0, 0x0

    move v6, v0

    goto :goto_82

    .line 2396
    :cond_4f
    :goto_4f
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v12, -0x1

    invoke-virtual {v10, v0, v11, v1, v13}, Luu;->d(Lxp;III)F

    move-result v0

    mul-float/2addr v6, v0

    mul-float/2addr v7, v0

    mul-float/2addr v8, v0

    .line 2399
    invoke-virtual {v14, v6, v7, v8}, Lnw;->a(FFF)V

    int-to-double v6, v11

    int-to-double v4, v12

    int-to-double v2, v13

    .line 2400
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v26, v2

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v28, v4

    move/from16 v4, p4

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide/from16 v4, v28

    move-wide/from16 v6, v26

    invoke-virtual/range {v0 .. v8}, Lcv;->a(Luu;DDDI)V

    move/from16 v6, v25

    .line 2404
    :goto_82
    iget-boolean v0, v9, Lcv;->f:Z

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_99

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v3, v12, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 2405
    :cond_99
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v12, 0x1

    invoke-virtual {v10, v0, v11, v1, v13}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2406
    iget-wide v1, v10, Luu;->bw:D

    cmpl-double v1, v1, v26

    if-eqz v1, :cond_b1

    iget-object v1, v10, Luu;->bA:Lln;

    invoke-virtual {v1}, Lln;->d()Z

    move-result v1

    if-nez v1, :cond_b1

    move/from16 v0, v24

    :cond_b1
    mul-float/2addr v15, v0

    mul-float v1, v18, v0

    mul-float v0, v0, v21

    .line 2409
    invoke-virtual {v14, v15, v1, v0}, Lnw;->a(FFF)V

    int-to-double v6, v11

    int-to-double v4, v12

    int-to-double v2, v13

    .line 2410
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v28, v2

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v30, v4

    move/from16 v4, p4

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide/from16 v4, v30

    move-wide/from16 v6, v28

    invoke-virtual/range {v0 .. v8}, Lcv;->b(Luu;DDDI)V

    move/from16 v6, v25

    .line 2414
    :cond_de
    iget-boolean v0, v9, Lcv;->f:Z

    const-wide/16 v28, 0x0

    const/high16 v15, -0x42800000    # -0.0625f

    const/4 v8, 0x0

    const/high16 v7, 0x3d800000    # 0.0625f

    if-nez v0, :cond_fd

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v4, v13, -0x1

    const/4 v5, 0x2

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_fb

    goto :goto_fd

    :cond_fb
    move v10, v8

    goto :goto_14d

    .line 2415
    :cond_fd
    :goto_fd
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v13, -0x1

    invoke-virtual {v10, v0, v11, v12, v1}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2416
    iget-wide v1, v10, Luu;->bu:D

    cmpl-double v1, v1, v28

    if-lez v1, :cond_10d

    move/from16 v0, v24

    :cond_10d
    mul-float v1, v16, v0

    mul-float v2, v19, v0

    mul-float v0, v0, v22

    .line 2419
    invoke-virtual {v14, v1, v2, v0}, Lnw;->a(FFF)V

    .line 2420
    invoke-virtual {v14, v8, v8, v7}, Lnw;->c(FFF)V

    int-to-double v5, v11

    int-to-double v3, v12

    int-to-double v1, v13

    .line 2421
    iget-object v0, v9, Lcv;->c:Lxp;

    const/16 v18, 0x2

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-wide/from16 v30, v1

    move-object/from16 v1, v21

    move/from16 v2, p2

    move-wide/from16 v32, v3

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v34, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v34

    move-wide/from16 v4, v32

    move-wide/from16 v6, v30

    move v10, v8

    move/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Lcv;->c(Luu;DDDI)V

    .line 2422
    invoke-virtual {v14, v10, v10, v15}, Lnw;->c(FFF)V

    move/from16 v6, v25

    .line 2426
    :goto_14d
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_169

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v4, v13, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_163

    goto :goto_169

    :cond_163
    move v15, v10

    const/high16 v8, 0x3d800000    # 0.0625f

    move-object/from16 v10, p1

    goto :goto_1b7

    .line 2427
    :cond_169
    :goto_169
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v13, 0x1

    move v8, v10

    move-object/from16 v10, p1

    invoke-virtual {v10, v0, v11, v12, v1}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2428
    iget-wide v1, v10, Luu;->bx:D

    cmpg-double v1, v1, v26

    if-gez v1, :cond_17c

    move/from16 v0, v24

    :cond_17c
    mul-float v1, v16, v0

    mul-float v2, v19, v0

    mul-float v0, v0, v22

    .line 2431
    invoke-virtual {v14, v1, v2, v0}, Lnw;->a(FFF)V

    .line 2432
    invoke-virtual {v14, v8, v8, v15}, Lnw;->c(FFF)V

    int-to-double v6, v11

    int-to-double v4, v12

    int-to-double v2, v13

    .line 2433
    iget-object v1, v9, Lcv;->c:Lxp;

    const/16 v16, 0x3

    move-object/from16 v0, p1

    move-wide/from16 v18, v2

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v21, v4

    move/from16 v4, p4

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide/from16 v4, v21

    move-wide/from16 v6, v18

    move v15, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcv;->d(Luu;DDDI)V

    const/high16 v8, 0x3d800000    # 0.0625f

    .line 2434
    invoke-virtual {v14, v15, v15, v8}, Lnw;->c(FFF)V

    move/from16 v6, v25

    .line 2438
    :goto_1b7
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_1cc

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v2, v11, -0x1

    const/4 v5, 0x4

    move-object/from16 v0, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_216

    .line 2439
    :cond_1cc
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {v10, v0, v1, v12, v13}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2440
    iget-wide v1, v10, Luu;->bs:D

    cmpl-double v1, v1, v28

    if-lez v1, :cond_1dc

    move/from16 v0, v24

    :cond_1dc
    mul-float v1, v17, v0

    mul-float v2, v20, v0

    mul-float v0, v0, v23

    .line 2443
    invoke-virtual {v14, v1, v2, v0}, Lnw;->a(FFF)V

    .line 2444
    invoke-virtual {v14, v8, v15, v15}, Lnw;->c(FFF)V

    int-to-double v6, v11

    int-to-double v4, v12

    int-to-double v2, v13

    .line 2445
    iget-object v1, v9, Lcv;->c:Lxp;

    const/16 v16, 0x4

    move-object/from16 v0, p1

    move-wide/from16 v18, v2

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v21, v4

    move/from16 v4, p4

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide/from16 v4, v21

    move-wide/from16 v6, v18

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcv;->e(Luu;DDDI)V

    const/high16 v0, -0x42800000    # -0.0625f

    .line 2446
    invoke-virtual {v14, v0, v15, v15}, Lnw;->c(FFF)V

    move/from16 v6, v25

    .line 2450
    :cond_216
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_22f

    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v2, v11, 0x1

    const/4 v5, 0x5

    move-object/from16 v0, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_22c

    goto :goto_22f

    :cond_22c
    move/from16 v25, v6

    goto :goto_274

    .line 2451
    :cond_22f
    :goto_22f
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v10, v0, v1, v12, v13}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2452
    iget-wide v1, v10, Luu;->bv:D

    cmpg-double v1, v1, v26

    if-gez v1, :cond_23e

    goto :goto_240

    :cond_23e
    move/from16 v24, v0

    :goto_240
    mul-float v0, v17, v24

    mul-float v1, v20, v24

    mul-float v2, v23, v24

    .line 2455
    invoke-virtual {v14, v0, v1, v2}, Lnw;->a(FFF)V

    const/high16 v0, -0x42800000    # -0.0625f

    .line 2456
    invoke-virtual {v14, v0, v15, v15}, Lnw;->c(FFF)V

    int-to-double v6, v11

    int-to-double v4, v12

    int-to-double v2, v13

    .line 2457
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v8, 0x5

    move-object/from16 v0, p1

    move-wide/from16 v16, v2

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide v11, v4

    move/from16 v4, p4

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide v4, v11

    move-wide/from16 v6, v16

    invoke-virtual/range {v0 .. v8}, Lcv;->f(Luu;DDDI)V

    const/high16 v0, 0x3d800000    # 0.0625f

    .line 2458
    invoke-virtual {v14, v0, v15, v15}, Lnw;->c(FFF)V

    :goto_274
    return v25
.end method

.method public d(Luu;DDDI)V
    .registers 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2927
    sget-object v12, Lnw;->a:Lnw;

    .line 2929
    iget v2, v0, Lcv;->d:I

    if-ltz v2, :cond_b

    goto :goto_d

    :cond_b
    move/from16 v2, p8

    :goto_d
    and-int/lit8 v3, v2, 0xf

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v2, v2, 0xf0

    int-to-double v4, v3

    .line 2933
    iget-wide v6, v1, Luu;->bs:D

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    const-wide/high16 v10, 0x4070000000000000L    # 256.0

    div-double/2addr v6, v10

    .line 2934
    iget-wide v13, v1, Luu;->bv:D

    mul-double/2addr v13, v8

    add-double/2addr v13, v4

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v13, v15

    div-double/2addr v13, v10

    add-int/lit8 v15, v2, 0x10

    int-to-double v10, v15

    move-wide v15, v6

    .line 2935
    iget-wide v6, v1, Luu;->bw:D

    mul-double/2addr v6, v8

    sub-double v6, v10, v6

    const-wide/high16 v19, 0x4070000000000000L    # 256.0

    div-double v6, v6, v19

    move-wide/from16 v21, v6

    .line 2936
    iget-wide v6, v1, Luu;->bt:D

    mul-double/2addr v6, v8

    sub-double v6, v10, v6

    const-wide v17, 0x3f847ae147ae147bL    # 0.01

    sub-double v6, v6, v17

    div-double v6, v6, v19

    .line 2937
    iget-boolean v8, v0, Lcv;->e:Z

    if-eqz v8, :cond_4a

    goto :goto_4f

    :cond_4a
    move-wide/from16 v35, v13

    move-wide v13, v15

    move-wide/from16 v15, v35

    .line 2943
    :goto_4f
    iget-wide v8, v1, Luu;->bs:D

    const-wide/16 v25, 0x0

    cmpg-double v8, v8, v25

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    const/16 v29, 0x0

    const/high16 v30, 0x43800000    # 256.0f

    move-wide/from16 v31, v10

    if-ltz v8, :cond_65

    iget-wide v9, v1, Luu;->bv:D

    cmpl-double v8, v9, v27

    if-lez v8, :cond_73

    :cond_65
    int-to-float v8, v3

    add-float v9, v8, v29

    div-float v9, v9, v30

    float-to-double v13, v9

    const v9, 0x417fd70a    # 15.99f

    add-float/2addr v8, v9

    div-float v8, v8, v30

    float-to-double v8, v8

    move-wide v15, v8

    .line 2947
    :cond_73
    iget-wide v8, v1, Luu;->bt:D

    cmpg-double v8, v8, v25

    if-ltz v8, :cond_84

    iget-wide v8, v1, Luu;->bw:D

    cmpl-double v8, v8, v27

    if-lez v8, :cond_80

    goto :goto_84

    :cond_80
    move-wide v9, v6

    move-wide/from16 v6, v21

    goto :goto_92

    :cond_84
    :goto_84
    int-to-float v6, v2

    add-float v29, v6, v29

    div-float v7, v29, v30

    float-to-double v7, v7

    const v9, 0x417fd70a    # 15.99f

    add-float/2addr v6, v9

    div-float v6, v6, v30

    float-to-double v9, v6

    move-wide v6, v7

    .line 2954
    :goto_92
    iget v8, v0, Lcv;->h:I

    const/4 v11, 0x1

    if-ne v8, v11, :cond_c6

    .line 2955
    iget-wide v2, v1, Luu;->bt:D

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    mul-double v2, v2, v21

    add-double/2addr v2, v4

    const-wide/high16 v19, 0x4070000000000000L    # 256.0

    div-double v2, v2, v19

    .line 2956
    iget-wide v6, v1, Luu;->bs:D

    mul-double v6, v6, v21

    sub-double v10, v31, v6

    div-double v10, v10, v19

    .line 2957
    iget-wide v6, v1, Luu;->bw:D

    mul-double v6, v6, v21

    add-double/2addr v4, v6

    div-double v4, v4, v19

    .line 2958
    iget-wide v6, v1, Luu;->bv:D

    mul-double v6, v6, v21

    sub-double v6, v31, v6

    div-double v6, v6, v19

    move-wide v8, v2

    move-wide/from16 v17, v8

    move-wide v13, v4

    move-wide v15, v13

    move-wide/from16 v21, v6

    move-wide/from16 v23, v21

    move-wide/from16 v19, v10

    goto/16 :goto_145

    :cond_c6
    const-wide/high16 v19, 0x4070000000000000L    # 256.0

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    const/4 v4, 0x2

    if-ne v8, v4, :cond_fd

    add-int/lit8 v3, v3, 0x10

    int-to-double v3, v3

    .line 2970
    iget-wide v5, v1, Luu;->bw:D

    mul-double v5, v5, v21

    sub-double v5, v3, v5

    div-double v5, v5, v19

    int-to-double v7, v2

    .line 2971
    iget-wide v9, v1, Luu;->bs:D

    mul-double v9, v9, v21

    add-double/2addr v9, v7

    div-double v9, v9, v19

    .line 2972
    iget-wide v13, v1, Luu;->bt:D

    mul-double v13, v13, v21

    sub-double/2addr v3, v13

    div-double v3, v3, v19

    .line 2973
    iget-wide v13, v1, Luu;->bv:D

    mul-double v13, v13, v21

    add-double/2addr v7, v13

    div-double v7, v7, v19

    move-wide/from16 v17, v3

    move-wide v13, v5

    move-wide v15, v13

    move-wide/from16 v21, v7

    move-wide/from16 v23, v21

    move-wide/from16 v19, v9

    move-wide/from16 v10, v19

    move-wide/from16 v8, v17

    goto :goto_145

    :cond_fd
    const/4 v4, 0x3

    if-ne v8, v4, :cond_13a

    add-int/lit8 v3, v3, 0x10

    int-to-double v3, v3

    .line 2985
    iget-wide v5, v1, Luu;->bs:D

    mul-double v5, v5, v21

    sub-double v5, v3, v5

    div-double v5, v5, v19

    .line 2986
    iget-wide v7, v1, Luu;->bv:D

    mul-double v7, v7, v21

    sub-double/2addr v3, v7

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v3, v7

    div-double v3, v3, v19

    int-to-double v9, v2

    .line 2987
    iget-wide v13, v1, Luu;->bw:D

    mul-double v13, v13, v21

    add-double/2addr v13, v9

    div-double v13, v13, v19

    .line 2988
    iget-wide v7, v1, Luu;->bt:D

    mul-double v7, v7, v21

    add-double/2addr v9, v7

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v9, v7

    div-double v9, v9, v19

    move-wide v15, v3

    move-wide/from16 v17, v15

    move-wide/from16 v19, v9

    move-wide/from16 v21, v19

    move-wide v10, v13

    move-wide/from16 v23, v10

    move-wide v8, v5

    move-wide v13, v8

    goto :goto_145

    :cond_13a
    move-wide/from16 v23, v6

    move-wide/from16 v19, v9

    move-wide/from16 v21, v19

    move-wide v8, v13

    move-wide/from16 v17, v15

    move-wide/from16 v10, v23

    .line 2996
    :goto_145
    iget-wide v2, v1, Luu;->bs:D

    add-double v25, p2, v2

    .line 2997
    iget-wide v2, v1, Luu;->bv:D

    add-double v27, p2, v2

    .line 2998
    iget-wide v2, v1, Luu;->bt:D

    add-double v29, p4, v2

    .line 2999
    iget-wide v2, v1, Luu;->bw:D

    add-double v31, p4, v2

    .line 3000
    iget-wide v1, v1, Luu;->bx:D

    add-double v33, p6, v1

    .line 3002
    iget-boolean v1, v0, Lcv;->m:Z

    if-eqz v1, :cond_1ac

    .line 3003
    iget v1, v0, Lcv;->P:F

    iget v2, v0, Lcv;->T:F

    iget v3, v0, Lcv;->X:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v4, v31

    move-wide/from16 v6, v33

    .line 3004
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 3005
    iget v1, v0, Lcv;->Q:F

    iget v2, v0, Lcv;->U:F

    iget v3, v0, Lcv;->Y:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v4, v29

    move-wide v8, v13

    move-wide/from16 v10, v19

    .line 3006
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 3007
    iget v1, v0, Lcv;->R:F

    iget v2, v0, Lcv;->V:F

    iget v3, v0, Lcv;->Z:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v27

    move-wide v8, v15

    move-wide/from16 v10, v21

    .line 3008
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 3009
    iget v1, v0, Lcv;->S:F

    iget v2, v0, Lcv;->W:F

    iget v3, v0, Lcv;->aa:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v27

    move-wide/from16 v4, v31

    move-wide/from16 v8, v17

    move-wide/from16 v10, v23

    .line 3010
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    goto :goto_1cf

    :cond_1ac
    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v4, v31

    move-wide/from16 v6, v33

    .line 3012
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v29

    move-wide v8, v13

    move-wide/from16 v10, v19

    .line 3013
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v27

    move-wide v8, v15

    move-wide/from16 v10, v21

    .line 3014
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v31

    move-wide/from16 v8, v17

    move-wide/from16 v10, v23

    .line 3015
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    :goto_1cf
    return-void
.end method

.method public d(Luu;III)V
    .registers 12

    const/4 v0, 0x1

    .line 403
    iput-boolean v0, p0, Lcv;->f:Z

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 404
    invoke-direct/range {v1 .. v6}, Lcv;->b(Luu;IIIZ)Z

    const/4 p1, 0x0

    .line 405
    iput-boolean p1, p0, Lcv;->f:Z

    return-void
.end method

.method public e(Luu;DDDI)V
    .registers 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3020
    sget-object v12, Lnw;->a:Lnw;

    .line 3022
    iget v2, v0, Lcv;->d:I

    if-ltz v2, :cond_b

    goto :goto_d

    :cond_b
    move/from16 v2, p8

    :goto_d
    and-int/lit8 v3, v2, 0xf

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v2, v2, 0xf0

    int-to-double v4, v3

    .line 3026
    iget-wide v6, v1, Luu;->bu:D

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    const-wide/high16 v10, 0x4070000000000000L    # 256.0

    div-double/2addr v6, v10

    .line 3027
    iget-wide v13, v1, Luu;->bx:D

    mul-double/2addr v13, v8

    add-double/2addr v13, v4

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v13, v15

    div-double/2addr v13, v10

    add-int/lit8 v15, v2, 0x10

    int-to-double v10, v15

    move-wide v15, v6

    .line 3028
    iget-wide v6, v1, Luu;->bw:D

    mul-double/2addr v6, v8

    sub-double v6, v10, v6

    const-wide/high16 v19, 0x4070000000000000L    # 256.0

    div-double v6, v6, v19

    move-wide/from16 v21, v6

    .line 3029
    iget-wide v6, v1, Luu;->bt:D

    mul-double/2addr v6, v8

    sub-double v6, v10, v6

    const-wide v17, 0x3f847ae147ae147bL    # 0.01

    sub-double v6, v6, v17

    div-double v6, v6, v19

    .line 3030
    iget-boolean v8, v0, Lcv;->e:Z

    if-eqz v8, :cond_4a

    goto :goto_4f

    :cond_4a
    move-wide/from16 v35, v13

    move-wide v13, v15

    move-wide/from16 v15, v35

    .line 3036
    :goto_4f
    iget-wide v8, v1, Luu;->bu:D

    const-wide/16 v25, 0x0

    cmpg-double v8, v8, v25

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    const/16 v29, 0x0

    const/high16 v30, 0x43800000    # 256.0f

    move-wide/from16 v31, v10

    if-ltz v8, :cond_65

    iget-wide v9, v1, Luu;->bx:D

    cmpl-double v8, v9, v27

    if-lez v8, :cond_73

    :cond_65
    int-to-float v8, v3

    add-float v9, v8, v29

    div-float v9, v9, v30

    float-to-double v13, v9

    const v9, 0x417fd70a    # 15.99f

    add-float/2addr v8, v9

    div-float v8, v8, v30

    float-to-double v8, v8

    move-wide v15, v8

    .line 3040
    :cond_73
    iget-wide v8, v1, Luu;->bt:D

    cmpg-double v8, v8, v25

    if-ltz v8, :cond_84

    iget-wide v8, v1, Luu;->bw:D

    cmpl-double v8, v8, v27

    if-lez v8, :cond_80

    goto :goto_84

    :cond_80
    move-wide v9, v6

    move-wide/from16 v6, v21

    goto :goto_92

    :cond_84
    :goto_84
    int-to-float v6, v2

    add-float v29, v6, v29

    div-float v7, v29, v30

    float-to-double v7, v7

    const v9, 0x417fd70a    # 15.99f

    add-float/2addr v6, v9

    div-float v6, v6, v30

    float-to-double v9, v6

    move-wide v6, v7

    .line 3047
    :goto_92
    iget v8, v0, Lcv;->j:I

    const/4 v11, 0x1

    if-ne v8, v11, :cond_c6

    .line 3048
    iget-wide v2, v1, Luu;->bt:D

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    mul-double v2, v2, v21

    add-double/2addr v2, v4

    const-wide/high16 v19, 0x4070000000000000L    # 256.0

    div-double v2, v2, v19

    .line 3049
    iget-wide v6, v1, Luu;->bx:D

    mul-double v6, v6, v21

    sub-double v10, v31, v6

    div-double v10, v10, v19

    .line 3050
    iget-wide v6, v1, Luu;->bw:D

    mul-double v6, v6, v21

    add-double/2addr v4, v6

    div-double v4, v4, v19

    .line 3051
    iget-wide v6, v1, Luu;->bu:D

    mul-double v6, v6, v21

    sub-double v6, v31, v6

    div-double v6, v6, v19

    move-wide v8, v2

    move-wide v13, v8

    move-wide v15, v4

    move-wide/from16 v17, v15

    move-wide/from16 v19, v6

    move-wide/from16 v21, v19

    move-wide/from16 v23, v10

    goto/16 :goto_146

    :cond_c6
    const-wide/high16 v19, 0x4070000000000000L    # 256.0

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    const/4 v4, 0x2

    if-ne v8, v4, :cond_fc

    add-int/lit8 v3, v3, 0x10

    int-to-double v3, v3

    .line 3063
    iget-wide v5, v1, Luu;->bw:D

    mul-double v5, v5, v21

    sub-double v5, v3, v5

    div-double v5, v5, v19

    int-to-double v7, v2

    .line 3064
    iget-wide v9, v1, Luu;->bu:D

    mul-double v9, v9, v21

    add-double/2addr v9, v7

    div-double v9, v9, v19

    .line 3065
    iget-wide v13, v1, Luu;->bt:D

    mul-double v13, v13, v21

    sub-double/2addr v3, v13

    div-double v3, v3, v19

    .line 3066
    iget-wide v13, v1, Luu;->bx:D

    mul-double v13, v13, v21

    add-double/2addr v7, v13

    div-double v7, v7, v19

    move-wide v13, v3

    move-wide v15, v5

    move-wide/from16 v17, v15

    move-wide/from16 v23, v7

    move-wide/from16 v19, v9

    move-wide/from16 v21, v19

    move-wide/from16 v10, v23

    move-wide v8, v13

    goto :goto_146

    :cond_fc
    const/4 v4, 0x3

    if-ne v8, v4, :cond_13a

    add-int/lit8 v3, v3, 0x10

    int-to-double v3, v3

    .line 3078
    iget-wide v5, v1, Luu;->bu:D

    mul-double v5, v5, v21

    sub-double v5, v3, v5

    div-double v5, v5, v19

    .line 3079
    iget-wide v7, v1, Luu;->bx:D

    mul-double v7, v7, v21

    sub-double/2addr v3, v7

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v3, v7

    div-double v3, v3, v19

    int-to-double v9, v2

    .line 3080
    iget-wide v13, v1, Luu;->bw:D

    mul-double v13, v13, v21

    add-double/2addr v13, v9

    div-double v13, v13, v19

    .line 3081
    iget-wide v7, v1, Luu;->bt:D

    mul-double v7, v7, v21

    add-double/2addr v9, v7

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v9, v7

    div-double v9, v9, v19

    move-wide/from16 v17, v3

    move-wide v15, v5

    move-wide/from16 v21, v9

    move-wide/from16 v23, v21

    move-wide v10, v13

    move-wide/from16 v19, v10

    move-wide/from16 v8, v17

    move-wide v13, v15

    goto :goto_146

    :cond_13a
    move-wide/from16 v19, v6

    move-wide/from16 v21, v9

    move-wide/from16 v23, v21

    move-wide v8, v15

    move-wide/from16 v17, v8

    move-wide/from16 v10, v19

    move-wide v15, v13

    .line 3090
    :goto_146
    iget-wide v2, v1, Luu;->bs:D

    add-double v25, p2, v2

    .line 3091
    iget-wide v2, v1, Luu;->bt:D

    add-double v27, p4, v2

    .line 3092
    iget-wide v2, v1, Luu;->bw:D

    add-double v29, p4, v2

    .line 3093
    iget-wide v2, v1, Luu;->bu:D

    add-double v31, p6, v2

    .line 3094
    iget-wide v1, v1, Luu;->bx:D

    add-double v33, p6, v1

    .line 3096
    iget-boolean v1, v0, Lcv;->m:Z

    if-eqz v1, :cond_1af

    .line 3097
    iget v1, v0, Lcv;->P:F

    iget v2, v0, Lcv;->T:F

    iget v3, v0, Lcv;->X:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v4, v29

    move-wide/from16 v6, v33

    .line 3098
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 3099
    iget v1, v0, Lcv;->Q:F

    iget v2, v0, Lcv;->U:F

    iget v3, v0, Lcv;->Y:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v6, v31

    move-wide v8, v13

    move-wide/from16 v10, v19

    .line 3100
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 3101
    iget v1, v0, Lcv;->R:F

    iget v2, v0, Lcv;->V:F

    iget v3, v0, Lcv;->Z:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    move-wide v8, v15

    move-wide/from16 v10, v21

    .line 3102
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 3103
    iget v1, v0, Lcv;->S:F

    iget v2, v0, Lcv;->W:F

    iget v3, v0, Lcv;->aa:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v6, v33

    move-wide/from16 v8, v17

    move-wide/from16 v10, v23

    .line 3104
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    goto :goto_1d2

    :cond_1af
    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v4, v29

    move-wide/from16 v6, v33

    .line 3106
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v31

    move-wide v8, v13

    move-wide/from16 v10, v19

    .line 3107
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v27

    move-wide v8, v15

    move-wide/from16 v10, v21

    .line 3108
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v33

    move-wide/from16 v8, v17

    move-wide/from16 v10, v23

    .line 3109
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    :goto_1d2
    return-void
.end method

.method public e(Luu;III)Z
    .registers 48

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 681
    iget-object v1, v0, Lcv;->c:Lxp;

    invoke-interface {v1, v9, v10, v11}, Lxp;->e(III)I

    move-result v1

    and-int/lit8 v12, v1, 0x7

    const/16 v13, 0x8

    and-int/2addr v1, v13

    if-lez v1, :cond_1a

    const/16 v16, 0x1

    goto :goto_1c

    :cond_1a
    const/16 v16, 0x0

    .line 686
    :goto_1c
    sget-object v7, Lnw;->a:Lnw;

    .line 688
    iget v1, v0, Lcv;->d:I

    if-ltz v1, :cond_25

    const/16 v17, 0x1

    goto :goto_27

    :cond_25
    const/16 v17, 0x0

    :goto_27
    if-nez v17, :cond_2f

    .line 689
    sget-object v1, Luu;->x:Luu;

    iget v1, v1, Luu;->bm:I

    iput v1, v0, Lcv;->d:I

    :cond_2f
    const/4 v6, 0x3

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x6

    if-ne v12, v5, :cond_5b

    const/high16 v18, 0x3ea00000    # 0.3125f

    const/16 v19, 0x0

    const/high16 v20, 0x3e800000    # 0.25f

    const/high16 v21, 0x3f300000    # 0.6875f

    const/high16 v22, 0x3f400000    # 0.75f

    const/high16 v23, 0x3e400000    # 0.1875f

    move-object/from16 v1, p1

    move v13, v2

    move/from16 v2, v18

    move v14, v3

    move/from16 v3, v19

    move v15, v4

    move/from16 v4, v20

    move/from16 v5, v21

    move v15, v6

    move/from16 v6, v23

    move-object/from16 v26, v7

    move/from16 v7, v22

    .line 694
    invoke-virtual/range {v1 .. v7}, Luu;->a(FFFFFF)V

    goto/16 :goto_c2

    :cond_5b
    move v13, v2

    move v14, v3

    move v15, v6

    move-object/from16 v26, v7

    if-ne v12, v13, :cond_73

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3ea00000    # 0.3125f

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v7, 0x3f300000    # 0.6875f

    const/high16 v6, 0x3e400000    # 0.1875f

    move-object/from16 v1, p1

    .line 696
    invoke-virtual/range {v1 .. v7}, Luu;->a(FFFFFF)V

    goto :goto_c2

    :cond_73
    if-ne v12, v14, :cond_87

    const/high16 v2, 0x3ea00000    # 0.3125f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f500000    # 0.8125f

    const/high16 v5, 0x3f300000    # 0.6875f

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    .line 698
    invoke-virtual/range {v1 .. v7}, Luu;->a(FFFFFF)V

    goto :goto_c2

    :cond_87
    if-ne v12, v15, :cond_9a

    const/high16 v2, 0x3ea00000    # 0.3125f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const/high16 v5, 0x3f300000    # 0.6875f

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v7, 0x3e400000    # 0.1875f

    move-object/from16 v1, p1

    .line 700
    invoke-virtual/range {v1 .. v7}, Luu;->a(FFFFFF)V

    goto :goto_c2

    :cond_9a
    const/4 v1, 0x2

    if-ne v12, v1, :cond_af

    const/high16 v2, 0x3f500000    # 0.8125f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3ea00000    # 0.3125f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v7, 0x3f300000    # 0.6875f

    move-object/from16 v1, p1

    .line 702
    invoke-virtual/range {v1 .. v7}, Luu;->a(FFFFFF)V

    goto :goto_c2

    :cond_af
    const/4 v1, 0x1

    if-ne v12, v1, :cond_c2

    const/4 v2, 0x0

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3ea00000    # 0.3125f

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v7, 0x3f300000    # 0.6875f

    const/high16 v5, 0x3e400000    # 0.1875f

    move-object/from16 v1, p1

    .line 704
    invoke-virtual/range {v1 .. v7}, Luu;->a(FFFFFF)V

    .line 706
    :cond_c2
    :goto_c2
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    if-nez v17, :cond_ca

    const/4 v1, -0x1

    .line 707
    iput v1, v0, Lcv;->d:I

    .line 709
    :cond_ca
    iget-object v1, v0, Lcv;->c:Lxp;

    invoke-virtual {v8, v1, v9, v10, v11}, Luu;->d(Lxp;III)F

    move-result v1

    .line 710
    sget-object v2, Luu;->s:[I

    iget v3, v8, Luu;->bn:I

    aget v2, v2, v3

    if-lez v2, :cond_da

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_da
    move-object/from16 v6, v26

    .line 711
    invoke-virtual {v6, v1, v1, v1}, Lnw;->a(FFF)V

    const/4 v1, 0x0

    .line 712
    invoke-virtual {v8, v1}, Luu;->a(I)I

    move-result v2

    .line 714
    iget v1, v0, Lcv;->d:I

    if-ltz v1, :cond_e9

    move v2, v1

    :cond_e9
    and-int/lit8 v1, v2, 0xf

    shl-int/lit8 v8, v1, 0x4

    and-int/lit16 v7, v2, 0xf0

    int-to-float v1, v8

    const/high16 v17, 0x43800000    # 256.0f

    div-float v2, v1, v17

    const v3, 0x417fd70a    # 15.99f

    add-float/2addr v1, v3

    div-float v1, v1, v17

    int-to-float v4, v7

    div-float v5, v4, v17

    add-float/2addr v4, v3

    div-float v4, v4, v17

    const/high16 v3, -0x42800000    # -0.0625f

    float-to-double v14, v3

    const-wide/16 v28, 0x0

    move-wide/from16 v26, v14

    move-wide/from16 v30, v14

    .line 726
    invoke-static/range {v26 .. v31}, Lbt;->b(DDD)Lbt;

    move-result-object v3

    const/high16 v13, 0x3d800000    # 0.0625f

    move/from16 p1, v1

    float-to-double v0, v13

    move-wide/from16 v26, v0

    .line 727
    invoke-static/range {v26 .. v31}, Lbt;->b(DDD)Lbt;

    move-result-object v13

    move-wide/from16 v30, v0

    .line 728
    invoke-static/range {v26 .. v31}, Lbt;->b(DDD)Lbt;

    move-result-object v32

    move-wide/from16 v26, v14

    .line 729
    invoke-static/range {v26 .. v31}, Lbt;->b(DDD)Lbt;

    move-result-object v33

    move/from16 v38, v2

    const/high16 v2, 0x3f200000    # 0.625f

    move/from16 v40, v4

    move/from16 v39, v5

    float-to-double v4, v2

    move-wide/from16 v28, v4

    move-wide/from16 v30, v14

    .line 730
    invoke-static/range {v26 .. v31}, Lbt;->b(DDD)Lbt;

    move-result-object v34

    move-wide/from16 v26, v0

    .line 731
    invoke-static/range {v26 .. v31}, Lbt;->b(DDD)Lbt;

    move-result-object v35

    move-wide/from16 v30, v0

    .line 732
    invoke-static/range {v26 .. v31}, Lbt;->b(DDD)Lbt;

    move-result-object v36

    move-wide/from16 v26, v14

    .line 733
    invoke-static/range {v26 .. v31}, Lbt;->b(DDD)Lbt;

    move-result-object v37

    move-object/from16 v30, v3

    move-object/from16 v31, v13

    filled-new-array/range {v30 .. v37}, [Lbt;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    :goto_152
    if-ge v1, v2, :cond_208

    const-wide/high16 v3, 0x3fb0000000000000L    # 0.0625

    if-eqz v16, :cond_168

    .line 737
    aget-object v5, v0, v1

    iget-wide v13, v5, Lbt;->c:D

    sub-double/2addr v13, v3

    iput-wide v13, v5, Lbt;->c:D

    .line 738
    aget-object v3, v0, v1

    const v4, 0x3f32b8c3

    invoke-virtual {v3, v4}, Lbt;->a(F)V

    goto :goto_177

    .line 740
    :cond_168
    aget-object v5, v0, v1

    iget-wide v13, v5, Lbt;->c:D

    add-double/2addr v13, v3

    iput-wide v13, v5, Lbt;->c:D

    .line 741
    aget-object v3, v0, v1

    const v4, -0x40cd473d

    invoke-virtual {v3, v4}, Lbt;->a(F)V

    :goto_177
    const v3, 0x3fc90fdb

    const/4 v4, 0x6

    if-ne v12, v4, :cond_182

    .line 744
    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Lbt;->b(F)V

    :cond_182
    const/4 v13, 0x5

    if-ge v12, v13, :cond_1e0

    .line 748
    aget-object v14, v0, v1

    iget-wide v4, v14, Lbt;->b:D

    const-wide/high16 v26, 0x3fd8000000000000L    # 0.375

    sub-double v4, v4, v26

    iput-wide v4, v14, Lbt;->b:D

    .line 749
    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Lbt;->a(F)V

    const/4 v4, 0x4

    if-ne v12, v4, :cond_19d

    .line 751
    aget-object v4, v0, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lbt;->b(F)V

    :cond_19d
    const/4 v4, 0x3

    if-ne v12, v4, :cond_1a8

    .line 752
    aget-object v4, v0, v1

    const v5, 0x40490fdb    # (float)Math.PI

    invoke-virtual {v4, v5}, Lbt;->b(F)V

    :cond_1a8
    const/4 v4, 0x2

    if-ne v12, v4, :cond_1b0

    .line 753
    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Lbt;->b(F)V

    :cond_1b0
    const/4 v3, 0x1

    if-ne v12, v3, :cond_1bb

    .line 754
    aget-object v3, v0, v1

    const v4, -0x4036f025

    invoke-virtual {v3, v4}, Lbt;->b(F)V

    .line 756
    :cond_1bb
    aget-object v3, v0, v1

    iget-wide v4, v3, Lbt;->a:D

    int-to-double v14, v9

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v24

    add-double/2addr v4, v14

    iput-wide v4, v3, Lbt;->a:D

    .line 757
    aget-object v3, v0, v1

    iget-wide v4, v3, Lbt;->b:D

    int-to-float v14, v10

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-double v14, v14

    add-double/2addr v4, v14

    iput-wide v4, v3, Lbt;->b:D

    .line 758
    aget-object v3, v0, v1

    iget-wide v4, v3, Lbt;->c:D

    int-to-double v14, v11

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v24

    add-double/2addr v4, v14

    iput-wide v4, v3, Lbt;->c:D

    goto :goto_204

    :cond_1e0
    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    .line 760
    aget-object v3, v0, v1

    iget-wide v4, v3, Lbt;->a:D

    int-to-double v14, v9

    add-double v14, v14, v24

    add-double/2addr v4, v14

    iput-wide v4, v3, Lbt;->a:D

    .line 761
    aget-object v3, v0, v1

    iget-wide v4, v3, Lbt;->b:D

    int-to-float v14, v10

    const/high16 v15, 0x3e000000    # 0.125f

    add-float/2addr v14, v15

    float-to-double v14, v14

    add-double/2addr v4, v14

    iput-wide v4, v3, Lbt;->b:D

    .line 762
    aget-object v3, v0, v1

    iget-wide v4, v3, Lbt;->c:D

    int-to-double v14, v11

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v24

    add-double/2addr v4, v14

    iput-wide v4, v3, Lbt;->c:D

    :goto_204
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_152

    :cond_208
    const/4 v13, 0x5

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    const/4 v9, 0x6

    const/4 v12, 0x0

    move/from16 v1, p1

    :goto_212
    if-ge v12, v9, :cond_365

    const v9, 0x3c23d70a    # 0.01f

    if-nez v12, :cond_237

    add-int/lit8 v1, v8, 0x7

    int-to-float v1, v1

    div-float v1, v1, v17

    add-int/lit8 v10, v8, 0x9

    int-to-float v10, v10

    sub-float/2addr v10, v9

    div-float v10, v10, v17

    add-int/lit8 v11, v7, 0x6

    int-to-float v11, v11

    div-float v11, v11, v17

    add-int/lit8 v14, v7, 0x8

    :goto_22b
    int-to-float v14, v14

    sub-float/2addr v14, v9

    div-float v14, v14, v17

    move v15, v1

    move/from16 v41, v14

    move v14, v10

    move v10, v11

    move/from16 v11, v41

    goto :goto_254

    :cond_237
    const/4 v10, 0x2

    if-ne v12, v10, :cond_24d

    add-int/lit8 v1, v8, 0x7

    int-to-float v1, v1

    div-float v1, v1, v17

    add-int/lit8 v10, v8, 0x9

    int-to-float v10, v10

    sub-float/2addr v10, v9

    div-float v10, v10, v17

    add-int/lit8 v11, v7, 0x6

    int-to-float v11, v11

    div-float v11, v11, v17

    add-int/lit8 v14, v7, 0x10

    goto :goto_22b

    :cond_24d
    move v14, v1

    move/from16 v15, v38

    move/from16 v10, v39

    move/from16 v11, v40

    :goto_254
    if-nez v12, :cond_274

    const/4 v1, 0x0

    .line 780
    aget-object v2, v0, v1

    const/4 v1, 0x1

    .line 781
    aget-object v3, v0, v1

    const/4 v9, 0x2

    .line 782
    aget-object v4, v0, v9

    const/4 v5, 0x3

    .line 783
    aget-object v16, v0, v5

    move v13, v5

    move/from16 p2, v10

    const/4 v1, 0x4

    const/16 v18, 0x0

    const/16 v20, 0x6

    move-object v5, v3

    move-object/from16 v3, v16

    move-object/from16 v41, v4

    move-object v4, v2

    move-object/from16 v2, v41

    goto/16 :goto_2e7

    :cond_274
    const/4 v1, 0x1

    const/4 v9, 0x2

    const/16 v16, 0x7

    if-ne v12, v1, :cond_292

    .line 785
    aget-object v2, v0, v16

    const/4 v3, 0x6

    .line 786
    aget-object v4, v0, v3

    .line 787
    aget-object v3, v0, v13

    const/4 v5, 0x4

    .line 788
    aget-object v16, v0, v5

    move v1, v5

    move/from16 p2, v10

    const/4 v13, 0x3

    const/16 v18, 0x0

    const/16 v20, 0x6

    move-object v5, v4

    :goto_28d
    move-object v4, v2

    move-object v2, v3

    move-object/from16 v3, v16

    goto :goto_2e7

    :cond_292
    const/4 v13, 0x4

    if-ne v12, v9, :cond_2a9

    .line 790
    aget-object v2, v0, v1

    const/4 v3, 0x0

    .line 791
    aget-object v4, v0, v3

    .line 792
    aget-object v3, v0, v13

    const/4 v5, 0x5

    .line 793
    aget-object v16, v0, v5

    move-object v5, v4

    move/from16 p2, v10

    move v1, v13

    const/4 v13, 0x3

    const/16 v18, 0x0

    const/16 v20, 0x6

    goto :goto_28d

    :cond_2a9
    const/4 v13, 0x3

    if-ne v12, v13, :cond_2c7

    .line 795
    aget-object v2, v0, v9

    .line 796
    aget-object v3, v0, v1

    const/4 v1, 0x5

    .line 797
    aget-object v4, v0, v1

    const/16 v20, 0x6

    .line 798
    aget-object v5, v0, v20

    move/from16 p2, v10

    const/4 v1, 0x4

    :goto_2ba
    const/16 v18, 0x0

    :goto_2bc
    move-object/from16 v41, v4

    move-object v4, v2

    move-object/from16 v2, v41

    move-object/from16 v42, v5

    move-object v5, v3

    move-object/from16 v3, v42

    goto :goto_2e7

    :cond_2c7
    const/4 v1, 0x4

    const/16 v20, 0x6

    if-ne v12, v1, :cond_2d7

    .line 800
    aget-object v2, v0, v13

    .line 801
    aget-object v3, v0, v9

    .line 802
    aget-object v4, v0, v20

    .line 803
    aget-object v5, v0, v16

    move/from16 p2, v10

    goto :goto_2ba

    :cond_2d7
    const/4 v9, 0x5

    const/16 v18, 0x0

    if-ne v12, v9, :cond_2e4

    .line 805
    aget-object v2, v0, v18

    .line 806
    aget-object v3, v0, v13

    .line 807
    aget-object v4, v0, v16

    .line 808
    aget-object v5, v0, v1

    :cond_2e4
    move/from16 p2, v10

    goto :goto_2bc

    .line 810
    :goto_2e7
    iget-wide v9, v4, Lbt;->a:D

    move/from16 v16, v14

    iget-wide v13, v4, Lbt;->b:D

    move/from16 v23, v7

    move/from16 v21, v8

    iget-wide v7, v4, Lbt;->c:D

    move-wide/from16 v26, v7

    float-to-double v7, v15

    move-wide/from16 v28, v7

    float-to-double v7, v11

    move/from16 v25, v1

    const/16 v24, 0x5

    move-object v1, v6

    move-object/from16 v30, v0

    move-object v0, v2

    move/from16 v31, v15

    move-object v15, v3

    move-wide v2, v9

    move-object/from16 v32, v4

    move-object v10, v5

    move-wide v4, v13

    move-object v13, v6

    move-wide/from16 v33, v7

    move/from16 v14, v23

    move-wide/from16 v6, v26

    const/16 v23, 0x2

    move-wide/from16 v8, v28

    move/from16 v40, v11

    move/from16 v26, v12

    move/from16 p1, v14

    move/from16 v12, p2

    move-object v14, v10

    move-wide/from16 v10, v33

    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 811
    iget-wide v2, v14, Lbt;->a:D

    iget-wide v4, v14, Lbt;->b:D

    iget-wide v6, v14, Lbt;->c:D

    move/from16 v10, v16

    float-to-double v8, v10

    move-object v1, v13

    move-wide/from16 v35, v8

    move-wide/from16 v10, v33

    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 812
    iget-wide v2, v0, Lbt;->a:D

    iget-wide v4, v0, Lbt;->b:D

    iget-wide v6, v0, Lbt;->c:D

    float-to-double v10, v12

    move-wide/from16 v33, v10

    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 813
    iget-wide v2, v15, Lbt;->a:D

    iget-wide v4, v15, Lbt;->b:D

    iget-wide v6, v15, Lbt;->c:D

    move-wide/from16 v8, v28

    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    add-int/lit8 v1, v26, 0x1

    move/from16 v7, p1

    move-object v4, v0

    move/from16 v39, v12

    move-object v6, v13

    move-object v3, v14

    move-object v5, v15

    move/from16 v9, v20

    move/from16 v8, v21

    move/from16 v13, v24

    move-object/from16 v0, v30

    move/from16 v38, v31

    move-object/from16 v2, v32

    move v12, v1

    move/from16 v1, v16

    goto/16 :goto_212

    :cond_365
    const/4 v0, 0x1

    return v0
.end method

.method public f(Luu;DDDI)V
    .registers 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3114
    sget-object v12, Lnw;->a:Lnw;

    .line 3116
    iget v2, v0, Lcv;->d:I

    if-ltz v2, :cond_b

    goto :goto_d

    :cond_b
    move/from16 v2, p8

    :goto_d
    and-int/lit8 v3, v2, 0xf

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v2, v2, 0xf0

    int-to-double v4, v3

    .line 3120
    iget-wide v6, v1, Luu;->bu:D

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    const-wide/high16 v10, 0x4070000000000000L    # 256.0

    div-double/2addr v6, v10

    .line 3121
    iget-wide v13, v1, Luu;->bx:D

    mul-double/2addr v13, v8

    add-double/2addr v13, v4

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v13, v15

    div-double/2addr v13, v10

    add-int/lit8 v15, v2, 0x10

    int-to-double v10, v15

    move-wide v15, v6

    .line 3122
    iget-wide v6, v1, Luu;->bw:D

    mul-double/2addr v6, v8

    sub-double v6, v10, v6

    const-wide/high16 v19, 0x4070000000000000L    # 256.0

    div-double v6, v6, v19

    move-wide/from16 v21, v6

    .line 3123
    iget-wide v6, v1, Luu;->bt:D

    mul-double/2addr v6, v8

    sub-double v6, v10, v6

    const-wide v17, 0x3f847ae147ae147bL    # 0.01

    sub-double v6, v6, v17

    div-double v6, v6, v19

    .line 3124
    iget-boolean v8, v0, Lcv;->e:Z

    if-eqz v8, :cond_4a

    goto :goto_4f

    :cond_4a
    move-wide/from16 v35, v13

    move-wide v13, v15

    move-wide/from16 v15, v35

    .line 3130
    :goto_4f
    iget-wide v8, v1, Luu;->bu:D

    const-wide/16 v25, 0x0

    cmpg-double v8, v8, v25

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    const/16 v29, 0x0

    const/high16 v30, 0x43800000    # 256.0f

    move-wide/from16 v31, v10

    if-ltz v8, :cond_65

    iget-wide v9, v1, Luu;->bx:D

    cmpl-double v8, v9, v27

    if-lez v8, :cond_73

    :cond_65
    int-to-float v8, v3

    add-float v9, v8, v29

    div-float v9, v9, v30

    float-to-double v13, v9

    const v9, 0x417fd70a    # 15.99f

    add-float/2addr v8, v9

    div-float v8, v8, v30

    float-to-double v8, v8

    move-wide v15, v8

    .line 3134
    :cond_73
    iget-wide v8, v1, Luu;->bt:D

    cmpg-double v8, v8, v25

    if-ltz v8, :cond_84

    iget-wide v8, v1, Luu;->bw:D

    cmpl-double v8, v8, v27

    if-lez v8, :cond_80

    goto :goto_84

    :cond_80
    move-wide v9, v6

    move-wide/from16 v6, v21

    goto :goto_92

    :cond_84
    :goto_84
    int-to-float v6, v2

    add-float v29, v6, v29

    div-float v7, v29, v30

    float-to-double v7, v7

    const v9, 0x417fd70a    # 15.99f

    add-float/2addr v6, v9

    div-float v6, v6, v30

    float-to-double v9, v6

    move-wide v6, v7

    .line 3141
    :goto_92
    iget v8, v0, Lcv;->i:I

    const/4 v11, 0x2

    if-ne v8, v11, :cond_c8

    .line 3142
    iget-wide v2, v1, Luu;->bt:D

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    mul-double v2, v2, v21

    add-double/2addr v2, v4

    const-wide/high16 v19, 0x4070000000000000L    # 256.0

    div-double v2, v2, v19

    .line 3143
    iget-wide v6, v1, Luu;->bu:D

    mul-double v6, v6, v21

    sub-double v10, v31, v6

    div-double v10, v10, v19

    .line 3144
    iget-wide v6, v1, Luu;->bw:D

    mul-double v6, v6, v21

    add-double/2addr v4, v6

    div-double v4, v4, v19

    .line 3145
    iget-wide v6, v1, Luu;->bx:D

    mul-double v6, v6, v21

    sub-double v6, v31, v6

    div-double v6, v6, v19

    move-wide v13, v2

    move-wide/from16 v17, v13

    move-wide v8, v4

    move-wide v15, v8

    move-wide/from16 v23, v6

    move-wide/from16 v19, v10

    move-wide/from16 v21, v19

    move-wide/from16 v10, v23

    goto/16 :goto_14a

    :cond_c8
    const-wide/high16 v19, 0x4070000000000000L    # 256.0

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    const/4 v4, 0x1

    if-ne v8, v4, :cond_fe

    add-int/lit8 v3, v3, 0x10

    int-to-double v3, v3

    .line 3157
    iget-wide v5, v1, Luu;->bw:D

    mul-double v5, v5, v21

    sub-double v5, v3, v5

    div-double v5, v5, v19

    int-to-double v7, v2

    .line 3158
    iget-wide v9, v1, Luu;->bx:D

    mul-double v9, v9, v21

    add-double/2addr v9, v7

    div-double v9, v9, v19

    .line 3159
    iget-wide v13, v1, Luu;->bt:D

    mul-double v13, v13, v21

    sub-double/2addr v3, v13

    div-double v3, v3, v19

    .line 3160
    iget-wide v13, v1, Luu;->bu:D

    mul-double v13, v13, v21

    add-double/2addr v7, v13

    div-double v7, v7, v19

    move-wide v13, v3

    move-wide/from16 v17, v13

    move-wide v15, v5

    move-wide/from16 v19, v7

    move-wide/from16 v21, v19

    move-wide/from16 v23, v9

    move-wide/from16 v10, v23

    move-wide v8, v15

    goto :goto_14a

    :cond_fe
    const/4 v4, 0x3

    if-ne v8, v4, :cond_13d

    add-int/lit8 v3, v3, 0x10

    int-to-double v3, v3

    .line 3172
    iget-wide v5, v1, Luu;->bu:D

    mul-double v5, v5, v21

    sub-double v5, v3, v5

    div-double v5, v5, v19

    .line 3173
    iget-wide v7, v1, Luu;->bx:D

    mul-double v7, v7, v21

    sub-double/2addr v3, v7

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v3, v7

    div-double v3, v3, v19

    int-to-double v9, v2

    .line 3174
    iget-wide v13, v1, Luu;->bw:D

    mul-double v13, v13, v21

    add-double/2addr v13, v9

    div-double v13, v13, v19

    .line 3175
    iget-wide v7, v1, Luu;->bt:D

    mul-double v7, v7, v21

    add-double/2addr v9, v7

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    sub-double/2addr v9, v7

    div-double v9, v9, v19

    move-wide v15, v3

    move-wide/from16 v17, v5

    move-wide/from16 v19, v9

    move-wide/from16 v21, v13

    move-wide/from16 v23, v21

    move-wide v13, v15

    move-wide/from16 v10, v19

    move-wide/from16 v8, v17

    goto :goto_14a

    :cond_13d
    move-wide/from16 v21, v6

    move-wide/from16 v23, v21

    move-wide/from16 v19, v9

    move-wide/from16 v17, v13

    move-wide/from16 v10, v19

    move-wide/from16 v8, v17

    move-wide v13, v15

    .line 3184
    :goto_14a
    iget-wide v2, v1, Luu;->bv:D

    add-double v25, p2, v2

    .line 3185
    iget-wide v2, v1, Luu;->bt:D

    add-double v27, p4, v2

    .line 3186
    iget-wide v2, v1, Luu;->bw:D

    add-double v29, p4, v2

    .line 3187
    iget-wide v2, v1, Luu;->bu:D

    add-double v31, p6, v2

    .line 3188
    iget-wide v1, v1, Luu;->bx:D

    add-double v33, p6, v1

    .line 3190
    iget-boolean v1, v0, Lcv;->m:Z

    if-eqz v1, :cond_1b3

    .line 3191
    iget v1, v0, Lcv;->P:F

    iget v2, v0, Lcv;->T:F

    iget v3, v0, Lcv;->X:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    move-wide/from16 v6, v33

    .line 3192
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 3193
    iget v1, v0, Lcv;->Q:F

    iget v2, v0, Lcv;->U:F

    iget v3, v0, Lcv;->Y:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v6, v31

    move-wide v8, v15

    move-wide/from16 v10, v19

    .line 3194
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 3195
    iget v1, v0, Lcv;->R:F

    iget v2, v0, Lcv;->V:F

    iget v3, v0, Lcv;->Z:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v4, v29

    move-wide v8, v13

    move-wide/from16 v10, v21

    .line 3196
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 3197
    iget v1, v0, Lcv;->S:F

    iget v2, v0, Lcv;->W:F

    iget v3, v0, Lcv;->aa:F

    invoke-virtual {v12, v1, v2, v3}, Lnw;->a(FFF)V

    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v6, v33

    move-wide/from16 v8, v17

    move-wide/from16 v10, v23

    .line 3198
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    goto :goto_1d6

    :cond_1b3
    move-object v1, v12

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    move-wide/from16 v6, v33

    .line 3200
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v31

    move-wide v8, v15

    move-wide/from16 v10, v19

    .line 3201
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v29

    move-wide v8, v13

    move-wide/from16 v10, v21

    .line 3202
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v33

    move-wide/from16 v8, v17

    move-wide/from16 v10, v23

    .line 3203
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    :goto_1d6
    return-void
.end method

.method public f(Luu;III)Z
    .registers 63

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 819
    sget-object v14, Lnw;->a:Lnw;

    const/4 v15, 0x0

    .line 821
    invoke-virtual {v1, v15}, Luu;->a(I)I

    move-result v5

    .line 823
    iget v6, v0, Lcv;->d:I

    if-ltz v6, :cond_16

    move v5, v6

    .line 825
    :cond_16
    iget-object v6, v0, Lcv;->c:Lxp;

    invoke-virtual {v1, v6, v2, v3, v4}, Luu;->d(Lxp;III)F

    move-result v1

    .line 826
    invoke-virtual {v14, v1, v1, v1}, Lnw;->a(FFF)V

    and-int/lit8 v1, v5, 0xf

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v12, v5, 0xf0

    int-to-float v1, v1

    const/high16 v16, 0x43800000    # 256.0f

    div-float v5, v1, v16

    float-to-double v10, v5

    const v5, 0x417fd70a    # 15.99f

    add-float/2addr v1, v5

    div-float v1, v1, v16

    float-to-double v8, v1

    int-to-float v1, v12

    div-float v6, v1, v16

    float-to-double v6, v6

    add-float v17, v1, v5

    div-float v1, v17, v16

    move-wide/from16 v18, v10

    float-to-double v10, v1

    .line 836
    iget-object v1, v0, Lcv;->c:Lxp;

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v1, v2, v5, v4}, Lxp;->h(III)Z

    move-result v1

    const/high16 v20, 0x41800000    # 16.0f

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    const/4 v13, 0x1

    const v23, 0x3fb33333    # 1.4f

    if-nez v1, :cond_3b3

    sget-object v1, Luu;->as:Lyq;

    iget-object v15, v0, Lcv;->c:Lxp;

    invoke-virtual {v1, v15, v2, v5, v4}, Lyq;->c(Lxp;III)Z

    move-result v1

    if-eqz v1, :cond_69

    move-wide/from16 v25, v6

    move-wide/from16 v39, v8

    move-wide/from16 v41, v10

    move/from16 v43, v12

    move/from16 v44, v13

    move-object/from16 v24, v14

    const/16 v45, 0x0

    goto/16 :goto_3c1

    :cond_69
    add-int v1, v2, v3

    add-int/2addr v1, v4

    and-int/2addr v1, v13

    if-ne v1, v13, :cond_82

    add-int/lit8 v1, v12, 0x10

    int-to-float v1, v1

    div-float v1, v1, v16

    move-object v15, v14

    float-to-double v13, v1

    add-float v1, v17, v20

    div-float v1, v1, v16

    move-wide/from16 v25, v6

    float-to-double v5, v1

    move-wide/from16 v29, v5

    move-wide/from16 v27, v13

    goto :goto_89

    :cond_82
    move-wide/from16 v25, v6

    move-object v15, v14

    move-wide/from16 v29, v10

    move-wide/from16 v27, v25

    .line 915
    :goto_89
    div-int/lit8 v1, v2, 0x2

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v1, v5

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v1, v5

    const/4 v13, 0x1

    and-int/2addr v1, v13

    if-ne v1, v13, :cond_9a

    move-wide/from16 v33, v8

    move-wide/from16 v31, v18

    goto :goto_9e

    :cond_9a
    move-wide/from16 v31, v8

    move-wide/from16 v33, v18

    .line 920
    :goto_9e
    sget-object v1, Luu;->as:Lyq;

    iget-object v5, v0, Lcv;->c:Lxp;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v1, v5, v6, v3, v4}, Lyq;->c(Lxp;III)Z

    move-result v1

    const v35, 0x3e4ccccd    # 0.2f

    const/high16 v36, 0x3d800000    # 0.0625f

    if-eqz v1, :cond_12d

    int-to-float v1, v2

    add-float v1, v1, v35

    float-to-double v6, v1

    int-to-float v1, v3

    add-float v1, v1, v23

    add-float v1, v1, v36

    float-to-double v0, v1

    add-int/lit8 v5, v4, 0x1

    int-to-double v3, v5

    move-object v5, v15

    move-wide/from16 v37, v6

    move-wide/from16 v39, v8

    move-wide v8, v0

    move-wide/from16 v41, v10

    move-wide v10, v3

    move/from16 v43, v12

    move/from16 v44, v13

    move-wide/from16 v12, v31

    move-object/from16 v24, v15

    const/16 v45, 0x0

    move-wide/from16 v14, v27

    .line 921
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v5, v2, 0x0

    int-to-double v14, v5

    move-wide/from16 v46, v3

    move/from16 v3, p3

    add-int/lit8 v4, v3, 0x0

    int-to-float v4, v4

    add-float v4, v4, v36

    float-to-double v12, v4

    move-object/from16 v5, v24

    move-wide v6, v14

    move-wide v8, v12

    move-wide/from16 v10, v46

    move-wide/from16 v48, v12

    move-wide/from16 v12, v31

    move-wide/from16 v50, v14

    move-wide/from16 v14, v29

    .line 922
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move/from16 v4, p4

    add-int/lit8 v5, v4, 0x0

    int-to-double v14, v5

    move-object/from16 v5, v24

    move-wide/from16 v6, v50

    move-wide/from16 v8, v48

    move-wide v10, v14

    move-wide/from16 v12, v33

    move-wide/from16 v52, v14

    move-wide/from16 v14, v29

    .line 923
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v37

    move-wide v8, v0

    move-wide/from16 v10, v52

    move-wide/from16 v14, v27

    .line 924
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    .line 926
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v50

    move-wide/from16 v8, v48

    move-wide/from16 v14, v29

    .line 927
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v10, v46

    move-wide/from16 v12, v31

    .line 928
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v37

    move-wide v8, v0

    move-wide/from16 v14, v27

    .line 929
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    goto :goto_139

    :cond_12d
    move-wide/from16 v39, v8

    move-wide/from16 v41, v10

    move/from16 v43, v12

    move/from16 v44, v13

    move-object/from16 v24, v15

    const/16 v45, 0x0

    .line 931
    :goto_139
    sget-object v0, Luu;->as:Lyq;

    move-object/from16 v1, p0

    iget-object v5, v1, Lcv;->c:Lxp;

    add-int/lit8 v14, v2, 0x1

    invoke-virtual {v0, v5, v14, v3, v4}, Lyq;->c(Lxp;III)Z

    move-result v0

    if-eqz v0, :cond_1bb

    int-to-float v0, v14

    sub-float v0, v0, v35

    float-to-double v12, v0

    int-to-float v0, v3

    add-float v0, v0, v23

    add-float v0, v0, v36

    float-to-double v10, v0

    add-int/lit8 v0, v4, 0x0

    int-to-double v8, v0

    move-object/from16 v5, v24

    move-wide v6, v12

    move-wide/from16 v37, v8

    move-wide v8, v10

    move-wide/from16 v46, v10

    move-wide/from16 v10, v37

    move-wide/from16 v48, v12

    move-wide/from16 v12, v33

    move v0, v14

    move-wide/from16 v14, v27

    .line 932
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v14, v0, 0x0

    int-to-double v14, v14

    add-int/lit8 v5, v3, 0x0

    int-to-float v5, v5

    add-float v5, v5, v36

    float-to-double v12, v5

    move-object/from16 v5, v24

    move-wide v6, v14

    move-wide v8, v12

    move-wide/from16 v50, v12

    move-wide/from16 v12, v33

    move-wide/from16 v52, v14

    move-wide/from16 v14, v29

    .line 933
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v5, v4, 0x1

    int-to-double v14, v5

    move-object/from16 v5, v24

    move-wide/from16 v6, v52

    move-wide/from16 v8, v50

    move-wide v10, v14

    move-wide/from16 v12, v31

    move-wide/from16 v54, v14

    move-wide/from16 v14, v29

    .line 934
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v48

    move-wide/from16 v8, v46

    move-wide/from16 v10, v54

    move-wide/from16 v14, v27

    .line 935
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    .line 937
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v52

    move-wide/from16 v8, v50

    move-wide/from16 v14, v29

    .line 938
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v10, v37

    move-wide/from16 v12, v33

    .line 939
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v48

    move-wide/from16 v8, v46

    move-wide/from16 v14, v27

    .line 940
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    goto :goto_1bc

    :cond_1bb
    move v0, v14

    .line 942
    :goto_1bc
    sget-object v5, Luu;->as:Lyq;

    iget-object v6, v1, Lcv;->c:Lxp;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v5, v6, v2, v3, v7}, Lyq;->c(Lxp;III)Z

    move-result v5

    if-eqz v5, :cond_236

    add-int/lit8 v5, v2, 0x0

    int-to-double v14, v5

    int-to-float v5, v3

    add-float v5, v5, v23

    add-float v5, v5, v36

    float-to-double v12, v5

    int-to-float v5, v4

    add-float v5, v5, v35

    float-to-double v10, v5

    move-object/from16 v5, v24

    move-wide v6, v14

    move-wide v8, v12

    move-wide/from16 v37, v10

    move-wide/from16 v46, v12

    move-wide/from16 v12, v31

    move-wide/from16 v48, v14

    move-wide/from16 v14, v27

    .line 943
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v5, v3, 0x0

    int-to-float v5, v5

    add-float v5, v5, v36

    float-to-double v14, v5

    add-int/lit8 v5, v4, 0x0

    int-to-double v12, v5

    move-object/from16 v5, v24

    move-wide/from16 v6, v48

    move-wide v8, v14

    move-wide v10, v12

    move-wide/from16 v50, v12

    move-wide/from16 v12, v31

    move-wide/from16 v52, v14

    move-wide/from16 v14, v29

    .line 944
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    int-to-double v14, v0

    move-wide v6, v14

    move-wide/from16 v8, v52

    move-wide/from16 v10, v50

    move-wide/from16 v12, v33

    move-wide/from16 v54, v14

    move-wide/from16 v14, v29

    .line 945
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v54

    move-wide/from16 v8, v46

    move-wide/from16 v10, v37

    move-wide/from16 v14, v27

    .line 946
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    .line 948
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, v52

    move-wide/from16 v10, v50

    move-wide/from16 v14, v29

    .line 949
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v48

    move-wide/from16 v12, v31

    .line 950
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, v46

    move-wide/from16 v10, v37

    move-wide/from16 v14, v27

    .line 951
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    .line 953
    :cond_236
    sget-object v5, Luu;->as:Lyq;

    iget-object v6, v1, Lcv;->c:Lxp;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v5, v6, v2, v3, v14}, Lyq;->c(Lxp;III)Z

    move-result v5

    if-eqz v5, :cond_2b8

    int-to-double v12, v0

    int-to-float v5, v3

    add-float v5, v5, v23

    add-float v5, v5, v36

    float-to-double v10, v5

    int-to-float v5, v14

    sub-float v5, v5, v35

    float-to-double v8, v5

    move-object/from16 v5, v24

    move-wide v6, v12

    move-wide/from16 v37, v8

    move-wide v8, v10

    move-wide/from16 v46, v10

    move-wide/from16 v10, v37

    move-wide/from16 v48, v12

    move-wide/from16 v12, v33

    move/from16 p1, v0

    move v0, v14

    move-wide/from16 v14, v27

    .line 954
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v5, v3, 0x0

    int-to-float v5, v5

    add-float v5, v5, v36

    float-to-double v14, v5

    add-int/lit8 v5, v0, 0x0

    int-to-double v12, v5

    move-object/from16 v5, v24

    move-wide/from16 v6, v48

    move-wide v8, v14

    move-wide v10, v12

    move-wide/from16 v35, v12

    move-wide/from16 v12, v33

    move-wide/from16 v50, v14

    move-wide/from16 v14, v29

    .line 955
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v5, v2, 0x0

    int-to-double v14, v5

    move-object/from16 v5, v24

    move-wide v6, v14

    move-wide/from16 v8, v50

    move-wide/from16 v10, v35

    move-wide/from16 v12, v31

    move-wide/from16 v52, v14

    move-wide/from16 v14, v29

    .line 956
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v52

    move-wide/from16 v8, v46

    move-wide/from16 v10, v37

    move-wide/from16 v14, v27

    .line 957
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    .line 959
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, v50

    move-wide/from16 v10, v35

    move-wide/from16 v14, v29

    .line 960
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v48

    move-wide/from16 v12, v33

    .line 961
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, v46

    move-wide/from16 v10, v37

    move-wide/from16 v14, v27

    .line 962
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    goto :goto_2bb

    :cond_2b8
    move/from16 p1, v0

    move v0, v14

    .line 964
    :goto_2bb
    sget-object v5, Luu;->as:Lyq;

    iget-object v6, v1, Lcv;->c:Lxp;

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v5, v6, v2, v12, v4}, Lyq;->c(Lxp;III)Z

    move-result v3

    if-eqz v3, :cond_53a

    int-to-double v5, v2

    add-double v5, v5, v21

    add-double v13, v5, v21

    sub-double v27, v5, v21

    int-to-double v5, v4

    add-double v5, v5, v21

    add-double v29, v5, v21

    sub-double v21, v5, v21

    add-int v3, v2, v12

    add-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x1

    const v5, -0x41b33333    # -0.2f

    if-nez v3, :cond_349

    int-to-float v2, v12

    add-float/2addr v2, v5

    float-to-double v10, v2

    add-int/lit8 v2, v4, 0x0

    int-to-double v8, v2

    move-object/from16 v1, v24

    move-wide/from16 v2, v27

    move-wide v4, v10

    move-wide v6, v8

    move-wide/from16 v21, v8

    move-wide/from16 v8, v39

    move-wide/from16 v29, v10

    move-wide/from16 v10, v25

    .line 985
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    add-int/lit8 v12, v12, 0x0

    int-to-double v10, v12

    move-wide v2, v13

    move-wide v4, v10

    move-wide/from16 v6, v21

    move-wide/from16 v31, v10

    move-wide/from16 v10, v41

    .line 986
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    int-to-double v10, v0

    move-wide/from16 v4, v31

    move-wide v6, v10

    move-wide/from16 v8, v18

    move-wide/from16 v33, v10

    move-wide/from16 v10, v41

    .line 987
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v27

    move-wide/from16 v4, v29

    move-wide/from16 v6, v33

    move-wide/from16 v10, v25

    .line 988
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    add-int/lit8 v12, v43, 0x10

    int-to-float v0, v12

    div-float v0, v0, v16

    float-to-double v10, v0

    add-float v17, v17, v20

    div-float v0, v17, v16

    float-to-double v8, v0

    move-wide v2, v13

    move-wide v15, v8

    move-wide/from16 v8, v39

    move-wide/from16 v25, v10

    .line 995
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v27

    move-wide/from16 v4, v31

    move-wide v10, v15

    .line 996
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v21

    move-wide/from16 v8, v18

    .line 997
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide v2, v13

    move-wide/from16 v4, v29

    move-wide/from16 v10, v25

    .line 998
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    goto/16 :goto_53a

    :cond_349
    add-int/lit8 v0, v2, 0x0

    int-to-double v13, v0

    int-to-float v0, v12

    add-float/2addr v0, v5

    float-to-double v10, v0

    move-object/from16 v1, v24

    move-wide v2, v13

    move-wide v4, v10

    move-wide/from16 v6, v29

    move-wide/from16 v8, v39

    move-wide/from16 v27, v10

    move-wide/from16 v10, v25

    .line 1002
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    add-int/lit8 v12, v12, 0x0

    int-to-double v10, v12

    move-wide v4, v10

    move-wide/from16 v6, v21

    move-wide/from16 v31, v10

    move-wide/from16 v10, v41

    .line 1003
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move/from16 v0, p1

    int-to-double v10, v0

    move-wide v2, v10

    move-wide/from16 v4, v31

    move-wide/from16 v8, v18

    move-wide/from16 v33, v10

    move-wide/from16 v10, v41

    .line 1004
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v33

    move-wide/from16 v4, v27

    move-wide/from16 v6, v29

    move-wide/from16 v10, v25

    .line 1005
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    add-int/lit8 v12, v43, 0x10

    int-to-float v0, v12

    div-float v0, v0, v16

    float-to-double v10, v0

    add-float v17, v17, v20

    div-float v0, v17, v16

    float-to-double v8, v0

    move-wide/from16 v6, v21

    move-wide v15, v8

    move-wide/from16 v8, v39

    move-wide/from16 v25, v10

    .line 1012
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v31

    move-wide/from16 v6, v29

    move-wide v10, v15

    .line 1013
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide v2, v13

    move-wide/from16 v8, v18

    .line 1014
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v27

    move-wide/from16 v6, v21

    move-wide/from16 v10, v25

    .line 1015
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    goto/16 :goto_53a

    :cond_3b3
    move-wide/from16 v25, v6

    move-wide/from16 v39, v8

    move-wide/from16 v41, v10

    move/from16 v43, v12

    move/from16 v44, v13

    move-object/from16 v24, v14

    move/from16 v45, v15

    :goto_3c1
    int-to-double v0, v2

    add-double v27, v0, v21

    const-wide v0, 0x3fc999999999999aL    # 0.2

    add-double v29, v27, v0

    sub-double v31, v27, v0

    int-to-double v5, v4

    add-double v33, v5, v21

    add-double v35, v33, v0

    sub-double v37, v33, v0

    const-wide v0, 0x3fd3333333333333L    # 0.3

    sub-double v46, v27, v0

    add-double v48, v27, v0

    sub-double v50, v33, v0

    add-double v52, v33, v0

    int-to-float v0, v3

    add-float v0, v0, v23

    float-to-double v0, v0

    add-int/lit8 v5, v4, 0x1

    int-to-double v14, v5

    move-object/from16 v5, v24

    move-wide/from16 v6, v46

    move-wide v8, v0

    move-wide v10, v14

    move-wide/from16 v12, v39

    move-wide/from16 v54, v14

    move-wide/from16 v14, v25

    .line 847
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v3, v3, 0x0

    int-to-double v14, v3

    move-wide/from16 v6, v29

    move-wide v8, v14

    move-wide/from16 v10, v54

    move-wide/from16 v56, v14

    move-wide/from16 v14, v41

    .line 848
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v3, v4, 0x0

    int-to-double v14, v3

    move-object/from16 v3, v24

    move-wide/from16 v4, v29

    move-wide/from16 v6, v56

    move-wide v8, v14

    move-wide/from16 v10, v18

    move-wide/from16 v12, v41

    .line 849
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v46

    move-wide v6, v0

    move-wide/from16 v12, v25

    .line 850
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v48

    move-wide/from16 v10, v39

    .line 852
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v31

    move-wide/from16 v6, v56

    move-wide/from16 v12, v41

    .line 853
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, v54

    move-wide/from16 v10, v18

    .line 854
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v48

    move-wide v6, v0

    move-wide/from16 v12, v25

    .line 855
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    add-int/lit8 v12, v43, 0x10

    int-to-float v3, v12

    div-float v3, v3, v16

    float-to-double v12, v3

    add-float v17, v17, v20

    div-float v3, v17, v16

    float-to-double v10, v3

    add-int/lit8 v3, v2, 0x1

    int-to-double v8, v3

    move-object/from16 v3, v24

    move-wide v4, v8

    move-wide/from16 v16, v8

    move-wide/from16 v8, v52

    move-wide/from16 v29, v10

    move-wide/from16 v10, v39

    move-wide/from16 v31, v12

    .line 862
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v16

    move-wide/from16 v6, v56

    move-wide/from16 v8, v37

    move-wide/from16 v12, v29

    .line 863
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    add-int/lit8 v2, v2, 0x0

    int-to-double v12, v2

    move-wide/from16 v45, v0

    move-object/from16 v1, v24

    move-wide v2, v12

    move-wide/from16 v4, v56

    move-wide/from16 v6, v37

    move-wide/from16 v8, v18

    move-wide/from16 v10, v29

    .line 864
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v45

    move-wide/from16 v6, v52

    move-wide/from16 v10, v31

    .line 865
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v50

    move-wide/from16 v8, v39

    .line 867
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v56

    move-wide/from16 v6, v35

    move-wide/from16 v10, v29

    .line 868
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v16

    move-wide/from16 v8, v18

    .line 869
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v45

    move-wide/from16 v6, v50

    move-wide/from16 v10, v31

    .line 870
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    sub-double v35, v27, v21

    add-double v37, v27, v21

    sub-double v47, v33, v21

    add-double v20, v33, v21

    const-wide v0, 0x3fd999999999999aL    # 0.4

    sub-double v22, v27, v0

    add-double v27, v27, v0

    sub-double v49, v33, v0

    add-double v33, v33, v0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    move-wide v6, v14

    .line 882
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v35

    move-wide/from16 v4, v56

    move-wide/from16 v10, v29

    .line 883
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v54

    move-wide/from16 v8, v39

    .line 884
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v22

    move-wide/from16 v4, v45

    move-wide/from16 v10, v31

    .line 885
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v27

    move-wide/from16 v8, v18

    .line 887
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v37

    move-wide/from16 v4, v56

    move-wide/from16 v10, v29

    .line 888
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide v6, v14

    move-wide/from16 v8, v39

    .line 889
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v27

    move-wide/from16 v4, v45

    move-wide/from16 v10, v31

    .line 890
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide v2, v12

    move-wide/from16 v6, v33

    move-wide/from16 v8, v18

    move-wide/from16 v10, v25

    .line 897
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v56

    move-wide/from16 v6, v20

    move-wide/from16 v10, v41

    .line 898
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v16

    move-wide/from16 v8, v39

    .line 899
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v45

    move-wide/from16 v6, v33

    move-wide/from16 v10, v25

    .line 900
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v49

    move-wide/from16 v8, v18

    .line 902
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v56

    move-wide/from16 v6, v47

    move-wide/from16 v10, v41

    .line 903
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide v2, v12

    move-wide/from16 v8, v39

    .line 904
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v45

    move-wide/from16 v6, v49

    move-wide/from16 v10, v25

    .line 905
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    :cond_53a
    :goto_53a
    return v44
.end method

.method public g(Luu;III)Z
    .registers 78

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1024
    sget-object v14, Lnw;->a:Lnw;

    .line 1026
    iget-object v5, v0, Lcv;->c:Lxp;

    invoke-interface {v5, v2, v3, v4}, Lxp;->e(III)I

    move-result v5

    const/4 v15, 0x1

    .line 1027
    invoke-virtual {v1, v15, v5}, Luu;->a(II)I

    move-result v6

    .line 1029
    iget v7, v0, Lcv;->d:I

    if-ltz v7, :cond_1c

    move v6, v7

    .line 1031
    :cond_1c
    iget-object v7, v0, Lcv;->c:Lxp;

    invoke-virtual {v1, v7, v2, v3, v4}, Luu;->d(Lxp;III)F

    move-result v1

    int-to-float v7, v5

    const/high16 v8, 0x41700000    # 15.0f

    div-float/2addr v7, v8

    const v8, 0x3f19999a    # 0.6f

    mul-float v9, v7, v8

    const v10, 0x3ecccccd    # 0.4f

    add-float/2addr v9, v10

    if-nez v5, :cond_34

    const v9, 0x3e99999a    # 0.3f

    :cond_34
    mul-float/2addr v7, v7

    const v5, 0x3f333333    # 0.7f

    mul-float v10, v7, v5

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    mul-float/2addr v7, v8

    sub-float/2addr v7, v5

    const/4 v5, 0x0

    cmpg-float v8, v10, v5

    if-gez v8, :cond_45

    move v10, v5

    :cond_45
    cmpg-float v8, v7, v5

    if-gez v8, :cond_4a

    move v7, v5

    :cond_4a
    mul-float v12, v1, v9

    mul-float v13, v1, v10

    mul-float v10, v1, v7

    .line 1042
    invoke-virtual {v14, v12, v13, v10}, Lnw;->a(FFF)V

    and-int/lit8 v5, v6, 0xf

    shl-int/lit8 v11, v5, 0x4

    and-int/lit16 v5, v6, 0xf0

    int-to-float v6, v11

    const/high16 v16, 0x43800000    # 256.0f

    div-float v7, v6, v16

    float-to-double v7, v7

    const v17, 0x417fd70a    # 15.99f

    add-float v6, v6, v17

    div-float v6, v6, v16

    move-wide/from16 v18, v7

    float-to-double v6, v6

    int-to-float v5, v5

    div-float v8, v5, v16

    float-to-double v8, v8

    add-float v5, v5, v17

    div-float v5, v5, v16

    move/from16 p1, v12

    move/from16 v20, v13

    float-to-double v12, v5

    .line 1054
    iget-object v5, v0, Lcv;->c:Lxp;

    move/from16 v21, v1

    add-int/lit8 v1, v2, -0x1

    invoke-static {v5, v1, v3, v4, v15}, Lsm;->e(Lxp;IIII)Z

    move-result v5

    if-nez v5, :cond_9c

    iget-object v5, v0, Lcv;->c:Lxp;

    invoke-interface {v5, v1, v3, v4}, Lxp;->h(III)Z

    move-result v5

    if-nez v5, :cond_98

    iget-object v5, v0, Lcv;->c:Lxp;

    add-int/lit8 v15, v3, -0x1

    move-wide/from16 v25, v6

    const/4 v6, -0x1

    invoke-static {v5, v1, v15, v4, v6}, Lsm;->e(Lxp;IIII)Z

    move-result v5

    if-eqz v5, :cond_9a

    goto :goto_9e

    :cond_98
    move-wide/from16 v25, v6

    :cond_9a
    const/4 v5, 0x0

    goto :goto_9f

    :cond_9c
    move-wide/from16 v25, v6

    :goto_9e
    const/4 v5, 0x1

    .line 1056
    :goto_9f
    iget-object v6, v0, Lcv;->c:Lxp;

    add-int/lit8 v15, v2, 0x1

    const/4 v7, 0x3

    invoke-static {v6, v15, v3, v4, v7}, Lsm;->e(Lxp;IIII)Z

    move-result v6

    if-nez v6, :cond_c4

    iget-object v6, v0, Lcv;->c:Lxp;

    invoke-interface {v6, v15, v3, v4}, Lxp;->h(III)Z

    move-result v6

    if-nez v6, :cond_c0

    iget-object v6, v0, Lcv;->c:Lxp;

    add-int/lit8 v7, v3, -0x1

    move/from16 v27, v5

    const/4 v5, -0x1

    invoke-static {v6, v15, v7, v4, v5}, Lsm;->e(Lxp;IIII)Z

    move-result v6

    if-eqz v6, :cond_c2

    goto :goto_c6

    :cond_c0
    move/from16 v27, v5

    :cond_c2
    const/4 v5, 0x0

    goto :goto_c7

    :cond_c4
    move/from16 v27, v5

    :goto_c6
    const/4 v5, 0x1

    .line 1058
    :goto_c7
    iget-object v6, v0, Lcv;->c:Lxp;

    add-int/lit8 v7, v4, -0x1

    move/from16 v28, v5

    const/4 v5, 0x2

    invoke-static {v6, v2, v3, v7, v5}, Lsm;->e(Lxp;IIII)Z

    move-result v6

    if-nez v6, :cond_ee

    iget-object v6, v0, Lcv;->c:Lxp;

    invoke-interface {v6, v2, v3, v7}, Lxp;->h(III)Z

    move-result v6

    if-nez v6, :cond_ea

    iget-object v6, v0, Lcv;->c:Lxp;

    add-int/lit8 v5, v3, -0x1

    move/from16 v30, v10

    const/4 v10, -0x1

    invoke-static {v6, v2, v5, v7, v10}, Lsm;->e(Lxp;IIII)Z

    move-result v5

    if-eqz v5, :cond_ec

    goto :goto_f0

    :cond_ea
    move/from16 v30, v10

    :cond_ec
    const/4 v5, 0x0

    goto :goto_f1

    :cond_ee
    move/from16 v30, v10

    :goto_f0
    const/4 v5, 0x1

    .line 1060
    :goto_f1
    iget-object v6, v0, Lcv;->c:Lxp;

    add-int/lit8 v10, v4, 0x1

    move/from16 v31, v5

    const/4 v5, 0x0

    invoke-static {v6, v2, v3, v10, v5}, Lsm;->e(Lxp;IIII)Z

    move-result v6

    if-nez v6, :cond_118

    iget-object v6, v0, Lcv;->c:Lxp;

    invoke-interface {v6, v2, v3, v10}, Lxp;->h(III)Z

    move-result v6

    if-nez v6, :cond_114

    iget-object v6, v0, Lcv;->c:Lxp;

    add-int/lit8 v5, v3, -0x1

    move-object/from16 v32, v14

    const/4 v14, -0x1

    invoke-static {v6, v2, v5, v10, v14}, Lsm;->e(Lxp;IIII)Z

    move-result v5

    if-eqz v5, :cond_116

    goto :goto_11a

    :cond_114
    move-object/from16 v32, v14

    :cond_116
    const/4 v5, 0x0

    goto :goto_11b

    :cond_118
    move-object/from16 v32, v14

    :goto_11a
    const/4 v5, 0x1

    .line 1062
    :goto_11b
    iget-object v6, v0, Lcv;->c:Lxp;

    add-int/lit8 v14, v3, 0x1

    invoke-interface {v6, v2, v14, v4}, Lxp;->h(III)Z

    move-result v6

    if-nez v6, :cond_177

    .line 1063
    iget-object v6, v0, Lcv;->c:Lxp;

    invoke-interface {v6, v1, v3, v4}, Lxp;->h(III)Z

    move-result v6

    if-eqz v6, :cond_13b

    iget-object v6, v0, Lcv;->c:Lxp;

    move/from16 v33, v5

    const/4 v5, -0x1

    invoke-static {v6, v1, v14, v4, v5}, Lsm;->e(Lxp;IIII)Z

    move-result v6

    if-eqz v6, :cond_13e

    const/16 v27, 0x1

    goto :goto_13e

    :cond_13b
    move/from16 v33, v5

    const/4 v5, -0x1

    .line 1064
    :cond_13e
    :goto_13e
    iget-object v6, v0, Lcv;->c:Lxp;

    invoke-interface {v6, v15, v3, v4}, Lxp;->h(III)Z

    move-result v6

    if-eqz v6, :cond_150

    iget-object v6, v0, Lcv;->c:Lxp;

    invoke-static {v6, v15, v14, v4, v5}, Lsm;->e(Lxp;IIII)Z

    move-result v6

    if-eqz v6, :cond_150

    const/16 v28, 0x1

    .line 1065
    :cond_150
    iget-object v6, v0, Lcv;->c:Lxp;

    invoke-interface {v6, v2, v3, v7}, Lxp;->h(III)Z

    move-result v6

    if-eqz v6, :cond_162

    iget-object v6, v0, Lcv;->c:Lxp;

    invoke-static {v6, v2, v14, v7, v5}, Lsm;->e(Lxp;IIII)Z

    move-result v6

    if-eqz v6, :cond_162

    const/16 v31, 0x1

    .line 1066
    :cond_162
    iget-object v6, v0, Lcv;->c:Lxp;

    invoke-interface {v6, v2, v3, v10}, Lxp;->h(III)Z

    move-result v6

    if-eqz v6, :cond_179

    iget-object v6, v0, Lcv;->c:Lxp;

    invoke-static {v6, v2, v14, v10, v5}, Lsm;->e(Lxp;IIII)Z

    move-result v5

    if-eqz v5, :cond_179

    move/from16 v5, v27

    const/16 v33, 0x1

    goto :goto_17b

    :cond_177
    move/from16 v33, v5

    :cond_179
    move/from16 v5, v27

    :goto_17b
    add-int/lit8 v6, v2, 0x0

    move/from16 v23, v1

    int-to-float v1, v6

    int-to-float v2, v15

    add-int/lit8 v0, v4, 0x0

    int-to-float v4, v0

    move/from16 v27, v0

    int-to-float v0, v10

    if-nez v5, :cond_18b

    if-eqz v28, :cond_192

    :cond_18b
    if-nez v31, :cond_192

    if-nez v33, :cond_192

    const/16 v34, 0x1

    goto :goto_194

    :cond_192
    const/16 v34, 0x0

    :goto_194
    if-nez v31, :cond_198

    if-eqz v33, :cond_1a0

    :cond_198
    if-nez v28, :cond_1a0

    if-nez v5, :cond_1a0

    move/from16 v35, v6

    const/4 v6, 0x2

    goto :goto_1a4

    :cond_1a0
    move/from16 v35, v6

    move/from16 v6, v34

    :goto_1a4
    if-eqz v6, :cond_1bc

    move/from16 v34, v7

    add-int/lit8 v7, v11, 0x10

    int-to-float v7, v7

    move/from16 v36, v10

    div-float v10, v7, v16

    move/from16 v37, v11

    float-to-double v10, v10

    add-float v7, v7, v17

    div-float v7, v7, v16

    move-wide/from16 v18, v10

    float-to-double v10, v7

    move-wide/from16 v25, v10

    goto :goto_1c2

    :cond_1bc
    move/from16 v34, v7

    move/from16 v36, v10

    move/from16 v37, v11

    :goto_1c2
    const/high16 v38, 0x3c800000    # 0.015625f

    const-wide/high16 v39, 0x3fb0000000000000L    # 0.0625

    if-nez v6, :cond_29e

    if-nez v28, :cond_1da

    if-nez v31, :cond_1da

    if-nez v33, :cond_1da

    if-eqz v5, :cond_1d1

    goto :goto_1da

    :cond_1d1
    move v6, v0

    move v5, v2

    move-wide/from16 v41, v8

    :goto_1d5
    move-wide/from16 v28, v18

    move-wide/from16 v18, v12

    goto :goto_20d

    :cond_1da
    :goto_1da
    const/high16 v6, 0x3ea00000    # 0.3125f

    if-nez v5, :cond_1df

    add-float/2addr v1, v6

    :cond_1df
    const-wide/high16 v10, 0x3f94000000000000L    # 0.01953125

    if-nez v5, :cond_1e5

    add-double v18, v18, v10

    :cond_1e5
    if-nez v28, :cond_1ea

    sub-float v5, v2, v6

    goto :goto_1eb

    :cond_1ea
    move v5, v2

    :goto_1eb
    if-nez v28, :cond_1ef

    sub-double v25, v25, v10

    :cond_1ef
    if-nez v31, :cond_1f2

    add-float/2addr v4, v6

    :cond_1f2
    if-nez v31, :cond_1f7

    add-double v28, v8, v10

    goto :goto_1f9

    :cond_1f7
    move-wide/from16 v28, v8

    :goto_1f9
    if-nez v33, :cond_1fe

    sub-float v6, v0, v6

    goto :goto_1ff

    :cond_1fe
    move v6, v0

    :goto_1ff
    if-nez v33, :cond_20a

    sub-double v10, v12, v10

    move-wide/from16 v41, v28

    move-wide/from16 v28, v18

    move-wide/from16 v18, v10

    goto :goto_20d

    :cond_20a
    move-wide/from16 v41, v28

    goto :goto_1d5

    :goto_20d
    float-to-double v10, v5

    int-to-float v5, v3

    add-float v5, v5, v38

    move/from16 v31, v2

    float-to-double v2, v5

    float-to-double v6, v6

    const/16 v24, 0x0

    move-object/from16 v5, v32

    move/from16 v43, v34

    move/from16 v44, v35

    move-wide/from16 v33, v6

    move-wide v6, v10

    move-wide/from16 v45, v8

    move-wide v8, v2

    move/from16 v47, v30

    move/from16 v48, v36

    move/from16 v30, v37

    move-wide/from16 v35, v10

    move-wide/from16 v10, v33

    move/from16 v49, p1

    move-wide/from16 v51, v12

    move/from16 v50, v20

    move-wide/from16 v12, v25

    move/from16 v22, v0

    move/from16 v54, v14

    move/from16 v53, v15

    move/from16 v20, v24

    move-object/from16 p1, v32

    const/4 v0, 0x1

    move-wide/from16 v14, v18

    .line 1097
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    float-to-double v14, v4

    move-object/from16 v5, p1

    move-wide/from16 v6, v35

    move-wide v10, v14

    move-wide/from16 v55, v14

    move-wide/from16 v14, v41

    .line 1098
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    float-to-double v14, v1

    move-wide v6, v14

    move-wide/from16 v10, v55

    move-wide/from16 v12, v28

    move-wide/from16 v57, v14

    move-wide/from16 v14, v41

    .line 1099
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v57

    move-wide/from16 v10, v33

    move-wide/from16 v14, v18

    .line 1100
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-object/from16 v1, p1

    move/from16 v4, v21

    .line 1102
    invoke-virtual {v1, v4, v4, v4}, Lnw;->a(FFF)V

    add-double v18, v18, v39

    move-object v5, v1

    move-wide/from16 v6, v35

    move-wide/from16 v12, v25

    move-wide/from16 v14, v18

    .line 1103
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-double v41, v41, v39

    move-wide/from16 v10, v55

    move-wide/from16 v14, v41

    .line 1104
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v57

    move-wide/from16 v12, v28

    .line 1105
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v10, v33

    move-wide/from16 v14, v18

    .line 1106
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move/from16 v0, p3

    move-object v2, v1

    move v3, v4

    move/from16 v4, v27

    move/from16 v21, v31

    move-object/from16 v1, p0

    goto/16 :goto_3af

    :cond_29e
    move/from16 v49, p1

    move/from16 v22, v0

    move/from16 v31, v2

    move-wide/from16 v45, v8

    move-wide/from16 v51, v12

    move/from16 v54, v14

    move/from16 v53, v15

    move/from16 v50, v20

    move/from16 v3, v21

    move/from16 v47, v30

    move-object/from16 v2, v32

    move/from16 v43, v34

    move/from16 v44, v35

    move/from16 v48, v36

    move/from16 v30, v37

    const/4 v0, 0x1

    const/16 v20, 0x0

    if-ne v6, v0, :cond_337

    move/from16 v14, v31

    float-to-double v12, v14

    move/from16 v15, p3

    int-to-float v5, v15

    add-float v5, v5, v38

    float-to-double v10, v5

    move/from16 v8, v22

    float-to-double v6, v8

    move-object v5, v2

    move-wide/from16 v21, v6

    move-wide v6, v12

    move v0, v8

    move-wide v8, v10

    move-wide/from16 v28, v10

    move-wide/from16 v10, v21

    move-wide/from16 v31, v12

    move-wide/from16 v12, v25

    move/from16 v33, v0

    move v0, v14

    move-wide/from16 v14, v51

    .line 1108
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    float-to-double v14, v4

    move-wide/from16 v6, v31

    move-wide/from16 v8, v28

    move-wide v10, v14

    move-wide/from16 v34, v14

    move-wide/from16 v14, v45

    .line 1109
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    float-to-double v14, v1

    move-wide v6, v14

    move-wide/from16 v10, v34

    move-wide/from16 v12, v18

    move-wide/from16 v36, v14

    move-wide/from16 v14, v45

    .line 1110
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v36

    move-wide/from16 v10, v21

    move-wide/from16 v14, v51

    .line 1111
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    .line 1113
    invoke-virtual {v2, v3, v3, v3}, Lnw;->a(FFF)V

    add-double v41, v51, v39

    move-wide/from16 v6, v31

    move-wide/from16 v12, v25

    move-wide/from16 v14, v41

    .line 1114
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-double v55, v45, v39

    move-wide/from16 v10, v34

    move-wide/from16 v14, v55

    .line 1115
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v36

    move-wide/from16 v12, v18

    .line 1116
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v10, v21

    move-wide/from16 v14, v41

    .line 1117
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-object/from16 v1, p0

    move/from16 v21, v0

    move/from16 v4, v27

    move/from16 v22, v33

    move/from16 v0, p3

    goto/16 :goto_3af

    :cond_337
    move/from16 v33, v22

    move/from16 v0, v31

    const/4 v5, 0x2

    if-ne v6, v5, :cond_3a5

    float-to-double v14, v0

    move/from16 v21, v0

    move/from16 v0, p3

    int-to-float v5, v0

    add-float v5, v5, v38

    float-to-double v12, v5

    move/from16 v10, v33

    float-to-double v8, v10

    move-object v5, v2

    move-wide v6, v14

    move-wide/from16 v28, v8

    move-wide v8, v12

    move/from16 v22, v10

    move-wide/from16 v10, v28

    move-wide/from16 v31, v12

    move-wide/from16 v12, v25

    move-wide/from16 v33, v14

    move-wide/from16 v14, v51

    .line 1119
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    float-to-double v14, v4

    move-wide/from16 v6, v33

    move-wide/from16 v8, v31

    move-wide v10, v14

    move-wide/from16 v12, v18

    move-wide/from16 v35, v14

    move-wide/from16 v14, v51

    .line 1120
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    float-to-double v14, v1

    move-wide v6, v14

    move-wide/from16 v10, v35

    move-wide/from16 v41, v14

    move-wide/from16 v14, v45

    .line 1121
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v6, v41

    move-wide/from16 v10, v28

    move-wide/from16 v12, v25

    .line 1122
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    .line 1124
    invoke-virtual {v2, v3, v3, v3}, Lnw;->a(FFF)V

    add-double v55, v51, v39

    move-wide/from16 v6, v33

    move-wide/from16 v14, v55

    .line 1125
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v10, v35

    move-wide/from16 v12, v18

    .line 1126
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-double v33, v45, v39

    move-wide/from16 v6, v41

    move-wide/from16 v14, v33

    .line 1127
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v10, v28

    move-wide/from16 v12, v25

    .line 1128
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    goto :goto_3ab

    :cond_3a5
    move/from16 v21, v0

    move/from16 v22, v33

    move/from16 v0, p3

    :goto_3ab
    move-object/from16 v1, p0

    move/from16 v4, v27

    .line 1131
    :goto_3af
    iget-object v5, v1, Lcv;->c:Lxp;

    move/from16 v14, p2

    move/from16 v15, p4

    move/from16 v18, v21

    move/from16 v12, v54

    invoke-interface {v5, v14, v12, v15}, Lxp;->h(III)Z

    move-result v5

    if-nez v5, :cond_653

    add-int/lit8 v11, v30, 0x10

    int-to-float v5, v11

    div-float v6, v5, v16

    float-to-double v10, v6

    add-float v5, v5, v17

    div-float v5, v5, v16

    float-to-double v8, v5

    .line 1140
    iget-object v5, v1, Lcv;->c:Lxp;

    move/from16 v6, v23

    invoke-interface {v5, v6, v0, v15}, Lxp;->h(III)Z

    move-result v5

    const v16, 0x3cb33333    # 0.021875f

    if-eqz v5, :cond_471

    iget-object v5, v1, Lcv;->c:Lxp;

    invoke-interface {v5, v6, v12, v15}, Lxp;->a(III)I

    move-result v5

    sget-object v6, Luu;->aw:Luu;

    iget v6, v6, Luu;->bn:I

    if-ne v5, v6, :cond_471

    move/from16 v7, v47

    move/from16 v13, v49

    move/from16 v6, v50

    .line 1141
    invoke-virtual {v2, v13, v6, v7}, Lnw;->a(FFF)V

    int-to-float v5, v14

    add-float v5, v5, v38

    move/from16 v21, v3

    move/from16 v27, v4

    float-to-double v3, v5

    int-to-float v5, v12

    add-float v5, v5, v16

    float-to-double v0, v5

    move/from16 v5, v48

    int-to-double v14, v5

    move/from16 v59, v5

    move-object v5, v2

    move/from16 v60, v6

    move/from16 v61, v7

    move-wide v6, v3

    move-wide/from16 v25, v8

    move-wide v8, v0

    move-wide/from16 v28, v10

    move-wide v10, v14

    move-wide/from16 v30, v0

    move v1, v12

    move v0, v13

    move-wide/from16 v12, v25

    move/from16 v49, v0

    move-wide/from16 v32, v14

    move/from16 v0, p4

    move-wide/from16 v14, v45

    .line 1142
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move/from16 v14, p3

    add-int/lit8 v5, v14, 0x0

    int-to-double v12, v5

    move-object v5, v2

    move-wide v8, v12

    move-wide/from16 v10, v32

    move-wide/from16 v34, v12

    move-wide/from16 v12, v28

    move/from16 v54, v1

    move v1, v14

    move-wide/from16 v14, v45

    .line 1143
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move/from16 v14, v27

    int-to-double v12, v14

    move-wide/from16 v8, v34

    move-wide v10, v12

    move-wide/from16 v36, v12

    move-wide/from16 v12, v28

    move/from16 v62, v14

    move-wide/from16 v14, v51

    .line 1144
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, v30

    move-wide/from16 v10, v36

    move-wide/from16 v12, v25

    .line 1145
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move/from16 v14, v21

    .line 1147
    invoke-virtual {v2, v14, v14, v14}, Lnw;->a(FFF)V

    add-double v41, v45, v39

    move-wide/from16 v10, v32

    move/from16 v63, v14

    move-wide/from16 v14, v41

    .line 1148
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, v34

    move-wide/from16 v12, v28

    .line 1149
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-double v32, v51, v39

    move-wide/from16 v10, v36

    move-wide/from16 v14, v32

    .line 1150
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, v30

    move-wide/from16 v12, v25

    .line 1151
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    goto :goto_483

    :cond_471
    move v1, v0

    move/from16 v63, v3

    move/from16 v62, v4

    move-wide/from16 v25, v8

    move-wide/from16 v28, v10

    move/from16 v54, v12

    move v0, v15

    move/from16 v61, v47

    move/from16 v59, v48

    move/from16 v60, v50

    :goto_483
    move-object/from16 v3, p0

    .line 1153
    iget-object v4, v3, Lcv;->c:Lxp;

    move/from16 v14, v53

    invoke-interface {v4, v14, v1, v0}, Lxp;->h(III)Z

    move-result v4

    if-eqz v4, :cond_518

    iget-object v4, v3, Lcv;->c:Lxp;

    move/from16 v15, v54

    invoke-interface {v4, v14, v15, v0}, Lxp;->a(III)I

    move-result v4

    sget-object v5, Luu;->aw:Luu;

    iget v5, v5, Luu;->bn:I

    if-ne v4, v5, :cond_514

    move/from16 v4, v49

    move/from16 v12, v60

    move/from16 v13, v61

    .line 1154
    invoke-virtual {v2, v4, v12, v13}, Lnw;->a(FFF)V

    sub-float v5, v18, v38

    float-to-double v10, v5

    add-int/lit8 v5, v1, 0x0

    int-to-double v8, v5

    move/from16 v6, v59

    int-to-double v0, v6

    move-object v5, v2

    move/from16 v64, v6

    move-wide v6, v10

    move-wide/from16 v17, v8

    move-wide/from16 v30, v10

    move-wide v10, v0

    move/from16 v65, v12

    move/from16 v66, v13

    move-wide/from16 v12, v28

    move/from16 v67, v14

    move v4, v15

    move-wide/from16 v14, v51

    .line 1155
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    int-to-float v5, v4

    add-float v5, v5, v16

    float-to-double v14, v5

    move-object v5, v2

    move-wide/from16 v6, v30

    move-wide v8, v14

    move-wide/from16 v12, v25

    move-wide/from16 v32, v14

    move-wide/from16 v14, v51

    .line 1156
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move/from16 v5, v62

    int-to-double v14, v5

    move-object v5, v2

    move-wide/from16 v8, v32

    move-wide v10, v14

    move-wide/from16 v34, v14

    move-wide/from16 v14, v45

    .line 1157
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, v17

    move-wide/from16 v10, v34

    move-wide/from16 v12, v28

    .line 1158
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move/from16 v14, v63

    .line 1160
    invoke-virtual {v2, v14, v14, v14}, Lnw;->a(FFF)V

    add-double v36, v51, v39

    move-wide v10, v0

    move/from16 v68, v14

    move-wide/from16 v14, v36

    .line 1161
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, v32

    move-wide/from16 v12, v25

    .line 1162
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-double v0, v45, v39

    move-wide/from16 v10, v34

    move-wide v14, v0

    .line 1163
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, v17

    move-wide/from16 v12, v28

    .line 1164
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    goto :goto_524

    :cond_514
    move/from16 v67, v14

    move v4, v15

    goto :goto_51c

    :cond_518
    move/from16 v67, v14

    move/from16 v4, v54

    :goto_51c
    move/from16 v64, v59

    move/from16 v65, v60

    move/from16 v66, v61

    move/from16 v68, v63

    .line 1166
    :goto_524
    iget-object v0, v3, Lcv;->c:Lxp;

    move/from16 v1, p2

    move/from16 v15, p3

    move/from16 v5, v43

    invoke-interface {v0, v1, v15, v5}, Lxp;->h(III)Z

    move-result v0

    if-eqz v0, :cond_5bf

    iget-object v0, v3, Lcv;->c:Lxp;

    invoke-interface {v0, v1, v4, v5}, Lxp;->a(III)I

    move-result v0

    sget-object v5, Luu;->aw:Luu;

    iget v5, v5, Luu;->bn:I

    if-ne v0, v5, :cond_5bf

    move/from16 v0, v49

    move/from16 v13, v65

    move/from16 v14, v66

    .line 1167
    invoke-virtual {v2, v0, v13, v14}, Lnw;->a(FFF)V

    move/from16 v11, v67

    int-to-double v9, v11

    add-int/lit8 v5, v15, 0x0

    int-to-double v7, v5

    move/from16 v5, p4

    int-to-float v5, v5

    add-float v5, v5, v38

    float-to-double v5, v5

    move v12, v4

    move-object v4, v2

    move-wide/from16 v17, v5

    move-wide v5, v9

    move-wide/from16 v30, v7

    move-wide/from16 v32, v9

    move-wide/from16 v9, v17

    move/from16 v69, v11

    move v0, v12

    move-wide/from16 v11, v28

    move/from16 v70, v13

    move/from16 v71, v14

    move-wide/from16 v13, v51

    .line 1168
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    int-to-float v4, v0

    add-float v4, v4, v16

    float-to-double v13, v4

    move-object v4, v2

    move-wide/from16 v5, v32

    move-wide v7, v13

    move-wide/from16 v11, v25

    move-wide/from16 v34, v13

    move-wide/from16 v13, v51

    .line 1169
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    move/from16 v13, v44

    int-to-double v11, v13

    move-wide v5, v11

    move-wide/from16 v7, v34

    move-wide/from16 v36, v11

    move-wide/from16 v11, v25

    move/from16 v72, v13

    move-wide/from16 v13, v45

    .line 1170
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    move-wide/from16 v5, v36

    move-wide/from16 v7, v30

    move-wide/from16 v11, v28

    .line 1171
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    move/from16 v13, v68

    .line 1173
    invoke-virtual {v2, v13, v13, v13}, Lnw;->a(FFF)V

    add-double v41, v51, v39

    move-wide/from16 v5, v32

    move/from16 v19, v13

    move-wide/from16 v13, v41

    .line 1174
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    move-wide/from16 v7, v34

    move-wide/from16 v11, v25

    .line 1175
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    add-double v32, v45, v39

    move-wide/from16 v5, v36

    move-wide/from16 v13, v32

    .line 1176
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    move-wide/from16 v7, v30

    move-wide/from16 v11, v28

    .line 1177
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    goto :goto_5ca

    :cond_5bf
    move v0, v4

    move/from16 v72, v44

    move/from16 v70, v65

    move/from16 v71, v66

    move/from16 v69, v67

    move/from16 v19, v68

    .line 1179
    :goto_5ca
    iget-object v4, v3, Lcv;->c:Lxp;

    move/from16 v5, v64

    invoke-interface {v4, v1, v15, v5}, Lxp;->h(III)Z

    move-result v4

    if-eqz v4, :cond_653

    iget-object v4, v3, Lcv;->c:Lxp;

    invoke-interface {v4, v1, v0, v5}, Lxp;->a(III)I

    move-result v1

    sget-object v4, Luu;->aw:Luu;

    iget v4, v4, Luu;->bn:I

    if-ne v1, v4, :cond_653

    move/from16 v1, v49

    move/from16 v4, v70

    move/from16 v5, v71

    .line 1180
    invoke-virtual {v2, v1, v4, v5}, Lnw;->a(FFF)V

    move/from16 v1, v69

    int-to-double v13, v1

    int-to-float v0, v0

    add-float v0, v0, v16

    float-to-double v0, v0

    sub-float v4, v22, v38

    float-to-double v11, v4

    move-object v4, v2

    move-wide v5, v13

    move-wide v7, v0

    move-wide v9, v11

    move-wide/from16 v16, v11

    move-wide/from16 v11, v25

    move-wide/from16 v21, v13

    move-wide/from16 v13, v45

    .line 1181
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    add-int/lit8 v4, v15, 0x0

    int-to-double v12, v4

    move-wide v14, v0

    move/from16 v0, v19

    move-object v1, v2

    move-object v10, v2

    move-wide/from16 v2, v21

    move-wide v4, v12

    move-wide/from16 v6, v16

    move-wide/from16 v8, v28

    move-object/from16 p1, v10

    move-wide/from16 v10, v45

    .line 1182
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move/from16 v1, v72

    int-to-double v10, v1

    move-object/from16 v1, p1

    move-wide v2, v10

    move-wide/from16 v18, v10

    move-wide/from16 v10, v51

    .line 1183
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v18

    move-wide v4, v14

    move-wide/from16 v8, v25

    .line 1184
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-object/from16 v10, p1

    .line 1186
    invoke-virtual {v10, v0, v0, v0}, Lnw;->a(FFF)V

    add-double v30, v45, v39

    move-object v1, v10

    move-wide/from16 v2, v21

    move-object v0, v10

    move-wide/from16 v10, v30

    .line 1187
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-object v1, v0

    move-wide v4, v12

    move-wide/from16 v8, v28

    .line 1188
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    add-double v20, v51, v39

    move-wide/from16 v2, v18

    move-wide/from16 v10, v20

    .line 1189
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide v4, v14

    move-wide/from16 v8, v25

    .line 1190
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    :cond_653
    const/4 v0, 0x1

    return v0
.end method

.method public h(Luu;III)Z
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1276
    sget-object v14, Lnw;->a:Lnw;

    const/4 v15, 0x0

    .line 1278
    invoke-virtual {v1, v15}, Luu;->a(I)I

    move-result v5

    .line 1280
    iget v6, v0, Lcv;->d:I

    if-ltz v6, :cond_16

    move v5, v6

    .line 1282
    :cond_16
    iget-object v6, v0, Lcv;->c:Lxp;

    invoke-virtual {v1, v6, v2, v3, v4}, Luu;->d(Lxp;III)F

    move-result v1

    .line 1283
    invoke-virtual {v14, v1, v1, v1}, Lnw;->a(FFF)V

    and-int/lit8 v1, v5, 0xf

    const/4 v12, 0x4

    shl-int/2addr v1, v12

    and-int/lit16 v5, v5, 0xf0

    int-to-float v1, v1

    const/high16 v6, 0x43800000    # 256.0f

    div-float v7, v1, v6

    float-to-double v10, v7

    const v7, 0x417fd70a    # 15.99f

    add-float/2addr v1, v7

    div-float/2addr v1, v6

    float-to-double v8, v1

    int-to-float v1, v5

    div-float v5, v1, v6

    float-to-double v12, v5

    add-float/2addr v1, v7

    div-float/2addr v1, v6

    float-to-double v6, v1

    .line 1292
    iget-object v1, v0, Lcv;->c:Lxp;

    invoke-interface {v1, v2, v3, v4}, Lxp;->e(III)I

    move-result v1

    const/4 v5, 0x5

    const/16 v16, 0x0

    const v17, 0x3d4ccccd    # 0.05f

    if-ne v1, v5, :cond_a4

    int-to-float v5, v2

    add-float v5, v5, v17

    move/from16 v18, v1

    float-to-double v0, v5

    add-int/lit8 v5, v3, 0x1

    int-to-float v5, v5

    add-float v5, v5, v16

    float-to-double v2, v5

    add-int/lit8 v5, v4, 0x1

    int-to-float v5, v5

    add-float v5, v5, v16

    move-wide/from16 v19, v12

    float-to-double v12, v5

    move-object v5, v14

    move-wide/from16 v21, v6

    move-wide v6, v0

    move-wide/from16 v23, v8

    move-wide v8, v2

    move-wide/from16 v25, v10

    move-wide v10, v12

    move-wide/from16 v29, v2

    move-wide/from16 v27, v12

    const/4 v2, 0x4

    move-wide/from16 v12, v25

    move-object/from16 v31, v14

    move/from16 v32, v15

    move-wide/from16 v14, v19

    .line 1297
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v3, p3, 0x0

    int-to-float v3, v3

    sub-float v3, v3, v16

    float-to-double v14, v3

    move-object/from16 v5, v31

    move-wide v8, v14

    move-wide/from16 v10, v27

    move-wide/from16 v27, v14

    move-wide/from16 v14, v21

    .line 1298
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v3, v4, 0x0

    int-to-float v3, v3

    sub-float v3, v3, v16

    float-to-double v14, v3

    move-wide/from16 v8, v27

    move-wide v10, v14

    move-wide/from16 v12, v23

    move-wide/from16 v27, v14

    move-wide/from16 v14, v21

    .line 1299
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, v29

    move-wide/from16 v10, v27

    move-wide/from16 v14, v19

    .line 1300
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move/from16 v0, v18

    goto :goto_b2

    :cond_a4
    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    move-wide/from16 v19, v12

    move-object/from16 v31, v14

    move/from16 v32, v15

    const/4 v2, 0x4

    move v0, v1

    :goto_b2
    if-ne v0, v2, :cond_101

    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    sub-float v1, v1, v17

    float-to-double v1, v1

    add-int/lit8 v3, p3, 0x0

    int-to-float v3, v3

    sub-float v3, v3, v16

    float-to-double v14, v3

    add-int/lit8 v3, v4, 0x1

    int-to-float v3, v3

    add-float v3, v3, v16

    float-to-double v12, v3

    move-object/from16 v5, v31

    move-wide v6, v1

    move-wide v8, v14

    move-wide v10, v12

    move-wide/from16 v27, v12

    move-wide/from16 v12, v23

    move-wide/from16 v29, v14

    move-wide/from16 v14, v21

    .line 1303
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v3, p3, 0x1

    int-to-float v3, v3

    add-float v3, v3, v16

    float-to-double v14, v3

    move-wide v8, v14

    move-wide/from16 v10, v27

    move-wide/from16 v27, v14

    move-wide/from16 v14, v19

    .line 1304
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v3, v4, 0x0

    int-to-float v3, v3

    sub-float v3, v3, v16

    float-to-double v14, v3

    move-wide/from16 v8, v27

    move-wide v10, v14

    move-wide/from16 v12, v25

    move-wide/from16 v27, v14

    move-wide/from16 v14, v19

    .line 1305
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide/from16 v8, v29

    move-wide/from16 v10, v27

    move-wide/from16 v14, v21

    .line 1306
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    :cond_101
    const/4 v1, 0x3

    if-ne v0, v1, :cond_14b

    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    add-float v1, v1, v16

    float-to-double v1, v1

    add-int/lit8 v3, p3, 0x0

    int-to-float v3, v3

    sub-float v3, v3, v16

    float-to-double v14, v3

    int-to-float v3, v4

    add-float v3, v3, v17

    float-to-double v12, v3

    move-object/from16 v5, v31

    move-wide v6, v1

    move-wide v8, v14

    move-wide v10, v12

    move-wide/from16 v27, v12

    move-wide/from16 v12, v23

    move-wide/from16 v29, v14

    move-wide/from16 v14, v21

    .line 1309
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v3, p3, 0x1

    int-to-float v3, v3

    add-float v3, v3, v16

    float-to-double v14, v3

    move-wide v8, v14

    move-wide/from16 v10, v27

    move-wide v1, v14

    move-wide/from16 v14, v19

    .line 1310
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    add-int/lit8 v3, p2, 0x0

    int-to-float v3, v3

    sub-float v3, v3, v16

    float-to-double v14, v3

    move-wide v6, v14

    move-wide v8, v1

    move-wide/from16 v12, v25

    move-wide v1, v14

    move-wide/from16 v14, v19

    .line 1311
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move-wide v6, v1

    move-wide/from16 v8, v29

    move-wide/from16 v14, v21

    .line 1312
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    :cond_14b
    const/4 v1, 0x2

    const/4 v15, 0x1

    if-ne v0, v1, :cond_1a0

    add-int/lit8 v0, p2, 0x1

    int-to-float v0, v0

    add-float v0, v0, v16

    float-to-double v0, v0

    add-int/lit8 v2, p3, 0x1

    int-to-float v2, v2

    add-float v2, v2, v16

    float-to-double v2, v2

    add-int/2addr v4, v15

    int-to-float v4, v4

    sub-float v4, v4, v17

    float-to-double v13, v4

    move-object/from16 v4, v31

    move-wide v5, v0

    move-wide v7, v2

    move-wide v9, v13

    move-wide/from16 v11, v25

    move-wide/from16 v17, v13

    move-wide/from16 v13, v19

    .line 1315
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    add-int/lit8 v4, p3, 0x0

    int-to-float v4, v4

    sub-float v4, v4, v16

    float-to-double v12, v4

    move-wide/from16 v27, v2

    move-object/from16 v3, v31

    move-wide v4, v0

    move-wide v6, v12

    move-wide/from16 v8, v17

    move-wide/from16 v10, v25

    move-wide/from16 v25, v12

    move-wide/from16 v12, v21

    .line 1316
    invoke-virtual/range {v3 .. v13}, Lnw;->a(DDDDD)V

    add-int/lit8 v0, p2, 0x0

    int-to-float v0, v0

    sub-float v0, v0, v16

    float-to-double v12, v0

    move-object/from16 v1, v31

    move-wide v2, v12

    move-wide/from16 v4, v25

    move-wide/from16 v6, v17

    move-wide/from16 v8, v23

    move-wide/from16 v10, v21

    .line 1317
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v4, v27

    move-wide/from16 v10, v19

    .line 1318
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    :cond_1a0
    return v15
.end method

.method public i(Luu;III)Z
    .registers 27

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    move/from16 v0, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 1325
    sget-object v4, Lnw;->a:Lnw;

    .line 1327
    iget-object v5, v9, Lcv;->c:Lxp;

    invoke-virtual {v1, v5, v0, v2, v3}, Luu;->d(Lxp;III)F

    move-result v5

    .line 1328
    iget-object v6, v9, Lcv;->c:Lxp;

    invoke-virtual {v1, v6, v0, v2, v3}, Luu;->b(Lxp;III)I

    move-result v6

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    shr-int/lit8 v10, v6, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    div-float/2addr v10, v8

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v8

    .line 1333
    sget-boolean v8, Lpx;->a:Z

    if-eqz v8, :cond_46

    const/high16 v8, 0x41f00000    # 30.0f

    mul-float/2addr v7, v8

    const/high16 v8, 0x426c0000    # 59.0f

    mul-float/2addr v8, v10

    add-float/2addr v8, v7

    const/high16 v11, 0x41300000    # 11.0f

    mul-float/2addr v11, v6

    add-float/2addr v8, v11

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v8, v11

    const/high16 v12, 0x428c0000    # 70.0f

    mul-float/2addr v10, v12

    add-float/2addr v10, v7

    div-float/2addr v10, v11

    mul-float/2addr v6, v12

    add-float/2addr v7, v6

    div-float v6, v7, v11

    move v7, v8

    :cond_46
    mul-float/2addr v7, v5

    mul-float/2addr v10, v5

    mul-float/2addr v5, v6

    .line 1342
    invoke-virtual {v4, v7, v10, v5}, Lnw;->a(FFF)V

    int-to-double v4, v0

    int-to-double v6, v2

    int-to-double v10, v3

    .line 1348
    sget-object v8, Luu;->Y:Lru;

    if-ne v1, v8, :cond_a8

    const v8, 0x2fc20f

    mul-int/2addr v8, v0

    int-to-long v12, v8

    int-to-long v14, v3

    const-wide/32 v16, 0x6ebfff5

    mul-long v14, v14, v16

    xor-long/2addr v12, v14

    int-to-long v14, v2

    xor-long/2addr v12, v14

    mul-long v14, v12, v12

    const-wide/32 v16, 0x285b825

    mul-long v14, v14, v16

    const-wide/16 v16, 0xb

    mul-long v12, v12, v16

    add-long/2addr v14, v12

    const/16 v8, 0x10

    shr-long v12, v14, v8

    const-wide/16 v16, 0xf

    and-long v12, v12, v16

    long-to-float v8, v12

    const/high16 v12, 0x41700000    # 15.0f

    div-float/2addr v8, v12

    float-to-double v12, v8

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    sub-double v12, v12, v18

    mul-double v12, v12, v18

    add-double/2addr v4, v12

    const/16 v8, 0x14

    shr-long v12, v14, v8

    and-long v12, v12, v16

    long-to-float v8, v12

    const/high16 v12, 0x41700000    # 15.0f

    div-float/2addr v8, v12

    float-to-double v12, v8

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v12, v12, v20

    const-wide v20, 0x3fc999999999999aL    # 0.2

    mul-double v12, v12, v20

    add-double/2addr v6, v12

    const/16 v8, 0x18

    shr-long v12, v14, v8

    and-long v12, v12, v16

    long-to-float v8, v12

    const/high16 v12, 0x41700000    # 15.0f

    div-float/2addr v8, v12

    float-to-double v12, v8

    sub-double v12, v12, v18

    mul-double v12, v12, v18

    add-double/2addr v10, v12

    .line 1357
    :cond_a8
    iget-object v8, v9, Lcv;->c:Lxp;

    invoke-interface {v8, v0, v2, v3}, Lxp;->e(III)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Lcv;->a(Luu;IDDD)V

    const/4 v0, 0x1

    return v0
.end method

.method public j(Luu;III)Z
    .registers 15

    .line 1362
    sget-object v0, Lnw;->a:Lnw;

    .line 1364
    iget-object v1, p0, Lcv;->c:Lxp;

    invoke-virtual {p1, v1, p2, p3, p4}, Luu;->d(Lxp;III)F

    move-result v1

    .line 1365
    invoke-virtual {v0, v1, v1, v1}, Lnw;->a(FFF)V

    .line 1367
    iget-object v0, p0, Lcv;->c:Lxp;

    invoke-interface {v0, p2, p3, p4}, Lxp;->e(III)I

    move-result v3

    int-to-double v4, p2

    int-to-float p2, p3

    const/high16 p3, 0x3d800000    # 0.0625f

    sub-float/2addr p2, p3

    float-to-double v6, p2

    int-to-double v8, p4

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcv;->b(Luu;IDDD)V

    const/4 p1, 0x1

    return p1
.end method

.method public k(Luu;III)Z
    .registers 58

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 1528
    sget-object v8, Lnw;->a:Lnw;

    .line 1530
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v11, v12, v13}, Luu;->b(Lxp;III)I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v25, v1, v2

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float v26, v1, v2

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v27, v0, v2

    .line 1534
    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v3, v12, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v6

    .line 1535
    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v7, v12, -0x1

    const/4 v5, 0x0

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v28

    const/4 v15, 0x4

    new-array v14, v15, [Z

    .line 1537
    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v4, v13, -0x1

    const/4 v5, 0x2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    const/4 v5, 0x0

    aput-boolean v0, v14, v5

    .line 1538
    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v4, v13, 0x1

    const/16 v16, 0x3

    move-object/from16 v0, p1

    move/from16 v29, v4

    move v15, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    const/4 v5, 0x1

    aput-boolean v0, v14, v5

    .line 1539
    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v2, v11, -0x1

    const/16 v16, 0x4

    move-object/from16 v0, p1

    move/from16 v4, p4

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    const/4 v5, 0x2

    aput-boolean v0, v14, v5

    .line 1540
    iget-object v1, v9, Lcv;->c:Lxp;

    add-int/lit8 v4, v11, 0x1

    const/16 v16, 0x5

    move-object/from16 v0, p1

    move v2, v4

    move/from16 v31, v4

    move/from16 v4, p4

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lxp;IIII)Z

    move-result v0

    const/4 v4, 0x3

    aput-boolean v0, v14, v4

    if-nez v6, :cond_a3

    if-nez v28, :cond_a3

    aget-boolean v1, v14, v15

    if-nez v1, :cond_a3

    const/4 v5, 0x1

    aget-boolean v1, v14, v5

    const/4 v2, 0x2

    if-nez v1, :cond_a5

    aget-boolean v1, v14, v2

    if-nez v1, :cond_a5

    if-nez v0, :cond_a5

    return v15

    :cond_a3
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 1553
    :cond_a5
    iget-object v0, v10, Luu;->bA:Lln;

    .line 1554
    iget-object v1, v9, Lcv;->c:Lxp;

    invoke-interface {v1, v11, v12, v13}, Lxp;->e(III)I

    move-result v3

    .line 1556
    invoke-direct {v9, v11, v12, v13, v0}, Lcv;->a(IIILln;)F

    move-result v30

    move/from16 v1, v29

    .line 1557
    invoke-direct {v9, v11, v12, v1, v0}, Lcv;->a(IIILln;)F

    move-result v29

    move/from16 v2, v31

    .line 1558
    invoke-direct {v9, v2, v12, v1, v0}, Lcv;->a(IIILln;)F

    move-result v31

    .line 1559
    invoke-direct {v9, v2, v12, v13, v0}, Lcv;->a(IIILln;)F

    move-result v32

    .line 1562
    iget-boolean v4, v9, Lcv;->f:Z

    const/high16 v34, 0x3f800000    # 1.0f

    const-wide/high16 v35, 0x4070000000000000L    # 256.0

    const/high16 v37, 0x43800000    # 256.0f

    if-nez v4, :cond_d7

    if-eqz v6, :cond_ce

    goto :goto_d7

    :cond_ce
    move/from16 v42, v1

    move/from16 v40, v3

    move-object/from16 v47, v14

    move v5, v15

    goto/16 :goto_1ab

    .line 1564
    :cond_d7
    :goto_d7
    invoke-virtual {v10, v5, v3}, Luu;->a(II)I

    move-result v4

    .line 1565
    iget-object v6, v9, Lcv;->c:Lxp;

    invoke-static {v6, v11, v12, v13, v0}, Lrp;->a(Lxp;IIILln;)D

    move-result-wide v5

    double-to-float v0, v5

    const v5, -0x3b864000    # -999.0f

    cmpl-float v6, v0, v5

    if-lez v6, :cond_ef

    const/4 v6, 0x2

    .line 1567
    invoke-virtual {v10, v6, v3}, Luu;->a(II)I

    move-result v4

    goto :goto_f0

    :cond_ef
    const/4 v6, 0x2

    :goto_f0
    and-int/lit8 v16, v4, 0xf

    const/16 v17, 0x4

    shl-int/lit8 v6, v16, 0x4

    and-int/lit16 v4, v4, 0xf0

    move-object/from16 v16, v14

    int-to-double v14, v6

    const-wide/high16 v19, 0x4020000000000000L    # 8.0

    add-double v14, v14, v19

    div-double v14, v14, v35

    move/from16 v22, v6

    int-to-double v5, v4

    add-double v5, v5, v19

    div-double v5, v5, v35

    const v19, -0x3b864000    # -999.0f

    cmpg-float v19, v0, v19

    if-gez v19, :cond_111

    const/4 v0, 0x0

    goto :goto_11d

    :cond_111
    add-int/lit8 v6, v22, 0x10

    int-to-float v5, v6

    div-float v5, v5, v37

    float-to-double v14, v5

    add-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    div-float v4, v4, v37

    float-to-double v5, v4

    :goto_11d
    move-wide/from16 v38, v14

    .line 1580
    invoke-static {v0}, Lin;->a(F)F

    move-result v4

    const/high16 v14, 0x41000000    # 8.0f

    mul-float/2addr v4, v14

    div-float v4, v4, v37

    .line 1581
    invoke-static {v0}, Lin;->b(F)F

    move-result v0

    mul-float/2addr v0, v14

    div-float v0, v0, v37

    .line 1588
    iget-object v14, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v14, v11, v12, v13}, Luu;->d(Lxp;III)F

    move-result v14

    mul-float v14, v14, v34

    mul-float v15, v14, v25

    move/from16 v40, v3

    mul-float v3, v14, v26

    mul-float v14, v14, v27

    .line 1589
    invoke-virtual {v8, v15, v3, v14}, Lnw;->a(FFF)V

    add-int/lit8 v3, v11, 0x0

    int-to-double v14, v3

    int-to-float v3, v12

    move-wide/from16 v19, v14

    add-float v14, v3, v30

    float-to-double v14, v14

    move-wide/from16 v21, v14

    add-int/lit8 v14, v13, 0x0

    int-to-double v14, v14

    float-to-double v10, v0

    sub-double v41, v38, v10

    float-to-double v12, v4

    sub-double v23, v41, v12

    sub-double v43, v5, v10

    add-double v45, v43, v12

    move-wide/from16 v50, v14

    move-object/from16 v47, v16

    move-wide/from16 v48, v19

    move-wide/from16 v19, v21

    move-object v14, v8

    move/from16 v4, v17

    const/4 v0, 0x0

    move-wide/from16 v15, v48

    move-wide/from16 v17, v19

    move-wide/from16 v19, v50

    move-wide/from16 v21, v23

    move-wide/from16 v23, v45

    .line 1590
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    add-float v14, v3, v29

    float-to-double v14, v14

    move/from16 v45, v3

    int-to-double v3, v1

    add-double v21, v41, v12

    add-double/2addr v5, v10

    add-double v23, v5, v12

    move-wide/from16 v17, v14

    move-object v14, v8

    move-wide/from16 v15, v48

    move-wide/from16 v19, v3

    .line 1591
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    int-to-double v14, v2

    add-float v0, v45, v31

    move/from16 v42, v1

    float-to-double v0, v0

    add-double v38, v38, v10

    add-double v21, v38, v12

    sub-double v23, v5, v12

    move-wide v5, v14

    move-object v14, v8

    move-wide v15, v5

    move-wide/from16 v17, v0

    .line 1592
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    add-float v3, v45, v32

    float-to-double v0, v3

    sub-double v21, v38, v12

    sub-double v23, v43, v12

    move-wide/from16 v17, v0

    move-wide/from16 v19, v50

    .line 1593
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    const/4 v5, 0x1

    .line 1596
    :goto_1ab
    iget-boolean v0, v9, Lcv;->f:Z

    if-nez v0, :cond_1c3

    if-eqz v28, :cond_1b2

    goto :goto_1c3

    :cond_1b2
    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    move/from16 v18, v2

    move-object v15, v8

    move/from16 v13, v40

    move/from16 v52, v42

    const/4 v9, 0x4

    const/16 v17, 0x0

    goto :goto_1f9

    .line 1597
    :cond_1c3
    :goto_1c3
    iget-object v0, v9, Lcv;->c:Lxp;

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    invoke-virtual {v10, v0, v11, v7, v12}, Luu;->d(Lxp;III)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    .line 1598
    invoke-virtual {v8, v1, v1, v1}, Lnw;->a(FFF)V

    int-to-double v3, v11

    move/from16 v13, p3

    int-to-double v5, v13

    int-to-double v14, v12

    const/4 v0, 0x0

    .line 1599
    invoke-virtual {v10, v0}, Luu;->a(I)I

    move-result v16

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v7, v42

    move-object/from16 v1, p1

    move/from16 v18, v2

    move/from16 v13, v40

    const/4 v9, 0x2

    move-wide v2, v3

    const/4 v9, 0x4

    move-wide v4, v5

    move/from16 v52, v7

    move-wide v6, v14

    move-object v15, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcv;->a(Luu;DDDI)V

    const/4 v5, 0x1

    :goto_1f9
    move v0, v5

    move/from16 v5, v17

    :goto_1fc
    if-ge v5, v9, :cond_31c

    if-nez v5, :cond_203

    add-int/lit8 v1, v12, -0x1

    goto :goto_204

    :cond_203
    move v1, v12

    :goto_204
    const/4 v2, 0x1

    if-ne v5, v2, :cond_209

    add-int/lit8 v1, v1, 0x1

    :cond_209
    const/4 v2, 0x2

    if-ne v5, v2, :cond_20f

    add-int/lit8 v3, v11, -0x1

    goto :goto_210

    :cond_20f
    move v3, v11

    :goto_210
    const/4 v4, 0x3

    if-ne v5, v4, :cond_215

    add-int/lit8 v3, v3, 0x1

    :cond_215
    add-int/lit8 v6, v5, 0x2

    .line 1613
    invoke-virtual {v10, v6, v13}, Luu;->a(II)I

    move-result v6

    and-int/lit8 v7, v6, 0xf

    shl-int/2addr v7, v9

    and-int/lit16 v6, v6, 0xf0

    move v8, v2

    move-object/from16 v2, p0

    .line 1617
    iget-boolean v14, v2, Lcv;->f:Z

    if-nez v14, :cond_237

    aget-boolean v14, v47, v5

    if-eqz v14, :cond_22c

    goto :goto_237

    :cond_22c
    move/from16 v41, v5

    move/from16 v40, v13

    move-object v13, v15

    move/from16 v33, v18

    move/from16 v42, v52

    goto/16 :goto_30c

    :cond_237
    :goto_237
    if-nez v5, :cond_248

    int-to-float v0, v11

    move/from16 v14, v18

    int-to-float v4, v14

    int-to-float v9, v12

    move v8, v9

    move/from16 v16, v30

    move/from16 v28, v32

    move/from16 v42, v52

    move v9, v4

    move v4, v8

    goto :goto_27b

    :cond_248
    move/from16 v14, v18

    const/4 v4, 0x1

    if-ne v5, v4, :cond_25f

    int-to-float v0, v14

    int-to-float v9, v11

    move/from16 v16, v0

    move/from16 v4, v52

    int-to-float v0, v4

    move v8, v0

    move/from16 v42, v4

    move/from16 v28, v29

    move v4, v8

    move/from16 v0, v16

    move/from16 v16, v31

    goto :goto_27b

    :cond_25f
    move/from16 v4, v52

    if-ne v5, v8, :cond_26f

    int-to-float v0, v11

    int-to-float v9, v4

    int-to-float v8, v12

    move/from16 v42, v4

    move v4, v8

    move v8, v9

    move/from16 v16, v29

    move/from16 v28, v30

    goto :goto_27a

    :cond_26f
    int-to-float v0, v14

    int-to-float v9, v12

    int-to-float v8, v4

    move/from16 v42, v4

    move v4, v8

    move v8, v9

    move/from16 v28, v31

    move/from16 v16, v32

    :goto_27a
    move v9, v0

    :goto_27b
    add-int/lit8 v11, v7, 0x0

    int-to-float v11, v11

    div-float v11, v11, v37

    float-to-double v11, v11

    add-int/lit8 v7, v7, 0x10

    move/from16 v40, v13

    move/from16 v18, v14

    int-to-double v13, v7

    const-wide v19, 0x3f847ae147ae147bL    # 0.01

    sub-double v13, v13, v19

    div-double v38, v13, v35

    int-to-float v7, v6

    sub-float v13, v34, v16

    const/high16 v14, 0x41800000    # 16.0f

    mul-float/2addr v13, v14

    add-float/2addr v13, v7

    div-float v13, v13, v37

    move-wide/from16 v43, v11

    float-to-double v11, v13

    sub-float v13, v34, v28

    mul-float/2addr v13, v14

    add-float/2addr v7, v13

    div-float v7, v7, v37

    float-to-double v13, v7

    add-int/lit8 v6, v6, 0x10

    int-to-double v6, v6

    sub-double v6, v6, v19

    div-double v6, v6, v35

    move-wide/from16 v19, v13

    .line 1660
    iget-object v13, v2, Lcv;->c:Lxp;

    move/from16 v14, p3

    move/from16 v33, v18

    invoke-virtual {v10, v13, v3, v14, v1}, Luu;->d(Lxp;III)F

    move-result v1

    const/4 v3, 0x2

    if-ge v5, v3, :cond_2be

    const v13, 0x3f4ccccd    # 0.8f

    goto :goto_2c1

    :cond_2be
    const v13, 0x3f19999a    # 0.6f

    :goto_2c1
    mul-float/2addr v1, v13

    mul-float v1, v1, v34

    mul-float v13, v1, v25

    mul-float v3, v1, v26

    mul-float v1, v1, v27

    .line 1664
    invoke-virtual {v15, v13, v3, v1}, Lnw;->a(FFF)V

    float-to-double v0, v0

    int-to-float v3, v14

    add-float v13, v3, v16

    move/from16 v41, v5

    move-wide/from16 v48, v6

    float-to-double v5, v13

    float-to-double v7, v8

    move-wide/from16 v50, v19

    move-object v14, v15

    move-object v13, v15

    move-wide v15, v0

    move-wide/from16 v17, v5

    move-wide/from16 v19, v7

    move-wide/from16 v21, v43

    move-wide/from16 v23, v11

    .line 1665
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    float-to-double v5, v9

    add-float v3, v3, v28

    float-to-double v11, v3

    float-to-double v3, v4

    move-object v14, v13

    move-wide v15, v5

    move-wide/from16 v17, v11

    move-wide/from16 v19, v3

    move-wide/from16 v21, v38

    move-wide/from16 v23, v50

    .line 1666
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    add-int/lit8 v9, p3, 0x0

    int-to-double v11, v9

    move-wide/from16 v17, v11

    move-wide/from16 v23, v48

    .line 1667
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    move-wide v15, v0

    move-wide/from16 v19, v7

    move-wide/from16 v21, v43

    .line 1668
    invoke-virtual/range {v14 .. v24}, Lnw;->a(DDDDD)V

    const/4 v0, 0x1

    :goto_30c
    add-int/lit8 v5, v41, 0x1

    move/from16 v11, p2

    move/from16 v12, p4

    move-object v15, v13

    move/from16 v18, v33

    move/from16 v13, v40

    move/from16 v52, v42

    const/4 v9, 0x4

    goto/16 :goto_1fc

    :cond_31c
    move-object/from16 v2, p0

    const-wide/16 v3, 0x0

    .line 1694
    iput-wide v3, v10, Luu;->bt:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 1695
    iput-wide v3, v10, Luu;->bw:D

    return v0
.end method

.method public l(Luu;III)Z
    .registers 17

    move-object v8, p0

    .line 1770
    iget-object v0, v8, Lcv;->c:Lxp;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-virtual {p1, v0, p2, p3, v4}, Luu;->b(Lxp;III)I

    move-result v0

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v6

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v6

    .line 1775
    sget-boolean v6, Lpx;->a:Z

    if-eqz v6, :cond_3d

    const/high16 v6, 0x41f00000    # 30.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x426c0000    # 59.0f

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    const/high16 v9, 0x41300000    # 11.0f

    mul-float/2addr v9, v0

    add-float/2addr v6, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v6, v9

    const/high16 v10, 0x428c0000    # 70.0f

    mul-float/2addr v7, v10

    add-float/2addr v7, v5

    div-float/2addr v7, v9

    mul-float/2addr v0, v10

    add-float/2addr v5, v0

    div-float/2addr v5, v9

    move v11, v7

    move v7, v5

    move v5, v6

    move v6, v11

    goto :goto_3f

    :cond_3d
    move v6, v7

    move v7, v0

    .line 1786
    :goto_3f
    invoke-static {}, Lnet/minecraft/client/Minecraft;->v()Z

    move-result v0

    if-eqz v0, :cond_50

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    .line 1787
    invoke-virtual/range {v0 .. v7}, Lcv;->a(Luu;IIIFFF)Z

    move-result v0

    return v0

    :cond_50
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    .line 1789
    invoke-virtual/range {v0 .. v7}, Lcv;->b(Luu;IIIFFF)Z

    move-result v0

    return v0
.end method

.method public m(Luu;III)Z
    .registers 17

    move-object v8, p0

    .line 2349
    iget-object v0, v8, Lcv;->c:Lxp;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-virtual {p1, v0, p2, p3, v4}, Luu;->b(Lxp;III)I

    move-result v0

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v6

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v6

    .line 2354
    sget-boolean v6, Lpx;->a:Z

    if-eqz v6, :cond_3d

    const/high16 v6, 0x41f00000    # 30.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x426c0000    # 59.0f

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    const/high16 v9, 0x41300000    # 11.0f

    mul-float/2addr v9, v0

    add-float/2addr v6, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v6, v9

    const/high16 v10, 0x428c0000    # 70.0f

    mul-float/2addr v7, v10

    add-float/2addr v7, v5

    div-float/2addr v7, v9

    mul-float/2addr v0, v10

    add-float/2addr v5, v0

    div-float/2addr v5, v9

    move v11, v7

    move v7, v5

    move v5, v6

    move v6, v11

    goto :goto_3f

    :cond_3d
    move v6, v7

    move v7, v0

    :goto_3f
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    .line 2364
    invoke-virtual/range {v0 .. v7}, Lcv;->c(Luu;IIIFFF)Z

    move-result v0

    return v0
.end method

.method public n(Luu;III)Z
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    const/high16 v4, 0x3ec00000    # 0.375f

    const/high16 v7, 0x3f200000    # 0.625f

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v2, v4

    move v5, v7

    .line 2470
    invoke-virtual/range {v1 .. v7}, Luu;->a(FFFFFF)V

    .line 2471
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    .line 2477
    iget-object v1, v0, Lcv;->c:Lxp;

    add-int/lit8 v2, v9, -0x1

    invoke-interface {v1, v2, v10, v11}, Lxp;->a(III)I

    move-result v1

    iget v3, v8, Luu;->bn:I

    const/4 v4, 0x0

    const/4 v12, 0x1

    if-eq v1, v3, :cond_38

    iget-object v1, v0, Lcv;->c:Lxp;

    add-int/lit8 v3, v9, 0x1

    invoke-interface {v1, v3, v10, v11}, Lxp;->a(III)I

    move-result v1

    iget v3, v8, Luu;->bn:I

    if-ne v1, v3, :cond_36

    goto :goto_38

    :cond_36
    move v1, v4

    goto :goto_39

    :cond_38
    :goto_38
    move v1, v12

    .line 2478
    :goto_39
    iget-object v3, v0, Lcv;->c:Lxp;

    add-int/lit8 v5, v11, -0x1

    invoke-interface {v3, v9, v10, v5}, Lxp;->a(III)I

    move-result v3

    iget v6, v8, Luu;->bn:I

    if-eq v3, v6, :cond_54

    iget-object v3, v0, Lcv;->c:Lxp;

    add-int/lit8 v6, v11, 0x1

    invoke-interface {v3, v9, v10, v6}, Lxp;->a(III)I

    move-result v3

    iget v6, v8, Luu;->bn:I

    if-ne v3, v6, :cond_52

    goto :goto_54

    :cond_52
    move v13, v4

    goto :goto_55

    :cond_54
    :goto_54
    move v13, v12

    .line 2480
    :goto_55
    iget-object v3, v0, Lcv;->c:Lxp;

    invoke-interface {v3, v2, v10, v11}, Lxp;->a(III)I

    move-result v2

    iget v3, v8, Luu;->bn:I

    if-ne v2, v3, :cond_61

    move v2, v12

    goto :goto_62

    :cond_61
    move v2, v4

    .line 2481
    :goto_62
    iget-object v3, v0, Lcv;->c:Lxp;

    add-int/lit8 v6, v9, 0x1

    invoke-interface {v3, v6, v10, v11}, Lxp;->a(III)I

    move-result v3

    iget v6, v8, Luu;->bn:I

    if-ne v3, v6, :cond_70

    move v3, v12

    goto :goto_71

    :cond_70
    move v3, v4

    .line 2482
    :goto_71
    iget-object v6, v0, Lcv;->c:Lxp;

    invoke-interface {v6, v9, v10, v5}, Lxp;->a(III)I

    move-result v5

    iget v6, v8, Luu;->bn:I

    if-ne v5, v6, :cond_7d

    move v5, v12

    goto :goto_7e

    :cond_7d
    move v5, v4

    .line 2483
    :goto_7e
    iget-object v6, v0, Lcv;->c:Lxp;

    add-int/lit8 v7, v11, 0x1

    invoke-interface {v6, v9, v10, v7}, Lxp;->a(III)I

    move-result v6

    iget v7, v8, Luu;->bn:I

    if-ne v6, v7, :cond_8b

    move v4, v12

    :cond_8b
    if-nez v1, :cond_91

    if-nez v13, :cond_91

    move v14, v12

    goto :goto_92

    :cond_91
    move v14, v1

    :goto_92
    const/high16 v15, 0x3ee00000    # 0.4375f

    const/high16 v16, 0x3f100000    # 0.5625f

    const/high16 v17, 0x3f400000    # 0.75f

    const/high16 v18, 0x3f700000    # 0.9375f

    const/4 v1, 0x0

    if-eqz v2, :cond_a0

    move/from16 v19, v1

    goto :goto_a2

    :cond_a0
    move/from16 v19, v15

    :goto_a2
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v3, :cond_a9

    move/from16 v20, v2

    goto :goto_ab

    :cond_a9
    move/from16 v20, v16

    :goto_ab
    if-eqz v5, :cond_b0

    move/from16 v21, v1

    goto :goto_b2

    :cond_b0
    move/from16 v21, v15

    :goto_b2
    if-eqz v4, :cond_b7

    move/from16 v22, v2

    goto :goto_b9

    :cond_b7
    move/from16 v22, v16

    :goto_b9
    if-eqz v14, :cond_cf

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3ee00000    # 0.4375f

    const/high16 v6, 0x3f700000    # 0.9375f

    const/high16 v7, 0x3f100000    # 0.5625f

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v5, v20

    .line 2497
    invoke-virtual/range {v1 .. v7}, Luu;->a(FFFFFF)V

    .line 2498
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    :cond_cf
    if-eqz v13, :cond_e5

    const/high16 v2, 0x3ee00000    # 0.4375f

    const/high16 v5, 0x3f100000    # 0.5625f

    move-object/from16 v1, p1

    move/from16 v3, v17

    move/from16 v4, v21

    move/from16 v6, v18

    move/from16 v7, v22

    .line 2502
    invoke-virtual/range {v1 .. v7}, Luu;->a(FFFFFF)V

    .line 2503
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    :cond_e5
    const/high16 v17, 0x3ec00000    # 0.375f

    const/high16 v18, 0x3f100000    # 0.5625f

    if-eqz v14, :cond_ff

    const/high16 v3, 0x3ec00000    # 0.375f

    const/high16 v4, 0x3ee00000    # 0.4375f

    const/high16 v6, 0x3f100000    # 0.5625f

    const/high16 v7, 0x3f100000    # 0.5625f

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v5, v20

    .line 2510
    invoke-virtual/range {v1 .. v7}, Luu;->a(FFFFFF)V

    .line 2511
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    :cond_ff
    if-eqz v13, :cond_114

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, v17

    move/from16 v4, v21

    move/from16 v5, v16

    move/from16 v6, v18

    move/from16 v7, v22

    .line 2515
    invoke-virtual/range {v1 .. v7}, Luu;->a(FFFFFF)V

    .line 2516
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    :cond_114
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    .line 2520
    invoke-virtual/range {v1 .. v7}, Luu;->a(FFFFFF)V

    return v12
.end method

.method public o(Luu;III)Z
    .registers 26

    move-object/from16 v0, p0

    .line 2528
    iget-object v1, v0, Lcv;->c:Lxp;

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v1, v2, v3, v4}, Lxp;->e(III)I

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_37

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v6, p1

    .line 2530
    invoke-virtual/range {v6 .. v12}, Luu;->a(FFFFFF)V

    .line 2531
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v13, p1

    .line 2532
    invoke-virtual/range {v13 .. v19}, Luu;->a(FFFFFF)V

    .line 2533
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    goto/16 :goto_af

    :cond_37
    if-ne v1, v5, :cond_5e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v6, p1

    .line 2536
    invoke-virtual/range {v6 .. v12}, Luu;->a(FFFFFF)V

    .line 2537
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f000000    # 0.5f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v13, p1

    .line 2538
    invoke-virtual/range {v13 .. v19}, Luu;->a(FFFFFF)V

    .line 2539
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    goto :goto_af

    :cond_5e
    const/4 v6, 0x2

    if-ne v1, v6, :cond_86

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f000000    # 0.5f

    move-object/from16 v7, p1

    .line 2542
    invoke-virtual/range {v7 .. v13}, Luu;->a(FFFFFF)V

    .line 2543
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v14, p1

    .line 2544
    invoke-virtual/range {v14 .. v20}, Luu;->a(FFFFFF)V

    .line 2545
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    goto :goto_af

    :cond_86
    const/4 v6, 0x3

    if-ne v1, v6, :cond_ae

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f000000    # 0.5f

    move-object/from16 v7, p1

    .line 2548
    invoke-virtual/range {v7 .. v13}, Luu;->a(FFFFFF)V

    .line 2549
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f000000    # 0.5f

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v14, p1

    .line 2550
    invoke-virtual/range {v14 .. v20}, Luu;->a(FFFFFF)V

    .line 2551
    invoke-virtual/range {p0 .. p4}, Lcv;->l(Luu;III)Z

    goto :goto_af

    :cond_ae
    const/4 v5, 0x0

    :goto_af
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v6, p1

    .line 2554
    invoke-virtual/range {v6 .. v12}, Luu;->a(FFFFFF)V

    return v5
.end method

.method public p(Luu;III)Z
    .registers 36

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 2559
    sget-object v14, Lnw;->a:Lnw;

    .line 2561
    move-object v15, v10

    check-cast v15, Lle;

    .line 2569
    iget-object v0, v9, Lcv;->c:Lxp;

    invoke-virtual {v10, v0, v11, v12, v13}, Luu;->d(Lxp;III)F

    move-result v16

    .line 2572
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v12, -0x1

    invoke-virtual {v10, v0, v11, v1, v13}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2573
    iget-wide v1, v15, Lle;->bt:D

    const-wide/16 v17, 0x0

    cmpl-double v1, v1, v17

    if-lez v1, :cond_27

    move/from16 v0, v16

    .line 2574
    :cond_27
    sget-object v1, Luu;->s:[I

    iget v2, v10, Luu;->bn:I

    aget v1, v1, v2

    const/high16 v19, 0x3f800000    # 1.0f

    if-lez v1, :cond_33

    move/from16 v0, v19

    :cond_33
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    .line 2575
    invoke-virtual {v14, v1, v1, v1}, Lnw;->a(FFF)V

    int-to-double v6, v11

    int-to-double v4, v12

    int-to-double v2, v13

    .line 2576
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v20, v2

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v6

    move-wide/from16 v4, v22

    move-wide/from16 v24, v6

    move-wide/from16 v6, v20

    invoke-virtual/range {v0 .. v8}, Lcv;->a(Luu;DDDI)V

    .line 2581
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v12, 0x1

    invoke-virtual {v10, v0, v11, v1, v13}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2582
    iget-wide v1, v15, Lle;->bw:D

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v26

    if-gez v1, :cond_70

    move/from16 v0, v16

    .line 2583
    :cond_70
    sget-object v1, Luu;->s:[I

    iget v2, v10, Luu;->bn:I

    aget v1, v1, v2

    if-lez v1, :cond_7a

    move/from16 v0, v19

    :cond_7a
    mul-float v0, v0, v19

    .line 2584
    invoke-virtual {v14, v0, v0, v0}, Lnw;->a(FFF)V

    .line 2585
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    move-wide/from16 v4, v22

    move-wide/from16 v6, v20

    invoke-virtual/range {v0 .. v8}, Lcv;->b(Luu;DDDI)V

    .line 2593
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v13, -0x1

    invoke-virtual {v10, v0, v11, v12, v1}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2594
    iget-wide v1, v15, Lle;->bu:D

    cmpl-double v1, v1, v17

    if-lez v1, :cond_ab

    move/from16 v0, v16

    .line 2595
    :cond_ab
    sget-object v1, Luu;->s:[I

    iget v2, v10, Luu;->bn:I

    aget v1, v1, v2

    if-lez v1, :cond_b5

    move/from16 v0, v19

    :cond_b5
    const v28, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v28

    .line 2596
    invoke-virtual {v14, v0, v0, v0}, Lnw;->a(FFF)V

    .line 2597
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x2

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v0

    const/4 v8, 0x1

    if-gez v0, :cond_d2

    .line 2599
    iput-boolean v8, v9, Lcv;->e:Z

    neg-int v0, v0

    :cond_d2
    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    move-wide/from16 v4, v22

    move-wide/from16 v6, v20

    move/from16 v8, v29

    .line 2602
    invoke-virtual/range {v0 .. v8}, Lcv;->c(Luu;DDDI)V

    const/4 v8, 0x0

    .line 2604
    iput-boolean v8, v9, Lcv;->e:Z

    .line 2608
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v13, 0x1

    invoke-virtual {v10, v0, v11, v12, v1}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2609
    iget-wide v1, v15, Lle;->bx:D

    cmpg-double v1, v1, v26

    if-gez v1, :cond_f6

    move/from16 v0, v16

    .line 2610
    :cond_f6
    sget-object v1, Luu;->s:[I

    iget v2, v10, Luu;->bn:I

    aget v1, v1, v2

    if-lez v1, :cond_100

    move/from16 v0, v19

    :cond_100
    mul-float v0, v0, v28

    .line 2611
    invoke-virtual {v14, v0, v0, v0}, Lnw;->a(FFF)V

    .line 2612
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x3

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v0

    const/4 v6, 0x1

    if-gez v0, :cond_11a

    .line 2614
    iput-boolean v6, v9, Lcv;->e:Z

    neg-int v0, v0

    :cond_11a
    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    move-wide/from16 v4, v22

    move-wide/from16 v6, v20

    move-object/from16 v29, v14

    move v14, v8

    move/from16 v8, v28

    .line 2617
    invoke-virtual/range {v0 .. v8}, Lcv;->d(Luu;DDDI)V

    .line 2619
    iput-boolean v14, v9, Lcv;->e:Z

    .line 2623
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {v10, v0, v1, v12, v13}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2624
    iget-wide v1, v15, Lle;->bs:D

    cmpl-double v1, v1, v17

    if-lez v1, :cond_140

    move/from16 v0, v16

    .line 2625
    :cond_140
    sget-object v1, Luu;->s:[I

    iget v2, v10, Luu;->bn:I

    aget v1, v1, v2

    if-lez v1, :cond_14a

    move/from16 v0, v19

    :cond_14a
    const v17, 0x3f19999a    # 0.6f

    mul-float v0, v0, v17

    move-object/from16 v8, v29

    .line 2626
    invoke-virtual {v8, v0, v0, v0}, Lnw;->a(FFF)V

    .line 2627
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x4

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v0

    const/4 v6, 0x1

    if-gez v0, :cond_169

    .line 2629
    iput-boolean v6, v9, Lcv;->e:Z

    neg-int v0, v0

    :cond_169
    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    move-wide/from16 v4, v22

    move-wide/from16 v6, v20

    move-object/from16 v30, v8

    move/from16 v8, v18

    .line 2632
    invoke-virtual/range {v0 .. v8}, Lcv;->e(Luu;DDDI)V

    .line 2634
    iput-boolean v14, v9, Lcv;->e:Z

    .line 2638
    iget-object v0, v9, Lcv;->c:Lxp;

    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v10, v0, v1, v12, v13}, Luu;->d(Lxp;III)F

    move-result v0

    .line 2639
    iget-wide v1, v15, Lle;->bv:D

    cmpg-double v1, v1, v26

    if-gez v1, :cond_18d

    goto :goto_18f

    :cond_18d
    move/from16 v16, v0

    .line 2640
    :goto_18f
    sget-object v0, Luu;->s:[I

    iget v1, v10, Luu;->bn:I

    aget v0, v0, v1

    if-lez v0, :cond_198

    goto :goto_19a

    :cond_198
    move/from16 v19, v16

    :goto_19a
    mul-float v0, v17, v19

    move-object/from16 v1, v30

    .line 2641
    invoke-virtual {v1, v0, v0, v0}, Lnw;->a(FFF)V

    .line 2642
    iget-object v1, v9, Lcv;->c:Lxp;

    const/4 v5, 0x5

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result v0

    const/4 v11, 0x1

    if-gez v0, :cond_1b6

    .line 2644
    iput-boolean v11, v9, Lcv;->e:Z

    neg-int v0, v0

    :cond_1b6
    move v8, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    move-wide/from16 v4, v22

    move-wide/from16 v6, v20

    .line 2647
    invoke-virtual/range {v0 .. v8}, Lcv;->f(Luu;DDDI)V

    .line 2649
    iput-boolean v14, v9, Lcv;->e:Z

    return v11
.end method
