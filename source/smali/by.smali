###### Class defpackage.by (by)
.class public Lby;
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

    .line 30
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lby;->b:I

    .line 20
    iput p1, p0, Lby;->c:I

    .line 21
    iput p1, p0, Lby;->d:I

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lby;->e:I

    .line 23
    iput-boolean p1, p0, Lby;->f:Z

    .line 24
    iput p1, p0, Lby;->a:I

    .line 27
    iput p1, p0, Lby;->i:I

    const/high16 p1, 0x3e800000    # 0.25f

    .line 31
    invoke-virtual {p0, p1, p1}, Lby;->b(FF)V

    return-void
.end method

.method public constructor <init>(Lfd;DDD)V
    .registers 15

    .line 71
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lby;->b:I

    .line 20
    iput p1, p0, Lby;->c:I

    .line 21
    iput p1, p0, Lby;->d:I

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lby;->e:I

    .line 23
    iput-boolean p1, p0, Lby;->f:Z

    .line 24
    iput p1, p0, Lby;->a:I

    .line 27
    iput p1, p0, Lby;->i:I

    .line 72
    iput p1, p0, Lby;->h:I

    const/high16 p1, 0x3e800000    # 0.25f

    .line 74
    invoke-virtual {p0, p1, p1}, Lby;->b(FF)V

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    .line 76
    invoke-virtual/range {v0 .. v6}, Lby;->e(DDD)V

    const/4 p1, 0x0

    .line 77
    iput p1, p0, Lby;->bf:F

    return-void
.end method

.method public constructor <init>(Lfd;Lls;)V
    .registers 13

    .line 47
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lby;->b:I

    .line 20
    iput p1, p0, Lby;->c:I

    .line 21
    iput p1, p0, Lby;->d:I

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lby;->e:I

    .line 23
    iput-boolean p1, p0, Lby;->f:Z

    .line 24
    iput p1, p0, Lby;->a:I

    .line 27
    iput p1, p0, Lby;->i:I

    .line 48
    iput-object p2, p0, Lby;->g:Lls;

    const/high16 p1, 0x3e800000    # 0.25f

    .line 50
    invoke-virtual {p0, p1, p1}, Lby;->b(FF)V

    .line 52
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

    invoke-virtual/range {v0 .. v8}, Lby;->c(DDDFF)V

    .line 55
    iget-wide p1, p0, Lby;->aM:D

    iget v0, p0, Lby;->aS:F

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

    iput-wide p1, p0, Lby;->aM:D

    .line 56
    iget-wide p1, p0, Lby;->aN:D

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    sub-double/2addr p1, v4

    iput-wide p1, p0, Lby;->aN:D

    .line 57
    iget-wide p1, p0, Lby;->aO:D

    iget v0, p0, Lby;->aS:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    mul-float/2addr v0, v3

    float-to-double v3, v0

    sub-double/2addr p1, v3

    iput-wide p1, p0, Lby;->aO:D

    .line 58
    iget-wide v4, p0, Lby;->aM:D

    iget-wide v6, p0, Lby;->aN:D

    iget-wide v8, p0, Lby;->aO:D

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lby;->e(DDD)V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lby;->bf:F

    .line 63
    iget p1, p0, Lby;->aS:F

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    neg-float p1, p1

    iget p2, p0, Lby;->aT:F

    div-float/2addr p2, v1

    mul-float/2addr p2, v2

    invoke-static {p2}, Lin;->b(F)F

    move-result p2

    mul-float/2addr p1, p2

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, p2

    float-to-double v3, p1

    iput-wide v3, p0, Lby;->aP:D

    .line 64
    iget p1, p0, Lby;->aS:F

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    iget v0, p0, Lby;->aT:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Lin;->b(F)F

    move-result v0

    mul-float/2addr p1, v0

    mul-float/2addr p1, p2

    float-to-double v3, p1

    iput-wide v3, p0, Lby;->aR:D

    .line 65
    iget p1, p0, Lby;->aT:F

    div-float/2addr p1, v1

    mul-float/2addr p1, v2

    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    neg-float p1, p1

    mul-float/2addr p1, p2

    float-to-double p1, p1

    iput-wide p1, p0, Lby;->aQ:D

    .line 67
    iget-wide v1, p0, Lby;->aP:D

    iget-wide v3, p0, Lby;->aQ:D

    iget-wide v5, p0, Lby;->aR:D

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lby;->a(DDDFF)V

    return-void
