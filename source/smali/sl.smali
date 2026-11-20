###### Class defpackage.sl (sl)
.class public Lsl;
.super Lsn;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:Lls;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lsl;->d:I

    .line 21
    iput p1, p0, Lsl;->e:I

    .line 22
    iput p1, p0, Lsl;->f:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lsl;->g:I

    .line 24
    iput p1, p0, Lsl;->h:I

    .line 25
    iput-boolean p1, p0, Lsl;->i:Z

    .line 26
    iput-boolean p1, p0, Lsl;->a:Z

    .line 27
    iput p1, p0, Lsl;->b:I

    .line 30
    iput p1, p0, Lsl;->k:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 34
    invoke-virtual {p0, p1, p1}, Lsl;->b(FF)V

    return-void
.end method

.method public constructor <init>(Lfd;DDD)V
    .registers 15

    .line 38
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lsl;->d:I

    .line 21
    iput p1, p0, Lsl;->e:I

    .line 22
    iput p1, p0, Lsl;->f:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lsl;->g:I

    .line 24
    iput p1, p0, Lsl;->h:I

    .line 25
    iput-boolean p1, p0, Lsl;->i:Z

    .line 26
    iput-boolean p1, p0, Lsl;->a:Z

    .line 27
    iput p1, p0, Lsl;->b:I

    .line 30
    iput p1, p0, Lsl;->k:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 40
    invoke-virtual {p0, p1, p1}, Lsl;->b(FF)V

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    .line 42
    invoke-virtual/range {v0 .. v6}, Lsl;->e(DDD)V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lsl;->bf:F

    return-void
.end method

.method public constructor <init>(Lfd;Lls;)V
    .registers 13

    .line 47
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lsl;->d:I

    .line 21
    iput p1, p0, Lsl;->e:I

    .line 22
    iput p1, p0, Lsl;->f:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lsl;->g:I

    .line 24
    iput p1, p0, Lsl;->h:I

    .line 25
    iput-boolean p1, p0, Lsl;->i:Z

    .line 26
    iput-boolean p1, p0, Lsl;->a:Z

    .line 27
    iput p1, p0, Lsl;->b:I

    .line 30
    iput p1, p0, Lsl;->k:I

    .line 48
    iput-object p2, p0, Lsl;->c:Lls;

    .line 49
    instance-of p1, p2, Lgs;

    iput-boolean p1, p0, Lsl;->a:Z

    const/high16 p1, 0x3f000000    # 0.5f

    .line 51
    invoke-virtual {p0, p1, p1}, Lsl;->b(FF)V

    .line 53
    iget-wide v1, p2, Lls;->aM:D

    iget-wide v3, p2, Lls;->aN:D

    invoke-virtual {p2}, Lls;->w()F

    move-result p1

    float-to-double v5, p1

    add-double/2addr v3, v5

    iget-wide v5, p2, Lls;->aO:D

    iget v7, p2, Lls;->aS:F

    iget v8, p2, Lls;->aT:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lsl;->c(DDDFF)V

    .line 55
    iget-wide p1, p0, Lsl;->aM:D

    iget v0, p0, Lsl;->aS:F

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

    iput-wide p1, p0, Lsl;->aM:D

    .line 56
    iget-wide p1, p0, Lsl;->aN:D

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    sub-double/2addr p1, v4

    iput-wide p1, p0, Lsl;->aN:D

    .line 57
    iget-wide p1, p0, Lsl;->aO:D

    iget v0, p0, Lsl;->aS:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    mul-float/2addr v0, v3

    float-to-double v3, v0

    sub-double/2addr p1, v3

    iput-wide p1, p0, Lsl;->aO:D

    .line 58
    iget-wide v4, p0, Lsl;->aM:D

    iget-wide v6, p0, Lsl;->aN:D

    iget-wide v8, p0, Lsl;->aO:D

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lsl;->e(DDD)V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lsl;->bf:F

    .line 61
    iget p1, p0, Lsl;->aS:F

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    neg-float p1, p1

    iget p2, p0, Lsl;->aT:F

    div-float/2addr p2, v1

    mul-float/2addr p2, v2

    invoke-static {p2}, Lin;->b(F)F

    move-result p2

    mul-float/2addr p1, p2

    float-to-double p1, p1

    iput-wide p1, p0, Lsl;->aP:D

    .line 62
    iget p1, p0, Lsl;->aS:F

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    iget p2, p0, Lsl;->aT:F

    div-float/2addr p2, v1

    mul-float/2addr p2, v2

    invoke-static {p2}, Lin;->b(F)F

    move-result p2

    mul-float/2addr p1, p2

    float-to-double p1, p1

    iput-wide p1, p0, Lsl;->aR:D

    .line 63
    iget p1, p0, Lsl;->aT:F

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    neg-float p1, p1

    float-to-double p1, p1

    iput-wide p1, p0, Lsl;->aQ:D

    .line 65
    iget-wide v1, p0, Lsl;->aP:D

    iget-wide v3, p0, Lsl;->aQ:D

    iget-wide v5, p0, Lsl;->aR:D

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lsl;->a(DDDFF)V

    return-void
