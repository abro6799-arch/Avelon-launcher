###### Class defpackage.vv (vv)
.class public Lvv;
.super Lsn;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Lls;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lvv;->b:I

    .line 21
    iput p1, p0, Lvv;->c:I

    .line 22
    iput p1, p0, Lvv;->d:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lvv;->e:I

    .line 24
    iput-boolean p1, p0, Lvv;->f:Z

    .line 25
    iput p1, p0, Lvv;->a:I

    .line 28
    iput p1, p0, Lvv;->i:I

    const/high16 p1, 0x3e800000    # 0.25f

    .line 32
    invoke-virtual {p0, p1, p1}, Lvv;->b(FF)V

    return-void
.end method

.method public constructor <init>(Lfd;DDD)V
    .registers 15

    .line 72
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lvv;->b:I

    .line 21
    iput p1, p0, Lvv;->c:I

    .line 22
    iput p1, p0, Lvv;->d:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lvv;->e:I

    .line 24
    iput-boolean p1, p0, Lvv;->f:Z

    .line 25
    iput p1, p0, Lvv;->a:I

    .line 28
    iput p1, p0, Lvv;->i:I

    .line 73
    iput p1, p0, Lvv;->h:I

    const/high16 p1, 0x3e800000    # 0.25f

    .line 75
    invoke-virtual {p0, p1, p1}, Lvv;->b(FF)V

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    .line 77
    invoke-virtual/range {v0 .. v6}, Lvv;->e(DDD)V

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lvv;->bf:F

    return-void
.end method

.method public constructor <init>(Lfd;Lls;)V
    .registers 13

    .line 48
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lvv;->b:I

    .line 21
    iput p1, p0, Lvv;->c:I

    .line 22
    iput p1, p0, Lvv;->d:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lvv;->e:I

    .line 24
    iput-boolean p1, p0, Lvv;->f:Z

    .line 25
    iput p1, p0, Lvv;->a:I

    .line 28
    iput p1, p0, Lvv;->i:I

    .line 49
    iput-object p2, p0, Lvv;->g:Lls;

    const/high16 p1, 0x3e800000    # 0.25f

    .line 51
    invoke-virtual {p0, p1, p1}, Lvv;->b(FF)V

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

    invoke-virtual/range {v0 .. v8}, Lvv;->c(DDDFF)V

    .line 56
    iget-wide p1, p0, Lvv;->aM:D

    iget v0, p0, Lvv;->aS:F

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

    iput-wide p1, p0, Lvv;->aM:D

    .line 57
    iget-wide p1, p0, Lvv;->aN:D

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    sub-double/2addr p1, v4

    iput-wide p1, p0, Lvv;->aN:D

    .line 58
    iget-wide p1, p0, Lvv;->aO:D

    iget v0, p0, Lvv;->aS:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    mul-float/2addr v0, v3

    float-to-double v3, v0

    sub-double/2addr p1, v3

    iput-wide p1, p0, Lvv;->aO:D

    .line 59
    iget-wide v4, p0, Lvv;->aM:D

    iget-wide v6, p0, Lvv;->aN:D

    iget-wide v8, p0, Lvv;->aO:D

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lvv;->e(DDD)V

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lvv;->bf:F

    .line 64
    iget p1, p0, Lvv;->aS:F

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    neg-float p1, p1

    iget p2, p0, Lvv;->aT:F

    div-float/2addr p2, v1

    mul-float/2addr p2, v2

    invoke-static {p2}, Lin;->b(F)F

    move-result p2

    mul-float/2addr p1, p2

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, p2

    float-to-double v3, p1

    iput-wide v3, p0, Lvv;->aP:D

    .line 65
    iget p1, p0, Lvv;->aS:F

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    iget v0, p0, Lvv;->aT:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Lin;->b(F)F

    move-result v0

    mul-float/2addr p1, v0

    mul-float/2addr p1, p2

    float-to-double v3, p1

    iput-wide v3, p0, Lvv;->aR:D

    .line 66
    iget p1, p0, Lvv;->aT:F

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    neg-float p1, p1

    mul-float/2addr p1, p2

    float-to-double p1, p1

    iput-wide p1, p0, Lvv;->aQ:D

    .line 68
    iget-wide v1, p0, Lvv;->aP:D

    iget-wide v3, p0, Lvv;->aQ:D

    iget-wide v5, p0, Lvv;->aR:D

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lvv;->a(DDDFF)V

    return-void