.end method


# virtual methods
.method public a(DDD)V
    .registers 11

    .line 107
    iput-wide p1, p0, Lby;->aP:D

    .line 108
    iput-wide p3, p0, Lby;->aQ:D

    .line 109
    iput-wide p5, p0, Lby;->aR:D

    .line 110
    iget v0, p0, Lby;->aV:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3d

    iget v0, p0, Lby;->aU:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3d

    mul-double v0, p1, p1

    mul-double v2, p5, p5

    add-double/2addr v0, v2

    .line 111
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    .line 112
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p5, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p5

    const-wide v1, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr p1, v1

    double-to-float p1, p1

    iput p1, p0, Lby;->aS:F

    iput p1, p0, Lby;->aU:F

    float-to-double p1, v0

    .line 113
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    mul-double/2addr p1, p5

    div-double/2addr p1, v1

    double-to-float p1, p1

    iput p1, p0, Lby;->aT:F

    iput p1, p0, Lby;->aV:F

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

    .line 81
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    float-to-double v0, v0

    div-double/2addr p1, v0

    div-double/2addr p3, v0

    div-double/2addr p5, v0

    .line 87
    iget-object v0, p0, Lby;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    const-wide v2, 0x3f7eb851e0000000L    # 0.007499999832361937

    mul-double/2addr v0, v2

    float-to-double v4, p8

    mul-double/2addr v0, v4

    add-double/2addr p1, v0

    .line 88
    iget-object p8, p0, Lby;->bs:Ljava/util/Random;

    invoke-virtual {p8}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double/2addr p3, v0

    .line 89
    iget-object p8, p0, Lby;->bs:Ljava/util/Random;

    invoke-virtual {p8}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    add-double/2addr p5, v0

    float-to-double p7, p7

    mul-double/2addr p1, p7

    mul-double/2addr p3, p7

    mul-double/2addr p5, p7

    .line 95
    iput-wide p1, p0, Lby;->aP:D

    .line 96
    iput-wide p3, p0, Lby;->aQ:D

    .line 97
    iput-wide p5, p0, Lby;->aR:D

    mul-double p7, p1, p1

    mul-double v0, p5, p5

    add-double/2addr p7, v0

    .line 99
    invoke-static {p7, p8}, Lin;->a(D)F

    move-result p7

    .line 101
    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p5, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p5

    const-wide v0, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lby;->aS:F

    iput p1, p0, Lby;->aU:F

    float-to-double p1, p7

    .line 102
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    mul-double/2addr p1, p5

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lby;->aT:F

    iput p1, p0, Lby;->aV:F

    const/4 p1, 0x0

    .line 103
    iput p1, p0, Lby;->h:I

    return-void
.end method

.method public a(Lnu;)V
    .registers 3

    const-string v0, "xTile"

    .line 252
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lby;->b:I

    const-string v0, "yTile"

    .line 253
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lby;->c:I

    const-string v0, "zTile"

    .line 254
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lby;->d:I

    const-string v0, "inTile"

    .line 255
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lby;->e:I

    const-string v0, "shake"

    .line 256
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lby;->a:I

    const-string v0, "inGround"

    .line 257
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iput-boolean v0, p0, Lby;->f:Z

    return-void
.end method