.end method


# virtual methods
.method public a(DDD)V
    .registers 16

    .line 99
    iput-wide p1, p0, Lsl;->aP:D

    .line 100
    iput-wide p3, p0, Lsl;->aQ:D

    .line 101
    iput-wide p5, p0, Lsl;->aR:D

    .line 102
    iget v0, p0, Lsl;->aV:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_56

    iget v0, p0, Lsl;->aU:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_56

    mul-double v0, p1, p1

    mul-double v2, p5, p5

    add-double/2addr v0, v2

    .line 103
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    .line 104
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p5, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p5

    const-wide v1, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr p1, v1

    double-to-float p1, p1

    iput p1, p0, Lsl;->aS:F

    iput p1, p0, Lsl;->aU:F

    float-to-double p1, v0

    .line 105
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    mul-double/2addr p1, p5

    div-double/2addr p1, v1

    double-to-float p1, p1

    iput p1, p0, Lsl;->aT:F

    iput p1, p0, Lsl;->aV:F

    .line 106
    iget p1, p0, Lsl;->aT:F

    iput p1, p0, Lsl;->aV:F

    .line 107
    iget p1, p0, Lsl;->aS:F

    iput p1, p0, Lsl;->aU:F

    .line 108
    iget-wide v1, p0, Lsl;->aM:D

    iget-wide v3, p0, Lsl;->aN:D

    iget-wide v5, p0, Lsl;->aO:D

    iget v7, p0, Lsl;->aS:F

    iget v8, p0, Lsl;->aT:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lsl;->c(DDDFF)V

    const/4 p1, 0x0

    .line 109
    iput p1, p0, Lsl;->j:I

    :cond_56
    return-void
.end method

.method public a(DDDFF)V
    .registers 15

    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    mul-double v2, p5, p5

    add-double/2addr v0, v2

    .line 73
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    float-to-double v0, v0

    div-double/2addr p1, v0

    div-double/2addr p3, v0

    div-double/2addr p5, v0

    .line 79
    iget-object v0, p0, Lsl;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    const-wide v2, 0x3f7eb851e0000000L    # 0.007499999832361937

    mul-double/2addr v0, v2

    float-to-double v4, p8

    mul-double/2addr v0, v4

    add-double/2addr p1, v0

    .line 80
    iget-object p8, p0, Lsl;->bs:Ljava/util/Random;

    invoke-virtual {p8}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double/2addr p3, v0

    .line 81
    iget-object p8, p0, Lsl;->bs:Ljava/util/Random;

    invoke-virtual {p8}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double/2addr p5, v0

    float-to-double p7, p7

    mul-double/2addr p1, p7

    mul-double/2addr p3, p7

    mul-double/2addr p5, p7

    .line 87
    iput-wide p1, p0, Lsl;->aP:D

    .line 88
    iput-wide p3, p0, Lsl;->aQ:D

    .line 89
    iput-wide p5, p0, Lsl;->aR:D

    mul-double p7, p1, p1

    mul-double v0, p5, p5

    add-double/2addr p7, v0

    .line 91
    invoke-static {p7, p8}, Lin;->a(D)F

    move-result p7

    .line 93
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p5, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p5

    const-wide v0, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lsl;->aS:F

    iput p1, p0, Lsl;->aU:F

    float-to-double p1, p7

    .line 94
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    mul-double/2addr p1, p5

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lsl;->aT:F

    iput p1, p0, Lsl;->aV:F

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lsl;->j:I

    return-void
