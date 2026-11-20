###### Class defpackage.lx (lx)
.class public Llx;
.super Lsn;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lgs;

.field public c:Lsn;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:D

.field private r:D

.field private s:D

.field private t:D


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Llx;->d:I

    .line 22
    iput p1, p0, Llx;->e:I

    .line 23
    iput p1, p0, Llx;->f:I

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Llx;->g:I

    .line 25
    iput-boolean p1, p0, Llx;->h:Z

    .line 26
    iput p1, p0, Llx;->a:I

    .line 29
    iput p1, p0, Llx;->j:I

    .line 30
    iput p1, p0, Llx;->k:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Llx;->c:Lsn;

    const/high16 p1, 0x3e800000    # 0.25f

    .line 35
    invoke-virtual {p0, p1, p1}, Llx;->b(FF)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Llx;->bM:Z

    return-void
.end method

.method public constructor <init>(Lfd;DDD)V
    .registers 15

    .line 40
    invoke-direct {p0, p1}, Llx;-><init>(Lfd;)V

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    .line 41
    invoke-virtual/range {v0 .. v6}, Llx;->e(DDD)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Llx;->bM:Z

    return-void
.end method

.method public constructor <init>(Lfd;Lgs;)V
    .registers 13

    .line 46
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Llx;->d:I

    .line 22
    iput p1, p0, Llx;->e:I

    .line 23
    iput p1, p0, Llx;->f:I

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Llx;->g:I

    .line 25
    iput-boolean p1, p0, Llx;->h:Z

    .line 26
    iput p1, p0, Llx;->a:I

    .line 29
    iput p1, p0, Llx;->j:I

    .line 30
    iput p1, p0, Llx;->k:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Llx;->c:Lsn;

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Llx;->bM:Z

    .line 48
    iput-object p2, p0, Llx;->b:Lgs;

    .line 49
    iput-object p0, p2, Lgs;->D:Llx;

    const/high16 p1, 0x3e800000    # 0.25f

    .line 51
    invoke-virtual {p0, p1, p1}, Llx;->b(FF)V

    .line 53
    iget-wide v1, p2, Lgs;->aM:D

    iget-wide v3, p2, Lgs;->aN:D

    const-wide v5, 0x3ff9eb851eb851ecL    # 1.62

    add-double/2addr v3, v5

    iget p1, p2, Lgs;->bf:F

    float-to-double v5, p1

    sub-double/2addr v3, v5

    iget-wide v5, p2, Lgs;->aO:D

    iget v7, p2, Lgs;->aS:F

    iget v8, p2, Lgs;->aT:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Llx;->c(DDDFF)V

    .line 56
    iget-wide p1, p0, Llx;->aM:D

    iget v0, p0, Llx;->aS:F

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v2

    invoke-static {v0}, Lin;->b(F)F

    move-result v0

    const v3, 0x3e23d70a    # 0.16f

    mul-float/2addr v0, v3

    float-to-double v4, v0

    sub-double/2addr p1, v4

    iput-wide p1, p0, Llx;->aM:D

    .line 57
    iget-wide p1, p0, Llx;->aN:D

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    sub-double/2addr p1, v4

    iput-wide p1, p0, Llx;->aN:D

    .line 58
    iget-wide p1, p0, Llx;->aO:D

    iget v0, p0, Llx;->aS:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    mul-float/2addr v0, v3

    float-to-double v3, v0

    sub-double/2addr p1, v3

    iput-wide p1, p0, Llx;->aO:D

    .line 59
    iget-wide v4, p0, Llx;->aM:D

    iget-wide v6, p0, Llx;->aN:D

    iget-wide v8, p0, Llx;->aO:D

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Llx;->e(DDD)V

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Llx;->bf:F

    .line 64
    iget p1, p0, Llx;->aS:F

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    neg-float p1, p1

    iget p2, p0, Llx;->aT:F

    div-float/2addr p2, v1

    mul-float/2addr p2, v2

    invoke-static {p2}, Lin;->b(F)F

    move-result p2

    mul-float/2addr p1, p2

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, p2

    float-to-double v3, p1

    iput-wide v3, p0, Llx;->aP:D

    .line 65
    iget p1, p0, Llx;->aS:F

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    iget v0, p0, Llx;->aT:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Lin;->b(F)F

    move-result v0

    mul-float/2addr p1, v0

    mul-float/2addr p1, p2

    float-to-double v3, p1

    iput-wide v3, p0, Llx;->aR:D

    .line 66
    iget p1, p0, Llx;->aT:F

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    neg-float p1, p1

    mul-float/2addr p1, p2

    float-to-double p1, p1

    iput-wide p1, p0, Llx;->aQ:D

    .line 68
    iget-wide v1, p0, Llx;->aP:D

    iget-wide v3, p0, Llx;->aQ:D

    iget-wide v5, p0, Llx;->aR:D

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Llx;->a(DDDFF)V

    return-void
.end method


# virtual methods
.method public a(DDD)V
    .registers 7

    .line 129
    iput-wide p1, p0, Llx;->aP:D

    iput-wide p1, p0, Llx;->r:D

    .line 130
    iput-wide p3, p0, Llx;->aQ:D

    iput-wide p3, p0, Llx;->s:D

    .line 131
    iput-wide p5, p0, Llx;->aR:D

    iput-wide p5, p0, Llx;->t:D

    return-void