.end method


# virtual methods
.method public a(DDD)V
    .registers 11

    .line 108
    iput-wide p1, p0, Lvv;->aP:D

    .line 109
    iput-wide p3, p0, Lvv;->aQ:D

    .line 110
    iput-wide p5, p0, Lvv;->aR:D

    .line 111
    iget v0, p0, Lvv;->aV:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3d

    iget v0, p0, Lvv;->aU:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3d

    mul-double v0, p1, p1

    mul-double v2, p5, p5

    add-double/2addr v0, v2

    .line 112
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    .line 113
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p5, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p5

    const-wide v1, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr p1, v1

    double-to-float p1, p1

    iput p1, p0, Lvv;->aS:F

    iput p1, p0, Lvv;->aU:F

    float-to-double p1, v0

    .line 114
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    mul-double/2addr p1, p5

    div-double/2addr p1, v1

    double-to-float p1, p1

    iput p1, p0, Lvv;->aT:F

    iput p1, p0, Lvv;->aV:F

    :cond_3d
    return-void
.end method

.method public a(DDDFF)V
    .registers 15

    mul-double v0, p1, p1

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    mul-double v2, p5, p5

    add-double/2addr v0, v2

    .line 82
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    float-to-double v0, v0

    div-double/2addr p1, v0

    div-double/2addr p3, v0

    div-double/2addr p5, v0

    .line 88
    iget-object v0, p0, Lvv;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    const-wide v2, 0x3f7eb851e0000000L    # 0.007499999832361937

    mul-double/2addr v0, v2

    float-to-double v4, p8

    mul-double/2addr v0, v4

    add-double/2addr p1, v0

    .line 89
    iget-object p8, p0, Lvv;->bs:Ljava/util/Random;

    invoke-virtual {p8}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double/2addr p3, v0

    .line 90
    iget-object p8, p0, Lvv;->bs:Ljava/util/Random;

    invoke-virtual {p8}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double/2addr p5, v0

    float-to-double p7, p7

    mul-double/2addr p1, p7

    mul-double/2addr p3, p7

    mul-double/2addr p5, p7

    .line 96
    iput-wide p1, p0, Lvv;->aP:D

    .line 97
    iput-wide p3, p0, Lvv;->aQ:D

    .line 98
    iput-wide p5, p0, Lvv;->aR:D

    mul-double p7, p1, p1

    mul-double v0, p5, p5

    add-double/2addr p7, v0

    .line 100
    invoke-static {p7, p8}, Lin;->a(D)F

    move-result p7

    .line 102
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p5, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p5

    const-wide v0, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lvv;->aS:F

    iput p1, p0, Lvv;->aU:F

    float-to-double p1, p7

    .line 103
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    mul-double/2addr p1, p5

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lvv;->aT:F

    iput p1, p0, Lvv;->aV:F

    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lvv;->h:I

    return-void
.end method

.method public a(Lnu;)V
    .registers 3

    const-string v0, "xTile"

    .line 262
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lvv;->b:I

    const-string v0, "yTile"

    .line 263
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lvv;->c:I

    const-string v0, "zTile"

    .line 264
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lvv;->d:I

    const-string v0, "inTile"

    .line 265
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lvv;->e:I

    const-string v0, "shake"

    .line 266
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lvv;->a:I

    const-string v0, "inGround"

    .line 267
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iput-boolean v0, p0, Lvv;->f:Z

    return-void
.end method

.method public a(D)Z
    .registers 7

    .line 41
    iget-object v0, p0, Lvv;->aW:Leq;

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