.end method

.method public a(Lnu;)V
    .registers 4

    const-string v0, "xTile"

    .line 279
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lsl;->d:I

    const-string v0, "yTile"

    .line 280
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lsl;->e:I

    const-string v0, "zTile"

    .line 281
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lsl;->f:I

    const-string v0, "inTile"

    .line 282
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lsl;->g:I

    const-string v0, "inData"

    .line 283
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lsl;->h:I

    const-string v0, "shake"

    .line 284
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lsl;->b:I

    const-string v0, "inGround"

    .line 285
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    iput-boolean v1, p0, Lsl;->i:Z

    const-string v0, "player"

    .line 286
    invoke-virtual {p1, v0}, Lnu;->m(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lsl;->a:Z

    return-void
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method public b(Lgs;)V
    .registers 7

    .line 290
    iget-object v0, p0, Lsl;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-eqz v0, :cond_7

    return-void

    .line 292
    :cond_7
    iget-boolean v0, p0, Lsl;->i:Z

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lsl;->a:Z

    if-eqz v0, :cond_4a

    iget v0, p0, Lsl;->b:I

    if-gtz v0, :cond_4a

    .line 293
    iget-object v0, p1, Lgs;->c:Lix;

    new-instance v1, Liz;

    sget-object v2, Lgm;->j:Lgm;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Liz;-><init>(Lgm;I)V

    invoke-virtual {v0, v1}, Lix;->a(Liz;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 294
    iget-object v0, p0, Lsl;->aI:Lfd;

    iget-object v1, p0, Lsl;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget-object v2, p0, Lsl;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const-string v2, "random.pop"

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, p0, v2, v4, v1}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 295
    invoke-virtual {p1, p0, v3}, Lgs;->b(Lsn;I)V

    .line 296
    invoke-virtual {p0}, Lsl;->K()V

    :cond_4a
    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 268
    iget v0, p0, Lsl;->d:I

    int-to-short v0, v0

    const-string v1, "xTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 269
    iget v0, p0, Lsl;->e:I

    int-to-short v0, v0

    const-string v1, "yTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 270
    iget v0, p0, Lsl;->f:I

    int-to-short v0, v0

    const-string v1, "zTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 271
    iget v0, p0, Lsl;->g:I

    int-to-byte v0, v0

    const-string v1, "inTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    .line 272
    iget v0, p0, Lsl;->h:I

    int-to-byte v0, v0

    const-string v1, "inData"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    .line 273
    iget v0, p0, Lsl;->b:I

    int-to-byte v0, v0

    const-string v1, "shake"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    .line 274
    iget-boolean v0, p0, Lsl;->i:Z

    int-to-byte v0, v0

    const-string v1, "inGround"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    const-string v0, "player"

    .line 275
    iget-boolean v1, p0, Lsl;->a:Z

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public w_()V
    .registers 29

    move-object/from16 v7, p0

    .line 114
    invoke-super/range {p0 .. p0}, Lsn;->w_()V

    .line 117
    iget v0, v7, Lsl;->aV:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const-wide v2, 0x400921fb60000000L    # 3.1415927410125732

    const-wide v4, 0x4066800000000000L    # 180.0

    if-nez v0, :cond_48

    iget v0, v7, Lsl;->aU:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_48

    .line 118
    iget-wide v0, v7, Lsl;->aP:D

    iget-wide v8, v7, Lsl;->aP:D

    mul-double/2addr v0, v8

    iget-wide v8, v7, Lsl;->aR:D

    iget-wide v10, v7, Lsl;->aR:D

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    .line 119
    iget-wide v8, v7, Lsl;->aP:D

    iget-wide v10, v7, Lsl;->aR:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    mul-double/2addr v8, v4

    div-double/2addr v8, v2

    double-to-float v1, v8

    iput v1, v7, Lsl;->aS:F

    iput v1, v7, Lsl;->aU:F

    .line 120
    iget-wide v8, v7, Lsl;->aQ:D

    float-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, v7, Lsl;->aT:F

    iput v0, v7, Lsl;->aV:F

    .line 125
    :cond_48
    iget-object v0, v7, Lsl;->aI:Lfd;

    iget v1, v7, Lsl;->d:I

    iget v6, v7, Lsl;->e:I

    iget v8, v7, Lsl;->f:I

    invoke-virtual {v0, v1, v6, v8}, Lfd;->a(III)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_8a

    .line 127
    sget-object v6, Luu;->m:[Luu;

    aget-object v6, v6, v0

    iget-object v8, v7, Lsl;->aI:Lfd;

    iget v9, v7, Lsl;->d:I

    iget v10, v7, Lsl;->e:I

    iget v11, v7, Lsl;->f:I

    invoke-virtual {v6, v8, v9, v10, v11}, Luu;->a(Lxp;III)V

    .line 128
    sget-object v6, Luu;->m:[Luu;

    aget-object v0, v6, v0

    iget-object v6, v7, Lsl;->aI:Lfd;

    iget v8, v7, Lsl;->d:I

    iget v9, v7, Lsl;->e:I

    iget v10, v7, Lsl;->f:I

    invoke-virtual {v0, v6, v8, v9, v10}, Luu;->e(Lfd;III)Leq;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 129
    iget-wide v8, v7, Lsl;->aM:D

    iget-wide v10, v7, Lsl;->aN:D

    iget-wide v12, v7, Lsl;->aO:D

    invoke-static/range {v8 .. v13}, Lbt;->b(DDD)Lbt;

    move-result-object v6

    invoke-virtual {v0, v6}, Leq;->a(Lbt;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 130
    iput-boolean v1, v7, Lsl;->i:Z

    .line 136
    :cond_8a
    iget v0, v7, Lsl;->b:I

    if-lez v0, :cond_91

    sub-int/2addr v0, v1

    iput v0, v7, Lsl;->b:I

    .line 138
    :cond_91
    iget-boolean v0, v7, Lsl;->i:Z

    const v6, 0x3e4ccccd    # 0.2f

    const/4 v8, 0x0

    if-eqz v0, :cond_f5

    .line 142
    iget-object v0, v7, Lsl;->aI:Lfd;

    iget v2, v7, Lsl;->d:I

    iget v3, v7, Lsl;->e:I

    iget v4, v7, Lsl;->f:I

    invoke-virtual {v0, v2, v3, v4}, Lfd;->a(III)I

    move-result v0

    .line 143
    iget-object v2, v7, Lsl;->aI:Lfd;

    iget v3, v7, Lsl;->d:I

    iget v4, v7, Lsl;->e:I

    iget v5, v7, Lsl;->f:I

    invoke-virtual {v2, v3, v4, v5}, Lfd;->e(III)I

    move-result v2

    .line 144
    iget v3, v7, Lsl;->g:I

    if-ne v0, v3, :cond_c7

    iget v0, v7, Lsl;->h:I

    if-eq v2, v0, :cond_ba

    goto :goto_c7

    .line 154
    :cond_ba
    iget v0, v7, Lsl;->j:I

    add-int/2addr v0, v1

    iput v0, v7, Lsl;->j:I

    const/16 v1, 0x4b0

    if-ne v0, v1, :cond_c6

    .line 155
    invoke-virtual/range {p0 .. p0}, Lsl;->K()V

    :cond_c6
    return-void

    .line 145
    :cond_c7
    :goto_c7
    iput-boolean v8, v7, Lsl;->i:Z

    .line 147
    iget-wide v0, v7, Lsl;->aP:D

    iget-object v2, v7, Lsl;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v6

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lsl;->aP:D

    .line 148
    iget-wide v0, v7, Lsl;->aQ:D

    iget-object v2, v7, Lsl;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v6

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lsl;->aQ:D

    .line 149
    iget-wide v0, v7, Lsl;->aR:D

    iget-object v2, v7, Lsl;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v6

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lsl;->aR:D

    .line 150
    iput v8, v7, Lsl;->j:I

    .line 151
    iput v8, v7, Lsl;->k:I

    return-void

    .line 159
    :cond_f5
    iget v0, v7, Lsl;->k:I

    add-int/2addr v0, v1

    iput v0, v7, Lsl;->k:I

    .line 162
    iget-wide v9, v7, Lsl;->aM:D

    iget-wide v11, v7, Lsl;->aN:D

    iget-wide v13, v7, Lsl;->aO:D

    invoke-static/range {v9 .. v14}, Lbt;->b(DDD)Lbt;

    move-result-object v0

    .line 163
    iget-wide v9, v7, Lsl;->aM:D

    iget-wide v11, v7, Lsl;->aP:D

    add-double v13, v9, v11

    iget-wide v9, v7, Lsl;->aN:D

    iget-wide v11, v7, Lsl;->aQ:D

    add-double v15, v9, v11

    iget-wide v9, v7, Lsl;->aO:D

    iget-wide v11, v7, Lsl;->aR:D

    add-double v17, v9, v11

    invoke-static/range {v13 .. v18}, Lbt;->b(DDD)Lbt;

    move-result-object v9

    .line 164
    iget-object v10, v7, Lsl;->aI:Lfd;

    invoke-virtual {v10, v0, v9, v8, v1}, Lfd;->a(Lbt;Lbt;ZZ)Lvf;

    move-result-object v0

    .line 166
    iget-wide v9, v7, Lsl;->aM:D

    iget-wide v11, v7, Lsl;->aN:D

    iget-wide v13, v7, Lsl;->aO:D

    invoke-static/range {v9 .. v14}, Lbt;->b(DDD)Lbt;

    move-result-object v9

    .line 167
    iget-wide v10, v7, Lsl;->aM:D

    iget-wide v12, v7, Lsl;->aP:D

    add-double v14, v10, v12

    iget-wide v10, v7, Lsl;->aN:D

    iget-wide v12, v7, Lsl;->aQ:D

    add-double v16, v10, v12

    iget-wide v10, v7, Lsl;->aO:D

    iget-wide v12, v7, Lsl;->aR:D

    add-double v18, v10, v12

    invoke-static/range {v14 .. v19}, Lbt;->b(DDD)Lbt;

    move-result-object v10

    if-eqz v0, :cond_153

    .line 169
    iget-object v10, v0, Lvf;->f:Lbt;

    iget-wide v11, v10, Lbt;->a:D

    iget-object v10, v0, Lvf;->f:Lbt;

    iget-wide v13, v10, Lbt;->b:D

    iget-object v10, v0, Lvf;->f:Lbt;

    iget-wide v2, v10, Lbt;->c:D

    move-wide v15, v2

    invoke-static/range {v11 .. v16}, Lbt;->b(DDD)Lbt;

    move-result-object v10

    .line 172
    :cond_153
    iget-object v2, v7, Lsl;->aI:Lfd;

    iget-object v3, v7, Lsl;->aW:Leq;

    iget-wide v11, v7, Lsl;->aP:D

    iget-wide v13, v7, Lsl;->aQ:D

    iget-wide v4, v7, Lsl;->aR:D

    move-object/from16 v19, v3

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    move-wide/from16 v24, v4

    invoke-virtual/range {v19 .. v25}, Leq;->a(DDD)Leq;

    move-result-object v19

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v19 .. v25}, Leq;->b(DDD)Leq;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v12, v3

    move v11, v8

    .line 174
    :goto_17c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_1c9

    .line 175
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lsn;

    .line 176
    invoke-virtual {v14}, Lsn;->h_()Z

    move-result v19

    if-eqz v19, :cond_1c0

    iget-object v15, v7, Lsl;->c:Lls;

    if-ne v14, v15, :cond_198

    iget v15, v7, Lsl;->k:I

    const/4 v1, 0x5

    if-ge v15, v1, :cond_198

    goto :goto_1c0

    .line 179
    :cond_198
    iget-object v1, v14, Lsn;->aW:Leq;

    const v15, 0x3e99999a    # 0.3f

    float-to-double v6, v15

    move-object/from16 v21, v1

    move-wide/from16 v22, v6

    move-wide/from16 v24, v6

    move-wide/from16 v26, v6

    invoke-virtual/range {v21 .. v27}, Leq;->b(DDD)Leq;

    move-result-object v1

    .line 180
    invoke-virtual {v1, v9, v10}, Leq;->a(Lbt;Lbt;)Lvf;

    move-result-object v1

    if-eqz v1, :cond_1c0

    .line 182
    iget-object v1, v1, Lvf;->f:Lbt;

    invoke-virtual {v9, v1}, Lbt;->c(Lbt;)D

    move-result-wide v6

    cmpg-double v1, v6, v12

    if-ltz v1, :cond_1be

    cmpl-double v1, v12, v3

    if-nez v1, :cond_1c0

    :cond_1be
    move-wide v12, v6

    move-object v5, v14

    :cond_1c0
    :goto_1c0
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x1

    const v6, 0x3e4ccccd    # 0.2f

    move-object/from16 v7, p0

    goto :goto_17c

    :cond_1c9
    if-eqz v5, :cond_1d0

    .line 191
    new-instance v0, Lvf;

    invoke-direct {v0, v5}, Lvf;-><init>(Lsn;)V

    :cond_1d0
    const/4 v1, 0x4

    const/high16 v2, 0x43340000    # 180.0f

    if-eqz v0, :cond_2c3

    .line 195
    iget-object v3, v0, Lvf;->g:Lsn;

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3f99999a    # 1.2f

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v7, "random.drr"

    if-eqz v3, :cond_227

    .line 196
    iget-object v0, v0, Lvf;->g:Lsn;

    move-object/from16 v9, p0

    iget-object v3, v9, Lsl;->c:Lls;

    invoke-virtual {v0, v3, v1}, Lsn;->a(Lsn;I)Z

    move-result v0

    if-eqz v0, :cond_205

    .line 197
    iget-object v0, v9, Lsl;->aI:Lfd;

    iget-object v3, v9, Lsl;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v10

    add-float/2addr v3, v4

    div-float/2addr v5, v3

    invoke-virtual {v0, v9, v7, v6, v5}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lsl;->K()V

    goto/16 :goto_2c5

    .line 200
    :cond_205
    iget-wide v3, v9, Lsl;->aP:D

    const-wide v5, -0x4046666660000000L    # -0.10000000149011612

    mul-double/2addr v3, v5

    iput-wide v3, v9, Lsl;->aP:D

    .line 201
    iget-wide v3, v9, Lsl;->aQ:D

    mul-double/2addr v3, v5

    iput-wide v3, v9, Lsl;->aQ:D

    .line 202
    iget-wide v3, v9, Lsl;->aR:D

    mul-double/2addr v3, v5

    iput-wide v3, v9, Lsl;->aR:D

    .line 203
    iget v0, v9, Lsl;->aS:F

    add-float/2addr v0, v2

    iput v0, v9, Lsl;->aS:F

    .line 204
    iget v0, v9, Lsl;->aU:F

    add-float/2addr v0, v2

    iput v0, v9, Lsl;->aU:F

    .line 205
    iput v8, v9, Lsl;->k:I

    goto/16 :goto_2c5

    :cond_227
    move-object/from16 v9, p0

    .line 208
    iget v3, v0, Lvf;->b:I

    iput v3, v9, Lsl;->d:I

    .line 209
    iget v3, v0, Lvf;->c:I

    iput v3, v9, Lsl;->e:I

    .line 210
    iget v3, v0, Lvf;->d:I

    iput v3, v9, Lsl;->f:I

    .line 211
    iget-object v3, v9, Lsl;->aI:Lfd;

    iget v10, v9, Lsl;->d:I

    iget v11, v9, Lsl;->e:I

    iget v12, v9, Lsl;->f:I

    invoke-virtual {v3, v10, v11, v12}, Lfd;->a(III)I

    move-result v3

    iput v3, v9, Lsl;->g:I

    .line 212
    iget-object v3, v9, Lsl;->aI:Lfd;

    iget v10, v9, Lsl;->d:I

    iget v11, v9, Lsl;->e:I

    iget v12, v9, Lsl;->f:I

    invoke-virtual {v3, v10, v11, v12}, Lfd;->e(III)I

    move-result v3

    iput v3, v9, Lsl;->h:I

    .line 213
    iget-object v3, v0, Lvf;->f:Lbt;

    iget-wide v10, v3, Lbt;->a:D

    iget-wide v12, v9, Lsl;->aM:D

    sub-double/2addr v10, v12

    double-to-float v3, v10

    float-to-double v10, v3

    iput-wide v10, v9, Lsl;->aP:D

    .line 214
    iget-object v3, v0, Lvf;->f:Lbt;

    iget-wide v10, v3, Lbt;->b:D

    iget-wide v12, v9, Lsl;->aN:D

    sub-double/2addr v10, v12

    double-to-float v3, v10

    float-to-double v10, v3

    iput-wide v10, v9, Lsl;->aQ:D

    .line 215
    iget-object v0, v0, Lvf;->f:Lbt;

    iget-wide v10, v0, Lbt;->c:D

    iget-wide v12, v9, Lsl;->aO:D

    sub-double/2addr v10, v12

    double-to-float v0, v10

    float-to-double v10, v0

    iput-wide v10, v9, Lsl;->aR:D

    .line 216
    iget-wide v10, v9, Lsl;->aP:D

    iget-wide v12, v9, Lsl;->aP:D

    mul-double/2addr v10, v12

    iget-wide v12, v9, Lsl;->aQ:D

    iget-wide v14, v9, Lsl;->aQ:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iget-wide v12, v9, Lsl;->aR:D

    iget-wide v14, v9, Lsl;->aR:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Lin;->a(D)F

    move-result v0

    .line 217
    iget-wide v10, v9, Lsl;->aM:D

    iget-wide v12, v9, Lsl;->aP:D

    float-to-double v14, v0

    div-double/2addr v12, v14

    const-wide v21, 0x3fa99999a0000000L    # 0.05000000074505806

    mul-double v12, v12, v21

    sub-double/2addr v10, v12

    iput-wide v10, v9, Lsl;->aM:D

    .line 218
    iget-wide v10, v9, Lsl;->aN:D

    iget-wide v12, v9, Lsl;->aQ:D

    div-double/2addr v12, v14

    mul-double v12, v12, v21

    sub-double/2addr v10, v12

    iput-wide v10, v9, Lsl;->aN:D

    .line 219
    iget-wide v10, v9, Lsl;->aO:D

    iget-wide v12, v9, Lsl;->aR:D

    div-double/2addr v12, v14

    mul-double v12, v12, v21

    sub-double/2addr v10, v12

    iput-wide v10, v9, Lsl;->aO:D

    .line 221
    iget-object v0, v9, Lsl;->aI:Lfd;

    iget-object v3, v9, Lsl;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v10

    add-float/2addr v3, v4

    div-float/2addr v5, v3

    invoke-virtual {v0, v9, v7, v6, v5}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, v9, Lsl;->i:Z

    const/4 v0, 0x7

    .line 223
    iput v0, v9, Lsl;->b:I

    goto :goto_2c5

    :cond_2c3
    move-object/from16 v9, p0

    .line 226
    :goto_2c5
    iget-wide v3, v9, Lsl;->aM:D

    iget-wide v5, v9, Lsl;->aP:D

    add-double/2addr v3, v5

    iput-wide v3, v9, Lsl;->aM:D

    .line 227
    iget-wide v3, v9, Lsl;->aN:D

    iget-wide v5, v9, Lsl;->aQ:D

    add-double/2addr v3, v5

    iput-wide v3, v9, Lsl;->aN:D

    .line 228
    iget-wide v3, v9, Lsl;->aO:D

    iget-wide v5, v9, Lsl;->aR:D

    add-double/2addr v3, v5

    iput-wide v3, v9, Lsl;->aO:D

    .line 230
    iget-wide v3, v9, Lsl;->aP:D

    iget-wide v5, v9, Lsl;->aP:D

    mul-double/2addr v3, v5

    iget-wide v5, v9, Lsl;->aR:D

    iget-wide v10, v9, Lsl;->aR:D

    mul-double/2addr v5, v10

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Lin;->a(D)F

    move-result v0

    .line 231
    iget-wide v3, v9, Lsl;->aP:D

    iget-wide v5, v9, Lsl;->aR:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    const-wide v10, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr v3, v10

    double-to-float v3, v3

    iput v3, v9, Lsl;->aS:F

    .line 232
    iget-wide v3, v9, Lsl;->aQ:D

    float-to-double v12, v0

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    mul-double/2addr v3, v5

    div-double/2addr v3, v10

    double-to-float v0, v3

    iput v0, v9, Lsl;->aT:F

    .line 234
    :goto_30c
    iget v0, v9, Lsl;->aT:F

    iget v3, v9, Lsl;->aV:F

    sub-float/2addr v0, v3

    const/high16 v3, -0x3ccc0000    # -180.0f

    cmpg-float v0, v0, v3

    const/high16 v4, 0x43b40000    # 360.0f

    if-gez v0, :cond_31f

    .line 235
    iget v0, v9, Lsl;->aV:F

    sub-float/2addr v0, v4

    iput v0, v9, Lsl;->aV:F

    goto :goto_30c

    .line 236
    :cond_31f
    :goto_31f
    iget v0, v9, Lsl;->aT:F

    iget v5, v9, Lsl;->aV:F

    sub-float/2addr v0, v5

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_32e

    .line 237
    iget v0, v9, Lsl;->aV:F

    add-float/2addr v0, v4

    iput v0, v9, Lsl;->aV:F

    goto :goto_31f

    .line 239
    :cond_32e
    :goto_32e
    iget v0, v9, Lsl;->aS:F

    iget v5, v9, Lsl;->aU:F

    sub-float/2addr v0, v5

    cmpg-float v0, v0, v3

    if-gez v0, :cond_33d

    .line 240
    iget v0, v9, Lsl;->aU:F

    sub-float/2addr v0, v4

    iput v0, v9, Lsl;->aU:F

    goto :goto_32e

    .line 241
    :cond_33d
    :goto_33d
    iget v0, v9, Lsl;->aS:F

    iget v3, v9, Lsl;->aU:F

    sub-float/2addr v0, v3

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_34c

    .line 242
    iget v0, v9, Lsl;->aU:F

    add-float/2addr v0, v4

    iput v0, v9, Lsl;->aU:F

    goto :goto_33d

    .line 244
    :cond_34c
    iget v0, v9, Lsl;->aV:F

    iget v2, v9, Lsl;->aT:F

    iget v3, v9, Lsl;->aV:F

    sub-float/2addr v2, v3

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, v9, Lsl;->aT:F

    .line 245
    iget v0, v9, Lsl;->aU:F

    iget v2, v9, Lsl;->aS:F

    iget v4, v9, Lsl;->aU:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, v9, Lsl;->aS:F

    .line 251
    invoke-virtual/range {p0 .. p0}, Lsl;->ag()Z

    move-result v0

    if-eqz v0, :cond_39f

    :goto_36b
    if-ge v8, v1, :cond_39b

    .line 254
    iget-object v10, v9, Lsl;->aI:Lfd;

    const-string v11, "bubble"

    iget-wide v2, v9, Lsl;->aM:D

    iget-wide v4, v9, Lsl;->aP:D

    const/high16 v0, 0x3e800000    # 0.25f

    float-to-double v6, v0

    mul-double/2addr v4, v6

    sub-double v12, v2, v4

    iget-wide v2, v9, Lsl;->aN:D

    iget-wide v4, v9, Lsl;->aQ:D

    mul-double/2addr v4, v6

    sub-double v14, v2, v4

    iget-wide v2, v9, Lsl;->aO:D

    iget-wide v4, v9, Lsl;->aR:D

    mul-double/2addr v4, v6

    sub-double v16, v2, v4

    iget-wide v2, v9, Lsl;->aP:D

    iget-wide v4, v9, Lsl;->aQ:D

    iget-wide v6, v9, Lsl;->aR:D

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    invoke-virtual/range {v10 .. v23}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_36b

    :cond_39b
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_3a2

    :cond_39f
    const v0, 0x3f7d70a4    # 0.99f

    .line 259
    :goto_3a2
    iget-wide v1, v9, Lsl;->aP:D

    float-to-double v3, v0

    mul-double/2addr v1, v3

    iput-wide v1, v9, Lsl;->aP:D

    .line 260
    iget-wide v0, v9, Lsl;->aQ:D

    mul-double/2addr v0, v3

    iput-wide v0, v9, Lsl;->aQ:D

    .line 261
    iget-wide v0, v9, Lsl;->aR:D

    mul-double/2addr v0, v3

    iput-wide v0, v9, Lsl;->aR:D

    .line 262
    iget-wide v0, v9, Lsl;->aQ:D

    const v2, 0x3cf5c28f    # 0.03f

    float-to-double v2, v2

    sub-double/2addr v0, v2

    iput-wide v0, v9, Lsl;->aQ:D

    .line 264
    iget-wide v1, v9, Lsl;->aM:D

    iget-wide v3, v9, Lsl;->aN:D

    iget-wide v5, v9, Lsl;->aO:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lsl;->e(DDD)V

    return-void
.end method

.method public x_()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