.end method

.method public a(DDDFF)V
    .registers 15

    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    mul-double v2, p5, p5

    add-double/2addr v0, v2

    .line 85
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    float-to-double v0, v0

    div-double/2addr p1, v0

    div-double/2addr p3, v0

    div-double/2addr p5, v0

    .line 91
    iget-object v0, p0, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    const-wide v2, 0x3f7eb851e0000000L    # 0.007499999832361937

    mul-double/2addr v0, v2

    float-to-double v4, p8

    mul-double/2addr v0, v4

    add-double/2addr p1, v0

    .line 92
    iget-object p8, p0, Llx;->bs:Ljava/util/Random;

    invoke-virtual {p8}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double/2addr p3, v0

    .line 93
    iget-object p8, p0, Llx;->bs:Ljava/util/Random;

    invoke-virtual {p8}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double/2addr p5, v0

    float-to-double p7, p7

    mul-double/2addr p1, p7

    mul-double/2addr p3, p7

    mul-double/2addr p5, p7

    .line 99
    iput-wide p1, p0, Llx;->aP:D

    .line 100
    iput-wide p3, p0, Llx;->aQ:D

    .line 101
    iput-wide p5, p0, Llx;->aR:D

    mul-double p7, p1, p1

    mul-double v0, p5, p5

    add-double/2addr p7, v0

    .line 103
    invoke-static {p7, p8}, Lin;->a(D)F

    move-result p7

    .line 105
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p5, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p5

    const-wide v0, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Llx;->aS:F

    iput p1, p0, Llx;->aU:F

    float-to-double p1, p7

    .line 106
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    mul-double/2addr p1, p5

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Llx;->aT:F

    iput p1, p0, Llx;->aV:F

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Llx;->i:I

    return-void
.end method

.method public a(DDDFFI)V
    .registers 10

    .line 115
    iput-wide p1, p0, Llx;->m:D

    .line 116
    iput-wide p3, p0, Llx;->n:D

    .line 117
    iput-wide p5, p0, Llx;->o:D

    float-to-double p1, p7

    .line 118
    iput-wide p1, p0, Llx;->p:D

    float-to-double p1, p8

    .line 119
    iput-wide p1, p0, Llx;->q:D

    .line 121
    iput p9, p0, Llx;->l:I

    .line 123
    iget-wide p1, p0, Llx;->r:D

    iput-wide p1, p0, Llx;->aP:D

    .line 124
    iget-wide p1, p0, Llx;->s:D

    iput-wide p1, p0, Llx;->aQ:D

    .line 125
    iget-wide p1, p0, Llx;->t:D

    iput-wide p1, p0, Llx;->aR:D

    return-void
.end method

.method public a(Lnu;)V
    .registers 3

    const-string v0, "xTile"

    .line 343
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Llx;->d:I

    const-string v0, "yTile"

    .line 344
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Llx;->e:I

    const-string v0, "zTile"

    .line 345
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Llx;->f:I

    const-string v0, "inTile"

    .line 346
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Llx;->g:I

    const-string v0, "shake"

    .line 347
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Llx;->a:I

    const-string v0, "inGround"

    .line 348
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iput-boolean v0, p0, Llx;->h:Z

    return-void
.end method

.method public a(D)Z
    .registers 7

    .line 78
    iget-object v0, p0, Llx;->aW:Leq;

    invoke-virtual {v0}, Leq;->c()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 334
    iget v0, p0, Llx;->d:I

    int-to-short v0, v0

    const-string v1, "xTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 335
    iget v0, p0, Llx;->e:I

    int-to-short v0, v0

    const-string v1, "yTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 336
    iget v0, p0, Llx;->f:I

    int-to-short v0, v0

    const-string v1, "zTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 337
    iget v0, p0, Llx;->g:I

    int-to-byte v0, v0

    const-string v1, "inTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    .line 338
    iget v0, p0, Llx;->a:I

    int-to-byte v0, v0

    const-string v1, "shake"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    .line 339
    iget-boolean v0, p0, Llx;->h:Z

    int-to-byte v0, v0

    const-string v1, "inGround"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    return-void
.end method

