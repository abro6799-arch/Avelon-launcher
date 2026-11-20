###### Class defpackage.gi (gi)
.class public Lgi;
.super Lbg;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:F

.field private c:F

.field private f:Z

.field private g:Z

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lbg;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lgi;->a:Z

    const-string p1, "/mob/wolf.png"

    .line 38
    iput-object p1, p0, Lgi;->O:Ljava/lang/String;

    const p1, 0x3f4ccccd    # 0.8f

    .line 39
    invoke-virtual {p0, p1, p1}, Lgi;->b(FF)V

    const p1, 0x3f8ccccd    # 1.1f

    .line 40
    iput p1, p0, Lgi;->aB:F

    const/16 p1, 0x8

    .line 41
    iput p1, p0, Lgi;->Y:I

    return-void
.end method

.method private c(Lsn;F)V
    .registers 14

    .line 282
    iget-object v1, p0, Lgi;->aI:Lfd;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, p0, p1, v2}, Lfd;->a(Lsn;Lsn;F)Ldh;

    move-result-object v1

    if-nez v1, :cond_78

    const/high16 v2, 0x41400000    # 12.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_78

    .line 285
    iget-wide v1, p1, Lsn;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 286
    iget-wide v2, p1, Lsn;->aO:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .line 287
    iget-object v0, p1, Lsn;->aW:Leq;

    iget-wide v3, v0, Leq;->b:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    :goto_2a
    const/4 v5, 0x4

    if-gt v4, v5, :cond_7b

    move v6, v3

    :goto_2e
    if-gt v6, v5, :cond_75

    const/4 v7, 0x1

    if-lt v4, v7, :cond_3b

    if-lt v6, v7, :cond_3b

    const/4 v7, 0x3

    if-gt v4, v7, :cond_3b

    if-gt v6, v7, :cond_3b

    goto :goto_72

    .line 293
    :cond_3b
    iget-object v7, p0, Lgi;->aI:Lfd;

    add-int v8, v1, v4

    add-int/lit8 v9, v0, -0x1

    add-int v10, v2, v6

    invoke-virtual {v7, v8, v9, v10}, Lfd;->h(III)Z

    move-result v7

    if-eqz v7, :cond_72

    iget-object v7, p0, Lgi;->aI:Lfd;

    invoke-virtual {v7, v8, v0, v10}, Lfd;->h(III)Z

    move-result v7

    if-nez v7, :cond_72

    iget-object v7, p0, Lgi;->aI:Lfd;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lfd;->h(III)Z

    move-result v7

    if-nez v7, :cond_72

    int-to-float v1, v8

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-double v3, v1

    int-to-double v5, v0

    int-to-float v0, v10

    add-float/2addr v0, v2

    float-to-double v7, v0

    .line 294
    iget v9, p0, Lgi;->aS:F

    iget v10, p0, Lgi;->aT:F

    move-object v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move v7, v9

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lgi;->c(DDDFF)V

    return-void

    :cond_72
    :goto_72
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 300
    :cond_78
    invoke-virtual {p0, v1}, Lgi;->a(Ldh;)V

    :cond_7b
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 3

    .line 483
    iget-object v0, p0, Lgi;->bD:Lud;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lud;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Z
    .registers 3

    .line 491
    iget-object v0, p0, Lgi;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public C()Z
    .registers 3

    .line 504
    iget-object v0, p0, Lgi;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public D()Z
    .registers 3

    .line 517
    iget-object v0, p0, Lgi;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public a(FF)F
    .registers 5

    .line 255
    iget v0, p0, Lgi;->i:F

    iget v1, p0, Lgi;->h:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    add-float/2addr v0, p2

    const p1, 0x3fe66666    # 1.8f

    div-float/2addr v0, p1

    const/4 p1, 0x0

    cmpg-float p2, v0, p1

    if-gez p2, :cond_13

    :goto_11
    move v0, p1

    goto :goto_1a

    :cond_13
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, v0, p1

    if-lez p2, :cond_1a

    goto :goto_11

    :cond_1a
    :goto_1a
    const p1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, p1

    .line 261
    invoke-static {v0}, Lin;->a(F)F

    move-result p2

    const/high16 v1, 0x41300000    # 11.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    mul-float/2addr p2, v0

    const v0, 0x3e19999a    # 0.15f

    mul-float/2addr p2, v0

    mul-float/2addr p2, p1

    return p2
.end method