.method public a(D)Z
    .registers 7

    .line 40
    iget-object v0, p0, Lby;->aW:Leq;

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

    .line 261
    iget-boolean v0, p0, Lby;->f:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lby;->g:Lls;

    if-ne v0, p1, :cond_43

    iget v0, p0, Lby;->a:I

    if-gtz v0, :cond_43

    .line 262
    iget-object v0, p1, Lgs;->c:Lix;

    new-instance v1, Liz;

    sget-object v2, Lgm;->j:Lgm;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Liz;-><init>(Lgm;I)V

    invoke-virtual {v0, v1}, Lix;->a(Liz;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 263
    iget-object v0, p0, Lby;->aI:Lfd;

    iget-object v1, p0, Lby;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget-object v2, p0, Lby;->bs:Ljava/util/Random;

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

    .line 264
    invoke-virtual {p1, p0, v3}, Lgs;->b(Lsn;I)V

    .line 265
    invoke-virtual {p0}, Lby;->K()V

    :cond_43
    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 243
    iget v0, p0, Lby;->b:I

    int-to-short v0, v0

    const-string v1, "xTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 244
    iget v0, p0, Lby;->c:I

    int-to-short v0, v0

    const-string v1, "yTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 245
    iget v0, p0, Lby;->d:I

    int-to-short v0, v0

    const-string v1, "zTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 246
    iget v0, p0, Lby;->e:I

    int-to-byte v0, v0

    const-string v1, "inTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    .line 247
    iget v0, p0, Lby;->a:I

    int-to-byte v0, v0

    const-string v1, "shake"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    .line 248
    iget-boolean v0, p0, Lby;->f:Z

    int-to-byte v0, v0

    const-string v1, "inGround"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    return-void
.end method

.method public w_()V
    .registers 24

    move-object/from16 v7, p0

    .line 118
    iget-wide v0, v7, Lby;->aM:D

    iput-wide v0, v7, Lby;->bl:D

    .line 119
    iget-wide v0, v7, Lby;->aN:D

    iput-wide v0, v7, Lby;->bm:D

    .line 120
    iget-wide v0, v7, Lby;->aO:D

    iput-wide v0, v7, Lby;->bn:D

    .line 121
    invoke-super/range {p0 .. p0}, Lsn;->w_()V

    .line 123
    iget v0, v7, Lby;->a:I

    if-lez v0, :cond_19

    add-int/lit8 v0, v0, -0x1

    iput v0, v7, Lby;->a:I

    .line 125
    :cond_19
    iget-boolean v0, v7, Lby;->f:Z

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    if-eqz v0, :cond_6d

    .line 129
    iget-object v0, v7, Lby;->aI:Lfd;

    iget v3, v7, Lby;->b:I

    iget v4, v7, Lby;->c:I

    iget v5, v7, Lby;->d:I

    invoke-virtual {v0, v3, v4, v5}, Lfd;->a(III)I

    move-result v0

    .line 130
    iget v3, v7, Lby;->e:I

    if-eq v0, v3, :cond_5f

    .line 131
    iput-boolean v2, v7, Lby;->f:Z

    .line 133
    iget-wide v3, v7, Lby;->aP:D

    iget-object v0, v7, Lby;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v5, v0

    mul-double/2addr v3, v5

    iput-wide v3, v7, Lby;->aP:D

    .line 134
    iget-wide v3, v7, Lby;->aQ:D

    iget-object v0, v7, Lby;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v5, v0

    mul-double/2addr v3, v5

    iput-wide v3, v7, Lby;->aQ:D

    .line 135
    iget-wide v3, v7, Lby;->aR:D

    iget-object v0, v7, Lby;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v5, v0

    mul-double/2addr v3, v5

    iput-wide v3, v7, Lby;->aR:D

    .line 136
    iput v2, v7, Lby;->h:I

    .line 137
    iput v2, v7, Lby;->i:I

    goto :goto_73

    .line 139
    :cond_5f
    iget v0, v7, Lby;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lby;->h:I

    const/16 v1, 0x4b0

    if-ne v0, v1, :cond_6c

    .line 140
    invoke-virtual/range {p0 .. p0}, Lby;->K()V

    :cond_6c
    return-void

    .line 144
    :cond_6d
    iget v0, v7, Lby;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lby;->i:I

    .line 147
    :goto_73
    iget-wide v8, v7, Lby;->aM:D

    iget-wide v10, v7, Lby;->aN:D

    iget-wide v12, v7, Lby;->aO:D

    invoke-static/range {v8 .. v13}, Lbt;->b(DDD)Lbt;

    move-result-object v0

    .line 148
    iget-wide v3, v7, Lby;->aM:D

    iget-wide v5, v7, Lby;->aP:D

    add-double v8, v3, v5

    iget-wide v3, v7, Lby;->aN:D

    iget-wide v5, v7, Lby;->aQ:D

    add-double v10, v3, v5

    iget-wide v3, v7, Lby;->aO:D

    iget-wide v5, v7, Lby;->aR:D

    add-double v12, v3, v5

    invoke-static/range {v8 .. v13}, Lbt;->b(DDD)Lbt;

    move-result-object v3

    .line 149
    iget-object v4, v7, Lby;->aI:Lfd;

    invoke-virtual {v4, v0, v3}, Lfd;->a(Lbt;Lbt;)Lvf;

    move-result-object v0

    .line 151
    iget-wide v8, v7, Lby;->aM:D

    iget-wide v10, v7, Lby;->aN:D

    iget-wide v12, v7, Lby;->aO:D

    invoke-static/range {v8 .. v13}, Lbt;->b(DDD)Lbt;

    move-result-object v3

    .line 152
    iget-wide v4, v7, Lby;->aM:D

    iget-wide v8, v7, Lby;->aP:D

    add-double v10, v4, v8

    iget-wide v4, v7, Lby;->aN:D

    iget-wide v8, v7, Lby;->aQ:D

    add-double v12, v4, v8

    iget-wide v4, v7, Lby;->aO:D

    iget-wide v8, v7, Lby;->aR:D

    add-double v14, v4, v8

    invoke-static/range {v10 .. v15}, Lbt;->b(DDD)Lbt;

    move-result-object v4

    if-eqz v0, :cond_cb

    .line 154
    iget-object v4, v0, Lvf;->f:Lbt;

    iget-wide v8, v4, Lbt;->a:D

    iget-object v4, v0, Lvf;->f:Lbt;

    iget-wide v10, v4, Lbt;->b:D

    iget-object v4, v0, Lvf;->f:Lbt;

    iget-wide v12, v4, Lbt;->c:D

    invoke-static/range {v8 .. v13}, Lbt;->b(DDD)Lbt;

    move-result-object v4

    .line 157
    :cond_cb
    iget-object v5, v7, Lby;->aI:Lfd;

    iget-boolean v5, v5, Lfd;->B:Z

    if-nez v5, :cond_144

    .line 159
    iget-object v5, v7, Lby;->aI:Lfd;

    iget-object v8, v7, Lby;->aW:Leq;

    iget-wide v9, v7, Lby;->aP:D

    iget-wide v11, v7, Lby;->aQ:D

    iget-wide v13, v7, Lby;->aR:D

    invoke-virtual/range {v8 .. v14}, Leq;->a(DDD)Leq;

    move-result-object v15

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v15 .. v21}, Leq;->b(DDD)Leq;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v5

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    move v10, v2

    move-wide v11, v8

    .line 161
    :goto_f2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_13d

    .line 162
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lsn;

    .line 163
    invoke-virtual {v13}, Lsn;->h_()Z

    move-result v14

    if-eqz v14, :cond_136

    iget-object v14, v7, Lby;->g:Lls;

    if-ne v13, v14, :cond_10e

    iget v14, v7, Lby;->i:I

    const/4 v15, 0x5

    if-ge v14, v15, :cond_10e

    goto :goto_136

    .line 166
    :cond_10e
    iget-object v14, v13, Lsn;->aW:Leq;

    const v15, 0x3e99999a    # 0.3f

    float-to-double v1, v15

    move-object/from16 v16, v14

    move-wide/from16 v17, v1

    move-wide/from16 v19, v1

    move-wide/from16 v21, v1

    invoke-virtual/range {v16 .. v22}, Leq;->b(DDD)Leq;

    move-result-object v1

    .line 167
    invoke-virtual {v1, v3, v4}, Leq;->a(Lbt;Lbt;)Lvf;

    move-result-object v1

    if-eqz v1, :cond_136

    .line 169
    iget-object v1, v1, Lvf;->f:Lbt;

    invoke-virtual {v3, v1}, Lbt;->c(Lbt;)D

    move-result-wide v1

    cmpg-double v14, v1, v11

    if-ltz v14, :cond_134

    cmpl-double v14, v11, v8

    if-nez v14, :cond_136

    :cond_134
    move-wide v11, v1

    move-object v6, v13

    :cond_136
    :goto_136
    add-int/lit8 v10, v10, 0x1

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    goto :goto_f2

    :cond_13d
    if-eqz v6, :cond_144

    .line 178
    new-instance v0, Lvf;

    invoke-direct {v0, v6}, Lvf;-><init>(Lsn;)V

    :cond_144
    if-eqz v0, :cond_173

    .line 192
    iget-object v1, v0, Lvf;->g:Lsn;

    if-eqz v1, :cond_153

    .line 193
    iget-object v0, v0, Lvf;->g:Lsn;

    iget-object v1, v7, Lby;->g:Lls;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsn;->a(Lsn;I)Z

    goto :goto_154

    :cond_153
    const/4 v2, 0x0

    :goto_154
    move v0, v2

    :goto_155
    const/16 v1, 0x8

    if-ge v0, v1, :cond_16f

    .line 198
    iget-object v8, v7, Lby;->aI:Lfd;

    const-string v9, "snowballpoof"

    iget-wide v10, v7, Lby;->aM:D

    iget-wide v12, v7, Lby;->aN:D

    iget-wide v14, v7, Lby;->aO:D

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v8 .. v21}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_155

    .line 199
    :cond_16f
    invoke-virtual/range {p0 .. p0}, Lby;->K()V

    goto :goto_174

    :cond_173
    const/4 v2, 0x0

    .line 201
    :goto_174
    iget-wide v0, v7, Lby;->aM:D

    iget-wide v3, v7, Lby;->aP:D

    add-double/2addr v0, v3

    iput-wide v0, v7, Lby;->aM:D

    .line 202
    iget-wide v0, v7, Lby;->aN:D

    iget-wide v3, v7, Lby;->aQ:D

    add-double/2addr v0, v3

    iput-wide v0, v7, Lby;->aN:D

    .line 203
    iget-wide v0, v7, Lby;->aO:D

    iget-wide v3, v7, Lby;->aR:D

    add-double/2addr v0, v3

    iput-wide v0, v7, Lby;->aO:D

    .line 205
    iget-wide v0, v7, Lby;->aP:D

    iget-wide v3, v7, Lby;->aP:D

    mul-double/2addr v0, v3

    iget-wide v3, v7, Lby;->aR:D

    iget-wide v5, v7, Lby;->aR:D

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    .line 206
    iget-wide v3, v7, Lby;->aP:D

    iget-wide v5, v7, Lby;->aR:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    const-wide v8, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr v3, v8

    double-to-float v1, v3

    iput v1, v7, Lby;->aS:F

    .line 207
    iget-wide v3, v7, Lby;->aQ:D

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v5

    div-double/2addr v0, v8

    double-to-float v0, v0

    iput v0, v7, Lby;->aT:F

    .line 209
    :goto_1bb
    iget v0, v7, Lby;->aT:F

    iget v1, v7, Lby;->aV:F

    sub-float/2addr v0, v1

    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v0, v0, v1

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v0, :cond_1ce

    .line 210
    iget v0, v7, Lby;->aV:F

    sub-float/2addr v0, v3

    iput v0, v7, Lby;->aV:F

    goto :goto_1bb

    .line 211
    :cond_1ce
    :goto_1ce
    iget v0, v7, Lby;->aT:F

    iget v4, v7, Lby;->aV:F

    sub-float/2addr v0, v4

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1df

    .line 212
    iget v0, v7, Lby;->aV:F

    add-float/2addr v0, v3

    iput v0, v7, Lby;->aV:F

    goto :goto_1ce

    .line 214
    :cond_1df
    :goto_1df
    iget v0, v7, Lby;->aS:F

    iget v5, v7, Lby;->aU:F

    sub-float/2addr v0, v5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1ee

    .line 215
    iget v0, v7, Lby;->aU:F

    sub-float/2addr v0, v3

    iput v0, v7, Lby;->aU:F

    goto :goto_1df

    .line 216
    :cond_1ee
    :goto_1ee
    iget v0, v7, Lby;->aS:F

    iget v1, v7, Lby;->aU:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1fd

    .line 217
    iget v0, v7, Lby;->aU:F

    add-float/2addr v0, v3

    iput v0, v7, Lby;->aU:F

    goto :goto_1ee

    .line 219
    :cond_1fd
    iget v0, v7, Lby;->aV:F

    iget v1, v7, Lby;->aT:F

    iget v3, v7, Lby;->aV:F

    sub-float/2addr v1, v3

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, v7, Lby;->aT:F

    .line 220
    iget v0, v7, Lby;->aU:F

    iget v1, v7, Lby;->aS:F

    iget v4, v7, Lby;->aU:F

    sub-float/2addr v1, v4

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, v7, Lby;->aS:F

    .line 226
    invoke-virtual/range {p0 .. p0}, Lby;->ag()Z

    move-result v0

    if-eqz v0, :cond_251

    :goto_21c
    const/4 v0, 0x4

    if-ge v2, v0, :cond_24d

    .line 229
    iget-object v8, v7, Lby;->aI:Lfd;

    const-string v9, "bubble"

    iget-wide v0, v7, Lby;->aM:D

    iget-wide v3, v7, Lby;->aP:D

    const/high16 v5, 0x3e800000    # 0.25f

    float-to-double v5, v5

    mul-double/2addr v3, v5

    sub-double v10, v0, v3

    iget-wide v0, v7, Lby;->aN:D

    iget-wide v3, v7, Lby;->aQ:D

    mul-double/2addr v3, v5

    sub-double v12, v0, v3

    iget-wide v0, v7, Lby;->aO:D

    iget-wide v3, v7, Lby;->aR:D

    mul-double/2addr v3, v5

    sub-double v14, v0, v3

    iget-wide v0, v7, Lby;->aP:D

    iget-wide v3, v7, Lby;->aQ:D

    iget-wide v5, v7, Lby;->aR:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    invoke-virtual/range {v8 .. v21}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21c

    :cond_24d
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_254

    :cond_251
    const v0, 0x3f7d70a4    # 0.99f

    .line 234
    :goto_254
    iget-wide v1, v7, Lby;->aP:D

    float-to-double v3, v0

    mul-double/2addr v1, v3

    iput-wide v1, v7, Lby;->aP:D

    .line 235
    iget-wide v0, v7, Lby;->aQ:D

    mul-double/2addr v0, v3

    iput-wide v0, v7, Lby;->aQ:D

    .line 236
    iget-wide v0, v7, Lby;->aR:D

    mul-double/2addr v0, v3

    iput-wide v0, v7, Lby;->aR:D

    .line 237
    iget-wide v0, v7, Lby;->aQ:D

    const v2, 0x3cf5c28f    # 0.03f

    float-to-double v2, v2

    sub-double/2addr v0, v2

    iput-wide v0, v7, Lby;->aQ:D

    .line 239
    iget-wide v1, v7, Lby;->aM:D

    iget-wide v3, v7, Lby;->aN:D

    iget-wide v5, v7, Lby;->aO:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lby;->e(DDD)V

    return-void
.end method

.method public x_()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