.method public b(Lgs;)V
    .registers 7

    .line 271
    iget-boolean v0, p0, Lvv;->f:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lvv;->g:Lls;

    if-ne v0, p1, :cond_43

    iget v0, p0, Lvv;->a:I

    if-gtz v0, :cond_43

    .line 272
    iget-object v0, p1, Lgs;->c:Lix;

    new-instance v1, Liz;

    sget-object v2, Lgm;->j:Lgm;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Liz;-><init>(Lgm;I)V

    invoke-virtual {v0, v1}, Lix;->a(Liz;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 273
    iget-object v0, p0, Lvv;->aI:Lfd;

    iget-object v1, p0, Lvv;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget-object v2, p0, Lvv;->bs:Ljava/util/Random;

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

    .line 274
    invoke-virtual {p1, p0, v3}, Lgs;->b(Lsn;I)V

    .line 275
    invoke-virtual {p0}, Lvv;->K()V

    :cond_43
    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 253
    iget v0, p0, Lvv;->b:I

    int-to-short v0, v0

    const-string v1, "xTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 254
    iget v0, p0, Lvv;->c:I

    int-to-short v0, v0

    const-string v1, "yTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 255
    iget v0, p0, Lvv;->d:I

    int-to-short v0, v0

    const-string v1, "zTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 256
    iget v0, p0, Lvv;->e:I

    int-to-byte v0, v0

    const-string v1, "inTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    .line 257
    iget v0, p0, Lvv;->a:I

    int-to-byte v0, v0

    const-string v1, "shake"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    .line 258
    iget-boolean v0, p0, Lvv;->f:Z

    int-to-byte v0, v0

    const-string v1, "inGround"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    return-void
.end method

.method public w_()V
    .registers 25

    move-object/from16 v7, p0

    .line 119
    iget-wide v0, v7, Lvv;->aM:D

    iput-wide v0, v7, Lvv;->bl:D

    .line 120
    iget-wide v0, v7, Lvv;->aN:D

    iput-wide v0, v7, Lvv;->bm:D

    .line 121
    iget-wide v0, v7, Lvv;->aO:D

    iput-wide v0, v7, Lvv;->bn:D

    .line 122
    invoke-super/range {p0 .. p0}, Lsn;->w_()V

    .line 124
    iget v0, v7, Lvv;->a:I

    const/4 v1, 0x1

    if-lez v0, :cond_19

    sub-int/2addr v0, v1

    iput v0, v7, Lvv;->a:I

    .line 126
    :cond_19
    iget-boolean v0, v7, Lvv;->f:Z

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    if-eqz v0, :cond_6c

    .line 130
    iget-object v0, v7, Lvv;->aI:Lfd;

    iget v4, v7, Lvv;->b:I

    iget v5, v7, Lvv;->c:I

    iget v6, v7, Lvv;->d:I

    invoke-virtual {v0, v4, v5, v6}, Lfd;->a(III)I

    move-result v0

    .line 131
    iget v4, v7, Lvv;->e:I

    if-eq v0, v4, :cond_5f

    .line 132
    iput-boolean v3, v7, Lvv;->f:Z

    .line 134
    iget-wide v4, v7, Lvv;->aP:D

    iget-object v0, v7, Lvv;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-double v8, v0

    mul-double/2addr v4, v8

    iput-wide v4, v7, Lvv;->aP:D

    .line 135
    iget-wide v4, v7, Lvv;->aQ:D

    iget-object v0, v7, Lvv;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-double v8, v0

    mul-double/2addr v4, v8

    iput-wide v4, v7, Lvv;->aQ:D

    .line 136
    iget-wide v4, v7, Lvv;->aR:D

    iget-object v0, v7, Lvv;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-double v8, v0

    mul-double/2addr v4, v8

    iput-wide v4, v7, Lvv;->aR:D

    .line 137
    iput v3, v7, Lvv;->h:I

    .line 138
    iput v3, v7, Lvv;->i:I

    goto :goto_71

    .line 140
    :cond_5f
    iget v0, v7, Lvv;->h:I

    add-int/2addr v0, v1

    iput v0, v7, Lvv;->h:I

    const/16 v1, 0x4b0

    if-ne v0, v1, :cond_6b

    .line 141
    invoke-virtual/range {p0 .. p0}, Lvv;->K()V

    :cond_6b
    return-void

    .line 145
    :cond_6c
    iget v0, v7, Lvv;->i:I

    add-int/2addr v0, v1

    iput v0, v7, Lvv;->i:I

    .line 148
    :goto_71
    iget-wide v8, v7, Lvv;->aM:D

    iget-wide v10, v7, Lvv;->aN:D

    iget-wide v12, v7, Lvv;->aO:D

    invoke-static/range {v8 .. v13}, Lbt;->b(DDD)Lbt;

    move-result-object v0

    .line 149
    iget-wide v4, v7, Lvv;->aM:D

    iget-wide v8, v7, Lvv;->aP:D

    add-double v10, v4, v8

    iget-wide v4, v7, Lvv;->aN:D

    iget-wide v8, v7, Lvv;->aQ:D

    add-double v12, v4, v8

    iget-wide v4, v7, Lvv;->aO:D

    iget-wide v8, v7, Lvv;->aR:D

    add-double v14, v4, v8

    invoke-static/range {v10 .. v15}, Lbt;->b(DDD)Lbt;

    move-result-object v4

    .line 150
    iget-object v5, v7, Lvv;->aI:Lfd;

    invoke-virtual {v5, v0, v4}, Lfd;->a(Lbt;Lbt;)Lvf;

    move-result-object v0

    .line 152
    iget-wide v8, v7, Lvv;->aM:D

    iget-wide v10, v7, Lvv;->aN:D

    iget-wide v12, v7, Lvv;->aO:D

    invoke-static/range {v8 .. v13}, Lbt;->b(DDD)Lbt;

    move-result-object v4

    .line 153
    iget-wide v5, v7, Lvv;->aM:D

    iget-wide v8, v7, Lvv;->aP:D

    add-double v10, v5, v8

    iget-wide v5, v7, Lvv;->aN:D

    iget-wide v8, v7, Lvv;->aQ:D

    add-double v12, v5, v8

    iget-wide v5, v7, Lvv;->aO:D

    iget-wide v8, v7, Lvv;->aR:D

    add-double v14, v5, v8

    invoke-static/range {v10 .. v15}, Lbt;->b(DDD)Lbt;

    move-result-object v5

    if-eqz v0, :cond_c9

    .line 155
    iget-object v5, v0, Lvf;->f:Lbt;

    iget-wide v8, v5, Lbt;->a:D

    iget-object v5, v0, Lvf;->f:Lbt;

    iget-wide v10, v5, Lbt;->b:D

    iget-object v5, v0, Lvf;->f:Lbt;

    iget-wide v12, v5, Lbt;->c:D

    invoke-static/range {v8 .. v13}, Lbt;->b(DDD)Lbt;

    move-result-object v5

    .line 158
    :cond_c9
    iget-object v6, v7, Lvv;->aI:Lfd;

    iget-boolean v6, v6, Lfd;->B:Z

    if-nez v6, :cond_143

    .line 160
    iget-object v6, v7, Lvv;->aI:Lfd;

    iget-object v8, v7, Lvv;->aW:Leq;

    iget-wide v9, v7, Lvv;->aP:D

    iget-wide v11, v7, Lvv;->aQ:D

    iget-wide v13, v7, Lvv;->aR:D

    invoke-virtual/range {v8 .. v14}, Leq;->a(DDD)Leq;

    move-result-object v15

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v15 .. v21}, Leq;->b(DDD)Leq;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move v11, v3

    move-wide v12, v8

    .line 162
    :goto_f0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_13c

    .line 163
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lsn;

    .line 164
    invoke-virtual {v14}, Lsn;->h_()Z

    move-result v15

    if-eqz v15, :cond_134

    iget-object v15, v7, Lvv;->g:Lls;

    if-ne v14, v15, :cond_10c

    iget v15, v7, Lvv;->i:I

    const/4 v1, 0x5

    if-ge v15, v1, :cond_10c

    goto :goto_134

    .line 167
    :cond_10c
    iget-object v1, v14, Lsn;->aW:Leq;

    const v15, 0x3e99999a    # 0.3f

    float-to-double v2, v15

    move-object/from16 v17, v1

    move-wide/from16 v18, v2

    move-wide/from16 v20, v2

    move-wide/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Leq;->b(DDD)Leq;

    move-result-object v1

    .line 168
    invoke-virtual {v1, v4, v5}, Leq;->a(Lbt;Lbt;)Lvf;

    move-result-object v1

    if-eqz v1, :cond_134

    .line 170
    iget-object v1, v1, Lvf;->f:Lbt;

    invoke-virtual {v4, v1}, Lbt;->c(Lbt;)D

    move-result-wide v1

    cmpg-double v3, v1, v12

    if-ltz v3, :cond_132

    cmpl-double v3, v12, v8

    if-nez v3, :cond_134

    :cond_132
    move-wide v12, v1

    move-object v10, v14

    :cond_134
    :goto_134
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x1

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    goto :goto_f0

    :cond_13c
    if-eqz v10, :cond_143

    .line 179
    new-instance v0, Lvf;

    invoke-direct {v0, v10}, Lvf;-><init>(Lsn;)V

    :cond_143
    const/4 v1, 0x4

    if-eqz v0, :cond_1ae

    .line 193
    iget-object v2, v0, Lvf;->g:Lsn;

    if-eqz v2, :cond_153

    .line 194
    iget-object v0, v0, Lvf;->g:Lsn;

    iget-object v2, v7, Lvv;->g:Lls;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lsn;->a(Lsn;I)Z

    goto :goto_154

    :cond_153
    const/4 v3, 0x0

    .line 198
    :goto_154
    iget-object v0, v7, Lvv;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    const/16 v2, 0x8

    if-nez v0, :cond_191

    iget-object v0, v7, Lvv;->bs:Ljava/util/Random;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_191

    .line 200
    iget-object v0, v7, Lvv;->bs:Ljava/util/Random;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_170

    move v0, v1

    goto :goto_171

    :cond_170
    const/4 v0, 0x1

    :goto_171
    move v4, v3

    :goto_172
    if-ge v4, v0, :cond_191

    .line 202
    new-instance v5, Lww;

    iget-object v6, v7, Lvv;->aI:Lfd;

    invoke-direct {v5, v6}, Lww;-><init>(Lfd;)V

    .line 203
    iget-wide v9, v7, Lvv;->aM:D

    iget-wide v11, v7, Lvv;->aN:D

    iget-wide v13, v7, Lvv;->aO:D

    iget v15, v7, Lvv;->aS:F

    const/16 v16, 0x0

    move-object v8, v5

    invoke-virtual/range {v8 .. v16}, Lww;->c(DDDFF)V

    .line 204
    iget-object v6, v7, Lvv;->aI:Lfd;

    invoke-virtual {v6, v5}, Lfd;->b(Lsn;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_172

    :cond_191
    move v0, v3

    :goto_192
    if-ge v0, v2, :cond_1aa

    .line 208
    iget-object v8, v7, Lvv;->aI:Lfd;

    const-string v9, "snowballpoof"

    iget-wide v10, v7, Lvv;->aM:D

    iget-wide v12, v7, Lvv;->aN:D

    iget-wide v14, v7, Lvv;->aO:D

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v8 .. v21}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_192

    .line 209
    :cond_1aa
    invoke-virtual/range {p0 .. p0}, Lvv;->K()V

    goto :goto_1af

    :cond_1ae
    const/4 v3, 0x0

    .line 211
    :goto_1af
    iget-wide v4, v7, Lvv;->aM:D

    iget-wide v8, v7, Lvv;->aP:D

    add-double/2addr v4, v8

    iput-wide v4, v7, Lvv;->aM:D

    .line 212
    iget-wide v4, v7, Lvv;->aN:D

    iget-wide v8, v7, Lvv;->aQ:D

    add-double/2addr v4, v8

    iput-wide v4, v7, Lvv;->aN:D

    .line 213
    iget-wide v4, v7, Lvv;->aO:D

    iget-wide v8, v7, Lvv;->aR:D

    add-double/2addr v4, v8

    iput-wide v4, v7, Lvv;->aO:D

    .line 215
    iget-wide v4, v7, Lvv;->aP:D

    iget-wide v8, v7, Lvv;->aP:D

    mul-double/2addr v4, v8

    iget-wide v8, v7, Lvv;->aR:D

    iget-wide v10, v7, Lvv;->aR:D

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Lin;->a(D)F

    move-result v0

    .line 216
    iget-wide v4, v7, Lvv;->aP:D

    iget-wide v8, v7, Lvv;->aR:D

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v8

    const-wide v10, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr v4, v10

    double-to-float v2, v4

    iput v2, v7, Lvv;->aS:F

    .line 217
    iget-wide v4, v7, Lvv;->aQ:D

    float-to-double v12, v0

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    double-to-float v0, v4

    iput v0, v7, Lvv;->aT:F

    .line 219
    :goto_1f6
    iget v0, v7, Lvv;->aT:F

    iget v2, v7, Lvv;->aV:F

    sub-float/2addr v0, v2

    const/high16 v2, -0x3ccc0000    # -180.0f

    cmpg-float v0, v0, v2

    const/high16 v4, 0x43b40000    # 360.0f

    if-gez v0, :cond_209

    .line 220
    iget v0, v7, Lvv;->aV:F

    sub-float/2addr v0, v4

    iput v0, v7, Lvv;->aV:F

    goto :goto_1f6

    .line 221
    :cond_209
    :goto_209
    iget v0, v7, Lvv;->aT:F

    iget v5, v7, Lvv;->aV:F

    sub-float/2addr v0, v5

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_21a

    .line 222
    iget v0, v7, Lvv;->aV:F

    add-float/2addr v0, v4

    iput v0, v7, Lvv;->aV:F

    goto :goto_209

    .line 224
    :cond_21a
    :goto_21a
    iget v0, v7, Lvv;->aS:F

    iget v6, v7, Lvv;->aU:F

    sub-float/2addr v0, v6

    cmpg-float v0, v0, v2

    if-gez v0, :cond_229

    .line 225
    iget v0, v7, Lvv;->aU:F

    sub-float/2addr v0, v4

    iput v0, v7, Lvv;->aU:F

    goto :goto_21a

    .line 226
    :cond_229
    :goto_229
    iget v0, v7, Lvv;->aS:F

    iget v2, v7, Lvv;->aU:F

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_238

    .line 227
    iget v0, v7, Lvv;->aU:F

    add-float/2addr v0, v4

    iput v0, v7, Lvv;->aU:F

    goto :goto_229

    .line 229
    :cond_238
    iget v0, v7, Lvv;->aV:F

    iget v2, v7, Lvv;->aT:F

    iget v4, v7, Lvv;->aV:F

    sub-float/2addr v2, v4

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, v7, Lvv;->aT:F

    .line 230
    iget v0, v7, Lvv;->aU:F

    iget v2, v7, Lvv;->aS:F

    iget v5, v7, Lvv;->aU:F

    sub-float/2addr v2, v5

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, v7, Lvv;->aS:F

    .line 236
    invoke-virtual/range {p0 .. p0}, Lvv;->ag()Z

    move-result v0

    if-eqz v0, :cond_28b

    :goto_257
    if-ge v3, v1, :cond_287

    .line 239
    iget-object v8, v7, Lvv;->aI:Lfd;

    const-string v9, "bubble"

    iget-wide v4, v7, Lvv;->aM:D

    iget-wide v10, v7, Lvv;->aP:D

    const/high16 v0, 0x3e800000    # 0.25f

    float-to-double v12, v0

    mul-double/2addr v10, v12

    sub-double v10, v4, v10

    iget-wide v4, v7, Lvv;->aN:D

    iget-wide v14, v7, Lvv;->aQ:D

    mul-double/2addr v14, v12

    sub-double/2addr v4, v14

    iget-wide v14, v7, Lvv;->aO:D

    iget-wide v1, v7, Lvv;->aR:D

    mul-double/2addr v1, v12

    sub-double/2addr v14, v1

    iget-wide v1, v7, Lvv;->aP:D

    iget-wide v12, v7, Lvv;->aQ:D

    move-wide/from16 v16, v1

    iget-wide v0, v7, Lvv;->aR:D

    move-wide/from16 v18, v12

    move-wide v12, v4

    move-wide/from16 v20, v0

    invoke-virtual/range {v8 .. v21}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x4

    goto :goto_257

    :cond_287
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_28e

    :cond_28b
    const v0, 0x3f7d70a4    # 0.99f

    .line 244
    :goto_28e
    iget-wide v1, v7, Lvv;->aP:D

    float-to-double v3, v0

    mul-double/2addr v1, v3

    iput-wide v1, v7, Lvv;->aP:D

    .line 245
    iget-wide v0, v7, Lvv;->aQ:D

    mul-double/2addr v0, v3

    iput-wide v0, v7, Lvv;->aQ:D

    .line 246
    iget-wide v0, v7, Lvv;->aR:D

    mul-double/2addr v0, v3

    iput-wide v0, v7, Lvv;->aR:D

    .line 247
    iget-wide v0, v7, Lvv;->aQ:D

    const v2, 0x3cf5c28f    # 0.03f

    float-to-double v2, v2

    sub-double/2addr v0, v2

    iput-wide v0, v7, Lvv;->aQ:D

    .line 249
    iget-wide v1, v7, Lvv;->aM:D

    iget-wide v3, v7, Lvv;->aN:D

    iget-wide v5, v7, Lvv;->aO:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lvv;->e(DDD)V

    return-void
.end method

.method public x_()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