.method public k()I
    .registers 16

    .line 357
    iget-object v0, p0, Llx;->c:Lsn;

    const-wide v1, 0x3fb47ae147ae147bL    # 0.08

    const-wide v3, 0x3fb999999999999aL    # 0.1

    if-eqz v0, :cond_51

    .line 358
    iget-object v0, p0, Llx;->b:Lgs;

    iget-wide v5, v0, Lgs;->aM:D

    iget-wide v7, p0, Llx;->aM:D

    sub-double/2addr v5, v7

    .line 359
    iget-object v0, p0, Llx;->b:Lgs;

    iget-wide v7, v0, Lgs;->aN:D

    iget-wide v9, p0, Llx;->aN:D

    sub-double/2addr v7, v9

    .line 360
    iget-object v0, p0, Llx;->b:Lgs;

    iget-wide v9, v0, Lgs;->aO:D

    iget-wide v11, p0, Llx;->aO:D

    sub-double/2addr v9, v11

    mul-double v11, v5, v5

    mul-double v13, v7, v7

    add-double/2addr v11, v13

    mul-double v13, v9, v9

    add-double/2addr v11, v13

    .line 362
    invoke-static {v11, v12}, Lin;->a(D)F

    move-result v0

    float-to-double v11, v0

    .line 364
    iget-object v0, p0, Llx;->c:Lsn;

    iget-wide v13, v0, Lsn;->aP:D

    mul-double/2addr v5, v3

    add-double/2addr v13, v5

    iput-wide v13, v0, Lsn;->aP:D

    .line 365
    iget-object v0, p0, Llx;->c:Lsn;

    iget-wide v5, v0, Lsn;->aQ:D

    mul-double/2addr v7, v3

    invoke-static {v11, v12}, Lin;->a(D)F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v11, v1

    add-double/2addr v7, v11

    add-double/2addr v5, v7

    iput-wide v5, v0, Lsn;->aQ:D

    .line 366
    iget-object v0, p0, Llx;->c:Lsn;

    iget-wide v1, v0, Lsn;->aR:D

    mul-double/2addr v9, v3

    add-double/2addr v1, v9

    iput-wide v1, v0, Lsn;->aR:D

    const/4 v0, 0x3

    goto :goto_ac

    .line 368
    :cond_51
    iget v0, p0, Llx;->k:I

    if-lez v0, :cond_ab

    .line 369
    new-instance v0, Lhl;

    iget-object v6, p0, Llx;->aI:Lfd;

    iget-wide v7, p0, Llx;->aM:D

    iget-wide v9, p0, Llx;->aN:D

    iget-wide v11, p0, Llx;->aO:D

    new-instance v13, Liz;

    sget-object v5, Lgm;->aS:Lgm;

    invoke-direct {v13, v5}, Liz;-><init>(Lgm;)V

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Lhl;-><init>(Lfd;DDDLiz;)V

    .line 370
    iget-object v5, p0, Llx;->b:Lgs;

    iget-wide v5, v5, Lgs;->aM:D

    iget-wide v7, p0, Llx;->aM:D

    sub-double/2addr v5, v7

    .line 371
    iget-object v7, p0, Llx;->b:Lgs;

    iget-wide v7, v7, Lgs;->aN:D

    iget-wide v9, p0, Llx;->aN:D

    sub-double/2addr v7, v9

    .line 372
    iget-object v9, p0, Llx;->b:Lgs;

    iget-wide v9, v9, Lgs;->aO:D

    iget-wide v11, p0, Llx;->aO:D

    sub-double/2addr v9, v11

    mul-double v11, v5, v5

    mul-double v13, v7, v7

    add-double/2addr v11, v13

    mul-double v13, v9, v9

    add-double/2addr v11, v13

    .line 374
    invoke-static {v11, v12}, Lin;->a(D)F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v5, v3

    .line 376
    iput-wide v5, v0, Lhl;->aP:D

    mul-double/2addr v7, v3

    .line 377
    invoke-static {v11, v12}, Lin;->a(D)F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v5, v1

    add-double/2addr v7, v5

    iput-wide v7, v0, Lhl;->aQ:D

    mul-double/2addr v9, v3

    .line 378
    iput-wide v9, v0, Lhl;->aR:D

    .line 379
    iget-object v1, p0, Llx;->aI:Lfd;

    invoke-virtual {v1, v0}, Lfd;->b(Lsn;)Z

    .line 380
    iget-object v0, p0, Llx;->b:Lgs;

    sget-object v1, Ljl;->B:Lvr;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgs;->a(Lvr;I)V

    move v0, v2

    goto :goto_ac

    :cond_ab
    const/4 v0, 0x0

    .line 383
    :goto_ac
    iget-boolean v1, p0, Llx;->h:Z

    if-eqz v1, :cond_b1

    const/4 v0, 0x2

    .line 385
    :cond_b1
    invoke-virtual {p0}, Llx;->K()V

    .line 386
    iget-object v1, p0, Llx;->b:Lgs;

    const/4 v2, 0x0

    iput-object v2, v1, Lgs;->D:Llx;

    return v0
.end method