.method public a(B)V
    .registers 4

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 456
    invoke-virtual {p0, v1}, Lgi;->a(Z)V

    goto :goto_1f

    :cond_8
    const/4 v0, 0x6

    if-ne p1, v0, :cond_10

    const/4 p1, 0x0

    .line 458
    invoke-virtual {p0, p1}, Lgi;->a(Z)V

    goto :goto_1f

    :cond_10
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1c

    .line 460
    iput-boolean v1, p0, Lgi;->g:Z

    const/4 p1, 0x0

    .line 461
    iput p1, p0, Lgi;->h:F

    .line 462
    iput p1, p0, Lgi;->i:F

    goto :goto_1f

    .line 464
    :cond_1c
    invoke-super {p0, p1}, Lbg;->a(B)V

    :goto_1f
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 487
    iget-object v0, p0, Lgi;->bD:Lud;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Lud;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lnu;)V
    .registers 3

    .line 82
    invoke-super {p0, p1}, Lbg;->a(Lnu;)V

    const-string v0, "Angry"

    .line 84
    invoke-virtual {p1, v0}, Lnu;->m(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lgi;->c(Z)V

    const-string v0, "Sitting"

    .line 85
    invoke-virtual {p1, v0}, Lnu;->m(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lgi;->b(Z)V

    const-string v0, "Owner"

    .line 86
    invoke-virtual {p1, v0}, Lnu;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    .line 88
    invoke-virtual {p0, p1}, Lgi;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 89
    invoke-virtual {p0, p1}, Lgi;->d(Z)V

    :cond_28
    return-void
.end method

.method protected a(Lsn;F)V
    .registers 15

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_54

    const/high16 v0, 0x40c00000    # 6.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_54

    .line 366
    iget-object v0, p0, Lgi;->bs:Ljava/util/Random;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_54

    .line 367
    iget-boolean p2, p0, Lgi;->aX:Z

    if-eqz p2, :cond_83

    .line 368
    iget-wide v0, p1, Lsn;->aM:D

    iget-wide v2, p0, Lgi;->aM:D

    sub-double/2addr v0, v2

    .line 369
    iget-wide p1, p1, Lsn;->aO:D

    iget-wide v2, p0, Lgi;->aO:D

    sub-double/2addr p1, v2

    mul-double v2, v0, v0

    mul-double v4, p1, p1

    add-double/2addr v2, v4

    .line 370
    invoke-static {v2, v3}, Lin;->a(D)F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v0, v6

    .line 371
    iget-wide v8, p0, Lgi;->aP:D

    const-wide v10, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    iput-wide v0, p0, Lgi;->aP:D

    div-double/2addr p1, v2

    mul-double/2addr p1, v4

    mul-double/2addr p1, v6

    .line 372
    iget-wide v0, p0, Lgi;->aR:D

    mul-double/2addr v0, v10

    add-double/2addr p1, v0

    iput-wide p1, p0, Lgi;->aR:D

    const-wide p1, 0x3fd99999a0000000L    # 0.4000000059604645

    .line 373
    iput-wide p1, p0, Lgi;->aQ:D

    goto :goto_83

    :cond_54
    float-to-double v0, p2

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpg-double p2, v0, v2

    if-gez p2, :cond_83

    .line 376
    iget-object p2, p1, Lsn;->aW:Leq;

    iget-wide v0, p2, Leq;->e:D

    iget-object p2, p0, Lgi;->aW:Leq;

    iget-wide v2, p2, Leq;->b:D

    cmpl-double p2, v0, v2

    if-lez p2, :cond_83

    iget-object p2, p1, Lsn;->aW:Leq;

    iget-wide v0, p2, Leq;->b:D

    iget-object p2, p0, Lgi;->aW:Leq;

    iget-wide v2, p2, Leq;->e:D

    cmpg-double p2, v0, v2

    if-gez p2, :cond_83

    const/16 p2, 0x14

    .line 377
    iput p2, p0, Lgi;->ae:I

    .line 379
    invoke-virtual {p0}, Lgi;->D()Z

    move-result p2

    if-eqz p2, :cond_7f

    const/4 p2, 0x4

    goto :goto_80

    :cond_7f
    const/4 p2, 0x2

    .line 382
    :goto_80
    invoke-virtual {p1, p0, p2}, Lsn;->a(Lsn;I)Z

    :cond_83
    :goto_83
    return-void
.end method

.method a(Z)V
    .registers 24

    move-object/from16 v0, p0

    if-nez p1, :cond_7

    const-string v1, "smoke"

    goto :goto_9

    :cond_7
    const-string v1, "heart"

    :goto_9
    const/4 v2, 0x0

    move v14, v2

    :goto_b
    const/4 v2, 0x7

    if-ge v14, v2, :cond_7b

    .line 446
    iget-object v2, v0, Lgi;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    mul-double v10, v2, v4

    .line 447
    iget-object v2, v0, Lgi;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    mul-double v12, v2, v4

    .line 448
    iget-object v2, v0, Lgi;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    mul-double v15, v2, v4

    .line 449
    iget-object v2, v0, Lgi;->aI:Lfd;

    iget-wide v3, v0, Lgi;->aM:D

    iget-object v5, v0, Lgi;->bs:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    iget v6, v0, Lgi;->bg:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    float-to-double v7, v5

    add-double/2addr v3, v7

    iget v5, v0, Lgi;->bg:F

    float-to-double v7, v5

    sub-double v4, v3, v7

    iget-wide v7, v0, Lgi;->aN:D

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    add-double v7, v7, v17

    iget-object v3, v0, Lgi;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v9, v0, Lgi;->bh:F

    mul-float/2addr v3, v9

    move/from16 v17, v14

    move-wide/from16 v18, v15

    float-to-double v14, v3

    add-double/2addr v7, v14

    iget-wide v14, v0, Lgi;->aO:D

    iget-object v3, v0, Lgi;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v9, v0, Lgi;->bg:F

    mul-float/2addr v3, v9

    mul-float/2addr v3, v6

    move-wide/from16 v20, v12

    float-to-double v12, v3

    add-double/2addr v14, v12

    iget v3, v0, Lgi;->bg:F

    float-to-double v12, v3

    sub-double v12, v14, v12

    move-object v3, v1

    move-wide v6, v7

    move-wide v8, v12

    move-wide/from16 v12, v20

    move/from16 v16, v17

    move-wide/from16 v14, v18

    invoke-virtual/range {v2 .. v15}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v14, v16, 0x1

    goto :goto_b

    :cond_7b
    return-void
.end method

.method public a(Lgs;)Z
    .registers 9

    .line 388
    iget-object v0, p1, Lgs;->c:Lix;

    invoke-virtual {v0}, Lix;->b()Liz;

    move-result-object v0

    .line 390
    invoke-virtual {p0}, Lgi;->D()Z

    move-result v1

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_66

    if-eqz v0, :cond_c8

    .line 391
    iget v1, v0, Liz;->c:I

    sget-object v6, Lgm;->aV:Lgm;

    iget v6, v6, Lgm;->bf:I

    if-ne v1, v6, :cond_c8

    invoke-virtual {p0}, Lgi;->C()Z

    move-result v1

    if-nez v1, :cond_c8

    .line 392
    iget v1, v0, Liz;->a:I

    sub-int/2addr v1, v5

    iput v1, v0, Liz;->a:I

    .line 393
    iget v0, v0, Liz;->a:I

    if-gtz v0, :cond_33

    .line 394
    iget-object v0, p1, Lgs;->c:Lix;

    iget-object v1, p1, Lgs;->c:Lix;

    iget v1, v1, Lix;->c:I

    invoke-virtual {v0, v1, v4}, Lix;->a(ILiz;)V

    .line 396
    :cond_33
    iget-object v0, p0, Lgi;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_65

    .line 397
    iget-object v0, p0, Lgi;->bs:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_5c

    .line 398
    invoke-virtual {p0, v5}, Lgi;->d(Z)V

    .line 399
    invoke-virtual {p0, v4}, Lgi;->a(Ldh;)V

    .line 400
    invoke-virtual {p0, v5}, Lgi;->b(Z)V

    .line 401
    iput v2, p0, Lgi;->Y:I

    .line 403
    iget-object p1, p1, Lgs;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgi;->a(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0, v5}, Lgi;->a(Z)V

    .line 406
    iget-object p1, p0, Lgi;->aI:Lfd;

    const/4 v0, 0x7

    invoke-virtual {p1, p0, v0}, Lfd;->a(Lsn;B)V

    goto :goto_65

    .line 408
    :cond_5c
    invoke-virtual {p0, v3}, Lgi;->a(Z)V

    .line 409
    iget-object p1, p0, Lgi;->aI:Lfd;

    const/4 v0, 0x6

    invoke-virtual {p1, p0, v0}, Lfd;->a(Lsn;B)V

    :cond_65
    :goto_65
    return v5

    :cond_66
    if-eqz v0, :cond_a8

    .line 416
    sget-object v1, Lgm;->c:[Lgm;

    iget v6, v0, Liz;->c:I

    aget-object v1, v1, v6

    instance-of v1, v1, Lyw;

    if-eqz v1, :cond_a8

    .line 417
    sget-object v1, Lgm;->c:[Lgm;

    iget v6, v0, Liz;->c:I

    aget-object v1, v1, v6

    check-cast v1, Lyw;

    .line 419
    invoke-virtual {v1}, Lyw;->m()Z

    move-result v1

    if-eqz v1, :cond_a8

    iget-object v1, p0, Lgi;->bD:Lud;

    const/16 v6, 0x12

    invoke-virtual {v1, v6}, Lud;->b(I)I

    move-result v1

    if-ge v1, v2, :cond_a8

    .line 420
    iget v1, v0, Liz;->a:I

    sub-int/2addr v1, v5

    iput v1, v0, Liz;->a:I

    .line 421
    iget v0, v0, Liz;->a:I

    if-gtz v0, :cond_9c

    .line 422
    iget-object v0, p1, Lgs;->c:Lix;

    iget-object p1, p1, Lgs;->c:Lix;

    iget p1, p1, Lix;->c:I

    invoke-virtual {v0, p1, v4}, Lix;->a(ILiz;)V

    .line 424
    :cond_9c
    sget-object p1, Lgm;->ao:Lgm;

    check-cast p1, Lyw;

    invoke-virtual {p1}, Lyw;->l()I

    move-result p1

    invoke-virtual {p0, p1}, Lgi;->c(I)V

    return v5

    .line 428
    :cond_a8
    iget-object p1, p1, Lgs;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lgi;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 429
    iget-object p1, p0, Lgi;->aI:Lfd;

    iget-boolean p1, p1, Lfd;->B:Z

    if-nez p1, :cond_c7

    .line 430
    invoke-virtual {p0}, Lgi;->B()Z

    move-result p1

    xor-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lgi;->b(Z)V

    .line 431
    iput-boolean v3, p0, Lgi;->az:Z

    .line 432
    invoke-virtual {p0, v4}, Lgi;->a(Ldh;)V

    :cond_c7
    return v5

    :cond_c8
    return v3
.end method

.method public a(Lsn;I)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 312
    invoke-virtual {v0, v2}, Lgi;->b(Z)V

    if-eqz v1, :cond_17

    .line 313
    instance-of v3, v1, Lgs;

    if-nez v3, :cond_17

    instance-of v3, v1, Lsl;

    if-nez v3, :cond_17

    add-int/lit8 v3, p2, 0x1

    .line 315
    div-int/lit8 v3, v3, 0x2

    goto :goto_19

    :cond_17
    move/from16 v3, p2

    .line 317
    :goto_19
    invoke-super {v0, v1, v3}, Lbg;->a(Lsn;I)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 319
    invoke-virtual/range {p0 .. p0}, Lgi;->D()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_a2

    invoke-virtual/range {p0 .. p0}, Lgi;->C()Z

    move-result v2

    if-nez v2, :cond_a2

    .line 320
    instance-of v2, v1, Lgs;

    if-eqz v2, :cond_35

    .line 321
    invoke-virtual {v0, v3}, Lgi;->c(Z)V

    .line 322
    iput-object v1, v0, Lgi;->d:Lsn;

    .line 324
    :cond_35
    instance-of v2, v1, Lsl;

    if-eqz v2, :cond_42

    .line 325
    move-object v2, v1

    check-cast v2, Lsl;

    iget-object v4, v2, Lsl;->c:Lls;

    if-eqz v4, :cond_42

    .line 326
    iget-object v1, v2, Lsl;->c:Lls;

    .line 329
    :cond_42
    instance-of v2, v1, Lls;

    if-eqz v2, :cond_c2

    .line 331
    iget-object v2, v0, Lgi;->aI:Lfd;

    iget-wide v4, v0, Lgi;->aM:D

    iget-wide v6, v0, Lgi;->aN:D

    iget-wide v8, v0, Lgi;->aO:D

    iget-wide v10, v0, Lgi;->aM:D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v12

    iget-wide v14, v0, Lgi;->aN:D

    add-double/2addr v14, v12

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lgi;->aO:D

    add-double/2addr v1, v12

    move-wide v12, v14

    move-wide v14, v1

    invoke-static/range {v4 .. v15}, Leq;->b(DDDDDD)Leq;

    move-result-object v16

    const-wide/high16 v17, 0x4030000000000000L    # 16.0

    const-wide/high16 v19, 0x4010000000000000L    # 4.0

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    invoke-virtual/range {v16 .. v22}, Leq;->b(DDD)Leq;

    move-result-object v1

    const-class v2, Lgi;

    move-object/from16 v4, p2

    invoke-virtual {v4, v2, v1}, Lfd;->a(Ljava/lang/Class;Leq;)Ljava/util/List;

    move-result-object v1

    .line 332
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    .line 333
    check-cast v2, Lgi;

    .line 334
    invoke-virtual {v2}, Lgi;->D()Z

    move-result v4

    if-nez v4, :cond_9d

    iget-object v4, v2, Lgi;->d:Lsn;

    if-nez v4, :cond_9d

    move-object/from16 v4, p1

    .line 335
    iput-object v4, v2, Lgi;->d:Lsn;

    .line 336
    instance-of v5, v4, Lgs;

    if-eqz v5, :cond_9f

    .line 337
    invoke-virtual {v2, v3}, Lgi;->c(Z)V

    goto :goto_9f

    :cond_9d
    move-object/from16 v4, p1

    :cond_9f
    :goto_9f
    move-object/from16 p1, v4

    goto :goto_79

    :cond_a2
    if-eq v1, v0, :cond_c2

    if-eqz v1, :cond_c2

    .line 343
    invoke-virtual/range {p0 .. p0}, Lgi;->D()Z

    move-result v2

    if-eqz v2, :cond_c0

    instance-of v2, v1, Lgs;

    if-eqz v2, :cond_c0

    .line 344
    move-object v2, v1

    check-cast v2, Lgs;

    iget-object v2, v2, Lgs;->l:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lgi;->A()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    return v3

    .line 349
    :cond_c0
    iput-object v1, v0, Lgi;->d:Lsn;

    :cond_c2
    return v3

    :cond_c3
    return v2
.end method

.method protected b()V
    .registers 4

    .line 46
    invoke-super {p0}, Lbg;->b()V

    .line 48
    iget-object v0, p0, Lgi;->bD:Lud;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lud;->a(ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lgi;->bD:Lud;

    const/16 v1, 0x11

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lud;->a(ILjava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lgi;->bD:Lud;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lgi;->Y:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Lud;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 70
    invoke-super {p0, p1}, Lbg;->b(Lnu;)V

    const-string v0, "Angry"

    .line 72
    invoke-virtual {p0}, Lgi;->C()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;Z)V

    const-string v0, "Sitting"

    .line 73
    invoke-virtual {p0}, Lgi;->B()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;Z)V

    .line 74
    invoke-virtual {p0}, Lgi;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Owner"

    if-nez v0, :cond_23

    const-string v0, ""

    .line 75
    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 77
    :cond_23
    invoke-virtual {p0}, Lgi;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    return-void
.end method

.method public b(Z)V
    .registers 4

    .line 495
    iget-object v0, p0, Lgi;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    if-eqz p1, :cond_17

    .line 497
    iget-object p1, p0, Lgi;->bD:Lud;

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lud;->b(ILjava/lang/Object;)V

    goto :goto_23

    .line 499
    :cond_17
    iget-object p1, p0, Lgi;->bD:Lud;

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lud;->b(ILjava/lang/Object;)V

    :goto_23
    return-void
.end method

.method public b_(F)F
    .registers 4

    .line 251
    iget v0, p0, Lgi;->i:F

    iget v1, p0, Lgi;->h:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    const/high16 p1, 0x3e800000    # 0.25f

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f400000    # 0.75f

    add-float/2addr v0, p1

    return v0
.end method

.method public c(F)F
    .registers 4

    .line 265
    iget v0, p0, Lgi;->c:F

    iget v1, p0, Lgi;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const p1, 0x3e19999a    # 0.15f

    mul-float/2addr v0, p1

    const p1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, p1

    return v0
.end method

.method public c(Z)V
    .registers 4

    .line 508
    iget-object v0, p0, Lgi;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    if-eqz p1, :cond_17

    .line 510
    iget-object p1, p0, Lgi;->bD:Lud;

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lud;->b(ILjava/lang/Object;)V

    goto :goto_23

    .line 512
    :cond_17
    iget-object p1, p0, Lgi;->bD:Lud;

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lud;->b(ILjava/lang/Object;)V

    :goto_23
    return-void
.end method

.method public d(Z)V
    .registers 4

    .line 521
    iget-object v0, p0, Lgi;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    if-eqz p1, :cond_17

    .line 523
    iget-object p1, p0, Lgi;->bD:Lud;

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lud;->b(ILjava/lang/Object;)V

    goto :goto_23

    .line 525
    :cond_17
    iget-object p1, p0, Lgi;->bD:Lud;

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lud;->b(ILjava/lang/Object;)V

    :goto_23
    return-void
.end method

.method protected e_()Z
    .registers 2

    .line 307
    invoke-virtual {p0}, Lgi;->B()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lgi;->g:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method protected f_()V
    .registers 25

    move-object/from16 v0, p0

    .line 129
    invoke-super/range {p0 .. p0}, Lbg;->f_()V

    .line 131
    iget-boolean v1, v0, Lgi;->e:Z

    if-nez v1, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lgi;->F()Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lgi;->D()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, v0, Lgi;->aH:Lsn;

    if-nez v1, :cond_3f

    .line 132
    iget-object v1, v0, Lgi;->aI:Lfd;

    invoke-virtual/range {p0 .. p0}, Lgi;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfd;->a(Ljava/lang/String;)Lgs;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 134
    invoke-virtual {v1, v0}, Lgs;->f(Lsn;)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_a5

    .line 136
    invoke-direct {v0, v1, v2}, Lgi;->c(Lsn;F)V

    goto/16 :goto_a5

    .line 139
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lgi;->ag()Z

    move-result v1

    if-nez v1, :cond_a5

    const/4 v1, 0x1

    .line 142
    invoke-virtual {v0, v1}, Lgi;->b(Z)V

    goto :goto_a5

    .line 145
    :cond_3f
    iget-object v1, v0, Lgi;->d:Lsn;

    if-nez v1, :cond_a5

    invoke-virtual/range {p0 .. p0}, Lgi;->F()Z

    move-result v1

    if-nez v1, :cond_a5

    invoke-virtual/range {p0 .. p0}, Lgi;->D()Z

    move-result v1

    if-nez v1, :cond_a5

    iget-object v1, v0, Lgi;->aI:Lfd;

    iget-object v1, v1, Lfd;->r:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_a5

    .line 147
    iget-object v1, v0, Lgi;->aI:Lfd;

    const-class v2, Ldl;

    iget-wide v3, v0, Lgi;->aM:D

    iget-wide v5, v0, Lgi;->aN:D

    iget-wide v7, v0, Lgi;->aO:D

    iget-wide v9, v0, Lgi;->aM:D

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double/2addr v9, v11

    iget-wide v13, v0, Lgi;->aN:D

    add-double/2addr v13, v11

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lgi;->aO:D

    add-double/2addr v1, v11

    move-wide v11, v13

    move-wide v13, v1

    invoke-static/range {v3 .. v14}, Leq;->b(DDDDDD)Leq;

    move-result-object v17

    const-wide/high16 v18, 0x4030000000000000L    # 16.0

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    const-wide/high16 v22, 0x4030000000000000L    # 16.0

    invoke-virtual/range {v17 .. v23}, Leq;->b(DDD)Leq;

    move-result-object v1

    move-object v2, v15

    move-object/from16 v3, v16

    invoke-virtual {v2, v3, v1}, Lfd;->a(Ljava/lang/Class;Leq;)Ljava/util/List;

    move-result-object v1

    .line 148
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a5

    .line 149
    iget-object v2, v0, Lgi;->aI:Lfd;

    iget-object v2, v2, Lfd;->r:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsn;

    invoke-virtual {v0, v1}, Lgi;->c(Lsn;)V

    .line 153
    :cond_a5
    :goto_a5
    invoke-virtual/range {p0 .. p0}, Lgi;->ag()Z

    move-result v1

    if-eqz v1, :cond_af

    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Lgi;->b(Z)V

    .line 157
    :cond_af
    iget-object v1, v0, Lgi;->aI:Lfd;

    iget-boolean v1, v1, Lfd;->B:Z

    if-nez v1, :cond_c2

    .line 158
    iget-object v1, v0, Lgi;->bD:Lud;

    iget v2, v0, Lgi;->Y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Lud;->b(ILjava/lang/Object;)V

    :cond_c2
    return-void
.end method

.method protected g()Ljava/lang/String;
    .registers 3

    .line 99
    invoke-virtual {p0}, Lgi;->C()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "mob.wolf.growl"

    return-object v0

    .line 102
    :cond_9
    iget-object v0, p0, Lgi;->bs:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_2a

    .line 103
    invoke-virtual {p0}, Lgi;->D()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lgi;->bD:Lud;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lud;->b(I)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_27

    const-string v0, "mob.wolf.whine"

    return-object v0

    :cond_27
    const-string v0, "mob.wolf.panting"

    return-object v0

    :cond_2a
    const-string v0, "mob.wolf.bark"

    return-object v0
.end method

.method protected g_()Lsn;
    .registers 4

    .line 358
    invoke-virtual {p0}, Lgi;->C()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 359
    iget-object v0, p0, Lgi;->aI:Lfd;

    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    invoke-virtual {v0, p0, v1, v2}, Lfd;->a(Lsn;D)Lgs;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.wolf.death"

    return-object v0
.end method

.method protected j()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.wolf.hurt"

    return-object v0
.end method

.method protected k()F
    .registers 2

    const v0, 0x3ecccccd    # 0.4f

    return v0
.end method

.method public l()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method protected n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public o()V
    .registers 5

    .line 164
    invoke-super {p0}, Lbg;->o()V

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lgi;->a:Z

    .line 167
    invoke-virtual {p0}, Lgi;->Y()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lgi;->F()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lgi;->C()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 168
    invoke-virtual {p0}, Lgi;->Z()Lsn;

    move-result-object v0

    .line 169
    instance-of v2, v0, Lgs;

    if-eqz v2, :cond_5a

    .line 170
    check-cast v0, Lgs;

    .line 172
    iget-object v0, v0, Lgs;->c:Lix;

    invoke-virtual {v0}, Lix;->b()Liz;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 174
    invoke-virtual {p0}, Lgi;->D()Z

    move-result v2

    if-nez v2, :cond_3c

    iget v2, v0, Liz;->c:I

    sget-object v3, Lgm;->aV:Lgm;

    iget v3, v3, Lgm;->bf:I

    if-ne v2, v3, :cond_3c

    .line 175
    iput-boolean v1, p0, Lgi;->a:Z

    goto :goto_5a

    .line 176
    :cond_3c
    invoke-virtual {p0}, Lgi;->D()Z

    move-result v2

    if-eqz v2, :cond_5a

    sget-object v2, Lgm;->c:[Lgm;

    iget v3, v0, Liz;->c:I

    aget-object v2, v2, v3

    instance-of v2, v2, Lyw;

    if-eqz v2, :cond_5a

    .line 177
    sget-object v2, Lgm;->c:[Lgm;

    iget v0, v0, Liz;->c:I

    aget-object v0, v2, v0

    check-cast v0, Lyw;

    invoke-virtual {v0}, Lyw;->m()Z

    move-result v0

    iput-boolean v0, p0, Lgi;->a:Z

    .line 183
    :cond_5a
    :goto_5a
    iget-boolean v0, p0, Lgi;->V:Z

    if-nez v0, :cond_7e

    iget-boolean v0, p0, Lgi;->f:Z

    if-eqz v0, :cond_7e

    iget-boolean v0, p0, Lgi;->g:Z

    if-nez v0, :cond_7e

    invoke-virtual {p0}, Lgi;->F()Z

    move-result v0

    if-nez v0, :cond_7e

    iget-boolean v0, p0, Lgi;->aX:Z

    if-eqz v0, :cond_7e

    .line 184
    iput-boolean v1, p0, Lgi;->g:Z

    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lgi;->h:F

    .line 186
    iput v0, p0, Lgi;->i:F

    .line 188
    iget-object v0, p0, Lgi;->aI:Lfd;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lfd;->a(Lsn;B)V

    :cond_7e
    return-void
.end method

.method public q_()Ljava/lang/String;
    .registers 2

    .line 60
    invoke-virtual {p0}, Lgi;->D()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "/mob/wolf_tame.png"

    return-object v0

    .line 63
    :cond_9
    invoke-virtual {p0}, Lgi;->C()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "/mob/wolf_angry.png"

    return-object v0

    .line 66
    :cond_12
    invoke-super {p0}, Lbg;->q_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected u()Z
    .registers 2

    .line 95
    invoke-virtual {p0}, Lgi;->D()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public v()Z
    .registers 2

    .line 247
    iget-boolean v0, p0, Lgi;->f:Z

    return v0
.end method

.method public w()F
    .registers 3

    .line 270
    iget v0, p0, Lgi;->bh:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    return v0
.end method

.method public w_()V
    .registers 25

    move-object/from16 v0, p0

    .line 194
    invoke-super/range {p0 .. p0}, Lbg;->w_()V

    .line 196
    iget v1, v0, Lgi;->b:F

    iput v1, v0, Lgi;->c:F

    .line 197
    iget-boolean v2, v0, Lgi;->a:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x0

    if-eqz v2, :cond_1a

    sub-float v6, v3, v1

    mul-float/2addr v6, v4

    add-float/2addr v1, v6

    .line 198
    iput v1, v0, Lgi;->b:F

    goto :goto_20

    :cond_1a
    sub-float v6, v5, v1

    mul-float/2addr v6, v4

    add-float/2addr v1, v6

    .line 200
    iput v1, v0, Lgi;->b:F

    :goto_20
    if-eqz v2, :cond_26

    const/16 v1, 0xa

    .line 203
    iput v1, v0, Lgi;->aC:I

    .line 206
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lgi;->af()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    .line 207
    iput-boolean v1, v0, Lgi;->f:Z

    .line 208
    iput-boolean v2, v0, Lgi;->g:Z

    .line 209
    iput v5, v0, Lgi;->h:F

    .line 210
    iput v5, v0, Lgi;->i:F

    goto/16 :goto_e2

    .line 211
    :cond_38
    iget-boolean v1, v0, Lgi;->f:Z

    if-nez v1, :cond_40

    iget-boolean v1, v0, Lgi;->g:Z

    if-eqz v1, :cond_e2

    .line 212
    :cond_40
    iget-boolean v1, v0, Lgi;->g:Z

    if-eqz v1, :cond_e2

    .line 214
    iget v1, v0, Lgi;->h:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_67

    .line 215
    iget-object v1, v0, Lgi;->aI:Lfd;

    invoke-virtual/range {p0 .. p0}, Lgi;->k()F

    move-result v6

    iget-object v7, v0, Lgi;->bs:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    iget-object v8, v0, Lgi;->bs:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    sub-float/2addr v7, v8

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v8

    add-float/2addr v7, v3

    const-string v8, "mob.wolf.shake"

    invoke-virtual {v1, v0, v8, v6, v7}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 218
    :cond_67
    iget v1, v0, Lgi;->h:F

    iput v1, v0, Lgi;->i:F

    const v6, 0x3d4ccccd    # 0.05f

    add-float/2addr v6, v1

    .line 219
    iput v6, v0, Lgi;->h:F

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_7f

    .line 222
    iput-boolean v2, v0, Lgi;->f:Z

    .line 223
    iput-boolean v2, v0, Lgi;->g:Z

    .line 224
    iput v5, v0, Lgi;->i:F

    .line 225
    iput v5, v0, Lgi;->h:F

    .line 228
    :cond_7f
    iget v1, v0, Lgi;->h:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_e2

    .line 229
    iget-object v1, v0, Lgi;->aW:Leq;

    iget-wide v7, v1, Leq;->b:D

    double-to-float v1, v7

    .line 230
    iget v5, v0, Lgi;->h:F

    sub-float/2addr v5, v4

    const v4, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v5, v4

    invoke-static {v5}, Lin;->a(F)F

    move-result v4

    const/high16 v5, 0x40e00000    # 7.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    :goto_99
    if-ge v2, v4, :cond_e2

    .line 232
    iget-object v5, v0, Lgi;->bs:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v5, v6

    sub-float/2addr v5, v3

    iget v7, v0, Lgi;->bg:F

    mul-float/2addr v5, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v5, v7

    .line 233
    iget-object v8, v0, Lgi;->bs:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v8, v6

    sub-float/2addr v8, v3

    iget v9, v0, Lgi;->bg:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v7

    .line 234
    iget-object v9, v0, Lgi;->aI:Lfd;

    const-string v10, "splash"

    iget-wide v11, v0, Lgi;->aM:D

    float-to-double v13, v5

    add-double/2addr v11, v13

    const v5, 0x3f4ccccd    # 0.8f

    add-float/2addr v5, v1

    float-to-double v13, v5

    move v7, v4

    iget-wide v3, v0, Lgi;->aO:D

    float-to-double v5, v8

    add-double v15, v3, v5

    iget-wide v3, v0, Lgi;->aP:D

    iget-wide v5, v0, Lgi;->aQ:D

    move/from16 v23, v7

    iget-wide v7, v0, Lgi;->aR:D

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move-wide/from16 v21, v7

    invoke-virtual/range {v9 .. v22}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v23

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_99

    :cond_e2
    :goto_e2
    return-void
.end method

.method protected x()I
    .registers 2

    .line 275
    invoke-virtual {p0}, Lgi;->B()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x14

    return v0

    .line 278
    :cond_9
    invoke-super {p0}, Lbg;->x()I

    move-result v0

    return v0
.end method

.method public z()F
    .registers 3

    .line 469
    invoke-virtual {p0}, Lgi;->C()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x3fc50a6b

    return v0

    .line 471
    :cond_a
    invoke-virtual {p0}, Lgi;->D()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 472
    iget-object v0, p0, Lgi;->bD:Lud;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lud;->b(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    const v1, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v1

    const v1, 0x3f0ccccd    # 0.55f

    sub-float/2addr v1, v0

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v0

    return v1

    :cond_28
    const v0, 0x3f20d97c

    return v0
.end method