.method public w_()V
    .registers 48

    move-object/from16 v7, p0

    .line 135
    invoke-super/range {p0 .. p0}, Lsn;->w_()V

    .line 137
    iget v0, v7, Llx;->l:I

    const-wide v8, 0x4066800000000000L    # 180.0

    const/4 v10, 0x1

    if-lez v0, :cond_7e

    .line 138
    iget-wide v0, v7, Llx;->aM:D

    iget-wide v2, v7, Llx;->m:D

    iget-wide v4, v7, Llx;->aM:D

    sub-double/2addr v2, v4

    iget v4, v7, Llx;->l:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    add-double v1, v0, v2

    .line 139
    iget-wide v3, v7, Llx;->aN:D

    iget-wide v5, v7, Llx;->n:D

    iget-wide v11, v7, Llx;->aN:D

    sub-double/2addr v5, v11

    iget v0, v7, Llx;->l:I

    int-to-double v11, v0

    div-double/2addr v5, v11

    add-double/2addr v3, v5

    .line 140
    iget-wide v5, v7, Llx;->aO:D

    iget-wide v11, v7, Llx;->o:D

    iget-wide v13, v7, Llx;->aO:D

    sub-double/2addr v11, v13

    iget v0, v7, Llx;->l:I

    int-to-double v13, v0

    div-double/2addr v11, v13

    add-double/2addr v5, v11

    .line 142
    iget-wide v11, v7, Llx;->p:D

    iget v0, v7, Llx;->aS:F

    float-to-double v13, v0

    sub-double/2addr v11, v13

    :goto_3a
    const-wide v13, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v11, v13

    const-wide v13, 0x4076800000000000L    # 360.0

    if-gez v0, :cond_4a

    add-double/2addr v11, v13

    goto :goto_3a

    :cond_4a
    :goto_4a
    cmpl-double v0, v11, v8

    if-ltz v0, :cond_50

    sub-double/2addr v11, v13

    goto :goto_4a

    .line 148
    :cond_50
    iget v0, v7, Llx;->aS:F

    float-to-double v8, v0

    iget v0, v7, Llx;->l:I

    int-to-double v13, v0

    div-double/2addr v11, v13

    add-double/2addr v8, v11

    double-to-float v0, v8

    iput v0, v7, Llx;->aS:F

    .line 149
    iget v0, v7, Llx;->aT:F

    float-to-double v8, v0

    iget-wide v11, v7, Llx;->q:D

    iget v0, v7, Llx;->aT:F

    float-to-double v13, v0

    sub-double/2addr v11, v13

    iget v0, v7, Llx;->l:I

    int-to-double v13, v0

    div-double/2addr v11, v13

    add-double/2addr v8, v11

    double-to-float v0, v8

    iput v0, v7, Llx;->aT:F

    .line 151
    iget v0, v7, Llx;->l:I

    sub-int/2addr v0, v10

    iput v0, v7, Llx;->l:I

    move-object/from16 v0, p0

    .line 152
    invoke-virtual/range {v0 .. v6}, Llx;->e(DDD)V

    .line 153
    iget v0, v7, Llx;->aS:F

    iget v1, v7, Llx;->aT:F

    invoke-virtual {v7, v0, v1}, Llx;->c(FF)V

    return-void

    .line 157
    :cond_7e
    iget-object v0, v7, Llx;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    const-wide v11, 0x3fe999999999999aL    # 0.8

    const/4 v1, 0x0

    if-nez v0, :cond_e4

    .line 158
    iget-object v0, v7, Llx;->b:Lgs;

    invoke-virtual {v0}, Lgs;->G()Liz;

    move-result-object v0

    .line 159
    iget-object v2, v7, Llx;->b:Lgs;

    iget-boolean v2, v2, Lgs;->be:Z

    if-nez v2, :cond_dc

    iget-object v2, v7, Llx;->b:Lgs;

    invoke-virtual {v2}, Lgs;->W()Z

    move-result v2

    if-eqz v2, :cond_dc

    if-eqz v0, :cond_dc

    invoke-virtual {v0}, Liz;->a()Lgm;

    move-result-object v0

    sget-object v2, Lgm;->aP:Lgm;

    if-ne v0, v2, :cond_dc

    iget-object v0, v7, Llx;->b:Lgs;

    invoke-virtual {v7, v0}, Llx;->g(Lsn;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_b5

    goto :goto_dc

    .line 165
    :cond_b5
    iget-object v0, v7, Llx;->c:Lsn;

    if-eqz v0, :cond_e4

    .line 166
    iget-boolean v0, v0, Lsn;->be:Z

    if-eqz v0, :cond_c0

    iput-object v1, v7, Llx;->c:Lsn;

    goto :goto_e4

    .line 168
    :cond_c0
    iget-object v0, v7, Llx;->c:Lsn;

    iget-wide v0, v0, Lsn;->aM:D

    iput-wide v0, v7, Llx;->aM:D

    .line 169
    iget-object v0, v7, Llx;->c:Lsn;

    iget-object v0, v0, Lsn;->aW:Leq;

    iget-wide v0, v0, Leq;->b:D

    iget-object v2, v7, Llx;->c:Lsn;

    iget v2, v2, Lsn;->bh:F

    float-to-double v2, v2

    mul-double/2addr v2, v11

    add-double/2addr v0, v2

    iput-wide v0, v7, Llx;->aN:D

    .line 170
    iget-object v0, v7, Llx;->c:Lsn;

    iget-wide v0, v0, Lsn;->aO:D

    iput-wide v0, v7, Llx;->aO:D

    return-void

    .line 160
    :cond_dc
    :goto_dc
    invoke-virtual/range {p0 .. p0}, Llx;->K()V

    .line 161
    iget-object v0, v7, Llx;->b:Lgs;

    iput-object v1, v0, Lgs;->D:Llx;

    return-void

    .line 176
    :cond_e4
    :goto_e4
    iget v0, v7, Llx;->a:I

    if-lez v0, :cond_eb

    sub-int/2addr v0, v10

    iput v0, v7, Llx;->a:I

    .line 178
    :cond_eb
    iget-boolean v0, v7, Llx;->h:Z

    const v13, 0x3e4ccccd    # 0.2f

    const/4 v14, 0x0

    if-eqz v0, :cond_13e

    .line 182
    iget-object v0, v7, Llx;->aI:Lfd;

    iget v2, v7, Llx;->d:I

    iget v3, v7, Llx;->e:I

    iget v4, v7, Llx;->f:I

    invoke-virtual {v0, v2, v3, v4}, Lfd;->a(III)I

    move-result v0

    .line 183
    iget v2, v7, Llx;->g:I

    if-eq v0, v2, :cond_131

    .line 184
    iput-boolean v14, v7, Llx;->h:Z

    .line 186
    iget-wide v2, v7, Llx;->aP:D

    iget-object v0, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v13

    float-to-double v4, v0

    mul-double/2addr v2, v4

    iput-wide v2, v7, Llx;->aP:D

    .line 187
    iget-wide v2, v7, Llx;->aQ:D

    iget-object v0, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v13

    float-to-double v4, v0

    mul-double/2addr v2, v4

    iput-wide v2, v7, Llx;->aQ:D

    .line 188
    iget-wide v2, v7, Llx;->aR:D

    iget-object v0, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v13

    float-to-double v4, v0

    mul-double/2addr v2, v4

    iput-wide v2, v7, Llx;->aR:D

    .line 189
    iput v14, v7, Llx;->i:I

    .line 190
    iput v14, v7, Llx;->j:I

    goto :goto_143

    .line 192
    :cond_131
    iget v0, v7, Llx;->i:I

    add-int/2addr v0, v10

    iput v0, v7, Llx;->i:I

    const/16 v1, 0x4b0

    if-ne v0, v1, :cond_13d

    .line 193
    invoke-virtual/range {p0 .. p0}, Llx;->K()V

    :cond_13d
    return-void

    .line 197
    :cond_13e
    iget v0, v7, Llx;->j:I

    add-int/2addr v0, v10

    iput v0, v7, Llx;->j:I

    .line 200
    :goto_143
    iget-wide v2, v7, Llx;->aM:D

    iget-wide v4, v7, Llx;->aN:D

    iget-wide v11, v7, Llx;->aO:D

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v11

    invoke-static/range {v15 .. v20}, Lbt;->b(DDD)Lbt;

    move-result-object v0

    .line 201
    iget-wide v2, v7, Llx;->aM:D

    iget-wide v4, v7, Llx;->aP:D

    add-double v15, v2, v4

    iget-wide v2, v7, Llx;->aN:D

    iget-wide v4, v7, Llx;->aQ:D

    add-double v17, v2, v4

    iget-wide v2, v7, Llx;->aO:D

    iget-wide v4, v7, Llx;->aR:D

    add-double v19, v2, v4

    invoke-static/range {v15 .. v20}, Lbt;->b(DDD)Lbt;

    move-result-object v2

    .line 202
    iget-object v3, v7, Llx;->aI:Lfd;

    invoke-virtual {v3, v0, v2}, Lfd;->a(Lbt;Lbt;)Lvf;

    move-result-object v0

    .line 204
    iget-wide v2, v7, Llx;->aM:D

    iget-wide v4, v7, Llx;->aN:D

    iget-wide v11, v7, Llx;->aO:D

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v11

    invoke-static/range {v15 .. v20}, Lbt;->b(DDD)Lbt;

    move-result-object v2

    .line 205
    iget-wide v3, v7, Llx;->aM:D

    iget-wide v5, v7, Llx;->aP:D

    add-double v15, v3, v5

    iget-wide v3, v7, Llx;->aN:D

    iget-wide v5, v7, Llx;->aQ:D

    add-double v17, v3, v5

    iget-wide v3, v7, Llx;->aO:D

    iget-wide v5, v7, Llx;->aR:D

    add-double v19, v3, v5

    invoke-static/range {v15 .. v20}, Lbt;->b(DDD)Lbt;

    move-result-object v3

    if-eqz v0, :cond_1aa

    .line 207
    iget-object v3, v0, Lvf;->f:Lbt;

    iget-wide v3, v3, Lbt;->a:D

    iget-object v5, v0, Lvf;->f:Lbt;

    iget-wide v5, v5, Lbt;->b:D

    iget-object v11, v0, Lvf;->f:Lbt;

    iget-wide v11, v11, Lbt;->c:D

    move-wide v15, v3

    move-wide/from16 v17, v5

    move-wide/from16 v19, v11

    invoke-static/range {v15 .. v20}, Lbt;->b(DDD)Lbt;

    move-result-object v3

    .line 210
    :cond_1aa
    iget-object v4, v7, Llx;->aI:Lfd;

    iget-object v5, v7, Llx;->aW:Leq;

    iget-wide v11, v7, Llx;->aP:D

    iget-wide v8, v7, Llx;->aQ:D

    iget-wide v13, v7, Llx;->aR:D

    move-object/from16 v21, v5

    move-wide/from16 v22, v11

    move-wide/from16 v24, v8

    move-wide/from16 v26, v13

    invoke-virtual/range {v21 .. v27}, Leq;->a(DDD)Leq;

    move-result-object v21

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v21 .. v27}, Leq;->b(DDD)Leq;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v11, 0x0

    .line 212
    :goto_1d1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v13, 0x5

    if-ge v5, v6, :cond_21a

    .line 213
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsn;

    .line 214
    invoke-virtual {v6}, Lsn;->h_()Z

    move-result v14

    if-eqz v14, :cond_217

    iget-object v14, v7, Llx;->b:Lgs;

    if-ne v6, v14, :cond_1ed

    iget v14, v7, Llx;->j:I

    if-ge v14, v13, :cond_1ed

    goto :goto_217

    .line 217
    :cond_1ed
    iget-object v13, v6, Lsn;->aW:Leq;

    const v14, 0x3e99999a    # 0.3f

    float-to-double v8, v14

    move-object/from16 v21, v13

    move-wide/from16 v22, v8

    move-wide/from16 v24, v8

    move-wide/from16 v26, v8

    invoke-virtual/range {v21 .. v27}, Leq;->b(DDD)Leq;

    move-result-object v8

    .line 218
    invoke-virtual {v8, v2, v3}, Leq;->a(Lbt;Lbt;)Lvf;

    move-result-object v8

    if-eqz v8, :cond_217

    .line 220
    iget-object v8, v8, Lvf;->f:Lbt;

    invoke-virtual {v2, v8}, Lbt;->c(Lbt;)D

    move-result-wide v8

    cmpg-double v13, v8, v11

    if-ltz v13, :cond_215

    const-wide/16 v13, 0x0

    cmpl-double v21, v11, v13

    if-nez v21, :cond_217

    :cond_215
    move-object v1, v6

    move-wide v11, v8

    :cond_217
    :goto_217
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d1

    :cond_21a
    if-eqz v1, :cond_221

    .line 229
    new-instance v0, Lvf;

    invoke-direct {v0, v1}, Lvf;-><init>(Lsn;)V

    :cond_221
    if-eqz v0, :cond_23b

    .line 233
    iget-object v1, v0, Lvf;->g:Lsn;

    if-eqz v1, :cond_237

    .line 234
    iget-object v1, v0, Lvf;->g:Lsn;

    iget-object v2, v7, Llx;->b:Lgs;

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lsn;->a(Lsn;I)Z

    move-result v1

    if-eqz v1, :cond_23c

    .line 235
    iget-object v0, v0, Lvf;->g:Lsn;

    iput-object v0, v7, Llx;->c:Lsn;

    goto :goto_23c

    :cond_237
    const/4 v8, 0x0

    .line 239
    iput-boolean v10, v7, Llx;->h:Z

    goto :goto_23c

    :cond_23b
    const/4 v8, 0x0

    .line 243
    :cond_23c
    :goto_23c
    iget-boolean v0, v7, Llx;->h:Z

    if-eqz v0, :cond_241

    return-void

    .line 245
    :cond_241
    iget-wide v1, v7, Llx;->aP:D

    iget-wide v3, v7, Llx;->aQ:D

    iget-wide v5, v7, Llx;->aR:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Llx;->b(DDD)V

    .line 247
    iget-wide v0, v7, Llx;->aP:D

    iget-wide v2, v7, Llx;->aP:D

    mul-double/2addr v0, v2

    iget-wide v2, v7, Llx;->aR:D

    iget-wide v4, v7, Llx;->aR:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    .line 248
    iget-wide v1, v7, Llx;->aP:D

    iget-wide v3, v7, Llx;->aR:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v3

    const-wide v5, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr v1, v5

    double-to-float v1, v1

    iput v1, v7, Llx;->aS:F

    .line 249
    iget-wide v1, v7, Llx;->aQ:D

    float-to-double v11, v0

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v3

    div-double/2addr v0, v5

    double-to-float v0, v0

    iput v0, v7, Llx;->aT:F

    .line 251
    :goto_27e
    iget v0, v7, Llx;->aT:F

    iget v1, v7, Llx;->aV:F

    sub-float/2addr v0, v1

    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v0, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-gez v0, :cond_291

    .line 252
    iget v0, v7, Llx;->aV:F

    sub-float/2addr v0, v2

    iput v0, v7, Llx;->aV:F

    goto :goto_27e

    .line 253
    :cond_291
    :goto_291
    iget v0, v7, Llx;->aT:F

    iget v3, v7, Llx;->aV:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2a2

    .line 254
    iget v0, v7, Llx;->aV:F

    add-float/2addr v0, v2

    iput v0, v7, Llx;->aV:F

    goto :goto_291

    .line 256
    :cond_2a2
    :goto_2a2
    iget v0, v7, Llx;->aS:F

    iget v4, v7, Llx;->aU:F

    sub-float/2addr v0, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2b1

    .line 257
    iget v0, v7, Llx;->aU:F

    sub-float/2addr v0, v2

    iput v0, v7, Llx;->aU:F

    goto :goto_2a2

    .line 258
    :cond_2b1
    :goto_2b1
    iget v0, v7, Llx;->aS:F

    iget v1, v7, Llx;->aU:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2c0

    .line 259
    iget v0, v7, Llx;->aU:F

    add-float/2addr v0, v2

    iput v0, v7, Llx;->aU:F

    goto :goto_2b1

    .line 261
    :cond_2c0
    iget v0, v7, Llx;->aV:F

    iget v1, v7, Llx;->aT:F

    iget v2, v7, Llx;->aV:F

    sub-float/2addr v1, v2

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v7, Llx;->aT:F

    .line 262
    iget v0, v7, Llx;->aU:F

    iget v1, v7, Llx;->aS:F

    iget v3, v7, Llx;->aU:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v7, Llx;->aS:F

    .line 267
    iget-boolean v0, v7, Llx;->aX:Z

    if-nez v0, :cond_2e6

    iget-boolean v0, v7, Llx;->aY:Z

    if-eqz v0, :cond_2e2

    goto :goto_2e6

    :cond_2e2
    const v0, 0x3f6b851f    # 0.92f

    goto :goto_2e8

    :cond_2e6
    :goto_2e6
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_2e8
    move v3, v8

    const-wide/16 v1, 0x0

    :goto_2eb
    if-ge v3, v13, :cond_34c

    .line 274
    iget-object v6, v7, Llx;->aW:Leq;

    iget-wide v11, v6, Leq;->b:D

    iget-object v6, v7, Llx;->aW:Leq;

    iget-wide v14, v6, Leq;->e:D

    iget-object v6, v7, Llx;->aW:Leq;

    iget-wide v8, v6, Leq;->b:D

    sub-double/2addr v14, v8

    add-int/lit8 v6, v3, 0x0

    int-to-double v8, v6

    mul-double/2addr v14, v8

    int-to-double v8, v13

    div-double/2addr v14, v8

    add-double/2addr v11, v14

    const-wide/high16 v14, 0x3fc0000000000000L    # 0.125

    sub-double/2addr v11, v14

    add-double v23, v11, v14

    .line 275
    iget-object v6, v7, Llx;->aW:Leq;

    iget-wide v11, v6, Leq;->b:D

    iget-object v6, v7, Llx;->aW:Leq;

    iget-wide v4, v6, Leq;->e:D

    iget-object v6, v7, Llx;->aW:Leq;

    iget-wide v13, v6, Leq;->b:D

    sub-double/2addr v4, v13

    add-int/lit8 v3, v3, 0x1

    int-to-double v13, v3

    mul-double/2addr v4, v13

    div-double/2addr v4, v8

    add-double/2addr v11, v4

    const-wide/high16 v4, 0x3fc0000000000000L    # 0.125

    sub-double/2addr v11, v4

    add-double v29, v11, v4

    .line 276
    iget-object v4, v7, Llx;->aW:Leq;

    iget-wide v4, v4, Leq;->a:D

    iget-object v6, v7, Llx;->aW:Leq;

    iget-wide v11, v6, Leq;->c:D

    iget-object v6, v7, Llx;->aW:Leq;

    iget-wide v13, v6, Leq;->d:D

    iget-object v6, v7, Llx;->aW:Leq;

    move-wide/from16 v25, v11

    iget-wide v10, v6, Leq;->f:D

    move-wide/from16 v21, v4

    move-wide/from16 v27, v13

    move-wide/from16 v31, v10

    invoke-static/range {v21 .. v32}, Leq;->b(DDDDDD)Leq;

    move-result-object v4

    .line 277
    iget-object v5, v7, Llx;->aI:Lfd;

    sget-object v6, Lln;->g:Lln;

    invoke-virtual {v5, v4, v6}, Lfd;->b(Leq;Lln;)Z

    move-result v4

    if-eqz v4, :cond_348

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v8

    add-double/2addr v1, v4

    :cond_348
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x5

    goto :goto_2eb

    :cond_34c
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_471

    .line 283
    iget v4, v7, Llx;->k:I

    if-lez v4, :cond_35c

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 284
    iput v4, v7, Llx;->k:I

    goto/16 :goto_471

    :cond_35c
    const/4 v5, 0x1

    .line 287
    iget-object v4, v7, Llx;->aI:Lfd;

    iget-wide v8, v7, Llx;->aM:D

    invoke-static {v8, v9}, Lin;->b(D)I

    move-result v6

    iget-wide v8, v7, Llx;->aN:D

    invoke-static {v8, v9}, Lin;->b(D)I

    move-result v8

    add-int/2addr v8, v5

    iget-wide v9, v7, Llx;->aO:D

    invoke-static {v9, v10}, Lin;->b(D)I

    move-result v5

    invoke-virtual {v4, v6, v8, v5}, Lfd;->t(III)Z

    move-result v4

    if-eqz v4, :cond_37b

    const/16 v4, 0x12c

    goto :goto_37d

    :cond_37b
    const/16 v4, 0x1f4

    .line 289
    :goto_37d
    iget-object v5, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-nez v4, :cond_471

    .line 290
    iget-object v4, v7, Llx;->bs:Ljava/util/Random;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    iput v4, v7, Llx;->k:I

    .line 291
    iget-wide v4, v7, Llx;->aQ:D

    const-wide v8, 0x3fc99999a0000000L    # 0.20000000298023224

    sub-double/2addr v4, v8

    iput-wide v4, v7, Llx;->aQ:D

    .line 292
    iget-object v4, v7, Llx;->aI:Lfd;

    iget-object v5, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    iget-object v6, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    sub-float/2addr v5, v6

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    const-string v8, "random.splash"

    const/high16 v9, 0x3e800000    # 0.25f

    invoke-virtual {v4, v7, v8, v9, v5}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 293
    iget-object v4, v7, Llx;->aW:Leq;

    iget-wide v4, v4, Leq;->b:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    :goto_3c2
    int-to-float v8, v5

    .line 294
    iget v9, v7, Llx;->bg:F

    const/high16 v10, 0x41a00000    # 20.0f

    mul-float/2addr v9, v10

    add-float/2addr v9, v6

    cmpg-float v8, v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    if-gez v8, :cond_420

    .line 295
    iget-object v8, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v8, v9

    sub-float/2addr v8, v6

    iget v10, v7, Llx;->bg:F

    mul-float/2addr v8, v10

    .line 296
    iget-object v10, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v10

    mul-float/2addr v10, v9

    sub-float/2addr v10, v6

    iget v9, v7, Llx;->bg:F

    mul-float/2addr v10, v9

    .line 297
    iget-object v9, v7, Llx;->aI:Lfd;

    const-string v34, "bubble"

    iget-wide v11, v7, Llx;->aM:D

    float-to-double v13, v8

    add-double v35, v11, v13

    add-float v8, v4, v6

    float-to-double v11, v8

    iget-wide v13, v7, Llx;->aO:D

    move v8, v0

    move-wide v15, v1

    float-to-double v0, v10

    add-double v39, v13, v0

    iget-wide v0, v7, Llx;->aP:D

    iget-wide v13, v7, Llx;->aQ:D

    iget-object v2, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v17, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, v17

    move/from16 v19, v3

    float-to-double v2, v2

    sub-double v43, v13, v2

    iget-wide v2, v7, Llx;->aR:D

    move-object/from16 v33, v9

    move-wide/from16 v37, v11

    move-wide/from16 v41, v0

    move-wide/from16 v45, v2

    invoke-virtual/range {v33 .. v46}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v5, v5, 0x1

    move v0, v8

    move-wide v1, v15

    move/from16 v3, v19

    goto :goto_3c2

    :cond_420
    move v8, v0

    move-wide v15, v1

    move/from16 v19, v3

    const/4 v14, 0x0

    :goto_425
    int-to-float v0, v14

    .line 299
    iget v1, v7, Llx;->bg:F

    mul-float/2addr v1, v10

    add-float/2addr v1, v6

    cmpg-float v0, v0, v1

    if-gez v0, :cond_475

    .line 300
    iget-object v0, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v9

    sub-float/2addr v0, v6

    iget v1, v7, Llx;->bg:F

    mul-float/2addr v0, v1

    .line 301
    iget-object v1, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v9

    sub-float/2addr v1, v6

    iget v2, v7, Llx;->bg:F

    mul-float/2addr v1, v2

    .line 302
    iget-object v2, v7, Llx;->aI:Lfd;

    const-string v34, "splash"

    iget-wide v11, v7, Llx;->aM:D

    float-to-double v9, v0

    add-double v35, v11, v9

    add-float v0, v4, v6

    float-to-double v9, v0

    iget-wide v11, v7, Llx;->aO:D

    float-to-double v0, v1

    add-double v39, v11, v0

    iget-wide v0, v7, Llx;->aP:D

    iget-wide v11, v7, Llx;->aQ:D

    move v13, v4

    iget-wide v3, v7, Llx;->aR:D

    move-object/from16 v33, v2

    move-wide/from16 v37, v9

    move-wide/from16 v41, v0

    move-wide/from16 v43, v11

    move-wide/from16 v45, v3

    invoke-virtual/range {v33 .. v46}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v14, v14, 0x1

    move v4, v13

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x41a00000    # 20.0f

    goto :goto_425

    :cond_471
    :goto_471
    move v8, v0

    move-wide v15, v1

    move/from16 v19, v3

    .line 309
    :cond_475
    iget v0, v7, Llx;->k:I

    if-lez v0, :cond_499

    .line 310
    iget-wide v0, v7, Llx;->aQ:D

    iget-object v2, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget-object v3, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, v7, Llx;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, v7, Llx;->aQ:D

    :cond_499
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v1, v15, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    .line 314
    iget-wide v3, v7, Llx;->aQ:D

    const-wide v5, 0x3fa47ae140000000L    # 0.03999999910593033

    mul-double/2addr v1, v5

    add-double/2addr v3, v1

    iput-wide v3, v7, Llx;->aQ:D

    if-lez v19, :cond_4c0

    float-to-double v0, v8

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 317
    iget-wide v1, v7, Llx;->aQ:D

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    iput-wide v1, v7, Llx;->aQ:D

    goto :goto_4c1

    :cond_4c0
    move v0, v8

    .line 325
    :goto_4c1
    iget-wide v1, v7, Llx;->aP:D

    float-to-double v3, v0

    mul-double/2addr v1, v3

    iput-wide v1, v7, Llx;->aP:D

    .line 326
    iget-wide v0, v7, Llx;->aQ:D

    mul-double/2addr v0, v3

    iput-wide v0, v7, Llx;->aQ:D

    .line 327
    iget-wide v0, v7, Llx;->aR:D

    mul-double/2addr v0, v3

    iput-wide v0, v7, Llx;->aR:D

    .line 330
    iget-wide v1, v7, Llx;->aM:D

    iget-wide v3, v7, Llx;->aN:D

    iget-wide v5, v7, Llx;->aO:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Llx;->e(DDD)V

    return-void
.end method

.method public x_()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
